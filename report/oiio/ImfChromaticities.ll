inline.NumInlined: 44
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_58RGBtoXYZERKNS_14ChromaticitiesEf:bb.a
  %i.y = load float, ptr %i.s, align 4, !tbaa !15 ; 3 uses
  %i.z = load float, ptr %i.r, align 4, !tbaa !16 ; 4 uses
  %i.aa = load float, ptr %i.t, align 4, !tbaa !17 ; 3 uses
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = extractelement <2 x float> %i.v, i64 0  ; 3 uses
  %i.ad = fmul float %i.ac, %i.ab
  %i.ae = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 3 uses
  %i.af = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> %i.x, <2 x i32> <i32 1, i32 5>
  %i.ah = shufflevector <2 x float> %i.ae, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.ai = fsub <2 x float> %i.ag, %i.ah           ; 3 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0
  %i.ak = extractelement <4 x float> %i.x, i64 0  ; 4 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.aj, float %i.ad)
  %i.am = extractelement <2 x float> %i.ai, i64 1
  %i.an = tail call float @llvm.fmuladd.f32(float %i.z, float %i.am, float %i.al) ; 3 uses
  %i.ao = fadd float %i.w, -1.000000e+00
  %i.ap = fmul float %i.w, %i.u
  %i.aq = tail call float @llvm.fmuladd.f32(float %2, float %i.ao, float %i.ap) ; 2 uses
  %i.ar = fneg float %i.aq
  %i.as = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.at = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.aq, i64 1
  %i.av = fmul <2 x float> %i.as, %i.au
  %i.aw = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ai, <2 x float> %i.av)
  %i.az = fadd <2 x float> %i.ae, splat (float -1.000000e+00)
  %i.ba = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.ae, %i.bb
  %i.bd = insertelement <2 x float> poison, float %2, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.az, <2 x float> %i.bc) ; 3 uses
  %i.bg = fneg <2 x float> %i.v
  %i.bh = shufflevector <2 x float> %i.v, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bf, <2 x float> %i.ay) ; 3 uses
  %i.bj = extractelement <2 x float> %i.bf, i64 0
  %i.bk = fneg float %i.bj
  %i.bl = fmul float %i.ak, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.k, float %i.ab, float %i.bl)
  %i.bn = extractelement <2 x float> %i.bf, i64 1
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.z, float %i.bn, float %i.bm) ; 2 uses
  %i.bp = tail call noundef float @llvm.fabs.f32(float %i.an) ; 2 uses
  %i.bq = fcmp olt float %i.bp, 1.000000e+00
  br i1 %i.bq, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.br = extractelement <2 x float> %i.bi, i64 0
  %i.bs = tail call noundef float @llvm.fabs.f32(float %i.br)
  %i.bt = fmul nnan float %i.bp, f0x7F7FFFFF      ; 3 uses
  %i.bu = fcmp ult float %i.bs, %i.bt
  %i.bv = extractelement <2 x float> %i.bi, i64 1
  %i.bw = tail call float @llvm.fabs.f32(float %i.bv)
  %i.bx = fcmp ult float %i.bw, %i.bt
  %or.cond = select i1 %i.bu, i1 %i.bx, i1 false
  %i.by = tail call float @llvm.fabs.f32(float %i.bo)
  %i.bz = fcmp ult float %i.by, %i.bt
  %or.cond104 = select i1 %or.cond, i1 %i.bz, i1 false
  br i1 %or.cond104, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %._crit_edge
  %i.cc = insertelement <2 x float> poison, float %i.an, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fdiv <2 x float> %i.bi, %i.cd           ; 2 uses
  %i.cf = fdiv float %i.bo, %i.an                 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cn, align 4, !tbaa !7
  %i.co = extractelement <2 x float> %i.ce, i64 0 ; 3 uses
  %i.cp = fmul float %i.ak, %i.co
  store float %i.cp, ptr %0, align 4, !tbaa !7
  %i.cq = fmul float %i.aa, %i.co
  store float %i.cq, ptr %i.cg, align 4, !tbaa !7
  %i.cr = fsub float 1.000000e+00, %i.ak
  %i.cs = fsub float %i.cr, %i.aa
  %i.ct = fmul float %i.cs, %i.co
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ct, ptr %i.cu, align 4, !tbaa !7
  %i.cv = extractelement <2 x float> %i.ce, i64 1 ; 3 uses
  %i.cw = fmul float %i.z, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cw, ptr %i.cx, align 4, !tbaa !7
  %i.cy = fmul float %i.y, %i.cv
  store float %i.cy, ptr %i.ch, align 4, !tbaa !7
  %i.cz = fsub float 1.000000e+00, %i.z
  %i.da = fsub float %i.cz, %i.y
  %i.db = fmul float %i.da, %i.cv
  store float %i.db, ptr %i.cj, align 4, !tbaa !7
  %i.dc = fmul float %i.ac, %i.cf
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.dc, ptr %i.dd, align 4, !tbaa !7
  %i.de = fmul float %i.w, %i.cf
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.de, ptr %i.df, align 4, !tbaa !7
  %i.dg = fsub float 1.000000e+00, %i.ac
  %i.dh = fsub float %i.dg, %i.w
  %i.di = fmul float %i.dh, %i.cf
  store float %i.di, ptr %i.ck, align 4, !tbaa !7
  ret void

