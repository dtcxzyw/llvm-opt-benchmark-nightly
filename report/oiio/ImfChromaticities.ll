inline.NumInlined: 44
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_58RGBtoXYZERKNS_14ChromaticitiesEf:bb.a
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
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load <2 x float>, ptr %i.q, align 4, !tbaa !7 ; 4 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.w = load <2 x float>, ptr %i.p, align 4, !tbaa !7 ; 5 uses
  %i.x = load float, ptr %i.r, align 4, !tbaa !7  ; 2 uses
  %i.y = load <2 x float>, ptr %i.t, align 4, !tbaa !7 ; 4 uses
  %i.z = load float, ptr %i.s, align 4, !tbaa !7  ; 3 uses
  %i.aa = shufflevector <2 x float> %i.w, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.ab = fneg <2 x float> %i.aa                  ; 2 uses
  %i.ac = shufflevector <2 x float> %i.u, <2 x float> %i.y, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ad = fmul <2 x float> %i.ac, %i.ab
  %i.ae = shufflevector <2 x float> %i.w, <2 x float> %i.y, <2 x i32> <i32 0, i32 3>
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.ae, <2 x float> %i.ad) ; 3 uses
  %i.ag = fneg float %i.z                         ; 2 uses
  %i.ah = extractelement <2 x float> %i.w, i64 0
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.x, float %i.ai) ; 2 uses
  %i.al = load float, ptr %i.h, align 4, !tbaa !7 ; 2 uses
  %i.am = load float, ptr %i.d, align 4, !tbaa !7 ; 2 uses
  %i.an = load float, ptr %1, align 4, !tbaa !7   ; 4 uses
  %i.ao = insertelement <2 x float> poison, float %i.am, i64 0 ; 2 uses
  %i.ap = insertelement <2 x float> %i.ao, float %i.al, i64 1 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = insertelement <2 x float> %i.aq, float %i.ag, i64 1
  %i.as = fmul <2 x float> %i.ap, %i.ar
  %i.at = insertelement <2 x float> poison, float %i.al, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.an, i64 1 ; 2 uses
  %i.av = insertelement <2 x float> %i.u, float %i.x, i64 0
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.av, <2 x float> %i.as) ; 4 uses
  %i.ax = shufflevector <2 x float> %i.w, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.ay = fneg <2 x float> %i.ax
  %i.az = fmul <2 x float> %i.au, %i.ay
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ac, <2 x float> %i.az) ; 3 uses
  %i.bb = fneg float %i.aj
  %i.bc = insertelement <2 x float> %i.ao, float %i.an, i64 1
  %i.bd = insertelement <2 x float> %i.aq, float %i.bb, i64 0
  %i.be = fmul <2 x float> %i.bc, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.am, i64 1
  %i.bh = insertelement <2 x float> %i.w, float %i.z, i64 1
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bh, <2 x float> %i.be) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.aw
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = extractelement <2 x float> %i.af, i64 0
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.an, float %i.bk, float %i.bj)
  %i.bm = extractelement <2 x float> %i.ba, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.z, float %i.bm, float %i.bl) ; 5 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  %i.bp = fneg float %i.bn
  %i.bq = select i1 %i.bo, float %i.bn, float %i.bp ; 2 uses
  %i.br = fcmp ult float %i.bq, 1.000000e+00
  br i1 %i.br, label %.preheader, label %.critedge29

.preheader:                                       ; preds = %bb.f
  %i.bs = fmul float %i.bq, f0x7E800000           ; 2 uses
  %i.bt = shufflevector <2 x float> %i.aw, <2 x float> %i.ba, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.bu = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bv = shufflevector <2 x float> %i.af, <2 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bx = insertelement <8 x float> %i.bw, float %i.ak, i64 2
  %i.by = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <8 x i32> <i32 0, i32 5, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = shufflevector <8 x float> %i.bx, <8 x float> %i.by, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ca = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bz)
  %i.cb = insertelement <8 x float> poison, float %i.bs, i64 0
  %i.cc = shufflevector <8 x float> %i.cb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cd = fcmp ogt <8 x float> %i.cc, %i.ca
  %i.ce = extractelement <2 x float> %i.bi, i64 0
  %i.cf = tail call float @llvm.fabs.f32(float %i.ce)
  %i.cg = fcmp ogt float %i.bs, %i.cf
  %i.ch = freeze <8 x i1> %i.cd
  %i.ci = bitcast <8 x i1> %i.ch to i8
  %i.cj = icmp eq i8 %i.ci, -1
  %op.rdx = select i1 %i.cj, i1 %i.cg, i1 false
  br i1 %op.rdx, label %.critedge29, label %bb.g

