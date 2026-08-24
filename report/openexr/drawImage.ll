Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/drawImage?download=true
inline.NumInlined: 91
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z10drawImage2RN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS0_IfEEii:bb.a
._crit_edge.i:                                    ; preds = %bb.q
  %indvars.iv.next29.i = add nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %lftr.wideiv31.i = trunc i64 %indvars.iv.next29.i to i32
  %exitcond32.not.i = icmp eq i32 %i.cu, %lftr.wideiv31.i
  br i1 %exitcond32.not.i, label %_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit, label %.preheader.i, !llvm.loop !29

bb.d:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.cv, %.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 4 uses
  %i.dd = trunc nsw i64 %indvars.iv.i to i32
  %i.de = sitofp i32 %i.dd to float
  %i.df = fsub float %i.de, %i.cw
  %i.dg = fdiv float %i.df, %i.bm                 ; 3 uses
  %i.dh = fmul float %i.dg, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.dh)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.di) ; 3 uses
  %i.dj = fcmp ult float %sqrt.i, 1.000000e+00
  br i1 %i.dj, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.dk = fneg float %sqrt.i
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %sqrt.i, float 1.000000e+00)
  %i.dm = tail call noundef float @sqrtf(float noundef %i.dl) #8 ; 2 uses
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.dm, float %i.bi) ; 2 uses
  %i.do = mul nsw i64 %indvars.iv.i, %.val44
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.do ; 2 uses
  %i.dp = load float, ptr %gep.i, align 4, !tbaa !22
  %i.dq = fcmp ult float %i.dn, %i.dp
  br i1 %i.dq, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.dr = fpext float %i.dg to double
  %i.ds = fmul double %i.dr, -5.656800e-01
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dc, double 4.242600e-01, double %i.ds)
  %i.du = fpext float %i.dm to double
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double 7.071000e-01, double %i.dt) ; 2 uses
  %i.dw = fptrunc double %i.dv to float           ; 2 uses
  %i.dx = fcmp olt double %i.dv, f0xB690000000000000
  %i.dy = fpext nnan float %i.dw to double
  %i.dz = fmul nnan double %i.dy, -1.000000e-01
  %i.ea = fptrunc double %i.dz to float
  %.0.i = select i1 %i.dx, float %i.ea, float %i.dw ; 3 uses
  %i.eb = fmul float %.0.i, %.0.i                 ; 3 uses
  %i.ec = fmul float %i.eb, %i.eb                 ; 2 uses
  %i.ed = fmul float %i.ec, %i.ec                 ; 2 uses
  %i.ee = fmul float %i.ed, %i.ed                 ; 3 uses
  %i.ef = fmul float %i.eb, %i.ee
  %i.eg = fmul float %i.ee, %i.ee
  %i.eh = fmul float %i.eg, %i.ef
  %i.ei = fmul float %i.eh, 4.000000e+00
  %i.ej = fadd float %.0.i, %i.ei
  %i.ek = fmul float %i.ej, %i.bq                 ; 2 uses
  %i.el = mul nsw i64 %indvars.iv.i, %.val
  %gep23.i = getelementptr [2 x i8], ptr %invariant.gep22.i, i64 %i.el
  %i.em = bitcast float %i.ek to i32
  %i.en = tail call float @llvm.fabs.f32(float %i.ek)
  %i.eo = bitcast float %i.en to i32              ; 10 uses
  %i.ep = lshr i32 %i.em, 16                      ; 3 uses
  %i.eq = trunc nuw i32 %i.ep to i16
  %i.er = and i16 %i.eq, -32768                   ; 3 uses
  %i.es = icmp samesign ugt i32 %i.eo, 947912703
  br i1 %i.es, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.et = icmp samesign ugt i32 %i.eo, 2139095039
  br i1 %i.et, label %bb.h, label %bb.j, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.eu = or disjoint i16 %i.er, 31744            ; 2 uses
  %i.ev = icmp eq i32 %i.eo, 2139095040
  br i1 %i.ev, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ew = lshr i32 %i.eo, 13
  %i.ex = and i32 %i.ew, 1023                     ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i16
  %i.fa = trunc nuw nsw i32 %i.ex to i16
  %i.fb = or i16 %i.fa, %i.ez
  %i.fc = or disjoint i16 %i.fb, %i.eu
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.j:                                             ; preds = %bb.g
  %i.fd = icmp samesign ugt i32 %i.eo, 1199566847
  br i1 %i.fd, label %bb.k, label %bb.l, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.fe = or disjoint i16 %i.er, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ff = add nuw nsw i32 %i.eo, 134221823
  %i.fg = lshr i32 %i.eo, 13
  %i.fh = and i32 %i.fg, 1
  %i.fi = add nuw nsw i32 %i.ff, %i.fh
  %i.fj = lshr i32 %i.fi, 13
  %i.fk = and i32 %i.ep, 32768
  %i.fl = or i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i16
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.m:                                             ; preds = %bb.f
  %i.fn = icmp samesign ult i32 %i.eo, 855638017
  br i1 %i.fn, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fo = lshr i32 %i.eo, 23                      ; 2 uses
  %i.fp = sub nuw nsw i32 126, %i.fo
  %i.fq = and i32 %i.eo, 8388607
  %i.fr = or disjoint i32 %i.fq, 8388608          ; 2 uses
  %i.fs = add nsw i32 %i.fo, -94
  %i.ft = shl i32 %i.fr, %i.fs                    ; 2 uses
  %i.fu = lshr i32 %i.fr, %i.fp                   ; 2 uses
  %i.fv = and i32 %i.ep, 32768
  %i.fw = or i32 %i.fu, %i.fv
  %i.fx = trunc nuw i32 %i.fw to i16              ; 2 uses
  %i.fy = icmp ugt i32 %i.ft, -2147483648
  br i1 %i.fy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fz = icmp ne i32 %i.ft, -2147483648
  %i.ga = and i32 %i.fu, 1
  %.not.i.i.i.i = icmp eq i32 %i.ga, 0
  %or.cond.i.i.i.i = select i1 %i.fz, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gb = add nuw i16 %i.fx, 1
  br label %_ZN9Imath_3_24halfaSEf.exit.i