bb.k:                                             ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.ca, %bb.i ], [ %i.i, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.i ], [ %i.j, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #10
  resume { ptr, i32 } %.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_58XYZtoRGBERKNS_14ChromaticitiesEf(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, float noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.Imath_3_1::Matrix44", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_58RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_1::Matrix44") align 4 %3, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef %2)
  call void @_ZNK9Imath_3_18Matrix44IfE7inverseEv(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK9Imath_3_18Matrix44IfE7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !7
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load float, ptr %i.e, align 4, !tbaa !7
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !7
  %i.k = fcmp une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = load float, ptr %i.m, align 4, !tbaa !7
  %i.o = fcmp une float %i.n, 1.000000e+00
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZNK9Imath_3_18Matrix44IfE9gjInverseEv(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) #10
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load float, ptr %1, align 4, !tbaa !7      ; 3 uses
  %4 = load float, ptr %i.h, align 4, !tbaa !7    ; 3 uses
  %5 = load float, ptr %i.d, align 4, !tbaa !7    ; 3 uses
  %i.t = load <2 x float>, ptr %i.p, align 4, !tbaa !7 ; 4 uses
  %6 = load float, ptr %i.r, align 4, !tbaa !7    ; 2 uses
  %7 = fneg float %6                              ; 2 uses
  %i.u = load <2 x float>, ptr %i.s, align 4, !tbaa !7 ; 5 uses
  %8 = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.v = load <2 x float>, ptr %i.q, align 4, !tbaa !7 ; 5 uses
  %i.w = load float, ptr %2, align 4, !tbaa !7    ; 2 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.y = fneg <2 x float> %i.x                    ; 3 uses
  %i.z = shufflevector <2 x float> %i.u, <2 x float> %i.t, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aa = fmul <2 x float> %i.z, %i.y
  %9 = extractelement <2 x float> %i.v, i64 0
  %10 = shufflevector <2 x float> %i.v, <2 x float> %i.t, <2 x i32> <i32 0, i32 3>
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %10, <2 x float> %i.aa) ; 2 uses
  %i.ab = extractelement <2 x float> %i.t, i64 0
  %12 = insertelement <2 x float> poison, float %4, i64 0
  %13 = insertelement <2 x float> %12, float %3, i64 1 ; 2 uses
  %14 = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x float> %14, float %7, i64 1
  %16 = fmul <2 x float> %13, %15
  %17 = extractelement <2 x float> %i.u, i64 1
  %i.ac = insertelement <2 x float> poison, float %3, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %5, i64 1 ; 2 uses
  %i.ae = insertelement <2 x float> %i.u, float %i.w, i64 0
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ae, <2 x float> %16) ; 2 uses
  %19 = shufflevector <2 x float> %i.v, <2 x float> %i.y, <2 x i32> <i32 0, i32 2>
  %i.af = insertelement <2 x float> poison, float %7, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %5, i64 1
  %20 = fmul <2 x float> %19, %i.ag
  %21 = insertelement <2 x float> %i.t, float %4, i64 1
  %22 = insertelement <2 x float> poison, float %i.w, i64 0
  %23 = insertelement <2 x float> %22, float %6, i64 1
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %23, <2 x float> %20) ; 4 uses
  %i.ai = fneg float %i.ab
  %24 = shufflevector <2 x float> %i.v, <2 x float> %8, <2 x i32> <i32 0, i32 3>
  %25 = fneg <2 x float> %24
  %i.aj = fmul <2 x float> %i.ad, %25
  %26 = fmul float %4, %i.ai
  %27 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %i.z, <2 x float> %i.aj) ; 3 uses
  %28 = tail call float @llvm.fmuladd.f32(float %5, float %9, float %26) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %8, %i.ah
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.al = extractelement <2 x float> %i.ah, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %3, float %i.al, float %i.ak)
  %i.an = tail call float @llvm.fmuladd.f32(float %17, float %28, float %i.am) ; 4 uses
  %i.ao = fcmp ogt float %i.an, 0.000000e+00
  %i.ap = fneg float %i.an
  %i.aq = select i1 %i.ao, float %i.an, float %i.ap ; 2 uses
  %i.ar = fcmp ult float %i.aq, 1.000000e+00
  br i1 %i.ar, label %.preheader, label %.critedge29

