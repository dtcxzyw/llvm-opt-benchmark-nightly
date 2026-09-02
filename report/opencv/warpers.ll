Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/warpers?download=true
inline.NumInlined: 2598
inline.NumDeleted: 872
begin_hunk_0_@_ZN2cv6detail18RotationWarperBaseINS0_18SphericalProjectorEE23detectResultRoiByBorderENS_5Size_IiEERNS_6Point_IiEES8_:bb.a
  %i.dz = fadd <2 x float> %i.bj, %i.dy           ; 4 uses
  %i.ea = shufflevector <3 x float> %i.dw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bm, <2 x float> %i.ea)
  %i.ec = fadd <2 x float> %i.bf, %i.eb           ; 4 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 1
  %i.ee = extractelement <2 x float> %i.dz, i64 1
  %i.ef = tail call float @atan2f(float noundef %i.ee, float noundef %i.ed) #19
  %i.eg = shufflevector <3 x float> %i.dw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bm, <2 x float> %i.eg)
  %i.ei = fadd <2 x float> %i.bb, %i.eh           ; 3 uses
  %i.ej = fmul <2 x float> %i.ei, %i.ei
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.dz, <2 x float> %i.ej)
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ec, <2 x float> %i.ek)
  %i.em = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.el)
  %i.en = fdiv <2 x float> %i.ei, %i.em           ; 2 uses
  %i.eo = fcmp ord <2 x float> %i.en, zeroinitializer
  %i.ep = extractelement <2 x float> %i.ec, i64 0
  %i.eq = extractelement <2 x float> %i.dz, i64 0
  %i.er = select <2 x i1> %i.eo, <2 x float> %i.en, <2 x float> zeroinitializer ; 2 uses
  %i.es = extractelement <2 x float> %i.er, i64 1
  %i.et = tail call float @acosf(float noundef %i.es) #19
  %i.eu = fsub float f0x40490FDB, %i.et
  %i.ev = tail call float @atan2f(float noundef %i.eq, float noundef %i.ep) #19
  %i.ew = extractelement <2 x float> %i.er, i64 0
  %i.ex = tail call float @acosf(float noundef %i.ew) #19
  %i.ey = fsub float f0x40490FDB, %i.ex
  %i.ez = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.eu, i64 1
  %i.fb = fmul <2 x float> %i.aw, %i.fa
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fe = shufflevector <4 x float> %i.ds, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ff = fcmp olt <4 x float> %i.fd, %i.fe
  %i.fg = select <4 x i1> %i.ff, <4 x float> %i.fc, <4 x float> %i.ds ; 3 uses
  %i.fh = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 1
  %i.fj = fmul <2 x float> %i.aw, %i.fi
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fm = shufflevector <4 x float> %i.fg, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fn = fcmp olt <4 x float> %i.fl, %i.fm
  %i.fo = select <4 x i1> %i.fn, <4 x float> %i.fk, <4 x float> %i.fg ; 2 uses
  %i.fp = add nuw nsw i32 %.0131, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fp, %.sroa.3.0.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !250
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail23SphericalPortraitWarper15detectResultRoiENS_5Size_IiEERNS_6Point_IiEES6_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.034.0.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  tail call void @_ZN2cv6detail18RotationWarperBaseINS0_26SphericalPortraitProjectorEE23detectResultRoiByBorderENS_5Size_IiEERNS_6Point_IiEES8_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.a = load i32, ptr %2, align 4, !tbaa !85     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !86
  %i.d = sitofp i32 %i.c to float                 ; 5 uses
  %i.e = load <2 x i32>, ptr %3, align 4, !tbaa !28
  %i.f = load i32, ptr %3, align 4, !tbaa !85
  %i.g = sitofp <2 x i32> %i.e to <2 x float>     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load float, ptr %i.j, align 4, !tbaa !34 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = fcmp ogt float %i.k, 0.000000e+00
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = load float, ptr %i.l, align 8, !tbaa !34 ; 2 uses
  %i.o = load float, ptr %i.i, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load float, ptr %i.r, align 8, !tbaa !34
  %i.t = fmul float %i.k, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.q, float %i.o, float %i.t)
  %i.v = fdiv float %i.u, %i.n
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !34
  %i.y = fadd float %i.x, %i.v                    ; 2 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !34
  %i.ac = fmul float %i.k, %i.ab
  %i.ad = fdiv float %i.ac, %i.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load float, ptr %i.ae, align 8, !tbaa !34
  %i.ag = fadd float %i.af, %i.ad                 ; 2 uses
  %i.ah = sitofp i32 %.sroa.034.0.extract.trunc to float
  %i.ai = fcmp olt float %i.y, %i.ah
  %i.aj = fcmp ogt float %i.ag, 0.000000e+00
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  %i.ak = sitofp i32 %.sroa.4.0.extract.trunc to float
  %i.al = fcmp olt float %i.ag, %i.ak
  %or.cond43 = select i1 %or.cond, i1 %i.al, i1 false
  br i1 %or.cond43, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated7898 = tail call i32 @llvm.smin.i32(i32 %i.a, i32 0)
  %i.am = load float, ptr %i.h, align 8, !tbaa !78
  %i.an = fpext float %i.am to double
  %i.ao = fmul double %i.an, f0x400921FB54442D18
  %i.ap = fptrunc double %i.ao to float           ; 4 uses
  %i.aq = fcmp olt float %i.ap, %i.d
  %.sroa.speculated74 = select i1 %i.aq, float %i.ap, float %i.d
  %.sroa.speculated7099 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %.sroa.speculated70 = uitofp nneg i32 %.sroa.speculated7099 to float
  %i.ar = extractelement <2 x float> %i.g, i64 1  ; 2 uses
  %i.as = fcmp olt float %i.ar, %i.ap
  %.sroa.speculated66 = select i1 %i.as, float %i.ap, float %i.ar
  %i.at = insertelement <2 x float> poison, float %.sroa.speculated70, i64 0
  %i.au = insertelement <2 x float> %i.at, float %.sroa.speculated66, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.092 = phi float [ %.sroa.speculated74, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %i.d, %bb.a ] ; 5 uses
  %.0.in = phi i32 [ %.sroa.speculated7898, %bb.d ], [ %i.a, %bb.c ], [ %i.a, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.av = phi <2 x float> [ %i.au, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 5 uses
  %i.aw = fcmp olt float %i.k, 0.000000e+00
  br i1 %i.aw, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ax = fneg float %i.k                         ; 2 uses
  %i.ay = load float, ptr %i.l, align 8, !tbaa !34 ; 2 uses
  %i.az = load float, ptr %i.i, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !34
  %i.be = fmul float %i.bd, %i.ax
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.az, float %i.be)
  %i.bg = fdiv float %i.bf, %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !34
  %i.bj = fadd float %i.bi, %i.bg                 ; 2 uses
  %i.bk = fcmp ogt float %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !34
  %i.bn = fmul float %i.bm, %i.ax
  %i.bo = fdiv float %i.bn, %i.ay
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !34
  %i.br = fadd float %i.bq, %i.bo                 ; 2 uses
  %i.bs = sitofp i32 %.sroa.034.0.extract.trunc to float
  %i.bt = fcmp olt float %i.bj, %i.bs
  %i.bu = fcmp ogt float %i.br, 0.000000e+00
  %or.cond3 = select i1 %i.bt, i1 %i.bu, i1 false
  %i.bv = sitofp i32 %.sroa.4.0.extract.trunc to float
  %i.bw = fcmp olt float %i.br, %i.bv
  %or.cond45 = select i1 %or.cond3, i1 %i.bw, i1 false
  br i1 %or.cond45, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.speculated62100 = tail call i32 @llvm.smin.i32(i32 %.0.in, i32 0)
  %i.bx = fcmp ogt float %.092, 0.000000e+00
  %.sroa.speculated58 = select i1 %i.bx, float 0.000000e+00, float %.092
  %i.by = fcmp olt <2 x float> %i.av, zeroinitializer
  %i.bz = select <2 x i1> %i.by, <2 x float> zeroinitializer, <2 x float> %i.av
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  %.193 = phi float [ %.sroa.speculated58, %bb.h ], [ %.092, %bb.g ], [ %.092, %bb.f ], [ %.092, %bb.e ]
  %.1.in = phi i32 [ %.sroa.speculated62100, %bb.h ], [ %.0.in, %bb.g ], [ %.0.in, %bb.f ], [ %.0.in, %bb.e ]
  %i.ca = phi <2 x float> [ %i.bz, %bb.h ], [ %i.av, %bb.g ], [ %i.av, %bb.f ], [ %i.av, %bb.e ]
  %.1 = sitofp i32 %.1.in to float
  %i.cb = insertelement <2 x float> poison, float %.1, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %.193, i64 1
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>
  store <2 x i32> %i.cd, ptr %2, align 4, !tbaa !28
  %i.ce = fptosi <2 x float> %i.ca to <2 x i32>
  store <2 x i32> %i.ce, ptr %3, align 4, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN2cv6detail18RotationWarperBaseINS0_26SphericalPortraitProjectorEE23detectResultRoiByBorderENS_5Size_IiEERNS_6Point_IiEES8_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 3 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 3 uses
  %i.a = uitofp nneg i32 %.sroa.0.0.extract.trunc to float
  %i.b = icmp sgt i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.b, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.g = load <4 x float>, ptr %i.e, align 8
  %i.h = load <4 x float>, ptr %i.d, align 4
  %4 = load <4 x float>, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.l = load <2 x float>, ptr %i.i, align 8, !tbaa !34 ; 2 uses
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !34 ; 2 uses
  %i.n = load <4 x float>, ptr %i.j, align 8, !tbaa !34
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.p = load <4 x float>, ptr %i.c, align 8
  %i.q = add nsw i32 %.sroa.3.0.extract.trunc, -1
  %i.r = sitofp i32 %i.q to float                 ; 2 uses
  %5 = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.r, i64 1
  %7 = fmul <2 x float> %5, %6
  %i.s = shufflevector <2 x float> %i.l, <2 x float> %i.m, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.t = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.r, i64 2
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.v = fmul <4 x float> %i.s, %i.u
  %i.w = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer
  %i.y = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> zeroinitializer
  %i.z = shufflevector <2 x float> %i.l, <2 x float> %i.m, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.b
  %i.aa = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.ab = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ], [ %i.aa, %.preheader.loopexit ] ; 2 uses
  %i.ac = icmp sgt i32 %.sroa.3.0.extract.trunc, 0
  br i1 %i.ac, label %.lr.ph132, label %._crit_edge