_ZN9Imath_3_24halfaSEf.exit.i:                    ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  %.033.i.i.i.i = phi i16 [ %i.er, %bb.m ], [ %i.fc, %bb.i ], [ %i.fe, %bb.k ], [ %i.fm, %bb.l ], [ %i.eu, %bb.h ], [ %i.gb, %bb.p ], [ %i.fx, %bb.o ]
  store i16 %.033.i.i.i.i, ptr %gep23.i, align 2, !tbaa !9
  store float %i.dn, ptr %gep.i, align 4, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit.i, %bb.e, %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.cx, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !30

_ZN12_GLOBAL__N_13zspERN7Imf_3_47Array2DIN9Imath_3_24halfEEERNS1_IfEEiifffff.exit: ; preds = %._crit_edge.i, %bb.c, %.preheader.lr.ph.i
  %i.gc = add nuw nsw i32 %.04149, 1              ; 2 uses
  %exitcond56.not = icmp eq i32 %i.gc, 2000
  br i1 %exitcond56.not, label %bb.b, label %bb.c, !llvm.loop !31
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10drawImage3RN7Imf_3_47Array2DINS_4RgbaEEEiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %7                        ; 2 uses
  %i.b = shl nuw i32 1, %8                        ; 2 uses
  %i.c = sitofp i32 %i.b to double
  %i.d = sitofp i32 %i.a to double
  %i.e = fdiv double %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load ptr, ptr %i.g, align 8
  tail call fastcc void @_ZN12_GLOBAL__N_14mndlIN7Imf_3_44RgbaEEEvRNS1_7Array2DIT_EEiiiiiiiidddddd(i64 %.val, ptr %.val10, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.a, i32 noundef %i.b, double noundef 3.280000e-01, double noundef 3.690000e-01, double noundef 5.000000e-01, double noundef %i.e, double noundef -7.130000e-01, double noundef f0x3FEF295E9E1B089A)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_14mndlIN7Imf_3_44RgbaEEEvRNS1_7Array2DIT_EEiiiiiiiidddddd(i64 %.8.val, ptr nofree captures(none) %.16.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, double noundef nofpclass(nan inf zero sub nnorm) %8, double noundef nofpclass(nan inf zero sub nnorm) %9, double noundef nofpclass(nan inf zero sub nnorm) %10, double noundef %11, double noundef nofpclass(nan inf zero sub) %12, double noundef nofpclass(nan inf zero sub) %13) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %7, i64 1
  %i.c = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.b, <2 x i32> splat (i32 6)) ; 3 uses
  %i.d = fsub double %9, %8                       ; 2 uses
  %i.e = fmul double %i.d, %11
  %i.f = sitofp i32 %1 to double                  ; 2 uses
  %i.g = fmul double %i.e, %i.f
  %i.h = sitofp i32 %0 to double                  ; 2 uses
  %i.i = fdiv double %i.g, %i.h
  %i.j = fadd double %10, %i.i
  %i.k = fdiv double %i.d, %i.h
  %i.l = fsub double %i.j, %10
  %i.m = fdiv double %i.l, %i.f
  %i.n = sitofp <2 x i32> %i.c to <2 x float>
  %i.o = fdiv <2 x float> splat (float 1.000000e+00), %i.n ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.q = fpext float %i.p to double
  %i.r = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  %i.s = fpext float %i.r to double
  %i.t = fmul float %i.p, %i.r                    ; 4 uses
  %i.u = icmp slt i32 %4, %5
  br i1 %i.u, label %.preheader1.lr.ph, label %._crit_edge19.split

.preheader1.lr.ph:                                ; preds = %bb.a
  %i.v = icmp slt i32 %2, %3
  %i.w = icmp sgt i32 %6, 0
  %i.x = icmp sgt i32 %7, 0
  %i.y = load ptr, ptr @imath_half_to_float_table, align 8 ; 4 uses
  br i1 %i.v, label %.preheader1.preheader, label %._crit_edge19.split