bb.g:                                             ; preds = %.preheader
  store float 1.000000e+00, ptr %0, align 4, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cl, align 4, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cn, align 4, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cp, align 4, !tbaa !7
  br label %bb.h

.critedge29:                                      ; preds = %.preheader, %bb.f
  %i.cq = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cs = fdiv <2 x float> %i.af, %i.cr           ; 2 uses
  %.sroa.14.0 = fdiv float %i.ak, %i.bn           ; 2 uses
  %i.ct = fdiv <2 x float> %i.aw, %i.cr           ; 2 uses
  %i.cu = fdiv <2 x float> %i.bi, %i.cr           ; 2 uses
  %i.cv = fdiv <2 x float> %i.ba, %i.cr           ; 2 uses
  %i.cw = load float, ptr %i.l, align 4, !tbaa !7
  %i.cx = fneg float %i.cw                        ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !7 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.db = load float, ptr %i.da, align 4, !tbaa !7
  %i.dc = fneg float %i.db                        ; 2 uses
  %i.dd = extractelement <2 x float> %i.cu, i64 1 ; 2 uses
  %i.de = fneg float %i.dd
  %2 = fmul float %i.cz, %i.de
  %3 = tail call float @llvm.fmuladd.f32(float %i.cx, float %.sroa.14.0, float %2)
  %4 = extractelement <2 x float> %i.cu, i64 0    ; 2 uses
  %5 = tail call float @llvm.fmuladd.f32(float %i.dc, float %4, float %3)
  store <2 x float> %i.cs, ptr %0, align 4, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.14.0, ptr %i.df, align 4, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.ct, ptr %i.dh, align 4, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.dd, ptr %i.di, align 4, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.dj, align 4, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %i.cv, ptr %i.dk, align 4, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %4, ptr %i.dl, align 4, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.dm, align 4, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.do = fneg <2 x float> %i.ct
  %6 = insertelement <2 x float> poison, float %i.cz, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %7, %i.do
  %9 = insertelement <2 x float> poison, float %i.cx, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.cs, <2 x float> %8)
  %12 = insertelement <2 x float> poison, float %i.dc, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %i.cv, <2 x float> %11)
  store <2 x float> %14, ptr %i.dn, align 4, !tbaa !7
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %5, ptr %15, align 4, !tbaa !7
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %16, align 4, !tbaa !7
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
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 12
end_hunk_0
begin_hunk_1_@_ZNK9Imath_3_18Matrix44IfE9gjInverseEv:.lr.ph.preheader
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %gep.1170 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.it = load float, ptr %gep.1170, align 4, !tbaa !7 ; 3 uses
  %i.iu = fcmp olt float %i.it, 0.000000e+00
  %i.iv = fneg float %i.it
  %.096.1171 = select i1 %i.iu, float %i.iv, float %i.it ; 2 uses
  %i.iw = load float, ptr %i.is, align 4, !tbaa !7 ; 3 uses
  %i.ix = fcmp olt float %i.iw, 0.000000e+00
  %i.iy = fneg float %i.iw
  %.097.1 = select i1 %i.ix, float %i.iy, float %i.iw ; 2 uses
  %i.iz = fcmp ogt float %.096.1171, %.097.1      ; 2 uses
  %.299.1173 = select i1 %i.iz, float %.096.1171, float %.097.1 ; 2 uses
  %.1101.1172 = select i1 %i.iz, i64 2, i64 1
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ja = load float, ptr %gep.1.1, align 4, !tbaa !7 ; 3 uses
  %i.jb = fcmp olt float %i.ja, 0.000000e+00
  %i.jc = fneg float %i.ja
  %.096.1.1 = select i1 %i.jb, float %i.jc, float %i.ja ; 2 uses
  %i.jd = fcmp ogt float %.096.1.1, %.299.1173    ; 2 uses
  %.1101.1.1 = select i1 %i.jd, i64 3, i64 %.1101.1172 ; 3 uses
  %.299.1.1 = select i1 %i.jd, float %.096.1.1, float %.299.1173
  %i.je = fcmp une float %.299.1.1, 0.000000e+00
  br i1 %i.je, label %bb.a, label %.thread

