inline.NumInlined: 95
inline.NumDeleted: 27
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4Data19initColorConversionEv:bb.a
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ml = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mk, <4 x float> %i.kv, <4 x float> %i.mi)
  store <4 x float> %i.ml, ptr %i.lz, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_517hasChromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(32) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514chromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_517hasAdoptedNeutralERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(8) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514adoptedNeutralERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_58RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Matrix44") align 4, ptr noundef nonnull align 4 dereferenceable(32), float noundef) local_unnamed_addr #3

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_58XYZtoRGBERKNS_14ChromaticitiesEf(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Matrix44") align 4, ptr noundef nonnull align 4 dereferenceable(32), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFileC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFileE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #13 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.b, i8 0, i64 41, i1 false)
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !8
  store ptr %i.b, ptr %i.a, align 8, !tbaa !49
  %i.j = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13 ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !21
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %i.k, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !27
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4Data19initColorConversionEv(ptr noundef nonnull align 8 dereferenceable(108) %i.l)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 64) #15
  resume { ptr, i32 } %i.m
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFileC2ERNS_7IStreamEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFileE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #13 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.b, i8 0, i64 41, i1 false)
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !8
  store ptr %i.b, ptr %i.a, align 8, !tbaa !49
  %i.j = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13 ; 3 uses
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFileC1ERNS_7IStreamEi(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !27
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4Data19initColorConversionEv(ptr noundef nonnull align 8 dereferenceable(108) %i.k)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 64) #15
  resume { ptr, i32 } %i.l
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFileC1ERNS_7IStreamEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFileD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFileE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4DataD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.d) #12, !inline_history !52
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4DataD2Ev.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4DataD2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 112) #15
  br label %bb.d

bb.d:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4DataD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFileD0Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile14setFrameBufferEPNS_4RgbaEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %i.f, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %3, ptr %i.g, align 8, !tbaa !55
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef %1, i32 noundef %2)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !36, !range !56, !noundef !57
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 3 uses
  %i.n = sext i32 %i.m to i64
  %i.o = mul i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !42   ; 2 uses
  %.not1640 = icmp sgt i32 %i.m, %i.t
  %i.u = load ptr, ptr @imath_half_to_float_table, align 8 ; 3 uses
  br i1 %.not1640, label %.loopexit, label %.split