.preheader1.preheader:                            ; preds = %.preheader1.lr.ph
  %14 = sext i32 %2 to i64                        ; 2 uses
  %15 = sext i32 %4 to i64                        ; 2 uses
  %wide.trip.count26 = sext i32 %5 to i64
  %wide.trip.count = sext i32 %3 to i64
  %i.z = extractelement <2 x i32> %i.c, i64 1
  %i.aa = extractelement <2 x i32> %i.c, i64 0
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %._crit_edge17
  %indvars.iv23 = phi i64 [ %15, %.preheader1.preheader ], [ %indvars.iv.next24, %._crit_edge17 ] ; 3 uses
  %16 = sub nsw i64 %indvars.iv23, %15
  %17 = mul nsw i64 %.8.val, %16
  %18 = getelementptr inbounds [8 x i8], ptr %.16.val, i64 %17
  %19 = trunc nsw i64 %indvars.iv23 to i32
  %i.ab = sitofp i32 %19 to double
  br label %bb.b

._crit_edge19.split:                              ; preds = %._crit_edge17, %.preheader1.lr.ph, %bb.a
  ret void

._crit_edge17:                                    ; preds = %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge19.split, label %.preheader1, !llvm.loop !32

bb.b:                                             ; preds = %.preheader1, %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit
  %indvars.iv = phi i64 [ %14, %.preheader1 ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit ] ; 3 uses
  %20 = sub nsw i64 %indvars.iv, %14
  %i.ac = getelementptr inbounds [8 x i8], ptr %18, i64 %20 ; 7 uses
  store i16 0, ptr %i.ac, align 2, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 3 uses
  store i16 0, ptr %i.ad, align 2, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 3 uses
  store i16 0, ptr %i.ae, align 2, !tbaa !9
  br i1 %i.w, label %.preheader.lr.ph, label %._crit_edge10.split

