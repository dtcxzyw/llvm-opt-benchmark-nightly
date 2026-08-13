inline.NumInlined: 221
inline.NumDeleted: 20
begin_hunk_0_@_ZN7Imf_3_47RgbaYca9YCAtoRGBAERKN9Imath_3_24Vec3IfEEiPKNS_4RgbaEPS6_:bb.a
  %i.dr = add nuw i16 %i.dn, 1
  br label %_ZN9Imath_3_24halfaSEf.exit38

_ZN9Imath_3_24halfaSEf.exit38:                    ; preds = %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w
  %.0.i.i.i37 = phi i16 [ %i.ch, %bb.t ], [ %i.cs, %bb.p ], [ %i.cu, %bb.r ], [ %i.dc, %bb.s ], [ %i.ck, %bb.o ], [ %i.dr, %bb.w ], [ %i.dn, %bb.v ]
  store i16 %.0.i.i.i37, ptr %i.cb, align 2, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.dt = bitcast float %i.af to i32
  %i.du = tail call float @llvm.fabs.f32(float %i.af)
  %i.dv = bitcast float %i.du to i32              ; 10 uses
  %i.dw = lshr i32 %i.dt, 16                      ; 3 uses
  %i.dx = trunc nuw i32 %i.dw to i16
  %i.dy = and i16 %i.dx, -32768                   ; 3 uses
  %i.dz = icmp samesign ugt i32 %i.dv, 947912703
  br i1 %i.dz, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit38
  %i.ea = icmp samesign ugt i32 %i.dv, 2139095039
  br i1 %i.ea, label %bb.y, label %bb.aa, !prof !18

bb.y:                                             ; preds = %bb.x
  %i.eb = or disjoint i16 %i.dy, 31744            ; 2 uses
  %i.ec = icmp eq i32 %i.dv, 2139095040
  br i1 %i.ec, label %_ZN9Imath_3_24halfaSEf.exit42, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = lshr i32 %i.dv, 13
  %i.ee = and i32 %i.ed, 1023                     ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i16
  %i.eh = trunc nuw nsw i32 %i.ee to i16
  %i.ei = or i16 %i.eh, %i.eg
  %i.ej = or disjoint i16 %i.ei, %i.eb
  br label %_ZN9Imath_3_24halfaSEf.exit42

bb.aa:                                            ; preds = %bb.x
  %i.ek = icmp samesign ugt i32 %i.dv, 1199566847
  br i1 %i.ek, label %bb.ab, label %bb.ac, !prof !18

bb.ab:                                            ; preds = %bb.aa
  %i.el = or disjoint i16 %i.dy, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit42

bb.ac:                                            ; preds = %bb.aa
  %i.em = add nuw nsw i32 %i.dv, 134221823
  %i.en = lshr i32 %i.dv, 13
  %i.eo = and i32 %i.en, 1
  %i.ep = add nuw nsw i32 %i.em, %i.eo
  %i.eq = lshr i32 %i.ep, 13
  %i.er = and i32 %i.dw, 32768
  %i.es = or i32 %i.eq, %i.er
  %i.et = trunc i32 %i.es to i16
  br label %_ZN9Imath_3_24halfaSEf.exit42

bb.ad:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit38
  %i.eu = icmp samesign ult i32 %i.dv, 855638017
  br i1 %i.eu, label %_ZN9Imath_3_24halfaSEf.exit42, label %bb.ae

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
  br i1 %or.cond.i.i.i40, label %_ZN9Imath_3_24halfaSEf.exit42, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fi = add nuw i16 %i.fe, 1
  br label %_ZN9Imath_3_24halfaSEf.exit42

