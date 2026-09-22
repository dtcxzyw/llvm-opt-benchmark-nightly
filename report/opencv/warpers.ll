Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/warpers?download=true
inline.NumInlined: 2598
inline.NumDeleted: 872
begin_hunk_0_@_ZN2cv6detail12AffineWarper7warpRoiENS_5Size_IiEERKNS_11_InputArrayES6_:bb.a
  %i.t = call i32 @llvm.smin.i32(i32 %i.p, i32 %i.s) ; 2 uses
  %i.u = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.n)
  %i.v = sub nsw i32 %i.u, %i.r
  %i.w = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.p)
  %i.x = sub nsw i32 %i.w, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.sroa.2.0.insert.ext.i = zext i32 %i.t to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.07.0.insert.ext.i = zext i32 %i.r to i64
  %.sroa.07.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.07.0.insert.ext.i
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.07.0.insert.insert.i, 0
  %.sroa.58.8.insert.ext.i = zext i32 %i.x to i64
  %.sroa.58.8.insert.shift.i = shl nuw i64 %.sroa.58.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.v to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.58.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.3.8.insert.insert.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret { i64, i64 } %.fca.1.insert.i

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %.noexc, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.y, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #7

declare void @_ZN2cvmlERKNS_7MatExprEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv6detail15SphericalWarper15detectResultRoiENS_5Size_IiEERNS_6Point_IiEES6_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) unnamed_addr #4 align 2 {
bb.a:
  %.sroa.034.0.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  tail call void @_ZN2cv6detail18RotationWarperBaseINS0_18SphericalProjectorEE23detectResultRoiByBorderENS_5Size_IiEERNS_6Point_IiEES8_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.a = load i32, ptr %2, align 4, !tbaa !86     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !87
  %i.d = sitofp i32 %i.c to float                 ; 5 uses
  %i.e = load <2 x i32>, ptr %3, align 4, !tbaa !28
  %i.f = load i32, ptr %3, align 4, !tbaa !86
  %i.g = sitofp <2 x i32> %i.e to <2 x float>     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load float, ptr %i.j, align 8, !tbaa !34 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.m = fcmp ogt float %i.k, 0.000000e+00
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = load float, ptr %i.l, align 4, !tbaa !34 ; 2 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !34
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
  %i.ay = load float, ptr %i.l, align 4, !tbaa !34 ; 2 uses
  %i.az = load float, ptr %i.i, align 4, !tbaa !34
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN2cv6detail18RotationWarperBaseINS0_18SphericalProjectorEE23detectResultRoiByBorderENS_5Size_IiEERNS_6Point_IiEES8_(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
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
  %4 = load <9 x float>, ptr %i.d, align 4, !tbaa !34 ; 9 uses
  %i.e = load <4 x float>, ptr %i.c, align 8
  %i.f = add nsw i32 %.sroa.3.0.extract.trunc, -1
  %i.g = sitofp i32 %i.f to float
  %5 = shufflevector <9 x float> %4, <9 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.h = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.g, i64 0 ; 3 uses
  %i.i = fmul <2 x float> %5, %i.h
  %6 = shufflevector <9 x float> %4, <9 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.j = fmul <2 x float> %6, %i.h
  %7 = shufflevector <9 x float> %4, <9 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.k = fmul <2 x float> %7, %i.h
  %i.l = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %8 = shufflevector <9 x float> %4, <9 x float> poison, <2 x i32> <i32 5, i32 5>
  %9 = shufflevector <9 x float> %4, <9 x float> poison, <2 x i32> <i32 3, i32 3>
  %10 = shufflevector <9 x float> %4, <9 x float> poison, <2 x i32> <i32 8, i32 8>
  %11 = shufflevector <9 x float> %4, <9 x float> poison, <2 x i32> <i32 6, i32 6>
  %12 = shufflevector <9 x float> %4, <9 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.m = shufflevector <9 x float> %4, <9 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.b
  %i.n = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.o = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ], [ %i.n, %.preheader.loopexit ] ; 2 uses
  %i.p = icmp sgt i32 %.sroa.3.0.extract.trunc, 0
  br i1 %i.p, label %.lr.ph132, label %._crit_edge