.preheader:                                       ; preds = %bb.f
  %i.as = fmul float %i.aq, f0x7E800000           ; 2 uses
  %29 = shufflevector <2 x float> %18, <2 x float> %27, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %30 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %31 = shufflevector <4 x float> %30, <4 x float> %29, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 4, i32 5, i32 poison, i32 7>
  %32 = shufflevector <2 x float> %i.ah, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %33 = shufflevector <8 x float> %32, <8 x float> %31, <8 x i32> <i32 0, i32 9, i32 10, i32 3, i32 12, i32 13, i32 poison, i32 15>
  %34 = insertelement <8 x float> %33, float %28, i64 6
  %i.at = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %34)
  %i.au = insertelement <8 x float> poison, float %i.as, i64 0
  %i.av = shufflevector <8 x float> %i.au, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aw = fcmp ogt <8 x float> %i.av, %i.at
  %i.ax = extractelement <2 x float> %27, i64 1
  %i.ay = tail call float @llvm.fabs.f32(float %i.ax)
  %i.az = fcmp ogt float %i.as, %i.ay
  %i.ba = freeze <8 x i1> %i.aw
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp eq i8 %i.bb, -1
  %op.rdx = select i1 %i.bc, i1 %i.az, i1 false
  br i1 %op.rdx, label %.critedge29, label %bb.g

bb.g:                                             ; preds = %.preheader
  store float 1.000000e+00, ptr %0, align 4, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.be, align 4, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bg, align 4, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bi, align 4, !tbaa !7
  br label %bb.h

.critedge29:                                      ; preds = %.preheader, %bb.f
  %i.bj = load float, ptr %i.l, align 4, !tbaa !7
  %i.bk = fneg float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !7
  %i.bp = fneg float %i.bo
  %35 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %36 = insertelement <4 x float> %35, float 0.000000e+00, i64 3
  %37 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %38 = shufflevector <4 x float> %36, <4 x float> %37, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %39 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.an, i64 0
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %41 = fdiv <4 x float> %38, %40                 ; 2 uses
  store <4 x float> %41, ptr %0, align 4, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %42 = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %35, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %43 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %44 = shufflevector <4 x float> %42, <4 x float> %43, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %45 = fdiv <4 x float> %44, %40                 ; 3 uses
  store <4 x float> %45, ptr %i.bq, align 4, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %46 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %28, i64 0
  %47 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %48 = shufflevector <4 x float> %46, <4 x float> %47, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %49 = fdiv <4 x float> %48, %40                 ; 2 uses
  store <4 x float> %49, ptr %i.br, align 4, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %50 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.bm, i64 0
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %52 = fneg <4 x float> %45
  %i.bt = insertelement <4 x float> %52, float 1.000000e+00, i64 3
  %53 = fneg <4 x float> %45
  %i.bu = shufflevector <4 x float> %53, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bv = fmul <4 x float> %51, %i.bu
  %i.bw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bk, i64 0
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.by = insertelement <4 x float> %41, float -0.000000e+00, i64 3
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.by, <4 x float> %i.bv)
  %i.ca = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bp, i64 0
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cc = insertelement <4 x float> %49, float -0.000000e+00, i64 3
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.cc, <4 x float> %i.bz)
  store <4 x float> %i.cd, ptr %i.bs, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %.critedge29, %bb.g, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK9Imath_3_18Matrix44IfE9gjInverseEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #8 align 2 {