.lr.ph132:                                        ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.af = load float, ptr %i.ae, align 4, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = load <4 x float>, ptr %i.ak, align 8, !tbaa !34 ; 3 uses
  %i.an = load <2 x float>, ptr %i.al, align 8, !tbaa !34
  %i.ao = load float, ptr %i.ad, align 8, !tbaa !78
  %i.ap = add nsw i32 %.sroa.0.0.extract.trunc, -1
  %i.aq = sitofp i32 %i.ap to float               ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.au = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.aq, i64 2
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.aw = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.aq, i64 1
  %i.bc = shufflevector <4 x float> %i.am, <4 x float> %i.aw, <4 x i32> <i32 1, i32 4, i32 1, i32 4>
  %i.bd = shufflevector <4 x float> %i.am, <4 x float> %i.aw, <4 x i32> <i32 2, i32 5, i32 2, i32 5>
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.014123 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cy, %bb.b ] ; 3 uses
  %i.be = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph ], [ %i.cx, %bb.b ] ; 3 uses
  %i.bf = insertelement <2 x float> poison, float %.014123, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.bg, <2 x float> %7)
  %i.bi = insertelement <4 x float> poison, float %.014123, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.bj, <4 x float> %i.v)
  %i.bl = fadd <4 x float> %i.o, %i.bk            ; 6 uses
  %i.bm = extractelement <4 x float> %i.bl, i64 0
  %i.bn = extractelement <4 x float> %i.bl, i64 1
  %i.bo = tail call float @atan2f(float noundef %i.bm, float noundef %i.bn) #19
  %i.bp = fneg float %i.bo
  %i.bq = extractelement <4 x float> %i.bl, i64 2
  %i.br = extractelement <4 x float> %i.bl, i64 3
  %i.bs = fadd <2 x float> %i.x, %i.bh            ; 3 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs
  %i.bu = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bu, <2 x float> %i.bt)
  %i.bw = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bw, <2 x float> %i.bv)
  %i.by = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bx)
  %i.bz = fdiv <2 x float> %i.bs, %i.by           ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0
  %i.cb = tail call float @acosf(float noundef %i.ca) #19
  %i.cc = fsub float f0x40490FDB, %i.cb
  %i.cd = tail call float @atan2f(float noundef %i.bq, float noundef %i.br) #19
  %i.ce = extractelement <2 x float> %i.bz, i64 1
  %i.cf = tail call float @acosf(float noundef %i.ce) #19
  %i.cg = fsub float f0x40490FDB, %i.cf
  %i.ch = fneg float %i.cd
  %i.ci = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.bp, i64 1
  %i.ck = fmul <2 x float> %i.w, %i.cj
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.cm = shufflevector <4 x float> %i.be, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.co = fcmp olt <4 x float> %i.cm, %i.cn
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.cl, <4 x float> %i.be ; 3 uses
  %i.cq = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.ch, i64 1
  %i.cs = fmul <2 x float> %i.w, %i.cr
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.cu = shufflevector <4 x float> %i.cp, <4 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cw = fcmp olt <4 x float> %i.cu, %i.cv
  %i.cx = select <4 x i1> %i.cw, <4 x float> %i.ct, <4 x float> %i.cp ; 2 uses
  %i.cy = fadd float %.014123, 1.000000e+00       ; 2 uses
  %i.cz = fcmp olt float %i.cy, %i.a
  br i1 %i.cz, label %bb.b, label %.preheader.loopexit, !llvm.loop !251

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.da = phi <4 x float> [ %i.ab, %.preheader ], [ %i.fh, %bb.c ] ; 4 uses
  %i.db = extractelement <4 x float> %i.da, i64 0
  %i.dc = fptosi float %i.db to i32
  store i32 %i.dc, ptr %2, align 4, !tbaa !85
  %i.dd = extractelement <4 x float> %i.da, i64 1
  %i.de = fptosi float %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.de, ptr %i.df, align 4, !tbaa !86
  %i.dg = extractelement <4 x float> %i.da, i64 2
  %i.dh = fptosi float %i.dg to i32
  store i32 %i.dh, ptr %3, align 4, !tbaa !85
  %i.di = extractelement <4 x float> %i.da, i64 3
  %i.dj = fptosi float %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !86
  ret void