.preheader.lr.ph:                                 ; preds = %bb.b
  %21 = trunc nsw i64 %indvars.iv to i32
  %i.af = sitofp i32 %21 to double
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ah = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  br i1 %i.x, label %.preheader, label %._crit_edge10.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.promoted815 = phi i16 [ %.033.i.i.i18.i81, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.promoted713 = phi i16 [ %.033.i.i.i14.i78, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.promoted12 = phi i16 [ %.033.i.i.i11.i, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.0709 = phi i32 [ %i.hs, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.ai = uitofp nneg i32 %.0709 to double
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.q, double %i.af)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.k, double %i.aj, double %8)
  br label %bb.aq

._crit_edge10.split.loopexit:                     ; preds = %._crit_edge
  %i.al = zext i16 %.033.i.i.i11.i to i64
  %i.am = zext i16 %.033.i.i.i14.i78 to i64
  %i.an = zext i16 %.033.i.i.i18.i81 to i64
  br label %._crit_edge10.split

._crit_edge10.split:                              ; preds = %._crit_edge10.split.loopexit, %.preheader.lr.ph, %bb.b
  %i.ao = phi i64 [ %i.an, %._crit_edge10.split.loopexit ], [ 0, %.preheader.lr.ph ], [ 0, %bb.b ]
  %i.ap = phi i64 [ %i.am, %._crit_edge10.split.loopexit ], [ 0, %.preheader.lr.ph ], [ 0, %bb.b ]
  %i.aq = phi i64 [ %i.al, %._crit_edge10.split.loopexit ], [ 0, %.preheader.lr.ph ], [ 0, %bb.b ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !19
  %i.at = fmul float %i.t, %i.as                  ; 2 uses
  %i.au = bitcast float %i.at to i32
  %i.av = tail call float @llvm.fabs.f32(float %i.at)
  %i.aw = bitcast float %i.av to i32              ; 10 uses
  %i.ax = lshr i32 %i.au, 16                      ; 3 uses
  %i.ay = trunc nuw i32 %i.ax to i16
  %i.az = and i16 %i.ay, -32768                   ; 3 uses
  %i.ba = icmp samesign ugt i32 %i.aw, 947912703
  br i1 %i.ba, label %bb.c, label %bb.i

bb.c:                                             ; preds = %._crit_edge10.split
  %i.bb = icmp samesign ugt i32 %i.aw, 2139095039
  br i1 %i.bb, label %bb.d, label %bb.f, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.bc = or disjoint i16 %i.az, 31744            ; 2 uses
  %i.bd = icmp eq i32 %i.aw, 2139095040
  br i1 %i.bd, label %_ZN9Imath_3_24halfmLEf.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = lshr i32 %i.aw, 13
  %i.bf = and i32 %i.be, 1023                     ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i16
  %i.bi = trunc nuw nsw i32 %i.bf to i16
  %i.bj = or i16 %i.bi, %i.bh
  %i.bk = or disjoint i16 %i.bj, %i.bc
  br label %_ZN9Imath_3_24halfmLEf.exit.i

bb.f:                                             ; preds = %bb.c
  %i.bl = icmp samesign ugt i32 %i.aw, 1199566847
  br i1 %i.bl, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.bm = or disjoint i16 %i.az, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bn = add nuw nsw i32 %i.aw, 134221823
  %i.bo = lshr i32 %i.aw, 13
  %i.bp = and i32 %i.bo, 1
  %i.bq = add nuw nsw i32 %i.bn, %i.bp
  %i.br = lshr i32 %i.bq, 13
  %i.bs = and i32 %i.ax, 32768
  %i.bt = or i32 %i.br, %i.bs
  %i.bu = trunc i32 %i.bt to i16
  br label %_ZN9Imath_3_24halfmLEf.exit.i

bb.i:                                             ; preds = %._crit_edge10.split
  %i.bv = icmp samesign ult i32 %i.aw, 855638017
  br i1 %i.bv, label %_ZN9Imath_3_24halfmLEf.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = lshr i32 %i.aw, 23                      ; 2 uses
  %i.bx = sub nuw nsw i32 126, %i.bw
  %i.by = and i32 %i.aw, 8388607
  %i.bz = or disjoint i32 %i.by, 8388608          ; 2 uses
  %i.ca = add nsw i32 %i.bw, -94
  %i.cb = shl i32 %i.bz, %i.ca                    ; 2 uses
  %i.cc = lshr i32 %i.bz, %i.bx                   ; 2 uses
  %i.cd = and i32 %i.ax, 32768
  %i.ce = or i32 %i.cc, %i.cd
  %i.cf = trunc nuw i32 %i.ce to i16              ; 2 uses
  %i.cg = icmp ugt i32 %i.cb, -2147483648
  br i1 %i.cg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = icmp ne i32 %i.cb, -2147483648
  %i.ci = and i32 %i.cc, 1
  %.not.i.i.i.i = icmp eq i32 %i.ci, 0
  %or.cond.i.i.i.i = select i1 %i.ch, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9Imath_3_24halfmLEf.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cj = add nuw i16 %i.cf, 1
  br label %_ZN9Imath_3_24halfmLEf.exit.i

_ZN9Imath_3_24halfmLEf.exit.i:                    ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
  %.033.i.i.i.i = phi i16 [ %i.az, %bb.i ], [ %i.bk, %bb.e ], [ %i.bm, %bb.g ], [ %i.bu, %bb.h ], [ %i.bc, %bb.d ], [ %i.cj, %bb.l ], [ %i.cf, %bb.k ]
  store i16 %.033.i.i.i.i, ptr %i.ac, align 2, !tbaa !9
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ap
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !19
  %i.cm = fmul float %i.t, %i.cl                  ; 2 uses
  %i.cn = bitcast float %i.cm to i32
  %i.co = tail call float @llvm.fabs.f32(float %i.cm)
  %i.cp = bitcast float %i.co to i32              ; 10 uses
  %i.cq = lshr i32 %i.cn, 16                      ; 3 uses
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = and i16 %i.cr, -32768                   ; 3 uses
  %i.ct = icmp samesign ugt i32 %i.cp, 947912703
  br i1 %i.ct, label %bb.m, label %bb.s

bb.m:                                             ; preds = %_ZN9Imath_3_24halfmLEf.exit.i
  %i.cu = icmp samesign ugt i32 %i.cp, 2139095039
  br i1 %i.cu, label %bb.n, label %bb.p, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.cv = or disjoint i16 %i.cs, 31744            ; 2 uses
  %i.cw = icmp eq i32 %i.cp, 2139095040
  br i1 %i.cw, label %_ZN9Imath_3_24halfmLEf.exit11.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %i.cp, 13
  %i.cy = and i32 %i.cx, 1023                     ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i16
  %i.db = trunc nuw nsw i32 %i.cy to i16
  %i.dc = or i16 %i.db, %i.da
  %i.dd = or disjoint i16 %i.dc, %i.cv
  br label %_ZN9Imath_3_24halfmLEf.exit11.i

bb.p:                                             ; preds = %bb.m
  %i.de = icmp samesign ugt i32 %i.cp, 1199566847
  br i1 %i.de, label %bb.q, label %bb.r, !prof !20

bb.q:                                             ; preds = %bb.p
  %i.df = or disjoint i16 %i.cs, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit11.i

bb.r:                                             ; preds = %bb.p
  %i.dg = add nuw nsw i32 %i.cp, 134221823
  %i.dh = lshr i32 %i.cp, 13
  %i.di = and i32 %i.dh, 1
  %i.dj = add nuw nsw i32 %i.dg, %i.di
  %i.dk = lshr i32 %i.dj, 13
  %i.dl = and i32 %i.cq, 32768
  %i.dm = or i32 %i.dk, %i.dl
  %i.dn = trunc i32 %i.dm to i16
  br label %_ZN9Imath_3_24halfmLEf.exit11.i

bb.s:                                             ; preds = %_ZN9Imath_3_24halfmLEf.exit.i
  %i.do = icmp samesign ult i32 %i.cp, 855638017
  br i1 %i.do, label %_ZN9Imath_3_24halfmLEf.exit11.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = lshr i32 %i.cp, 23                      ; 2 uses
  %i.dq = sub nuw nsw i32 126, %i.dp
  %i.dr = and i32 %i.cp, 8388607
  %i.ds = or disjoint i32 %i.dr, 8388608          ; 2 uses
  %i.dt = add nsw i32 %i.dp, -94
  %i.du = shl i32 %i.ds, %i.dt                    ; 2 uses
  %i.dv = lshr i32 %i.ds, %i.dq                   ; 2 uses
  %i.dw = and i32 %i.cq, 32768
  %i.dx = or i32 %i.dv, %i.dw
  %i.dy = trunc nuw i32 %i.dx to i16              ; 2 uses
  %i.dz = icmp ugt i32 %i.du, -2147483648
  br i1 %i.dz, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = icmp ne i32 %i.du, -2147483648
  %i.eb = and i32 %i.dv, 1
  %.not.i.i.i8.i = icmp eq i32 %i.eb, 0
  %or.cond.i.i.i9.i = select i1 %i.ea, i1 true, i1 %.not.i.i.i8.i
  br i1 %or.cond.i.i.i9.i, label %_ZN9Imath_3_24halfmLEf.exit11.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ec = add nuw i16 %i.dy, 1
  br label %_ZN9Imath_3_24halfmLEf.exit11.i

_ZN9Imath_3_24halfmLEf.exit11.i:                  ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n
  %.033.i.i.i10.i = phi i16 [ %i.cs, %bb.s ], [ %i.dd, %bb.o ], [ %i.df, %bb.q ], [ %i.dn, %bb.r ], [ %i.cv, %bb.n ], [ %i.ec, %bb.v ], [ %i.dy, %bb.u ]
  store i16 %.033.i.i.i10.i, ptr %i.ad, align 2, !tbaa !9
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ao
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !19
  %i.ef = fmul float %i.t, %i.ee                  ; 2 uses
  %i.eg = bitcast float %i.ef to i32
  %i.eh = tail call float @llvm.fabs.f32(float %i.ef)
  %i.ei = bitcast float %i.eh to i32              ; 10 uses
  %i.ej = lshr i32 %i.eg, 16                      ; 3 uses
  %i.ek = trunc nuw i32 %i.ej to i16
  %i.el = and i16 %i.ek, -32768                   ; 3 uses
  %i.em = icmp samesign ugt i32 %i.ei, 947912703
  br i1 %i.em, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %_ZN9Imath_3_24halfmLEf.exit11.i
  %i.en = icmp samesign ugt i32 %i.ei, 2139095039
  br i1 %i.en, label %bb.x, label %bb.z, !prof !20

bb.x:                                             ; preds = %bb.w
  %i.eo = or disjoint i16 %i.el, 31744            ; 2 uses
  %i.ep = icmp eq i32 %i.ei, 2139095040
  br i1 %i.ep, label %_ZN9Imath_3_24halfmLEf.exit15.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = lshr i32 %i.ei, 13
  %i.er = and i32 %i.eq, 1023                     ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %i.et = zext i1 %i.es to i16
  %i.eu = trunc nuw nsw i32 %i.er to i16
  %i.ev = or i16 %i.eu, %i.et
  %i.ew = or disjoint i16 %i.ev, %i.eo
  br label %_ZN9Imath_3_24halfmLEf.exit15.i

bb.z:                                             ; preds = %bb.w
  %i.ex = icmp samesign ugt i32 %i.ei, 1199566847
  br i1 %i.ex, label %bb.aa, label %bb.ab, !prof !20

bb.aa:                                            ; preds = %bb.z
  %i.ey = or disjoint i16 %i.el, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit15.i

bb.ab:                                            ; preds = %bb.z
  %i.ez = add nuw nsw i32 %i.ei, 134221823
  %i.fa = lshr i32 %i.ei, 13
  %i.fb = and i32 %i.fa, 1
  %i.fc = add nuw nsw i32 %i.ez, %i.fb
  %i.fd = lshr i32 %i.fc, 13
  %i.fe = and i32 %i.ej, 32768
  %i.ff = or i32 %i.fd, %i.fe
  %i.fg = trunc i32 %i.ff to i16
  br label %_ZN9Imath_3_24halfmLEf.exit15.i

bb.ac:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit11.i
  %i.fh = icmp samesign ult i32 %i.ei, 855638017
  br i1 %i.fh, label %_ZN9Imath_3_24halfmLEf.exit15.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = lshr i32 %i.ei, 23                      ; 2 uses
  %i.fj = sub nuw nsw i32 126, %i.fi
  %i.fk = and i32 %i.ei, 8388607
  %i.fl = or disjoint i32 %i.fk, 8388608          ; 2 uses
  %i.fm = add nsw i32 %i.fi, -94
  %i.fn = shl i32 %i.fl, %i.fm                    ; 2 uses
  %i.fo = lshr i32 %i.fl, %i.fj                   ; 2 uses
  %i.fp = and i32 %i.ej, 32768
  %i.fq = or i32 %i.fo, %i.fp
  %i.fr = trunc nuw i32 %i.fq to i16              ; 2 uses
  %i.fs = icmp ugt i32 %i.fn, -2147483648
  br i1 %i.fs, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ft = icmp ne i32 %i.fn, -2147483648
  %i.fu = and i32 %i.fo, 1
  %.not.i.i.i12.i = icmp eq i32 %i.fu, 0
  %or.cond.i.i.i13.i = select i1 %i.ft, i1 true, i1 %.not.i.i.i12.i
  br i1 %or.cond.i.i.i13.i, label %_ZN9Imath_3_24halfmLEf.exit15.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fv = add nuw i16 %i.fr, 1
  br label %_ZN9Imath_3_24halfmLEf.exit15.i

_ZN9Imath_3_24halfmLEf.exit15.i:                  ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.033.i.i.i14.i = phi i16 [ %i.el, %bb.ac ], [ %i.ew, %bb.y ], [ %i.ey, %bb.aa ], [ %i.fg, %bb.ab ], [ %i.eo, %bb.x ], [ %i.fv, %bb.af ], [ %i.fr, %bb.ae ]
  store i16 %.033.i.i.i14.i, ptr %i.ae, align 2, !tbaa !9
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ac, i64 6 ; 2 uses
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !17
  %i.fy = zext i16 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !19
  %i.gb = fmul float %i.t, %i.ga                  ; 2 uses
  %i.gc = bitcast float %i.gb to i32
  %i.gd = tail call float @llvm.fabs.f32(float %i.gb)
  %i.ge = bitcast float %i.gd to i32              ; 10 uses
  %i.gf = lshr i32 %i.gc, 16                      ; 3 uses
  %i.gg = trunc nuw i32 %i.gf to i16
  %i.gh = and i16 %i.gg, -32768                   ; 3 uses
  %i.gi = icmp samesign ugt i32 %i.ge, 947912703
  br i1 %i.gi, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit15.i
  %i.gj = icmp samesign ugt i32 %i.ge, 2139095039
  br i1 %i.gj, label %bb.ah, label %bb.aj, !prof !20

bb.ah:                                            ; preds = %bb.ag
  %i.gk = or disjoint i16 %i.gh, 31744            ; 2 uses
  %i.gl = icmp eq i32 %i.ge, 2139095040
  br i1 %i.gl, label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = lshr i32 %i.ge, 13
  %i.gn = and i32 %i.gm, 1023                     ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  %i.gp = zext i1 %i.go to i16
  %i.gq = trunc nuw nsw i32 %i.gn to i16
  %i.gr = or i16 %i.gq, %i.gp
  %i.gs = or disjoint i16 %i.gr, %i.gk
  br label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit

bb.aj:                                            ; preds = %bb.ag
  %i.gt = icmp samesign ugt i32 %i.ge, 1199566847
  br i1 %i.gt, label %bb.ak, label %bb.al, !prof !20

bb.ak:                                            ; preds = %bb.aj
  %i.gu = or disjoint i16 %i.gh, 31744
  br label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit

bb.al:                                            ; preds = %bb.aj
  %i.gv = add nuw nsw i32 %i.ge, 134221823
  %i.gw = lshr i32 %i.ge, 13
  %i.gx = and i32 %i.gw, 1
  %i.gy = add nuw nsw i32 %i.gv, %i.gx
  %i.gz = lshr i32 %i.gy, 13
  %i.ha = and i32 %i.gf, 32768
  %i.hb = or i32 %i.gz, %i.ha
  %i.hc = trunc i32 %i.hb to i16
  br label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit

bb.am:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit15.i
  %i.hd = icmp samesign ult i32 %i.ge, 855638017
  br i1 %i.hd, label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.he = lshr i32 %i.ge, 23                      ; 2 uses
  %i.hf = sub nuw nsw i32 126, %i.he
  %i.hg = and i32 %i.ge, 8388607
  %i.hh = or disjoint i32 %i.hg, 8388608          ; 2 uses
  %i.hi = add nsw i32 %i.he, -94
  %i.hj = shl i32 %i.hh, %i.hi                    ; 2 uses
  %i.hk = lshr i32 %i.hh, %i.hf                   ; 2 uses
  %i.hl = and i32 %i.gf, 32768
  %i.hm = or i32 %i.hk, %i.hl
  %i.hn = trunc nuw i32 %i.hm to i16              ; 2 uses
  %i.ho = icmp ugt i32 %i.hj, -2147483648
  br i1 %i.ho, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hp = icmp ne i32 %i.hj, -2147483648
  %i.hq = and i32 %i.hk, 1
  %.not.i.i.i16.i = icmp eq i32 %i.hq, 0
  %or.cond.i.i.i17.i = select i1 %i.hp, i1 true, i1 %.not.i.i.i16.i
  br i1 %or.cond.i.i.i17.i, label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hr = add nuw i16 %i.hn, 1
  br label %_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit

_ZN12_GLOBAL__N_15scaleEfRN7Imf_3_44RgbaE.exit:   ; preds = %bb.ah, %bb.ai, %bb.ak, %bb.al, %bb.am, %bb.ao, %bb.ap
  %.033.i.i.i18.i = phi i16 [ %i.gh, %bb.am ], [ %i.gs, %bb.ai ], [ %i.gu, %bb.ak ], [ %i.hc, %bb.al ], [ %i.gk, %bb.ah ], [ %i.hr, %bb.ap ], [ %i.hn, %bb.ao ]
  store i16 %.033.i.i.i18.i, ptr %i.fw, align 2, !tbaa !9
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond22.not, label %._crit_edge17, label %bb.b, !llvm.loop !33

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit
  %i.hs = add nuw nsw i32 %.0709, 1               ; 2 uses
  %exitcond20.not = icmp eq i32 %i.hs, %i.aa
  br i1 %exitcond20.not, label %._crit_edge10.split.loopexit, label %.preheader, !llvm.loop !34

bb.aq:                                            ; preds = %.preheader, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit
  %i.ht = phi i16 [ %.promoted815, %.preheader ], [ %.033.i.i.i18.i81, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit ]
  %i.hu = phi i16 [ %.promoted713, %.preheader ], [ %.033.i.i.i14.i78, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit ]
  %.033.i.i.i11.i6 = phi i16 [ %.promoted12, %.preheader ], [ %.033.i.i.i11.i, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit ]
  %.0695 = phi i32 [ 0, %.preheader ], [ %i.qe, %_ZN12_GLOBAL__N_13addEfRN7Imf_3_44RgbaE.exit ] ; 2 uses
  %i.hv = uitofp nneg i32 %.0695 to double
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.s, double %i.ab)
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.m, double %i.hw, double %10)
  %i.hy = insertelement <2 x double> poison, double %i.hx, i64 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ar
  %.04 = phi i32 [ 0, %bb.aq ], [ %i.ij, %bb.ar ] ; 2 uses
  %.0673 = phi double [ %13, %bb.aq ], [ %i.in, %bb.ar ] ; 3 uses
  %.0682 = phi double [ %12, %bb.aq ], [ %i.ii, %bb.ar ] ; 2 uses
  %i.hz = fneg double %.0673
  %i.ia = fmul double %.0673, %i.hz
  %i.ib = fmul double %.0682, 2.000000e+00
  %i.ic = insertelement <2 x double> poison, double %.0682, i64 0 ; 2 uses
  %i.id = insertelement <2 x double> %i.ic, double %i.ib, i64 1
  %i.ie = insertelement <2 x double> %i.ic, double %.0673, i64 1
  %i.if = insertelement <2 x double> %i.hy, double %i.ia, i64 0
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.ie, <2 x double> %i.if) ; 2 uses
  %i.ih = extractelement <2 x double> %i.ig, i64 0 ; 2 uses
  %i.ii = fadd double %i.ak, %i.ih
  %i.ij = add nuw nsw i32 %.04, 1                 ; 2 uses
  %i.ik = icmp samesign ult i32 %.04, 255
  %i.il = fcmp olt double %i.ih, 1.000000e+02
  %i.im = select i1 %i.ik, i1 %i.il, i1 false
  %i.in = extractelement <2 x double> %i.ig, i64 1
  br i1 %i.im, label %bb.ar, label %bb.as, !llvm.loop !35

