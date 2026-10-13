Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfChromaticities?download=true
inline.NumInlined: 44
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
@.str = private unnamed_addr constant [43 x i8] c"Bad chromaticities: white.y cannot be zero\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@.str.1 = private unnamed_addr constant [50 x i8] c"Bad chromaticities: RGBtoXYZ matrix is degenerate\00", align 1

@_ZN7Imf_3_414ChromaticitiesC1ERKN9Imath_3_24Vec2IfEES5_S5_S5_ = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN7Imf_3_414ChromaticitiesC2ERKN9Imath_3_24Vec2IfEES5_S5_S5_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7Imf_3_414ChromaticitiesC2ERKN9Imath_3_24Vec2IfEES5_S5_S5_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !9
  store <2 x float> %i.a, ptr %0, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <2 x float>, ptr %2, align 4, !tbaa !9
  store <2 x float> %i.c, ptr %i.b, align 4, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <2 x float>, ptr %3, align 4, !tbaa !9
  store <2 x float> %i.e, ptr %i.d, align 4, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x float>, ptr %4, align 4, !tbaa !9
  store <2 x float> %i.g, ptr %i.f, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7Imf_3_414ChromaticitieseqERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !11
  %i.b = load float, ptr %1, align 4, !tbaa !11
  %i.c = fcmp oeq float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp oeq float %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.j, align 4, !tbaa !11
  %i.m = load float, ptr %i.k, align 4, !tbaa !11
  %i.n = fcmp oeq float %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = fcmp oeq float %i.p, %i.r
  %i.t = select i1 %i.n, i1 %i.s, i1 false
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.u, align 4, !tbaa !11
  %i.x = load float, ptr %i.v, align 4, !tbaa !11
  %i.y = fcmp oeq float %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fcmp oeq float %i.aa, %i.ac
  %i.ae = select i1 %i.y, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load float, ptr %i.af, align 4, !tbaa !11
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !11
  %i.aj = fcmp oeq float %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fcmp oeq float %i.al, %i.an
  %i.ap = select i1 %i.aj, i1 %i.ao, i1 false
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.aq = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.ap, %bb.d ]
  ret i1 %i.aq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7Imf_3_414ChromaticitiesneERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !11
  %i.b = load float, ptr %1, align 4, !tbaa !11
  %i.c = fcmp une float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp une float %i.e, %i.g
  %i.i = select i1 %i.c, i1 true, i1 %i.h
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.j, align 4, !tbaa !11
  %i.m = load float, ptr %i.k, align 4, !tbaa !11
  %i.n = fcmp une float %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = fcmp une float %i.p, %i.r
  %i.t = select i1 %i.n, i1 true, i1 %i.s
  br i1 %i.t, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.u, align 4, !tbaa !11
  %i.x = load float, ptr %i.v, align 4, !tbaa !11
  %i.y = fcmp une float %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fcmp une float %i.aa, %i.ac
  %i.ae = select i1 %i.y, i1 true, i1 %i.ad
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load float, ptr %i.af, align 4, !tbaa !11
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !11
  %i.aj = fcmp une float %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fcmp une float %i.al, %i.an
  %i.ap = select i1 %i.aj, i1 true, i1 %i.ao
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.aq = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.ap, %bb.d ]
  ret i1 %i.aq
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_48RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Matrix44") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, float noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load float, ptr %i.b, align 4, !tbaa !13 ; 4 uses
  %i.d = tail call noundef float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.e = fcmp ugt float %i.d, 1.000000e+00
  %.pre = load float, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %.pre105 = fmul float %2, %.pre                 ; 2 uses
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef float @llvm.fabs.f32(float %.pre105)
  %i.g = fmul nnan float %i.d, f0x7F7FFFFF
  %i.h = fcmp ult float %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.k = fdiv float %.pre105, %i.c                ; 3 uses
  %i.l = fsub float 1.000000e+00, %.pre
  %i.m = fsub float %i.l, %i.c
  %i.n = fmul float %2, %i.m
  %i.o = fdiv float %i.n, %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !15 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %1, align 4, !tbaa !16   ; 4 uses
  %i.w = load <2 x float>, ptr %i.s, align 4, !tbaa !9 ; 4 uses
  %i.x = load float, ptr %i.u, align 4, !tbaa !17 ; 6 uses
  %i.y = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.r, i64 1
  %i.ac = fsub <2 x float> %i.z, %i.ab            ; 3 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = extractelement <2 x float> %i.ac, i64 1
  %i.af = extractelement <2 x float> %i.w, i64 0  ; 3 uses
  %i.ag = load float, ptr %i.p, align 4, !tbaa !18 ; 5 uses
  %i.ah = fneg float %i.ag
  %i.ai = load float, ptr %i.t, align 4, !tbaa !19 ; 4 uses
  %i.aj = fsub float %i.r, %i.ai                  ; 2 uses
  %i.ak = fmul float %i.ag, %i.ad
  %i.al = tail call float @llvm.fmuladd.f32(float %i.v, float %i.aj, float %i.ak)
  %i.am = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ae, float %i.al) ; 3 uses
  %3 = fadd float %i.k, %i.o                      ; 2 uses
  %i.an = fadd float %i.x, -1.000000e+00
  %i.ao = fmul float %i.x, %3
  %i.ap = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %2, i64 1
  %i.ar = insertelement <2 x float> poison, float %i.r, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.ai, i64 1 ; 2 uses
  %i.at = fadd <2 x float> %i.as, splat (float -1.000000e+00)
  %i.au = insertelement <2 x float> poison, float %3, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.as, %i.av
  %i.ax = insertelement <2 x float> poison, float %2, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.at, <2 x float> %i.aw) ; 3 uses
  %i.ba = fneg <2 x float> %i.az                  ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.w, %i.ba
  %i.bb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.k, float %i.aj, float %i.bb)
  %i.bd = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = insertelement <2 x float> %i.bd, float %i.an, i64 1
  %i.bf = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.ao, i64 1
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.be, <2 x float> %i.bg) ; 3 uses
  %i.bi = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = shufflevector <2 x float> %i.ba, <2 x float> %i.az, <2 x i32> <i32 1, i32 2>
  %i.bl = fmul <2 x float> %i.bj, %i.bk
  %i.bm = insertelement <2 x float> poison, float %i.k, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.ac, <2 x float> %i.bl)
  %i.bp = insertelement <2 x float> %i.w, float %i.ah, i64 1
  %i.bq = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bq, <2 x float> %i.bo) ; 3 uses
  %i.bs = tail call noundef float @llvm.fabs.f32(float %i.am) ; 2 uses
  %i.bt = fcmp olt float %i.bs, 1.000000e+00
  br i1 %i.bt, label %bb.f, label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.bu = extractelement <2 x float> %i.bh, i64 0
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.bu)
  %i.bw = fmul nnan float %i.bs, f0x7F7FFFFF      ; 3 uses
  %i.bx = fcmp ult float %i.bv, %i.bw
  %i.by = extractelement <2 x float> %i.br, i64 1
  %i.bz = tail call float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp ult float %i.bz, %i.bw
  %or.cond = select i1 %i.bx, i1 %i.ca, i1 false
  %i.cb = extractelement <2 x float> %i.br, i64 0
  %i.cc = tail call float @llvm.fabs.f32(float %i.cb)
  %i.cd = fcmp ult float %i.cc, %i.bw
  %or.cond104 = select i1 %or.cond, i1 %i.cd, i1 false
  br i1 %or.cond104, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %._crit_edge
  %i.cg = extractelement <2 x float> %i.bh, i64 0
  %i.ch = fdiv float %i.cg, %i.am                 ; 3 uses
  %i.ci = insertelement <2 x float> poison, float %i.am, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fdiv <2 x float> %i.br, %i.cj           ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cs, align 4, !tbaa !9
  %i.ct = fmul float %i.v, %i.ch
  store float %i.ct, ptr %0, align 4, !tbaa !9
  %i.cu = fmul float %i.x, %i.ch
  store float %i.cu, ptr %i.cl, align 4, !tbaa !9
  %i.cv = fsub float 1.000000e+00, %i.v
  %i.cw = fsub float %i.cv, %i.x
  %i.cx = fmul float %i.cw, %i.ch
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.cx, ptr %i.cy, align 4, !tbaa !9
  %i.cz = extractelement <2 x float> %i.ck, i64 1 ; 3 uses
  %i.da = fmul float %i.af, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.da, ptr %i.db, align 4, !tbaa !9
  %i.dc = fmul float %i.ai, %i.cz
  store float %i.dc, ptr %i.cm, align 4, !tbaa !9
  %i.dd = fsub float 1.000000e+00, %i.af
  %i.de = fsub float %i.dd, %i.ai
  %i.df = fmul float %i.de, %i.cz
  store float %i.df, ptr %i.co, align 4, !tbaa !9
  %i.dg = extractelement <2 x float> %i.ck, i64 0 ; 3 uses
  %i.dh = fmul float %i.ag, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.dh, ptr %i.di, align 4, !tbaa !9
  %i.dj = fmul float %i.r, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.dj, ptr %i.dk, align 4, !tbaa !9
  %i.dl = fsub float 1.000000e+00, %i.ag
  %i.dm = fsub float %i.dl, %i.r
  %i.dn = fmul float %i.dm, %i.dg
  store float %i.dn, ptr %i.cp, align 4, !tbaa !9
  ret void