_ZN9Imath_3_24halfaSEf.exit42:                    ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.0.i.i.i41 = phi i16 [ %i.dy, %bb.ad ], [ %i.ej, %bb.z ], [ %i.el, %bb.ab ], [ %i.et, %bb.ac ], [ %i.eb, %bb.y ], [ %i.fi, %bb.ag ], [ %i.fe, %bb.af ]
  store i16 %.0.i.i.i41, ptr %i.ds, align 2, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit42, %bb.c
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.fl = load i16, ptr %i.fj, align 2, !tbaa !16
  store i16 %i.fl, ptr %i.fk, align 2, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7Imf_3_47RgbaYca13fixSaturationERKN9Imath_3_24Vec3IfEEiPKPKNS_4RgbaEPS6_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !30 ; 15 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !21   ; 3 uses
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !15 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !21   ; 3 uses
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !15 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !21   ; 3 uses
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !15 ; 2 uses
  %i.s = fcmp olt float %i.m, %i.r
  %i.t = select i1 %i.s, i16 %i.o, i16 %i.j       ; 2 uses
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !15
  %i.x = fcmp olt float %i.h, %i.w
  %i.y = select i1 %i.x, i16 %i.t, i16 %i.e
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !15
  %i.ac = fcmp olt float %i.r, %i.m
  %i.ad = select i1 %i.ac, i16 %i.o, i16 %i.j     ; 2 uses
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = fcmp olt float %i.ag, %i.h
  %i.ai = select i1 %i.ah, i16 %i.ad, i16 %i.e
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15
  %i.am = load ptr, ptr %2, align 8, !tbaa !24    ; 3 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !21 ; 3 uses
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !15 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !21 ; 3 uses
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !15 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !21 ; 3 uses
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !15 ; 2 uses
  %i.bb = fcmp olt float %i.av, %i.ba
  %i.bc = select i1 %i.bb, i16 %i.ax, i16 %i.as   ; 2 uses
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !15
  %i.bg = fcmp olt float %i.aq, %i.bf
  %i.bh = select i1 %i.bg, i16 %i.bc, i16 %i.an
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !15
  %i.bl = fcmp olt float %i.ba, %i.av
  %i.bm = select i1 %i.bl, i16 %i.ax, i16 %i.as   ; 2 uses
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !15
  %i.bq = fcmp olt float %i.bp, %i.aq
  %i.br = select i1 %i.bq, i16 %i.bm, i16 %i.an
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !15
  %i.bv = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bk, i64 1 ; 2 uses
  %i.bx = fcmp ogt <2 x float> %i.bw, zeroinitializer
  %i.by = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bu, i64 1
  %i.ca = fdiv <2 x float> %i.bz, %i.bw
  %i.cb = fsub <2 x float> splat (float 1.000000e+00), %i.ca
  %i.cc = select <2 x i1> %i.bx, <2 x float> %i.cb, <2 x float> zeroinitializer ; 3 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 1 ; 2 uses
  %i.ce = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.cf = add nsw i32 %1, -1
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = zext nneg i32 %i.cf to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7Imf_3_47RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_24Vec3IfEERS2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7Imf_3_47RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_24Vec3IfEERS2_.exit
  %.pre = phi ptr [ %i.c, %.lr.ph ], [ %.pre65, %_ZN7Imf_3_47RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_24Vec3IfEERS2_.exit ] ; 31 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN7Imf_3_47RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_24Vec3IfEERS2_.exit ] ; 5 uses
  %.062 = phi float [ %i.cd, %.lr.ph ], [ %i.fo, %_ZN7Imf_3_47RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_24Vec3IfEERS2_.exit ]
  %.03861 = phi float [ %i.cd, %.lr.ph ], [ %.062, %_ZN7Imf_3_47RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_24Vec3IfEERS2_.exit ]
  %.03960 = phi float [ %i.ce, %.lr.ph ], [ %i.fp, %_ZN7Imf_3_47RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_24Vec3IfEERS2_.exit ]
  %.04159 = phi float [ %i.ce, %.lr.ph ], [ %.03960, %_ZN7Imf_3_47RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_24Vec3IfEERS2_.exit ]
  %i.ck = phi <2 x float> [ %i.cc, %.lr.ph ], [ %i.fn, %_ZN7Imf_3_47RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_24Vec3IfEERS2_.exit ]
  %i.cl = icmp samesign ult i64 %indvars.iv, %i.cj
  br i1 %i.cl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cm = load ptr, ptr %2, align 8, !tbaa !24
  %4 = add nuw nsw i64 %indvars.iv, 1             ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %4 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cp = load i16, ptr %i.cn, align 2, !tbaa !21 ; 3 uses
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15 ; 2 uses
  %i.ct = load i16, ptr %i.co, align 2, !tbaa !21 ; 3 uses
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cx = fcmp olt float %i.cs, %i.cw
  %i.cy = load i16, ptr %5, align 2, !tbaa !21    ; 3 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !15 ; 2 uses
  %i.dc = select i1 %i.cx, i16 %i.ct, i16 %i.cp   ; 2 uses
  %i.dd = zext i16 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !15
  %i.dg = fcmp olt float %i.db, %i.df
  %i.dh = select i1 %i.dg, i16 %i.dc, i16 %i.cy
  %i.di = zext i16 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !15
  %i.dl = fcmp olt float %i.cw, %i.cs
  %i.dm = select i1 %i.dl, i16 %i.ct, i16 %i.cp   ; 2 uses
  %i.dn = zext i16 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !15
  %i.dq = fcmp olt float %i.dp, %i.db
  %i.dr = select i1 %i.dq, i16 %i.dm, i16 %i.cy
  %i.ds = zext i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !15
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %4 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dz = load i16, ptr %i.dx, align 2, !tbaa !21 ; 3 uses
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !15 ; 2 uses
  %i.ed = load i16, ptr %i.dy, align 2, !tbaa !21 ; 3 uses
  %i.ee = zext i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !15 ; 2 uses
  %i.eh = fcmp olt float %i.ec, %i.eg
  %i.ei = load i16, ptr %i.dw, align 2, !tbaa !21 ; 3 uses
  %i.ej = zext i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !15 ; 2 uses
  %i.em = select i1 %i.eh, i16 %i.ed, i16 %i.dz   ; 2 uses
  %i.en = zext i16 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !15
  %i.eq = fcmp olt float %i.el, %i.ep
  %i.er = select i1 %i.eq, i16 %i.em, i16 %i.ei
  %i.es = zext i16 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4, !tbaa !15
  %i.ev = fcmp olt float %i.eg, %i.ec
  %i.ew = select i1 %i.ev, i16 %i.ed, i16 %i.dz   ; 2 uses
  %i.ex = zext i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !15
  %i.fa = fcmp olt float %i.ez, %i.el
  %i.fb = select i1 %i.fa, i16 %i.ew, i16 %i.ei
  %i.fc = zext i16 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fc
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !15
  %i.ff = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %i.dk, i64 1 ; 2 uses
  %i.fh = fcmp ogt <2 x float> %i.fg, zeroinitializer
  %i.fi = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.du, i64 1
  %i.fk = fdiv <2 x float> %i.fj, %i.fg
  %i.fl = fsub <2 x float> splat (float 1.000000e+00), %i.fk
  %i.fm = select <2 x i1> %i.fh, <2 x float> %i.fl, <2 x float> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.fn = phi <2 x float> [ %i.fm, %bb.c ], [ %i.ck, %bb.b ] ; 3 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 1 ; 2 uses
  %i.fp = extractelement <2 x float> %i.fn, i64 0 ; 2 uses
  %i.fq = fadd float %.03861, %i.fo
  %i.fr = fadd float %.04159, %i.fq
  %i.fs = fadd float %i.fp, %i.fr
  %i.ft = fmul float %i.fs, 2.500000e-01          ; 2 uses
  %i.fu = fcmp olt float %i.ft, 1.000000e+00
  %.sroa.speculated54 = select i1 %i.fu, float %i.ft, float 1.000000e+00 ; 2 uses
  %i.fv = load ptr, ptr %i.cg, align 8, !tbaa !24
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv ; 6 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 2 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 3 uses
  %i.ga = load i16, ptr %i.fy, align 2, !tbaa !21 ; 3 uses
  %i.gb = zext i16 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !15 ; 2 uses
  %i.ge = load i16, ptr %i.fz, align 2, !tbaa !21 ; 3 uses
  %i.gf = zext i16 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !15 ; 2 uses
  %i.gi = fcmp olt float %i.gd, %i.gh
  %i.gj = load i16, ptr %i.fw, align 2, !tbaa !21 ; 3 uses
  %i.gk = zext i16 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !15 ; 3 uses
  %i.gn = select i1 %i.gi, i16 %i.ge, i16 %i.ga   ; 2 uses
  %i.go = zext i16 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !15
  %i.gr = fcmp olt float %i.gm, %i.gq
  %i.gs = select i1 %i.gr, i16 %i.gn, i16 %i.gj
  %i.gt = zext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !15 ; 8 uses
  %i.gw = fcmp olt float %i.gh, %i.gd
  %i.gx = select i1 %i.gw, i16 %i.ge, i16 %i.ga   ; 2 uses
  %i.gy = zext i16 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gy
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !15
  %i.hb = fcmp olt float %i.ha, %i.gm
  %i.hc = select i1 %i.hb, i16 %i.gx, i16 %i.gj
  %i.hd = zext i16 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.hd
  %i.hf = load float, ptr %i.he, align 4, !tbaa !15
  %i.hg = fcmp ogt float %i.gv, 0.000000e+00
  %i.hh = fdiv float %i.hf, %i.gv
  %i.hi = fsub float 1.000000e+00, %i.hh
  %.0.i51 = select i1 %i.hg, float %i.hi, float 0.000000e+00 ; 3 uses
  %i.hj = fcmp ogt float %.0.i51, %.sroa.speculated54
  br i1 %i.hj, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.hk = fsub float 1.000000e+00, %.sroa.speculated54
  %i.hl = fneg float %i.hk
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hl, float 2.500000e-01, float 1.000000e+00) ; 2 uses
  %i.hn = fcmp olt float %i.hm, 1.000000e+00
  %.sroa.speculated = select i1 %i.hn, float %i.hm, float 1.000000e+00 ; 2 uses
  %i.ho = fcmp ule float %.0.i51, %.sroa.speculated
  br i1 %i.ho, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hp = fdiv float %.sroa.speculated, %.0.i51   ; 3 uses
  %i.hq = fsub float %i.gv, %i.gm
  %i.hr = fneg float %i.hq
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hp, float %i.gv) ; 2 uses
  %i.ht = fcmp olt float %i.hs, 0.000000e+00
  %.sroa.speculated71.i = select i1 %i.ht, float 0.000000e+00, float %i.hs ; 2 uses
  %i.hu = bitcast float %.sroa.speculated71.i to i32
  %i.hv = tail call float @llvm.fabs.f32(float %.sroa.speculated71.i)
  %i.hw = bitcast float %i.hv to i32              ; 10 uses
  %i.hx = lshr i32 %i.hu, 16                      ; 3 uses
  %i.hy = trunc nuw i32 %i.hx to i16
  %i.hz = and i16 %i.hy, -32768                   ; 3 uses
  %i.ia = icmp samesign ugt i32 %i.hw, 947912703
  br i1 %i.ia, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ib = icmp samesign ugt i32 %i.hw, 2139095039
  br i1 %i.ib, label %bb.h, label %bb.j, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.ic = or disjoint i16 %i.hz, 31744            ; 2 uses
  %i.id = icmp eq i32 %i.hw, 2139095040
  br i1 %i.id, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ie = lshr i32 %i.hw, 13
  %i.if = and i32 %i.ie, 1023                     ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = zext i1 %i.ig to i16
  %i.ii = trunc nuw nsw i32 %i.if to i16
  %i.ij = or i16 %i.ii, %i.ih
  %i.ik = or disjoint i16 %i.ij, %i.ic
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.j:                                             ; preds = %bb.g
  %i.il = icmp samesign ugt i32 %i.hw, 1199566847
  br i1 %i.il, label %bb.k, label %bb.l, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.im = or disjoint i16 %i.hz, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.l:                                             ; preds = %bb.j
  %i.in = add nuw nsw i32 %i.hw, 134221823
  %i.io = lshr i32 %i.hw, 13
  %i.ip = and i32 %i.io, 1
  %i.iq = add nuw nsw i32 %i.in, %i.ip
  %i.ir = lshr i32 %i.iq, 13
  %i.is = and i32 %i.hx, 32768
  %i.it = or i32 %i.ir, %i.is
  %i.iu = trunc i32 %i.it to i16
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.m:                                             ; preds = %bb.f
  %i.iv = icmp samesign ult i32 %i.hw, 855638017
  br i1 %i.iv, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.iw = lshr i32 %i.hw, 23                      ; 2 uses
  %i.ix = sub nuw nsw i32 126, %i.iw
  %i.iy = and i32 %i.hw, 8388607
  %i.iz = or disjoint i32 %i.iy, 8388608          ; 2 uses
  %i.ja = add nsw i32 %i.iw, -94
  %i.jb = shl i32 %i.iz, %i.ja                    ; 2 uses
  %i.jc = lshr i32 %i.iz, %i.ix                   ; 2 uses
  %i.jd = and i32 %i.hx, 32768
  %i.je = or i32 %i.jc, %i.jd
  %i.jf = trunc nuw i32 %i.je to i16              ; 2 uses
  %i.jg = icmp ugt i32 %i.jb, -2147483648
  br i1 %i.jg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jh = icmp ne i32 %i.jb, -2147483648
  %i.ji = and i32 %i.jc, 1
  %.not.i.i.i.i = icmp eq i32 %i.ji, 0
  %or.cond.i.i.i.i = select i1 %i.jh, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.jj = add nuw i16 %i.jf, 1
  br label %_ZN9Imath_3_24halfaSEf.exit.i