bb.as:                                            ; preds = %bb.ar
  %i.io = uitofp nneg i32 %i.ij to float
  %i.ip = fmul nnan float %i.io, 3.906250e-03     ; 2 uses
  %i.iq = bitcast float %i.ip to i32              ; 10 uses
  %i.ir = icmp samesign ugt i32 %i.iq, 947912703
  br i1 %i.ir, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.is = icmp samesign ugt i32 %i.iq, 2139095039
  br i1 %i.is, label %bb.au, label %bb.aw, !prof !20

bb.au:                                            ; preds = %bb.at
  %i.it = icmp eq i32 %i.iq, 2139095040
  br i1 %i.it, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iu = lshr i32 %i.iq, 13
  %i.iv = and i32 %i.iu, 1023                     ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = zext i1 %i.iw to i16
  %i.iy = trunc nuw nsw i32 %i.iv to i16
  %i.iz = or i16 %i.iy, %i.ix
  %i.ja = or disjoint i16 %i.iz, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.aw:                                            ; preds = %bb.at
  %i.jb = icmp samesign ugt i32 %i.iq, 1199566847
  br i1 %i.jb, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.ax, !prof !20

bb.ax:                                            ; preds = %bb.aw
  %i.jc = add nuw nsw i32 %i.iq, 134221823
  %i.jd = lshr i32 %i.iq, 13
  %i.je = and i32 %i.jd, 1
  %i.jf = add nuw nsw i32 %i.jc, %i.je
  %i.jg = lshr i32 %i.jf, 13
  %i.jh = trunc i32 %i.jg to i16
  br label %_ZN9Imath_3_24halfaSEf.exit.i