bb.k:                                             ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.ce, %bb.i ], [ %i.i, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.i ], [ %i.j, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #10
  resume { ptr, i32 } %.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_48XYZtoRGBERKNS_14ChromaticitiesEf(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 4 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, float noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.Imath_3_2::Matrix44", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN7Imf_3_48RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Matrix44") align 4 %3, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef %2)
  call void @_ZNK9Imath_3_28Matrix44IfE7inverseEv(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK9Imath_3_28Matrix44IfE7inverseEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !9
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load float, ptr %i.e, align 4, !tbaa !9
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !9
  %i.k = fcmp une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = load float, ptr %i.m, align 4, !tbaa !9
  %i.o = fcmp une float %i.n, 1.000000e+00
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZNK9Imath_3_28Matrix44IfE9gjInverseEv(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Matrix44") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1) #10
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load float, ptr %1, align 4, !tbaa !9    ; 3 uses
  %i.v = load float, ptr %i.h, align 4, !tbaa !9  ; 3 uses
  %i.w = load <2 x float>, ptr %i.p, align 4, !tbaa !9 ; 4 uses
  %i.x = load float, ptr %i.s, align 4, !tbaa !9  ; 2 uses
  %i.y = fneg float %i.x                          ; 2 uses
  %i.z = load <2 x float>, ptr %i.t, align 4, !tbaa !9 ; 5 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ab = load <2 x float>, ptr %i.r, align 4, !tbaa !9 ; 5 uses
  %i.ac = load float, ptr %i.q, align 4, !tbaa !9 ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ab, <2 x float> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ae = fneg <2 x float> %i.ad                  ; 3 uses
  %i.af = extractelement <2 x float> %i.ab, i64 0
  %i.ag = extractelement <2 x float> %i.w, i64 0
  %i.ah = shufflevector <2 x float> %i.z, <2 x float> %i.w, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ai = fmul <2 x float> %i.ah, %i.ae
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> %i.w, <2 x i32> <i32 0, i32 3>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.aj, <2 x float> %i.ai) ; 2 uses
  %i.al = load float, ptr %i.d, align 4, !tbaa !9 ; 3 uses
  %i.am = shufflevector <2 x float> %i.ab, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.an = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.al, i64 1
  %i.ap = fmul <2 x float> %i.am, %i.ao
  %i.aq = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.ar = insertelement <2 x float> poison, float %i.ac, i64 0
end_hunk_0