_ZN9Imath_3_24halfaSEf.exit.i:                    ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  %.0.i.i.i.i = phi i16 [ %i.hz, %bb.m ], [ %i.ik, %bb.i ], [ %i.im, %bb.k ], [ %i.iu, %bb.l ], [ %i.ic, %bb.h ], [ %i.jj, %bb.p ], [ %i.jf, %bb.o ] ; 2 uses
  store i16 %.0.i.i.i.i, ptr %i.fx, align 2, !tbaa !16
  %i.jk = load i16, ptr %i.fy, align 2, !tbaa !21
  %i.jl = zext i16 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.jl
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !15
  %i.jo = fsub float %i.gv, %i.jn
  %i.jp = fneg float %i.jo
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jp, float %i.hp, float %i.gv) ; 2 uses
  %i.jr = fcmp olt float %i.jq, 0.000000e+00
  %.sroa.speculated66.i = select i1 %i.jr, float 0.000000e+00, float %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.fx, i64 2 ; 2 uses
  %i.jt = bitcast float %.sroa.speculated66.i to i32
  %i.ju = tail call float @llvm.fabs.f32(float %.sroa.speculated66.i)
  %i.jv = bitcast float %i.ju to i32              ; 10 uses
  %i.jw = lshr i32 %i.jt, 16                      ; 3 uses
  %i.jx = trunc nuw i32 %i.jw to i16
  %i.jy = and i16 %i.jx, -32768                   ; 3 uses
  %i.jz = icmp samesign ugt i32 %i.jv, 947912703
  br i1 %i.jz, label %bb.q, label %bb.w

end_hunk_0