.lr.ph132:                                        ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.s = load float, ptr %i.r, align 4, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load float, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.w = load float, ptr %i.v, align 4, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load float, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aa = load float, ptr %i.z, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load float, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !34
  %i.aj = load float, ptr %i.q, align 8, !tbaa !78
  %i.ak = add nsw i32 %.sroa.0.0.extract.trunc, -1
  %i.al = sitofp i32 %i.ak to float
  %i.am = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = insertelement <3 x float> poison, float %i.aa, i64 0
  %i.ap = insertelement <3 x float> %i.ao, float %i.ag, i64 1
  %i.aq = insertelement <3 x float> %i.ap, float %i.u, i64 2
  %i.ar = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x float> poison, float %i.y, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x float> poison, float %i.s, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.014123 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cw, %bb.b ] ; 2 uses
  %i.be = phi <4 x float> [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph ], [ %i.cv, %bb.b ] ; 3 uses
  %i.bf = insertelement <2 x float> poison, float %.014123, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.bg, <2 x float> %i.i)
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.bg, <2 x float> %i.j)
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.bg, <2 x float> %i.k)
  %i.bk = fadd <2 x float> %12, %i.bh             ; 4 uses
  %i.bl = fadd <2 x float> %10, %i.bj             ; 4 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 1
  %i.bn = extractelement <2 x float> %i.bk, i64 1
  %i.bo = tail call float @atan2f(float noundef %i.bn, float noundef %i.bm) #19
  %i.bp = fadd <2 x float> %8, %i.bi              ; 3 uses
  %i.bq = fmul <2 x float> %i.bp, %i.bp
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bk, <2 x float> %i.bq)
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bl, <2 x float> %i.br)
  %i.bt = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bs)
  %i.bu = fdiv <2 x float> %i.bp, %i.bt           ; 2 uses
  %i.bv = fcmp ord <2 x float> %i.bu, zeroinitializer
  %i.bw = extractelement <2 x float> %i.bl, i64 0
  %i.bx = extractelement <2 x float> %i.bk, i64 0
  %i.by = select <2 x i1> %i.bv, <2 x float> %i.bu, <2 x float> zeroinitializer ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 1
  %i.ca = tail call float @acosf(float noundef %i.bz) #19
  %i.cb = fsub float f0x40490FDB, %i.ca
  %i.cc = tail call float @atan2f(float noundef %i.bx, float noundef %i.bw) #19
  %i.cd = extractelement <2 x float> %i.by, i64 0
  %i.ce = tail call float @acosf(float noundef %i.cd) #19
  %i.cf = fsub float f0x40490FDB, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.bo, i64 1
  %i.ci = fmul <2 x float> %i.l, %i.ch
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ck = shufflevector <4 x float> %i.be, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cm = fcmp olt <4 x float> %i.ck, %i.cl
  %i.cn = select <4 x i1> %i.cm, <4 x float> %i.cj, <4 x float> %i.be ; 3 uses
  %i.co = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.cc, i64 1
  %i.cq = fmul <2 x float> %i.l, %i.cp
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.cs = shufflevector <4 x float> %i.cn, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cu = fcmp olt <4 x float> %i.cs, %i.ct
  %i.cv = select <4 x i1> %i.cu, <4 x float> %i.cr, <4 x float> %i.cn ; 2 uses
  %i.cw = fadd float %.014123, 1.000000e+00       ; 2 uses
  %i.cx = fcmp olt float %i.cw, %i.a
  br i1 %i.cx, label %bb.b, label %.preheader.loopexit, !llvm.loop !249

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.cy = phi <4 x float> [ %i.o, %.preheader ], [ %i.ff, %bb.c ] ; 4 uses
  %i.cz = extractelement <4 x float> %i.cy, i64 0
  %i.da = fptosi float %i.cz to i32
  store i32 %i.da, ptr %2, align 4, !tbaa !86
  %i.db = extractelement <4 x float> %i.cy, i64 1
  %i.dc = fptosi float %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !87
  %i.de = extractelement <4 x float> %i.cy, i64 2
  %i.df = fptosi float %i.de to i32
  store i32 %i.df, ptr %3, align 4, !tbaa !86
  %i.dg = extractelement <4 x float> %i.cy, i64 3
  %i.dh = fptosi float %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !87
  ret void