bb.ay:                                            ; preds = %bb.as
  %i.ji = icmp samesign ult i32 %i.iq, 855638017
  br i1 %i.ji, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jj = lshr i32 %i.iq, 23                      ; 2 uses
  %i.jk = sub nuw nsw i32 126, %i.jj
  %i.jl = and i32 %i.iq, 8388607
  %i.jm = or disjoint i32 %i.jl, 8388608          ; 2 uses
  %i.jn = add nsw i32 %i.jj, -94
  %i.jo = shl i32 %i.jm, %i.jn                    ; 2 uses
  %i.jp = lshr i32 %i.jm, %i.jk                   ; 2 uses
  %i.jq = trunc nuw nsw i32 %i.jp to i16          ; 2 uses
  %i.jr = icmp ugt i32 %i.jo, -2147483648
  br i1 %i.jr, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.js = icmp ne i32 %i.jo, -2147483648
  %i.jt = and i32 %i.jp, 1
  %.not.i.i.i.i73 = icmp eq i32 %i.jt, 0
  %or.cond.i.i.i.i74 = select i1 %i.js, i1 true, i1 %.not.i.i.i.i73
  br i1 %or.cond.i.i.i.i74, label %_ZN9Imath_3_24halfaSEf.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ju = add nuw nsw i16 %i.jq, 1
  br label %_ZN9Imath_3_24halfaSEf.exit.i