.split:                                           ; preds = %bb.b
  %.sroa.speculated32 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.al = load float, ptr %i.ak, align 4, !tbaa !8, !noalias !58
  %i.am = load float, ptr %i.aj, align 4, !tbaa !8, !noalias !58
  %i.an = load float, ptr %i.ai, align 4, !tbaa !8, !noalias !58
  %i.ao = load float, ptr %i.ah, align 4, !tbaa !8, !noalias !58
  %i.ap = load float, ptr %i.ag, align 8, !tbaa !8, !noalias !58
  %i.aq = load float, ptr %i.af, align 8, !tbaa !8, !noalias !58
  %i.ar = load float, ptr %i.ae, align 8, !tbaa !8, !noalias !58
  %i.as = load float, ptr %i.ad, align 8, !tbaa !8, !noalias !58
  %i.at = load float, ptr %i.ac, align 4, !tbaa !8, !noalias !58
  %i.au = load float, ptr %i.ab, align 4, !tbaa !8, !noalias !58
  %i.av = load float, ptr %i.aa, align 4, !tbaa !8, !noalias !58
  %i.aw = load float, ptr %i.z, align 4, !tbaa !8, !noalias !58
  %i.ax = load float, ptr %i.y, align 8, !tbaa !8, !noalias !58
  %i.ay = load float, ptr %i.x, align 8, !tbaa !8, !noalias !58
  %i.az = load float, ptr %i.w, align 8, !tbaa !8, !noalias !58
  %i.ba = load float, ptr %i.v, align 8, !tbaa !8, !noalias !58
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %smin = sext i32 %3 to i64
  %4 = add i32 %1, %2
  %i.bb = add i32 %4, 1
  %5 = sub i32 %i.bb, %.sroa.speculated32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.split, %._crit_edge
  %indvars.iv = phi i64 [ %smin, %.split ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.bc = mul i64 %i.r, %indvars.iv
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bc
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN9Imath_3_14halfaSEf.exit25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond45.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph, !llvm.loop !61

bb.c:                                             ; preds = %.lr.ph, %_ZN9Imath_3_14halfaSEf.exit25
  %.042 = phi i32 [ %i.m, %.lr.ph ], [ %i.hi, %_ZN9Imath_3_14halfaSEf.exit25 ] ; 2 uses
  %.01441 = phi ptr [ %i.bd, %.lr.ph ], [ %i.hh, %_ZN9Imath_3_14halfaSEf.exit25 ] ; 5 uses
  %i.be = load i16, ptr %.01441, align 2, !tbaa !63
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !66 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01441, i64 2 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !63
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !66 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01441, i64 4 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !63
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !66 ; 4 uses
  %i.bs = fmul float %i.bm, %i.am
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.al, float %i.bs)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.br, float %i.an, float %i.bt)
  %i.bv = fadd float %i.ao, %i.bu
  %i.bw = fmul float %i.bm, %i.aq
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.ap, float %i.bw)
  %i.by = tail call float @llvm.fmuladd.f32(float %i.br, float %i.ar, float %i.bx)
  %i.bz = fadd float %i.as, %i.by
  %i.ca = fmul float %i.bm, %i.au
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.at, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.br, float %i.av, float %i.cb)
  %i.cd = fadd float %i.aw, %i.cc
  %i.ce = fmul float %i.bm, %i.ay
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.ax, float %i.ce)
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.br, float %i.az, float %i.cf)
  %i.ch = fadd float %i.ba, %i.cg                 ; 3 uses
  %i.ci = fdiv float %i.bv, %i.ch                 ; 2 uses
  %i.cj = fdiv float %i.bz, %i.ch                 ; 2 uses
  %i.ck = fdiv float %i.cd, %i.ch                 ; 2 uses
  %i.cl = bitcast float %i.ci to i32
  %i.cm = tail call float @llvm.fabs.f32(float %i.ci)
  %i.cn = bitcast float %i.cm to i32              ; 10 uses
  %i.co = lshr i32 %i.cl, 16                      ; 3 uses
  %i.cp = trunc nuw i32 %i.co to i16
  %i.cq = and i16 %i.cp, -32768                   ; 3 uses
  %i.cr = icmp samesign ugt i32 %i.cn, 947912703
  br i1 %i.cr, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.cs = icmp samesign ugt i32 %i.cn, 2139095039
  br i1 %i.cs, label %bb.e, label %bb.g, !prof !67

bb.e:                                             ; preds = %bb.d
  %i.ct = or disjoint i16 %i.cq, 31744            ; 2 uses
  %i.cu = icmp eq i32 %i.cn, 2139095040
  br i1 %i.cu, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cv = lshr i32 %i.cn, 13
  %i.cw = and i32 %i.cv, 1023                     ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  %i.cy = zext i1 %i.cx to i16
  %i.cz = trunc nuw nsw i32 %i.cw to i16
  %i.da = or i16 %i.cz, %i.cy
  %i.db = or disjoint i16 %i.da, %i.ct
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.g:                                             ; preds = %bb.d
  %i.dc = icmp samesign ugt i32 %i.cn, 1199566847
  br i1 %i.dc, label %bb.h, label %bb.i, !prof !67