bb.c:                                             ; preds = %.lr.ph132, %bb.c
  %.0131 = phi i32 [ 0, %.lr.ph132 ], [ %i.fg, %bb.c ] ; 2 uses
  %i.dj = phi <4 x float> [ %i.o, %.lr.ph132 ], [ %i.ff, %bb.c ] ; 3 uses
  %i.dk = uitofp nneg i32 %.0131 to float
  %i.dl = insertelement <3 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <3 x float> %i.dl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dn = fmul <3 x float> %i.aq, %i.dm           ; 3 uses
  %i.do = shufflevector <3 x float> %i.dn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.do)
  %i.dq = fadd <2 x float> %i.ba, %i.dp           ; 4 uses
  %i.dr = shufflevector <3 x float> %i.dn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.bd, <2 x float> %i.dr)
  %i.dt = fadd <2 x float> %i.aw, %i.ds           ; 4 uses
  %i.du = extractelement <2 x float> %i.dt, i64 1
  %i.dv = extractelement <2 x float> %i.dq, i64 1
  %i.dw = tail call float @atan2f(float noundef %i.dv, float noundef %i.du) #19
  %i.dx = shufflevector <3 x float> %i.dn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.bd, <2 x float> %i.dx)
  %i.dz = fadd <2 x float> %i.as, %i.dy           ; 3 uses
  %i.ea = fmul <2 x float> %i.dz, %i.dz
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.dq, <2 x float> %i.ea)
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.dt, <2 x float> %i.eb)
  %i.ed = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ec)
  %i.ee = fdiv <2 x float> %i.dz, %i.ed           ; 2 uses
  %i.ef = fcmp ord <2 x float> %i.ee, zeroinitializer
  %i.eg = extractelement <2 x float> %i.dt, i64 0
  %i.eh = extractelement <2 x float> %i.dq, i64 0
  %i.ei = select <2 x i1> %i.ef, <2 x float> %i.ee, <2 x float> zeroinitializer ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 1
  %i.ek = tail call float @acosf(float noundef %i.ej) #19
  %i.el = fsub float f0x40490FDB, %i.ek
  %i.em = tail call float @atan2f(float noundef %i.eh, float noundef %i.eg) #19
  %i.en = extractelement <2 x float> %i.ei, i64 0
  %i.eo = tail call float @acosf(float noundef %i.en) #19
  %i.ep = fsub float f0x40490FDB, %i.eo
  %i.eq = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.el, i64 1
  %i.es = fmul <2 x float> %i.an, %i.er
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ev = shufflevector <4 x float> %i.dj, <4 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ew = fcmp olt <4 x float> %i.eu, %i.ev
  %i.ex = select <4 x i1> %i.ew, <4 x float> %i.et, <4 x float> %i.dj ; 3 uses
  %i.ey = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.ep, i64 1
  %i.fa = fmul <2 x float> %i.an, %i.ez
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fd = shufflevector <4 x float> %i.ex, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fe = fcmp olt <4 x float> %i.fc, %i.fd
  %i.ff = select <4 x i1> %i.fe, <4 x float> %i.fb, <4 x float> %i.ex ; 2 uses
  %i.fg = add nuw nsw i32 %.0131, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fg, %.sroa.3.0.extract.trunc
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
  %i.a = load i32, ptr %2, align 4, !tbaa !86     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !87
  %i.d = sitofp i32 %i.c to float                 ; 5 uses
  %i.e = load <2 x i32>, ptr %3, align 4, !tbaa !28
  %i.f = load i32, ptr %3, align 4, !tbaa !86
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
end_hunk_0