.lr.ph.preheader:
  %2 = alloca %"class.Imath_3_1::Matrix44", align 16 ; 45 uses
  %3 = alloca %"class.Imath_3_1::Matrix44", align 16 ; 88 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store float 1.000000e+00, ptr %2, align 16, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.g = load <4 x float>, ptr %1, align 4, !tbaa !7
  store <4 x float> %i.g, ptr %3, align 16, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load <4 x float>, ptr %i.h, align 4, !tbaa !7
  store <4 x float> %i.j, ptr %i.i, align 16, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load <4 x float>, ptr %i.k, align 4, !tbaa !7
  store <4 x float> %i.m, ptr %i.l, align 16, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load <4 x float>, ptr %i.n, align 4, !tbaa !7
  store <4 x float> %i.p, ptr %i.o, align 16, !tbaa !7
  %gep.1 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load float, ptr %gep.1, align 16, !tbaa !7 ; 3 uses
  %i.r = fcmp olt float %i.q, 0.000000e+00
  %i.s = fneg float %i.q
  %.096.1 = select i1 %i.r, float %i.s, float %i.q ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load float, ptr %gep, align 16, !tbaa !7 ; 3 uses
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.t
  %.096 = select i1 %i.u, float %i.v, float %i.t  ; 2 uses
  %i.w = load float, ptr %3, align 16, !tbaa !7   ; 3 uses
  %i.x = fcmp olt float %i.w, 0.000000e+00
  %i.y = fneg float %i.w
  %.097 = select i1 %i.x, float %i.y, float %i.w  ; 2 uses
  %i.z = fcmp ogt float %.096, %.097              ; 2 uses
  %.299 = select i1 %i.z, float %.096, float %.097 ; 2 uses
  %i.aa = fcmp ogt float %.096.1, %.299           ; 2 uses
  %.299.1 = select i1 %i.aa, float %.096.1, float %.299 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ab = load float, ptr %gep.2, align 16, !tbaa !7 ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fneg float %i.ab
  %.096.2 = select i1 %i.ac, float %i.ad, float %i.ab ; 2 uses
  %i.ae = fcmp ogt float %.096.2, %.299.1         ; 2 uses
  %.299.2 = select i1 %i.ae, float %.096.2, float %.299.1
  %i.af = fcmp une float %.299.2, 0.000000e+00
  %i.ag = zext i1 %i.z to i64
  %i.ah = select i1 %i.aa, i64 2, i64 %i.ag
  %i.ai = select i1 %i.ae, i64 3, i64 %i.ah       ; 3 uses
  br i1 %i.af, label %bb.c, label %.thread

bb.a:                                             ; preds = %.lr.ph122
  %.not.1 = icmp eq i64 %.1101.1.1, 1
  br i1 %.not.1, label %.lr.ph122.1, label %.preheader112.1

.preheader112.1:                                  ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.1101.1.1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1101.1.1 ; 2 uses
  %i.am = load <4 x float>, ptr %i.ir, align 16, !tbaa !7
  %i.an = load <4 x float>, ptr %i.aj, align 16, !tbaa !7
  store <4 x float> %i.an, ptr %i.ir, align 16, !tbaa !7
  store <4 x float> %i.am, ptr %i.aj, align 16, !tbaa !7
  %i.ao = load <4 x float>, ptr %i.ak, align 16, !tbaa !7
  %i.ap = load <4 x float>, ptr %i.al, align 16, !tbaa !7
  store <4 x float> %i.ap, ptr %i.ak, align 16, !tbaa !7
  store <4 x float> %i.ao, ptr %i.al, align 16, !tbaa !7
  br label %.lr.ph122.1

