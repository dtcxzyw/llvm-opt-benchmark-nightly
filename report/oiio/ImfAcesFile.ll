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
  br i1 %i.g, label %bb.b, label %.loopexit.split

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
  br i1 %.not1640, label %.loopexit.split, label %.split

.split:                                           ; preds = %bb.b
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
  %.sroa.speculated32 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
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
  %i.bb = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %smin = sext i32 %i.bb to i64
  %i.bc = add i32 %1, %2
  %i.bd = add i32 %i.bc, 1
  %i.be = sub i32 %i.bd, %.sroa.speculated32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.split, %._crit_edge
  %indvars.iv = phi i64 [ %smin, %.split ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.bf = mul i64 %i.r, %indvars.iv
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bf
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN9Imath_3_14halfaSEf.exit25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond44.not = icmp eq i32 %i.be, %lftr.wideiv
  br i1 %exitcond44.not, label %.loopexit.split, label %.lr.ph, !llvm.loop !61

bb.c:                                             ; preds = %.lr.ph, %_ZN9Imath_3_14halfaSEf.exit25
  %.042 = phi i32 [ %i.m, %.lr.ph ], [ %i.hl, %_ZN9Imath_3_14halfaSEf.exit25 ] ; 2 uses
  %.01441 = phi ptr [ %i.bg, %.lr.ph ], [ %i.hk, %_ZN9Imath_3_14halfaSEf.exit25 ] ; 5 uses
  %i.bh = load i16, ptr %.01441, align 2, !tbaa !63
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !66 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01441, i64 2 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !63
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !66 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01441, i64 4 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !63
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !66 ; 4 uses
  %i.bv = fmul float %i.bp, %i.am
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.al, float %i.bv)
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.an, float %i.bw)
  %i.by = fadd float %i.ao, %i.bx
  %i.bz = fmul float %i.bp, %i.aq
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.ap, float %i.bz)
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ar, float %i.ca)
  %i.cc = fadd float %i.as, %i.cb
  %i.cd = fmul float %i.bp, %i.au
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.at, float %i.cd)
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.av, float %i.ce)
  %i.cg = fadd float %i.aw, %i.cf
  %i.ch = fmul float %i.bp, %i.ay
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.ax, float %i.ch)
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.az, float %i.ci)
  %i.ck = fadd float %i.ba, %i.cj                 ; 3 uses
  %i.cl = fdiv float %i.by, %i.ck                 ; 2 uses
  %i.cm = fdiv float %i.cc, %i.ck                 ; 2 uses
  %i.cn = fdiv float %i.cg, %i.ck                 ; 2 uses
  %i.co = bitcast float %i.cl to i32
  %i.cp = tail call float @llvm.fabs.f32(float %i.cl)
  %i.cq = bitcast float %i.cp to i32              ; 10 uses
  %i.cr = lshr i32 %i.co, 16                      ; 3 uses
  %i.cs = trunc nuw i32 %i.cr to i16
  %i.ct = and i16 %i.cs, -32768                   ; 3 uses
  %i.cu = icmp samesign ugt i32 %i.cq, 947912703
  br i1 %i.cu, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.cv = icmp samesign ugt i32 %i.cq, 2139095039
  br i1 %i.cv, label %bb.e, label %bb.g, !prof !67

bb.e:                                             ; preds = %bb.d
  %i.cw = or disjoint i16 %i.ct, 31744            ; 2 uses
  %i.cx = icmp eq i32 %i.cq, 2139095040
  br i1 %i.cx, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cy = lshr i32 %i.cq, 13
  %i.cz = and i32 %i.cy, 1023                     ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  %i.db = zext i1 %i.da to i16
  %i.dc = trunc nuw nsw i32 %i.cz to i16
  %i.dd = or i16 %i.dc, %i.db
  %i.de = or disjoint i16 %i.dd, %i.cw
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.g:                                             ; preds = %bb.d
  %i.df = icmp samesign ugt i32 %i.cq, 1199566847
  br i1 %i.df, label %bb.h, label %bb.i, !prof !67