.thread109:                                       ; preds = %.preheader110.lr.ph, %.preheader110.1, %.preheader110.2, %.lr.ph122.2
  store float 1.000000e+00, ptr %0, align 4, !tbaa !7
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jg, align 4, !tbaa !7
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ji, align 4, !tbaa !7
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jk, align 4, !tbaa !7
  br label %bb.d

.preheader110.1:                                  ; preds = %.preheader110.lr.ph
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.jp = load <4 x float>, ptr %i.gl, align 16, !tbaa !7
  %i.jq = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.js = fdiv <4 x float> %i.jp, %i.jr
  store <4 x float> %i.js, ptr %i.gl, align 16, !tbaa !7
  %i.jt = load <4 x float>, ptr %i.jl, align 16, !tbaa !7
  %i.ju = fdiv <4 x float> %i.jt, %i.jr
  store <4 x float> %i.ju, ptr %i.jl, align 16, !tbaa !7
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jw = load float, ptr %i.jv, align 8, !tbaa !7
  %i.jx = fneg float %i.jw                        ; 5 uses
  %i.jy = load float, ptr %i.gl, align 16, !tbaa !7
  %i.jz = load float, ptr %3, align 16, !tbaa !7
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.jy, float %i.jz)
  store float %i.ka, ptr %3, align 16, !tbaa !7
  %i.kb = load float, ptr %i.jm, align 4, !tbaa !7
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !7
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.kb, float %i.kd)
  store float %i.ke, ptr %i.kc, align 4, !tbaa !7
  %i.kf = load float, ptr %i.jn, align 8, !tbaa !7
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 8, !tbaa !7
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.kf, float %i.kh)
  store float %i.ki, ptr %i.kg, align 8, !tbaa !7
  %i.kj = load float, ptr %i.jo, align 4, !tbaa !7
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !7
  %i.km = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.kj, float %i.kl)
  store float %i.km, ptr %i.kk, align 4, !tbaa !7
  %i.kn = load <4 x float>, ptr %i.jl, align 16, !tbaa !7
  %i.ko = load <4 x float>, ptr %2, align 16, !tbaa !7
  %i.kp = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.kq = shufflevector <4 x float> %i.kp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kq, <4 x float> %i.kn, <4 x float> %i.ko)
  store <4 x float> %i.kr, ptr %2, align 16, !tbaa !7
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ku = load float, ptr %i.kt, align 8, !tbaa !7
  %i.kv = fneg float %i.ku                        ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.kx = load float, ptr %i.gl, align 16, !tbaa !7
  %i.ky = load float, ptr %i.ks, align 16, !tbaa !7
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.kx, float %i.ky)
  store float %i.kz, ptr %i.ks, align 16, !tbaa !7
  %i.la = load float, ptr %i.jm, align 4, !tbaa !7
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !7
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.la, float %i.lc)
  store float %i.ld, ptr %i.lb, align 4, !tbaa !7
  %i.le = load float, ptr %i.jn, align 8, !tbaa !7
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.lg = load float, ptr %i.lf, align 8, !tbaa !7
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.le, float %i.lg)
  store float %i.lh, ptr %i.lf, align 8, !tbaa !7
  %i.li = load float, ptr %i.jo, align 4, !tbaa !7
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !7
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.li, float %i.lk)
  store float %i.ll, ptr %i.lj, align 4, !tbaa !7
  %i.lm = load <4 x float>, ptr %i.jl, align 16, !tbaa !7
  %i.ln = load <4 x float>, ptr %i.kw, align 16, !tbaa !7
  %i.lo = insertelement <4 x float> poison, float %i.kv, i64 0
  %i.lp = shufflevector <4 x float> %i.lo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lp, <4 x float> %i.lm, <4 x float> %i.ln)
  store <4 x float> %i.lq, ptr %i.kw, align 16, !tbaa !7
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !7 ; 2 uses
  %i.lu = fcmp une float %i.lt, 0.000000e+00
  br i1 %i.lu, label %.preheader110.2, label %.thread109