bb.h:                                             ; preds = %bb.g
  %i.dd = or disjoint i16 %i.cq, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.i:                                             ; preds = %bb.g
  %i.de = add nuw nsw i32 %i.cn, 134221823
  %i.df = lshr i32 %i.cn, 13
  %i.dg = and i32 %i.df, 1
  %i.dh = add nuw nsw i32 %i.de, %i.dg
  %i.di = lshr i32 %i.dh, 13
  %i.dj = and i32 %i.co, 32768
  %i.dk = or i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i16
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.j:                                             ; preds = %bb.c
  %i.dm = icmp samesign ult i32 %i.cn, 855638017
  br i1 %i.dm, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = lshr i32 %i.cn, 23                      ; 2 uses
  %i.do = sub nuw nsw i32 126, %i.dn
  %i.dp = and i32 %i.cn, 8388607
  %i.dq = or disjoint i32 %i.dp, 8388608          ; 2 uses
  %i.dr = add nsw i32 %i.dn, -94
  %i.ds = shl i32 %i.dq, %i.dr                    ; 2 uses
  %i.dt = lshr i32 %i.dq, %i.do                   ; 2 uses
  %i.du = and i32 %i.co, 32768
  %i.dv = or i32 %i.dt, %i.du
  %i.dw = trunc nuw i32 %i.dv to i16              ; 2 uses
  %i.dx = icmp ugt i32 %i.ds, -2147483648
  br i1 %i.dx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = icmp ne i32 %i.ds, -2147483648
  %i.dz = and i32 %i.dt, 1
  %.not.i.i.i = icmp eq i32 %i.dz, 0
  %or.cond.i.i.i = select i1 %i.dy, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ea = add nuw i16 %i.dw, 1
  br label %_ZN9Imath_3_14halfaSEf.exit

_ZN9Imath_3_14halfaSEf.exit:                      ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m
  %.0.i.i.i = phi i16 [ %i.cq, %bb.j ], [ %i.db, %bb.f ], [ %i.dd, %bb.h ], [ %i.dl, %bb.i ], [ %i.ct, %bb.e ], [ %i.ea, %bb.m ], [ %i.dw, %bb.l ]
  store i16 %.0.i.i.i, ptr %.01441, align 2, !tbaa !68
  %i.eb = bitcast float %i.cj to i32
  %i.ec = tail call float @llvm.fabs.f32(float %i.cj)
  %i.ed = bitcast float %i.ec to i32              ; 10 uses
  %i.ee = lshr i32 %i.eb, 16                      ; 3 uses
  %i.ef = trunc nuw i32 %i.ee to i16
  %i.eg = and i16 %i.ef, -32768                   ; 3 uses
  %i.eh = icmp samesign ugt i32 %i.ed, 947912703
  br i1 %i.eh, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit
  %i.ei = icmp samesign ugt i32 %i.ed, 2139095039
  br i1 %i.ei, label %bb.o, label %bb.q, !prof !67

bb.o:                                             ; preds = %bb.n
  %i.ej = or disjoint i16 %i.eg, 31744            ; 2 uses
  %i.ek = icmp eq i32 %i.ed, 2139095040
  br i1 %i.ek, label %_ZN9Imath_3_14halfaSEf.exit21, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.el = lshr i32 %i.ed, 13
  %i.em = and i32 %i.el, 1023                     ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = zext i1 %i.en to i16
  %i.ep = trunc nuw nsw i32 %i.em to i16
  %i.eq = or i16 %i.ep, %i.eo
  %i.er = or disjoint i16 %i.eq, %i.ej
  br label %_ZN9Imath_3_14halfaSEf.exit21

bb.q:                                             ; preds = %bb.n
  %i.es = icmp samesign ugt i32 %i.ed, 1199566847
  br i1 %i.es, label %bb.r, label %bb.s, !prof !67

bb.r:                                             ; preds = %bb.q
  %i.et = or disjoint i16 %i.eg, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit21