_ZN9Imath_3_24halfaSEf.exit.i:                    ; preds = %bb.aw, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.av, %bb.au
  %.033.i.i.i.i75 = phi i16 [ 0, %bb.ay ], [ %i.ja, %bb.av ], [ %i.jq, %bb.ba ], [ %i.jh, %bb.ax ], [ 31744, %bb.au ], [ %i.ju, %bb.bb ], [ 31744, %bb.aw ]
  store i16 %.033.i.i.i.i75, ptr %i.ag, align 2, !tbaa !9
  %i.jv = fmul nnan float %i.ip, 4.000000e+00     ; 4 uses
  %i.jw = fptosi float %i.jv to i32
  %i.jx = sitofp i32 %i.jw to float
  %i.jy = fsub nnan float %i.jv, %i.jx
  %i.jz = fmul nnan float %i.jy, 2.000000e+00     ; 3 uses
  %i.ka = fcmp olt float %i.jz, 1.000000e+00
  %i.kb = fsub float 2.000000e+00, %i.jz
  %i.kc = select i1 %i.ka, float %i.jz, float %i.kb
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.kc, float 4.000000e+00, float 1.000000e-01)
  %i.ke = zext i16 %.033.i.i.i11.i6 to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !19
  %i.kh = fadd float %i.kd, %i.kg                 ; 2 uses
  %i.ki = bitcast float %i.kh to i32
  %i.kj = tail call float @llvm.fabs.f32(float %i.kh)
  %i.kk = bitcast float %i.kj to i32              ; 10 uses
  %i.kl = lshr i32 %i.ki, 16                      ; 3 uses
  %i.km = trunc nuw i32 %i.kl to i16
  %i.kn = and i16 %i.km, -32768                   ; 3 uses
  %i.ko = icmp samesign ugt i32 %i.kk, 947912703
  br i1 %i.ko, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit.i
  %i.kp = icmp samesign ugt i32 %i.kk, 2139095039
  br i1 %i.kp, label %bb.bd, label %bb.bf, !prof !20