bb.c:                                             ; preds = %.lr.ph132, %bb.c
  %.0131 = phi i32 [ 0, %.lr.ph132 ], [ %i.fi, %bb.c ] ; 2 uses
  %i.dl = phi <4 x float> [ %i.ab, %.lr.ph132 ], [ %i.fh, %bb.c ] ; 3 uses
  %i.dm = uitofp nneg i32 %.0131 to float         ; 2 uses
  %i.dn = fmul float %i.ah, %i.dm
  %i.do = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul <4 x float> %i.bc, %i.dp
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.av, <4 x float> %i.dq)
  %i.ds = fadd <4 x float> %i.bd, %i.dr           ; 6 uses
  %i.dt = extractelement <4 x float> %i.ds, i64 0
  %i.du = extractelement <4 x float> %i.ds, i64 1
  %i.dv = tail call float @atan2f(float noundef %i.dt, float noundef %i.du) #19
  %i.dw = fneg float %i.dv
  %i.dx = extractelement <4 x float> %i.ds, i64 2
  %i.dy = extractelement <4 x float> %i.ds, i64 3
  %i.dz = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bb, <2 x float> %i.ea)
  %i.ec = fadd <2 x float> %i.ay, %i.eb           ; 3 uses
  %i.ed = fmul <2 x float> %i.ec, %i.ec
  %i.ee = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ee, <2 x float> %i.ed)
  %i.eg = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.eg, <2 x float> %i.ef)
  %i.ei = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.eh)
  %i.ej = fdiv <2 x float> %i.ec, %i.ei           ; 2 uses
  %i.ek = extractelement <2 x float> %i.ej, i64 0
  %i.el = tail call float @acosf(float noundef %i.ek) #19
  %i.em = fsub float f0x40490FDB, %i.el
  %i.en = tail call float @atan2f(float noundef %i.dx, float noundef %i.dy) #19
  %i.eo = extractelement <2 x float> %i.ej, i64 1
  %i.ep = tail call float @acosf(float noundef %i.eo) #19
  %i.eq = fsub float f0x40490FDB, %i.ep
  %i.er = fneg float %i.en
  %i.es = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.em, i64 1
  %i.eu = fmul <2 x float> %i.as, %i.et
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ex = shufflevector <4 x float> %i.dl, <4 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ey = fcmp olt <4 x float> %i.ew, %i.ex
  %i.ez = select <4 x i1> %i.ey, <4 x float> %i.ev, <4 x float> %i.dl ; 3 uses
  %i.fa = insertelement <2 x float> poison, float %i.er, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.eq, i64 1
  %i.fc = fmul <2 x float> %i.as, %i.fb
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ff = shufflevector <4 x float> %i.ez, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fg = fcmp olt <4 x float> %i.fe, %i.ff
  %i.fh = select <4 x i1> %i.fg, <4 x float> %i.fd, <4 x float> %i.ez ; 2 uses
  %i.fi = add nuw nsw i32 %.0131, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fi, %.sroa.3.0.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !252
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN2cv6detail15SphericalWarper9buildMapsENS_5Size_IiEERKNS_11_InputArrayES6_RKNS_12_OutputArrayES9_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZN2cv6detail18RotationWarperBaseINS0_18SphericalProjectorEE9buildMapsENS_5Size_IiEERKNS_11_InputArrayES8_RKNS_12_OutputArrayESB_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN2cv6detail18RotationWarperBaseINS0_18SphericalProjectorEE9buildMapsENS_5Size_IiEERKNS_11_InputArrayES8_RKNS_12_OutputArrayESB_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::_InputArray", align 8   ; 5 uses
  %7 = alloca %"class.cv::MatExpr", align 8       ; 9 uses
  %8 = alloca %"class.cv::Point_.52", align 4     ; 9 uses
  %9 = alloca %"class.cv::Point_.52", align 4     ; 9 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %7, i32 noundef 3, i32 noundef 1, i32 noundef 5)
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(688) %7)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv6detail13ProjectorBase15setCameraParamsERKNS_11_InputArrayES4_S4_(ptr noundef nonnull align 4 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 0, ptr %8, align 4, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  store i32 0, ptr %i.e, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 0, ptr %9, align 4, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 4 uses
  store i32 0, ptr %i.f, align 4, !tbaa !86
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
  %i.j = load i32, ptr %i.f, align 4, !tbaa !86
  %i.k = load i32, ptr %i.e, align 4, !tbaa !86
  %i.l = add i32 %i.j, 1
  %i.m = sub i32 %i.l, %i.k
  %i.n = load i32, ptr %9, align 4, !tbaa !85
  %i.o = load i32, ptr %8, align 4, !tbaa !85
  %i.p = add i32 %i.n, 1
  %i.q = sub i32 %i.p, %i.o
  call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.m, i32 noundef %i.q, i32 noundef 5, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  %i.r = load i32, ptr %i.f, align 4, !tbaa !86
  %i.s = load i32, ptr %i.e, align 4, !tbaa !86
  %i.t = add i32 %i.r, 1
  %i.u = sub i32 %i.t, %i.s
  %i.v = load i32, ptr %9, align 4, !tbaa !85
  %i.w = load i32, ptr %8, align 4, !tbaa !85
  %i.x = add i32 %i.v, 1
  %i.y = sub i32 %i.x, %i.w
  call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.u, i32 noundef %i.y, i32 noundef 5, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.z = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !259
  %i.aa = icmp eq i32 %i.z, 65536
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59, !noalias !259
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.ac)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit
end_hunk_0