bb.s:                                             ; preds = %bb.q
  %i.eu = add nuw nsw i32 %i.ed, 134221823
  %i.ev = lshr i32 %i.ed, 13
  %i.ew = and i32 %i.ev, 1
  %i.ex = add nuw nsw i32 %i.eu, %i.ew
  %i.ey = lshr i32 %i.ex, 13
  %i.ez = and i32 %i.ee, 32768
  %i.fa = or i32 %i.ey, %i.ez
  %i.fb = trunc i32 %i.fa to i16
  br label %_ZN9Imath_3_14halfaSEf.exit21

bb.t:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit
  %i.fc = icmp samesign ult i32 %i.ed, 855638017
  br i1 %i.fc, label %_ZN9Imath_3_14halfaSEf.exit21, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = lshr i32 %i.ed, 23                      ; 2 uses
  %i.fe = sub nuw nsw i32 126, %i.fd
  %i.ff = and i32 %i.ed, 8388607
  %i.fg = or disjoint i32 %i.ff, 8388608          ; 2 uses
  %i.fh = add nsw i32 %i.fd, -94
  %i.fi = shl i32 %i.fg, %i.fh                    ; 2 uses
  %i.fj = lshr i32 %i.fg, %i.fe                   ; 2 uses
  %i.fk = and i32 %i.ee, 32768
  %i.fl = or i32 %i.fj, %i.fk
  %i.fm = trunc nuw i32 %i.fl to i16              ; 2 uses
  %i.fn = icmp ugt i32 %i.fi, -2147483648
  br i1 %i.fn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fo = icmp ne i32 %i.fi, -2147483648
  %i.fp = and i32 %i.fj, 1
  %.not.i.i.i18 = icmp eq i32 %i.fp, 0
  %or.cond.i.i.i19 = select i1 %i.fo, i1 true, i1 %.not.i.i.i18
  br i1 %or.cond.i.i.i19, label %_ZN9Imath_3_14halfaSEf.exit21, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fq = add nuw i16 %i.fm, 1
  br label %_ZN9Imath_3_14halfaSEf.exit21

_ZN9Imath_3_14halfaSEf.exit21:                    ; preds = %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w
  %.0.i.i.i20 = phi i16 [ %i.eg, %bb.t ], [ %i.er, %bb.p ], [ %i.et, %bb.r ], [ %i.fb, %bb.s ], [ %i.ej, %bb.o ], [ %i.fq, %bb.w ], [ %i.fm, %bb.v ]
  store i16 %.0.i.i.i20, ptr %i.bi, align 2, !tbaa !68
  %i.fr = bitcast float %i.ck to i32
  %i.fs = tail call float @llvm.fabs.f32(float %i.ck)
  %i.ft = bitcast float %i.fs to i32              ; 10 uses
  %i.fu = lshr i32 %i.fr, 16                      ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.he = icmp ne i32 %i.gy, -2147483648
  %i.hf = and i32 %i.gz, 1
  %.not.i.i.i22 = icmp eq i32 %i.hf, 0
  %or.cond.i.i.i23 = select i1 %i.he, i1 true, i1 %.not.i.i.i22
  br i1 %or.cond.i.i.i23, label %_ZN9Imath_3_14halfaSEf.exit25, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hg = add nuw i16 %i.hc, 1
  br label %_ZN9Imath_3_14halfaSEf.exit25

_ZN9Imath_3_14halfaSEf.exit25:                    ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.0.i.i.i24 = phi i16 [ %i.fw, %bb.ad ], [ %i.gh, %bb.z ], [ %i.gj, %bb.ab ], [ %i.gr, %bb.ac ], [ %i.fz, %bb.y ], [ %i.hg, %bb.ag ], [ %i.hc, %bb.af ]
  store i16 %.0.i.i.i24, ptr %i.bn, align 2, !tbaa !68
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.01441, i64 %i.k
  %i.hi = add i32 %.042, 1
  %exitcond.not = icmp eq i32 %.042, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !69

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile6headerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile13displayWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret ptr %i.d
}

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10dataWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret ptr %i.d
}

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile16pixelAspectRatioEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile16pixelAspectRatioEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret float %i.d
}