bb.bd:                                            ; preds = %bb.bc
  %i.kq = or disjoint i16 %i.kn, 31744            ; 2 uses
  %i.kr = icmp eq i32 %i.kk, 2139095040
  br i1 %i.kr, label %_ZN9Imath_3_24halfpLEf.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ks = lshr i32 %i.kk, 13
  %i.kt = and i32 %i.ks, 1023                     ; 2 uses
  %i.ku = icmp eq i32 %i.kt, 0
  %i.kv = zext i1 %i.ku to i16
  %i.kw = trunc nuw nsw i32 %i.kt to i16
  %i.kx = or i16 %i.kw, %i.kv
  %i.ky = or disjoint i16 %i.kx, %i.kq
  br label %_ZN9Imath_3_24halfpLEf.exit.i

bb.bf:                                            ; preds = %bb.bc
  %i.kz = icmp samesign ugt i32 %i.kk, 1199566847
  br i1 %i.kz, label %bb.bg, label %bb.bh, !prof !20

bb.bg:                                            ; preds = %bb.bf
  %i.la = or disjoint i16 %i.kn, 31744
  br label %_ZN9Imath_3_24halfpLEf.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.lb = add nuw nsw i32 %i.kk, 134221823
  %i.lc = lshr i32 %i.kk, 13
  %i.ld = and i32 %i.lc, 1
  %i.le = add nuw nsw i32 %i.lb, %i.ld
  %i.lf = lshr i32 %i.le, 13
  %i.lg = and i32 %i.kl, 32768
  %i.lh = or i32 %i.lf, %i.lg
  %i.li = trunc i32 %i.lh to i16
  br label %_ZN9Imath_3_24halfpLEf.exit.i

bb.bi:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit.i
  %i.lj = icmp samesign ult i32 %i.kk, 855638017
  br i1 %i.lj, label %_ZN9Imath_3_24halfpLEf.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lk = lshr i32 %i.kk, 23                      ; 2 uses
  %i.ll = sub nuw nsw i32 126, %i.lk
  %i.lm = and i32 %i.kk, 8388607
  %i.ln = or disjoint i32 %i.lm, 8388608          ; 2 uses
  %i.lo = add nsw i32 %i.lk, -94
  %i.lp = shl i32 %i.ln, %i.lo                    ; 2 uses
  %i.lq = lshr i32 %i.ln, %i.ll                   ; 2 uses
  %i.lr = and i32 %i.kl, 32768
  %i.ls = or i32 %i.lq, %i.lr
  %i.lt = trunc nuw i32 %i.ls to i16              ; 2 uses
  %i.lu = icmp ugt i32 %i.lp, -2147483648
  br i1 %i.lu, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lv = icmp ne i32 %i.lp, -2147483648
  %i.lw = and i32 %i.lq, 1
  %.not.i.i.i9.i = icmp eq i32 %i.lw, 0
  %or.cond.i.i.i10.i = select i1 %i.lv, i1 true, i1 %.not.i.i.i9.i
  br i1 %or.cond.i.i.i10.i, label %_ZN9Imath_3_24halfpLEf.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.lx = add nuw i16 %i.lt, 1
  br label %_ZN9Imath_3_24halfpLEf.exit.i

_ZN9Imath_3_24halfpLEf.exit.i:                    ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bg, %bb.be, %bb.bd
  %.033.i.i.i11.i = phi i16 [ %i.kn, %bb.bi ], [ %i.ky, %bb.be ], [ %i.la, %bb.bg ], [ %i.li, %bb.bh ], [ %i.kq, %bb.bd ], [ %i.lx, %bb.bl ], [ %i.lt, %bb.bk ] ; 4 uses
  store i16 %.033.i.i.i11.i, ptr %i.ac, align 2, !tbaa !9
  %i.ly = fadd float %i.jv, 3.333300e-01          ; 2 uses
end_hunk_0