bb.h:                                             ; preds = %bb.g
  %i.dg = or disjoint i16 %i.ct, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.i:                                             ; preds = %bb.g
  %i.dh = add nuw nsw i32 %i.cq, 134221823
  %i.di = lshr i32 %i.cq, 13
  %i.dj = and i32 %i.di, 1
  %i.dk = add nuw nsw i32 %i.dh, %i.dj
  %i.dl = lshr i32 %i.dk, 13
  %i.dm = and i32 %i.cr, 32768
  %i.dn = or i32 %i.dl, %i.dm
  %i.do = trunc i32 %i.dn to i16
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.j:                                             ; preds = %bb.c
  %i.dp = icmp samesign ult i32 %i.cq, 855638017
  br i1 %i.dp, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = lshr i32 %i.cq, 23                      ; 2 uses
  %i.dr = sub nuw nsw i32 126, %i.dq
  %i.ds = and i32 %i.cq, 8388607
  %i.dt = or disjoint i32 %i.ds, 8388608          ; 2 uses
  %i.du = add nsw i32 %i.dq, -94
  %i.dv = shl i32 %i.dt, %i.du                    ; 2 uses
  %i.dw = lshr i32 %i.dt, %i.dr                   ; 2 uses
  %i.dx = and i32 %i.cr, 32768
  %i.dy = or i32 %i.dw, %i.dx
  %i.dz = trunc nuw i32 %i.dy to i16              ; 2 uses
  %i.ea = icmp ugt i32 %i.dv, -2147483648
  br i1 %i.ea, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eb = icmp ne i32 %i.dv, -2147483648
  %i.ec = and i32 %i.dw, 1
  %.not.i.i.i = icmp eq i32 %i.ec, 0
  %or.cond.i.i.i = select i1 %i.eb, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ed = add nuw i16 %i.dz, 1
  br label %_ZN9Imath_3_14halfaSEf.exit

_ZN9Imath_3_14halfaSEf.exit:                      ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m
  %.0.i.i.i = phi i16 [ %i.ct, %bb.j ], [ %i.de, %bb.f ], [ %i.dg, %bb.h ], [ %i.do, %bb.i ], [ %i.cw, %bb.e ], [ %i.ed, %bb.m ], [ %i.dz, %bb.l ]
  store i16 %.0.i.i.i, ptr %.01441, align 2, !tbaa !68
  %i.ee = bitcast float %i.cm to i32
  %i.ef = tail call float @llvm.fabs.f32(float %i.cm)
  %i.eg = bitcast float %i.ef to i32              ; 10 uses
  %i.eh = lshr i32 %i.ee, 16                      ; 3 uses
  %i.ei = trunc nuw i32 %i.eh to i16
  %i.ej = and i16 %i.ei, -32768                   ; 3 uses
  %i.ek = icmp samesign ugt i32 %i.eg, 947912703
  br i1 %i.ek, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit
  %i.el = icmp samesign ugt i32 %i.eg, 2139095039
  br i1 %i.el, label %bb.o, label %bb.q, !prof !67

bb.o:                                             ; preds = %bb.n
  %i.em = or disjoint i16 %i.ej, 31744            ; 2 uses
  %i.en = icmp eq i32 %i.eg, 2139095040
  br i1 %i.en, label %_ZN9Imath_3_14halfaSEf.exit21, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eo = lshr i32 %i.eg, 13
  %i.ep = and i32 %i.eo, 1023                     ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  %i.er = zext i1 %i.eq to i16
  %i.es = trunc nuw nsw i32 %i.ep to i16
  %i.et = or i16 %i.es, %i.er
  %i.eu = or disjoint i16 %i.et, %i.em
  br label %_ZN9Imath_3_14halfaSEf.exit21

bb.q:                                             ; preds = %bb.n
  %i.ev = icmp samesign ugt i32 %i.eg, 1199566847
  br i1 %i.ev, label %bb.r, label %bb.s, !prof !67

bb.r:                                             ; preds = %bb.q
  %i.ew = or disjoint i16 %i.ej, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit21

bb.s:                                             ; preds = %bb.q
  %i.ex = add nuw nsw i32 %i.eg, 134221823
  %i.ey = lshr i32 %i.eg, 13
  %i.ez = and i32 %i.ey, 1
  %i.fa = add nuw nsw i32 %i.ex, %i.ez
  %i.fb = lshr i32 %i.fa, 13
  %i.fc = and i32 %i.eh, 32768
  %i.fd = or i32 %i.fb, %i.fc
  %i.fe = trunc i32 %i.fd to i16
  br label %_ZN9Imath_3_14halfaSEf.exit21

bb.t:                                             ; preds = %_ZN9Imath_3_14halfaSEf.exit
  %i.ff = icmp samesign ult i32 %i.eg, 855638017
  br i1 %i.ff, label %_ZN9Imath_3_14halfaSEf.exit21, label %bb.u
end_hunk_0