declare noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile16pixelAspectRatioEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile18screenWindowCenterEv(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_1::Vec2") align 4 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  tail call void @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile18screenWindowCenterEv(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Vec2") align 4 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret void
}

declare void @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile18screenWindowCenterEv(ptr dead_on_unwind writable sret(%"class.Imath_3_1::Vec2") align 4, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile17screenWindowWidthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile17screenWindowWidthEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret float %i.d
}

declare noundef float @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile17screenWindowWidthEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile9lineOrderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret i32 %i.d
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile9lineOrderEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile11compressionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile11compressionEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret i32 %i.d
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile11compressionEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile8channelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile8channelsEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret i32 %i.d
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile8channelsEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile8fileNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret ptr %i.d
}

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile8fileNameEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile10isCompleteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10isCompleteEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret i1 %i.d
}

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10isCompleteEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile7versionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7versionEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  ret i32 %i.d
}

declare noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile7versionEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_36ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_36ArgExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }

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
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514AcesOutputFile4DataE", !12, i64 0}
!12 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_514RgbaOutputFileE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !6, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_514AcesOutputFileE", !18, i64 8}
!18 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_514AcesOutputFile4DataE", !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_511CompressionE", !5, i64 0}
!21 = !{!22, !24, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !25, i64 8, !5, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!24 = !{!"p1 omnipotent char", !13, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514AcesOutputFile4DataD2Ev}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4DataE", !29, i64 0, !30, i64 8, !25, i64 16, !25, i64 24, !4, i64 32, !4, i64 36, !31, i64 40, !32, i64 44}
!29 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFileE", !13, i64 0}
!30 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_54RgbaE", !13, i64 0}
!31 = !{!"bool", !5, i64 0}
!32 = !{!"_ZTSN9Imath_3_18Matrix44IfEE", !5, i64 0}
!33 = !{!34, !9, i64 0}
!34 = !{!"_ZTSN9Imath_3_14Vec2IfEE", !9, i64 0, !9, i64 4}
!35 = !{!34, !9, i64 4}
!36 = !{!28, !31, i64 40}
!37 = !{!38, !4, i64 0}
!38 = !{!"_ZTSN9Imath_3_13BoxINS_4Vec2IiEEEE", !39, i64 0, !39, i64 8}
!39 = !{!"_ZTSN9Imath_3_14Vec2IiEE", !4, i64 0, !4, i64 4}
!40 = !{!28, !4, i64 32}
!41 = !{!38, !4, i64 8}
!42 = !{!28, !4, i64 36}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN9Imath_3_18Matrix44IfE8multiplyERKS1_S3_: argument 0"}
!45 = distinct !{!45, !"_ZN9Imath_3_18Matrix44IfE8multiplyERKS1_S3_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN9Imath_3_18Matrix44IfE8multiplyERKS1_S3_: argument 0"}
!48 = distinct !{!48, !"_ZN9Imath_3_18Matrix44IfE8multiplyERKS1_S3_"}
!49 = !{!50, !51, i64 8}
!50 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFileE", !51, i64 8}
!51 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4DataE", !13, i64 0}
!52 = !{ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_513AcesInputFile4DataD2Ev}
!53 = !{!28, !30, i64 8}
!54 = !{!28, !25, i64 16}
!55 = !{!28, !25, i64 24}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN9Imath_3_1mlIffEENS_4Vec3IT_EERKS3_RKNS_8Matrix44IT0_EE: argument 0"}
!60 = distinct !{!60, !"_ZN9Imath_3_1mlIffEENS_4Vec3IT_EERKS3_RKNS_8Matrix44IT0_EE"}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSN9Imath_3_14halfE", !65, i64 0}
!65 = !{!"short", !5, i64 0}
!66 = !{!5, !5, i64 0}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!68 = !{!65, !65, i64 0}
!69 = distinct !{!69, !62}
end_hunk_1