.preheader110.2:                                  ; preds = %.preheader110.1
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.lz = load <4 x float>, ptr %i.lr, align 16, !tbaa !7
  %i.ma = insertelement <4 x float> poison, float %i.lt, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mc = fdiv <4 x float> %i.lz, %i.mb
  store <4 x float> %i.mc, ptr %i.lr, align 16, !tbaa !7
  %i.md = load <4 x float>, ptr %i.lv, align 16, !tbaa !7
  %i.me = fdiv <4 x float> %i.md, %i.mb
  store <4 x float> %i.me, ptr %i.lv, align 16, !tbaa !7
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !7
  %i.mh = fneg float %i.mg                        ; 5 uses
  %i.mi = load float, ptr %i.lr, align 16, !tbaa !7
  %i.mj = load float, ptr %3, align 16, !tbaa !7
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.mi, float %i.mj)
  store float %i.mk, ptr %3, align 16, !tbaa !7
  %i.ml = load float, ptr %i.lw, align 4, !tbaa !7
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !7
  %i.mo = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.ml, float %i.mn)
  store float %i.mo, ptr %i.mm, align 4, !tbaa !7
  %i.mp = load float, ptr %i.lx, align 8, !tbaa !7
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.mr = load float, ptr %i.mq, align 8, !tbaa !7
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.mp, float %i.mr)
  store float %i.ms, ptr %i.mq, align 8, !tbaa !7
  %i.mt = load float, ptr %i.ly, align 4, !tbaa !7
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !7
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.mt, float %i.mv)
  store float %i.mw, ptr %i.mu, align 4, !tbaa !7
  %i.mx = load <4 x float>, ptr %i.lv, align 16, !tbaa !7
  %i.my = load <4 x float>, ptr %2, align 16, !tbaa !7
  %i.mz = insertelement <4 x float> poison, float %i.mh, i64 0
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.na, <4 x float> %i.mx, <4 x float> %i.my)
  store <4 x float> %i.nb, ptr %2, align 16, !tbaa !7
  %i.nc = load float, ptr %3, align 16, !tbaa !7  ; 2 uses
  %i.nd = fcmp une float %i.nc, 0.000000e+00
  br i1 %i.nd, label %.preheader110.3, label %.thread109

.preheader110.3:                                  ; preds = %.preheader110.2
  %i.ne = load <4 x float>, ptr %3, align 16, !tbaa !7
  %i.nf = insertelement <4 x float> poison, float %i.nc, i64 0
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nh = fdiv <4 x float> %i.ne, %i.ng
  store <4 x float> %i.nh, ptr %3, align 16, !tbaa !7
  %i.ni = load <4 x float>, ptr %2, align 16, !tbaa !7
  %i.nj = fdiv <4 x float> %i.ni, %i.ng
  store <4 x float> %i.nj, ptr %2, align 16, !tbaa !7
  %i.nk = load <4 x float>, ptr %2, align 16, !tbaa !7
  store <4 x float> %i.nk, ptr %0, align 4, !tbaa !7
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nn = load <4 x float>, ptr %i.nl, align 16, !tbaa !7
  store <4 x float> %i.nn, ptr %i.nm, align 4, !tbaa !7
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nq = load <4 x float>, ptr %i.no, align 16, !tbaa !7
  store <4 x float> %i.nq, ptr %i.np, align 4, !tbaa !7
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nt = load <4 x float>, ptr %i.nr, align 16, !tbaa !7
  store <4 x float> %i.nt, ptr %i.ns, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %.thread109, %.thread, %.preheader110.3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!10, !8, i64 0}
!10 = !{!"_ZTSN9Imath_3_14Vec2IfEE", !8, i64 0, !8, i64 4}
!11 = !{!12, !8, i64 28}
!12 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514ChromaticitiesE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!13 = !{!12, !8, i64 24}
!14 = !{!12, !8, i64 20}
!15 = !{!12, !8, i64 12}
!16 = !{!12, !8, i64 8}
!17 = !{!12, !8, i64 4}
end_hunk_1