.lr.ph122.1:                                      ; preds = %.preheader112.1, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = load float, ptr %i.as, align 4, !tbaa !7
  %i.au = load float, ptr %i.is, align 4, !tbaa !7
  %i.av = fneg float %i.at
  %i.aw = fdiv float %i.av, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ay = load <4 x float>, ptr %i.ir, align 16, !tbaa !7
  %i.az = load <4 x float>, ptr %i.ar, align 16, !tbaa !7
  %i.ba = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.ay, <4 x float> %i.az)
  store <4 x float> %i.bc, ptr %i.ar, align 16, !tbaa !7
  %i.bd = load <4 x float>, ptr %i.aq, align 16, !tbaa !7
  %i.be = load <4 x float>, ptr %i.ax, align 16, !tbaa !7
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.bd, <4 x float> %i.be)
  store <4 x float> %i.bf, ptr %i.ax, align 16, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !7
  %i.bj = load float, ptr %i.is, align 4, !tbaa !7
  %i.bk = fneg float %i.bi
  %i.bl = fdiv float %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bn = load <4 x float>, ptr %i.ir, align 16, !tbaa !7
  %i.bo = load <4 x float>, ptr %i.bg, align 16, !tbaa !7
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.bn, <4 x float> %i.bo)
  store <4 x float> %i.br, ptr %i.bg, align 16, !tbaa !7
  %i.bs = load <4 x float>, ptr %i.aq, align 16, !tbaa !7
  %i.bt = load <4 x float>, ptr %i.bm, align 16, !tbaa !7
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.bs, <4 x float> %i.bt)
  store <4 x float> %i.bu, ptr %i.bm, align 16, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !7 ; 3 uses
  %i.by = fcmp olt float %i.bx, 0.000000e+00
  %i.bz = fneg float %i.bx
  %.097.2 = select i1 %i.by, float %i.bz, float %i.bx ; 2 uses
  %gep.2179 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ca = load float, ptr %gep.2179, align 8, !tbaa !7 ; 3 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = fneg float %i.ca
  %.096.2180 = select i1 %i.cb, float %i.cc, float %i.ca ; 2 uses
  %i.cd = fcmp ule float %.096.2180, %.097.2      ; 2 uses
  %.299.2182 = select i1 %i.cd, float %.097.2, float %.096.2180
  %i.ce = fcmp une float %.299.2182, 0.000000e+00
  br i1 %i.ce, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph122.1
  br i1 %i.cd, label %.lr.ph122.2, label %.preheader112.2

.preheader112.2:                                  ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ci = load <4 x float>, ptr %i.bv, align 16, !tbaa !7
  %i.cj = load <4 x float>, ptr %i.cf, align 16, !tbaa !7
  store <4 x float> %i.cj, ptr %i.bv, align 16, !tbaa !7
  store <4 x float> %i.ci, ptr %i.cf, align 16, !tbaa !7
  %i.ck = load <4 x float>, ptr %i.cg, align 16, !tbaa !7
  %i.cl = load <4 x float>, ptr %i.ch, align 16, !tbaa !7
  store <4 x float> %i.cl, ptr %i.cg, align 16, !tbaa !7
  store <4 x float> %i.ck, ptr %i.ch, align 16, !tbaa !7
  br label %.lr.ph122.2

.lr.ph122.2:                                      ; preds = %bb.b, %.preheader112.2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cp = load float, ptr %i.co, align 8, !tbaa !7
  %i.cq = load float, ptr %i.bw, align 8, !tbaa !7
  %i.cr = fneg float %i.cp
  %i.cs = fdiv float %i.cr, %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.cu = load <4 x float>, ptr %i.bv, align 16, !tbaa !7
  %i.cv = load <4 x float>, ptr %i.cn, align 16, !tbaa !7
  %i.cw = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cu, <4 x float> %i.cv)
  store <4 x float> %i.cy, ptr %i.cn, align 16, !tbaa !7
  %i.cz = load <4 x float>, ptr %i.cm, align 16, !tbaa !7
  %i.da = load <4 x float>, ptr %i.ct, align 16, !tbaa !7
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cz, <4 x float> %i.da)
  store <4 x float> %i.db, ptr %i.ct, align 16, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !7 ; 2 uses
  %i.de = fcmp une float %i.dd, 0.000000e+00
  br i1 %i.de, label %.preheader110.lr.ph, label %.thread109

.preheader110.lr.ph:                              ; preds = %.lr.ph122.2
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.dk = load <4 x float>, ptr %i.df, align 16, !tbaa !7
  %i.dl = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dn = fdiv <4 x float> %i.dk, %i.dm
  store <4 x float> %i.dn, ptr %i.df, align 16, !tbaa !7
  %i.do = load <4 x float>, ptr %i.dg, align 16, !tbaa !7
  %i.dp = fdiv <4 x float> %i.do, %i.dm
  store <4 x float> %i.dp, ptr %i.dg, align 16, !tbaa !7
end_hunk_0
