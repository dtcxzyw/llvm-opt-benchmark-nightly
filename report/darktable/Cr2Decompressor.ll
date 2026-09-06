Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Cr2Decompressor?download=true
inline.NumInlined: 634
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE23getVerticalOutputStripsEv:bb.a
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !19
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !22
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.796.0..sroa_idx, align 8, !tbaa !19
  %.sroa.998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.998.0..sroa_idx, align 8
  %.sroa.1099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %.sroa.1099.0..sroa_idx, align 8, !tbaa !19
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !24
  %.sroa.13101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.e, ptr %.sroa.13101.0..sroa_idx, align 8, !tbaa !19
  %.sroa.15103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.a, ptr %.sroa.15103.0..sroa_idx, align 8, !tbaa !22
  %.sroa.16104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.13176.1.i128, ptr %.sroa.16104.0..sroa_idx, align 8, !tbaa !19
  %.sroa.18106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.1951.sroa.0.0.insert.insert71.i, ptr %.sroa.18106.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.sroa.24.0.i126, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.f, ptr %i.am, align 8, !tbaa !24
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.e, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !19
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.a, ptr %.sroa.6110.0..sroa_idx, align 8, !tbaa !22
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %.sroa.13176.1.i128, ptr %.sroa.7111.0..sroa_idx, align 8, !tbaa !19
  %.sroa.9113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.1951.sroa.0.0.insert.insert71.i, ptr %.sroa.9113.0..sroa_idx, align 8
  %.sroa.10114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sroa.24.0.i126, ptr %.sroa.10114.0..sroa_idx, align 8, !tbaa !19
  %.sroa.12116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.f, ptr %.sroa.12116.0..sroa_idx, align 8, !tbaa !24
  %.sroa.13117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.e, ptr %.sroa.13117.0..sroa_idx, align 8, !tbaa !19
  %.sroa.15119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.a, ptr %.sroa.15119.0..sroa_idx, align 8, !tbaa !22
  %.sroa.16120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.sroa.13176.1.i128, ptr %.sroa.16120.0..sroa_idx, align 8, !tbaa !19
  %.sroa.18122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.1951.sroa.0.0.insert.insert71.i, ptr %.sroa.18122.0..sroa_idx, align 8
  %.sroa.19123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.sroa.24.0.i126, ptr %.sroa.19123.0..sroa_idx, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef align 8 %1, ptr noundef align 4 dead_on_return %2, i64 %3, i64 %4, i32 %5, ptr noundef align 8 %6, ptr noundef byval(%"class.rawspeed::Array1DRef") align 8 %7) unnamed_addr #0 comdat($_ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC5ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !210
  store ptr null, ptr %i.b, align 8, !tbaa !28
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !210
  store ptr null, ptr %1, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !19
  store i32 %i.e, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  store i32 %i.h, ptr %i.f, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  store i32 %i.k, ptr %i.i, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  store i32 0, ptr %i.l, align 4, !tbaa !211
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i64 %3, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  store i64 %4, ptr %i.o, align 4
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %5, ptr %.sroa.223.0..sroa_idx, align 4, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load <2 x ptr>, ptr %6, align 8, !tbaa !33
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !212
  store ptr %i.u, ptr %i.s, align 8, !tbaa !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !213
  %i.w = load ptr, ptr %0, align 8, !tbaa !31     ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 553
  %i.y = load i8, ptr %i.x, align 1, !tbaa !214
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE) #13
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183, %bb.g, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 592
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !105 ; 2 uses
  %.not38 = icmp eq i32 %i.ab, 1
  br i1 %.not38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 596
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !215
  %.not39 = icmp eq i32 %i.ad, 2
  br i1 %.not39, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE, i32 noundef %i.ab) #13
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !19  ; 7 uses
  %.pre244 = load i32, ptr %i.f, align 4, !tbaa !19 ; 4 uses
  switch i32 %i.ae, label %._ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183_crit_edge [
    i32 3, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit
    i32 2, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59
    i32 4, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60
  ]

._ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183_crit_edge: ; preds = %bb.i
  %.pre245 = load i32, ptr %i.d, align 8, !tbaa !19
  br label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183

_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit: ; preds = %bb.i
  %i.af = icmp eq i32 %.pre244, 2                 ; 2 uses
  %i.ag = load i32, ptr %i.d, align 8             ; 3 uses
  %i.ah = icmp eq i32 %i.ag, 2
  %i.ai = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.k, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit58

_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit58: ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit
  %i.aj = icmp eq i32 %i.ag, 1
  %i.ak = select i1 %i.af, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.k, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183

_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59: ; preds = %bb.i
  %.pre237 = load i32, ptr %i.d, align 8          ; 2 uses
  %i.al = icmp eq i32 %.pre244, 1
  %i.am = icmp eq i32 %.pre237, 1
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183

_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60: ; preds = %bb.i
  %.pre239 = load i32, ptr %i.d, align 8          ; 2 uses
  %i.ao = icmp eq i32 %.pre244, 1
  %i.ap = icmp eq i32 %.pre239, 1
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183

_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183: ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit58, %._ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183_crit_edge, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60
  %i.ar = phi i32 [ %.pre245, %._ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183_crit_edge ], [ %.pre239, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60 ], [ %i.ag, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit58 ], [ %.pre237, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59 ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE, i32 noundef %i.ae, i32 noundef %.pre244, i32 noundef %i.ar) #13
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread183
  unreachable

bb.k:                                             ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit58
  %.sroa.0149.0.copyload.ph = phi i32 [ 1, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit58 ], [ 2, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit ] ; 2 uses
  %i.as = shl nuw nsw i32 %.sroa.0149.0.copyload.ph, 1
  %i.at = add nuw nsw i32 %i.as, 2
  br label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread

_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread: ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59, %bb.k
  %i.au = phi i32 [ 6, %bb.k ], [ %i.ae, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59 ], [ %i.ae, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60 ] ; 5 uses
  %i.av = phi i8 [ 1, %bb.k ], [ 0, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59 ], [ 0, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60 ]
  %.sroa.0149.0.copyload263 = phi i32 [ %.sroa.0149.0.copyload.ph, %bb.k ], [ 1, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59 ], [ 1, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60 ] ; 2 uses
  %.sroa.2.0.copyload261 = phi i32 [ 2, %bb.k ], [ 1, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59 ], [ 1, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60 ] ; 2 uses
  %i.aw = phi i32 [ %i.at, %bb.k ], [ %i.ae, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit59 ], [ %i.ae, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8            ; 3 uses
  store i64 %i.ay, ptr %i.l, align 4
  %i.az = trunc i64 %i.ay to i32                  ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = lshr i64 %i.ay, 32                      ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i32              ; 8 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  %i.be = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %i.be, label %bb.l, label %.invoke

bb.l:                                             ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread
  %i.bf = urem i32 %i.az, %i.aw
  %i.bg = udiv exact i32 %i.az, %i.aw             ; 6 uses
  %.not43 = icmp eq i32 %i.bf, 0
  br i1 %.not43, label %bb.n, label %.invoke

bb.m:                                             ; preds = %.invoke, %._crit_edge242
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.n:                                             ; preds = %bb.l
  store i32 %i.bg, ptr %i.l, align 4, !tbaa !216
  %i.bi = load i32, ptr %i.n, align 4, !tbaa !211 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8            ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  %i.bn = select i1 %i.bj, i1 %i.bm, i1 false
  br i1 %i.bn, label %bb.o, label %.invoke

bb.o:                                             ; preds = %bb.n
  %i.bo = add nsw i32 %.sroa.2.0.copyload261, -1
  %i.bp = and i32 %i.bi, %i.bo
  %.not44 = icmp eq i32 %i.bp, 0
  br i1 %.not44, label %bb.p, label %.invoke

bb.p:                                             ; preds = %bb.o
  %i.bq = add nsw i32 %.sroa.0149.0.copyload263, -1
  %i.br = and i32 %i.bl, %i.bq
  %.not45 = icmp eq i32 %i.br, 0
  br i1 %.not45, label %bb.q, label %.invoke

bb.q:                                             ; preds = %bb.p
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.2.0.copyload261, i1 true)
  %i.bt = lshr exact i32 %i.bi, %i.bs             ; 2 uses
  store i32 %i.bt, ptr %i.n, align 4, !tbaa !120
  %i.bu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0149.0.copyload263, i1 true)
  %i.bv = lshr exact i32 %i.bl, %i.bu             ; 9 uses
  store i32 %i.bv, ptr %i.bk, align 8, !tbaa !217
  %i.bw = load i32, ptr %i.ax, align 8, !tbaa !218 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 19440
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %.pre243 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !219 ; 2 uses
  %i.by = icmp sgt i32 %.pre243, 5920
  %or.cond280 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond280, label %._crit_edge242, label %.preheader195

.preheader195:                                    ; preds = %bb.q
  %i.bz = load i32, ptr %i.o, align 4, !tbaa !220 ; 10 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 0)
  %exitcond.not295 = icmp slt i32 %i.bz, 1
  br i1 %exitcond.not295, label %._crit_edge298, label %.lr.ph297

._crit_edge242:                                   ; preds = %bb.q
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE, i32 noundef %i.bw, i32 noundef %.pre243) #13
          to label %bb.r unwind label %bb.m

bb.r:                                             ; preds = %._crit_edge242
  unreachable

bb.s:                                             ; preds = %.lr.ph297
  %exitcond.not = icmp eq i32 %i.cd, %smax
  br i1 %exitcond.not, label %._crit_edge298, label %.lr.ph297, !llvm.loop !208

._crit_edge298:                                   ; preds = %bb.s, %.preheader195
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !221, !range !121, !noundef !122
  %i.cc = icmp eq i8 %i.cb, %i.av
  br i1 %i.cc, label %.invoke, label %bb.w

.lr.ph297:                                        ; preds = %.preheader195, %bb.s
  %.026296 = phi i32 [ %i.cd, %bb.s ], [ 0, %.preheader195 ]
  %i.cd = add nuw i32 %.026296, 1                 ; 3 uses
  %i.ce = icmp eq i32 %i.cd, %i.bz
  %.0.in.v.i = select i1 %i.ce, i64 8, i64 4
  %.0.in.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.in.v.i
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !19 ; 2 uses
  %i.cf = icmp slt i32 %.0.i, 1
  br i1 %i.cf, label %bb.t, label %bb.s, !llvm.loop !208

bb.t:                                             ; preds = %.lr.ph297
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE, i32 noundef %.0.i) #13
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.w:                                             ; preds = %._crit_edge298
  %i.ch = load ptr, ptr %i.q, align 8, !tbaa !222 ; 3 uses
  %i.ci = load ptr, ptr %i.p, align 8, !tbaa !123 ; 3 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = lshr exact i64 %i.cl, 4
  %i.cn = trunc i64 %i.cm to i32
  %.not46 = icmp eq i32 %i.ae, %i.cn
  br i1 %.not46, label %.preheader, label %.invoke

.preheader:                                       ; preds = %bb.w
  %i.co = icmp eq ptr %i.ci, %i.ch
  br i1 %i.co, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0146.0209, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ch
  br i1 %i.cq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.x, %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !19 ; 3 uses
  %i.ct = srem i32 %i.cs, %i.au
  %i.cu = sdiv exact i32 %i.cs, %i.au
  %.not53 = icmp eq i32 %i.ct, 0
  br i1 %.not53, label %bb.ae, label %bb.ab

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.sroa.0146.0209 = phi ptr [ %i.cp, %bb.x ], [ %i.ci, %.preheader ] ; 2 uses
  %i.cv = load ptr, ptr %.sroa.0146.0209, align 8, !tbaa !127, !nonnull !122, !align !128
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !223, !range !121, !noundef !122
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.x, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE) #13
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ab:                                            ; preds = %bb.ae, %._crit_edge
  %.lcssa = phi i32 [ %i.cs, %._crit_edge ], [ %i.da, %bb.ae ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE, i32 noundef %.lcssa, i32 noundef %i.au) #13
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ae:                                            ; preds = %._crit_edge
  store i32 %i.cu, ptr %i.cr, align 8, !tbaa !19
  %i.da = load i32, ptr %.sroa.223.0..sroa_idx, align 4, !tbaa !19 ; 3 uses
  %i.db = srem i32 %i.da, %i.au
  %i.dc = sdiv exact i32 %i.da, %i.au
  %.not53.1 = icmp eq i32 %i.db, 0
  br i1 %.not53.1, label %bb.af, label %bb.ab

bb.af:                                            ; preds = %bb.ae
  store i32 %i.dc, ptr %.sroa.223.0..sroa_idx, align 4, !tbaa !19
  %i.dd = zext nneg i32 %i.bt to i64
  %i.de = zext nneg i32 %i.bv to i64
  %i.df = mul nuw nsw i64 %i.de, %i.dd
  %i.dg = zext nneg i32 %i.bg to i64
  %i.dh = mul nuw nsw i64 %i.bb, %i.dg
  %i.di = icmp samesign ult i64 %i.df, %i.dh
  br i1 %i.di, label %.invoke, label %bb.ag

.invoke:                                          ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread, %bb.l, %bb.af, %bb.w, %._crit_edge298, %bb.n, %bb.o, %bb.p
  %i.dj = phi ptr [ @.str.9, %bb.w ], [ @.str.8, %._crit_edge298 ], [ @.str.5, %bb.n ], [ @.str.12, %bb.af ], [ @.str.5, %bb.p ], [ @.str.5, %bb.o ], [ @.str.4, %bb.l ], [ @.str.4, %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit60.thread ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.dj, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE) #13
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.dk = icmp sgt i32 %i.bz, -1
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp eq i32 %i.bz, 0
  br i1 %i.dl, label %.invoke283, label %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread.peel

_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread.peel: ; preds = %bb.ag
  %i.dm = icmp eq i32 %i.bz, 1
  %.0.in.v.i.i.i.i.peel = select i1 %i.dm, i64 8, i64 4
  %.0.in.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.in.v.i.i.i.i.peel
  %.0.i.i.i.i.peel = load i32, ptr %.0.in.i.i.i.i.peel, align 4, !tbaa !19 ; 3 uses
  %.sroa.speculated.i.peel = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 %i.bc) ; 4 uses
  %.sroa.5.8.insert.ext.i.peel = zext nneg i32 %.sroa.speculated.i.peel to i64
  %.sroa.5.8.insert.shift.i.peel = shl nuw nsw i64 %.sroa.5.8.insert.ext.i.peel, 32
  %.sroa.3.8.insert.ext.i.peel = zext i32 %.0.i.i.i.i.peel to i64
  %.sroa.3.8.insert.insert.i.peel = or disjoint i64 %.sroa.5.8.insert.shift.i.peel, %.sroa.3.8.insert.ext.i.peel ; 2 uses
  %.not.i62.not.peel.not = icmp sgt i32 %.0.i.i.i.i.peel, %i.bg ; 2 uses
  br i1 %.not.i62.not.peel.not, label %bb.aj, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.peel

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.peel: ; preds = %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread.peel
  %i.dn = icmp sle i32 %.sroa.speculated.i.peel, %i.bv
  tail call void @llvm.assume(i1 %i.dn)
  %.not256.a = icmp ule i32 %i.bv, %i.bc          ; 3 uses
  %spec.select194.peel = zext i1 %.not256.a to i32 ; 2 uses
  %i.do = icmp eq i32 %i.bz, %spec.select194.peel
  %i.dp = and i1 %i.do, %.not256.a
  br i1 %i.dp, label %.loopexit.thread, label %.lr.ph219.peel.next

.lr.ph219.peel.next:                              ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.peel
  %.not257 = icmp ult i32 %i.bv, %i.bc            ; 2 uses
  %8 = select i1 %.not257, i32 0, i32 %.0.i.i.i.i.peel
  %i.dq = select i1 %.not257, i32 %.sroa.speculated.i.peel, i32 0
  %.sroa.17106.sroa.8.1.peel = select i1 %.not256.a, i32 0, i32 %.sroa.speculated.i.peel
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit, %.lr.ph219.peel.next
  %.sroa.13.0217 = phi i32 [ %spec.select194, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit ], [ %spec.select194.peel, %.lr.ph219.peel.next ] ; 3 uses
  %.sroa.22.0216 = phi i32 [ %spec.select, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit ], [ %.sroa.17106.sroa.8.1.peel, %.lr.ph219.peel.next ] ; 2 uses
  %.sroa.17106.sroa.0.0215 = phi i32 [ %.sroa.17106.sroa.0.1, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit ], [ %8, %.lr.ph219.peel.next ] ; 6 uses
  %.sroa.17106.sroa.8.0214 = phi i32 [ %.sroa.17106.sroa.8.1, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit ], [ %i.dq, %.lr.ph219.peel.next ] ; 6 uses
  %.sroa.0126.0213 = phi i64 [ %.sroa.073.sroa.0.0.insert.insert81, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit ], [ 0, %.lr.ph219.peel.next ] ; 3 uses
  %.sroa.8.0212 = phi i64 [ %.sroa.3.8.insert.insert.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit ], [ %.sroa.3.8.insert.insert.i.peel, %.lr.ph219.peel.next ] ; 3 uses
  %i.dr = icmp slt i32 %.sroa.13.0217, %i.bz
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = add nuw nsw i32 %.sroa.13.0217, 1       ; 2 uses
  %i.dt = icmp eq i32 %i.ds, %i.bz
  %.0.in.v.i.i.i.i = select i1 %i.dt, i64 8, i64 4
  %.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.in.v.i.i.i.i
  %.0.i.i.i.i = load i32, ptr %.0.in.i.i.i.i, align 4, !tbaa !19 ; 4 uses
  %.sroa.17106.sroa.8.0.insert.ext = zext nneg i32 %.sroa.17106.sroa.8.0214 to i64
  %i.du = sub nsw i32 %i.bc, %.sroa.17106.sroa.8.0214 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = sub nsw i32 %i.bv, %.sroa.22.0216       ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, -1
  tail call void @llvm.assume(i1 %i.dx)
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 %i.du) ; 3 uses
  %.sroa.5.8.insert.ext.i = zext nneg i32 %.sroa.speculated.i to i64
  %.sroa.5.8.insert.shift.i = shl nuw nsw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %.0.i.i.i.i to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i ; 2 uses
  %.sroa.8.12.extract.shift = lshr i64 %.sroa.8.0212, 32
  %.sroa.8.12.extract.trunc = trunc nuw nsw i64 %.sroa.8.12.extract.shift to i32
  %.sroa.0126.0.extract.trunc = trunc i64 %.sroa.0126.0213 to i32 ; 2 uses
  %.sroa.0126.4.extract.shift = lshr i64 %.sroa.0126.0213, 32
  %.sroa.0126.4.extract.trunc = trunc nuw nsw i64 %.sroa.0126.4.extract.shift to i32
  %i.dy = add nuw nsw i32 %.sroa.0126.4.extract.trunc, %.sroa.8.12.extract.trunc
  %i.dz = icmp eq i32 %.sroa.17106.sroa.0.0215, %.sroa.0126.0.extract.trunc
  %i.ea = icmp eq i32 %i.dy, %.sroa.17106.sroa.8.0214
  %i.eb = select i1 %i.dz, i1 %i.ea, i1 false
  %.sroa.8.8.extract.trunc133 = trunc i64 %.sroa.8.0212 to i32 ; 2 uses
  %i.ec = icmp eq i32 %.0.i.i.i.i, %.sroa.8.8.extract.trunc133
  %or.cond = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond, label %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah
  %i.ed = icmp eq i32 %.sroa.17106.sroa.8.0214, 0
  %i.ee = add nsw i32 %.sroa.0126.0.extract.trunc, %.sroa.8.8.extract.trunc133
  %i.ef = icmp eq i32 %i.ee, %.sroa.17106.sroa.0.0215
  %or.cond193 = select i1 %i.ed, i1 %i.ef, i1 false
  br i1 %or.cond193, label %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread, label %.invoke281

bb.ai:                                            ; preds = %.invoke281
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread: ; preds = %.critedge.i, %bb.ah
  %i.eh = add nsw i32 %.0.i.i.i.i, %.sroa.17106.sroa.0.0215
  %.not.i62.not = icmp sgt i32 %i.eh, %i.bg
  br i1 %.not.i62.not, label %.loopexit236, label %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit

.loopexit236:                                     ; preds = %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread
  %i.ei = icmp slt i32 %.sroa.17106.sroa.8.0214, %i.bc
  %9 = icmp slt i32 %.sroa.17106.sroa.0.0215, %i.bg
  %10 = and i1 %9, %i.ei
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit236, %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread.peel
  %.sroa.0126.0213.lcssa228 = phi i64 [ undef, %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread.peel ], [ %.sroa.0126.0213, %.loopexit236 ]
  %.sroa.8.0212.lcssa226 = phi i64 [ undef, %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread.peel ], [ %.sroa.8.0212, %.loopexit236 ]
  %11 = phi i1 [ true, %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread.peel ], [ %10, %.loopexit236 ]
  br i1 %11, label %.invoke281, label %.loopexit

.invoke281:                                       ; preds = %.critedge.i, %bb.aj
  %i.ej = phi ptr [ @.str.14, %bb.aj ], [ @.str.13, %.critedge.i ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.ej, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE) #13
          to label %.cont282 unwind label %bb.ai

.cont282:                                         ; preds = %.invoke281
  unreachable

_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit:     ; preds = %_ZN8rawspeed12_GLOBAL__N_124evaluateConsecutiveTilesERKNS_12iRectangle2DES3_.exit.thread
  %i.ek = add nuw nsw i32 %.sroa.speculated.i, %.sroa.17106.sroa.8.0214 ; 2 uses
  %.sroa.073.sroa.8.0.insert.shift87 = shl nuw nsw i64 %.sroa.17106.sroa.8.0.insert.ext, 32
  %.sroa.073.sroa.0.0.insert.ext79 = zext i32 %.sroa.17106.sroa.0.0215 to i64
  %.sroa.073.sroa.0.0.insert.insert81 = or disjoint i64 %.sroa.073.sroa.8.0.insert.shift87, %.sroa.073.sroa.0.0.insert.ext79 ; 2 uses
  %i.el = add nuw nsw i32 %.sroa.speculated.i, %.sroa.22.0216 ; 3 uses
  %i.em = icmp sle i32 %i.el, %i.bv
  tail call void @llvm.assume(i1 %i.em)
  %i.en = icmp eq i32 %i.el, %i.bv                ; 2 uses
  %spec.select = select i1 %i.en, i32 0, i32 %i.el ; 2 uses
  %spec.select194 = select i1 %i.en, i32 %i.ds, i32 %.sroa.13.0217 ; 2 uses
  %i.eo = icmp eq i32 %i.ek, %i.bc                ; 2 uses
  %.sroa.17106.sroa.8.1 = select i1 %i.eo, i32 0, i32 %i.ek
  %i.ep = select i1 %i.eo, i32 %.0.i.i.i.i, i32 0
  %.sroa.17106.sroa.0.1 = add nsw i32 %i.ep, %.sroa.17106.sroa.0.0215
  %i.eq = icmp eq i32 %spec.select194, %i.bz
  %i.er = icmp eq i32 %spec.select, 0
  %i.es = and i1 %i.eq, %i.er
  br i1 %i.es, label %.loopexit.thread, label %bb.ah, !llvm.loop !209

.loopexit:                                        ; preds = %bb.aj
  br i1 %.not.i62.not.peel.not, label %.invoke283, label %.loopexit.thread

bb.ak:                                            ; preds = %.invoke283
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.thread:                                 ; preds = %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.peel, %.loopexit
  %.sroa.0126.0202269 = phi i64 [ %.sroa.0126.0213.lcssa228, %.loopexit ], [ 0, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.peel ], [ %.sroa.073.sroa.0.0.insert.insert81, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit ] ; 2 uses
  %.sroa.8.0205268 = phi i64 [ %.sroa.8.0212.lcssa226, %.loopexit ], [ %.sroa.3.8.insert.insert.i.peel, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit.peel ], [ %.sroa.3.8.insert.insert.i, %_ZN8rawspeed21Cr2OutputTileIteratorppEv.exit ] ; 2 uses
  %i.eu = add i64 %.sroa.0126.0202269, %.sroa.8.0205268
  %.sroa.0126.4.extract.shift130 = lshr i64 %.sroa.0126.0202269, 32
  %.sroa.0126.4.extract.trunc131 = trunc nuw i64 %.sroa.0126.4.extract.shift130 to i32
  %.sroa.8.12.extract.shift137 = lshr i64 %.sroa.8.0205268, 32
  %.sroa.8.12.extract.trunc138 = trunc nuw i64 %.sroa.8.12.extract.shift137 to i32
  %i.ev = add nsw i32 %.sroa.0126.4.extract.trunc131, %.sroa.8.12.extract.trunc138
  %.sroa.0.0.extract.trunc = trunc i64 %i.eu to i32
  %i.ew = icmp eq i32 %i.bg, %.sroa.0.0.extract.trunc
  %i.ex = icmp eq i32 %i.ev, %i.bc
  %i.ey = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %i.ey, label %bb.al, label %.invoke283

.invoke283:                                       ; preds = %.loopexit, %bb.ag, %.loopexit.thread
  %i.ez = phi ptr [ @.str.16, %.loopexit.thread ], [ @.str.15, %bb.ag ], [ @.str.15, %.loopexit ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.ez, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEEC2ENS_8RawImageESt5tupleIJiiiEENS_8iPoint2DENS_14Cr2SliceWidthsESt6vectorINS6_18PerComponentRecipeESaISD_EENS_10Array1DRefIKhEE) #13
          to label %.cont284 unwind label %bb.ak

.cont284:                                         ; preds = %.invoke283
  unreachable

bb.al:                                            ; preds = %.loopexit.thread
  ret void

bb.am:                                            ; preds = %bb.ak, %bb.ai, %bb.m, %bb.v, %bb.aa, %bb.ad, %bb.d
  %.pn56 = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.cz, %bb.ad ], [ %i.bh, %bb.m ], [ %i.cg, %bb.v ], [ %i.cy, %bb.aa ], [ %i.eg, %bb.ai ], [ %i.et, %bb.ak ]
  %i.fa = load ptr, ptr %i.p, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load ptr, ptr %i.s, align 8, !tbaa !212
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #19
  br label %_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit

_ZNSt6vectorIN8rawspeed15Cr2DecompressorINS0_20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS3_EEEEE18PerComponentRecipeESaIS8_EED2Ev.exit: ; preds = %bb.am, %bb.an
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  resume { ptr, i32 } %.pn56
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #20 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !228
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !call_target !147, !inline_history !225
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !call_target !149, !inline_history !225
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !151

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE10decompressEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 3 uses
  switch i32 %i.c, label %.unreachabledefault [
    i32 3, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit
    i32 2, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit2
    i32 4, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit2.thread
  ]

_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit: ; preds = %bb.a
  %i.f = icmp eq i32 %i.e, 2                      ; 2 uses
  %i.g = load i32, ptr %i.a, align 8              ; 2 uses
  %i.h = icmp eq i32 %i.g, 2
  %i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit1

bb.b:                                             ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit
  %i.j = tail call noundef i32 @_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi3ELi2ELi2EEEjv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %bb.e

_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit1: ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit
  %i.k = icmp eq i32 %i.g, 1
  %i.l = select i1 %i.f, i1 %i.k, i1 false
  br i1 %i.l, label %bb.c, label %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit2.thread

bb.c:                                             ; preds = %_ZSteqIJiiiEJiiiEEbRKSt5tupleIJDpT_EERKS0_IJDpT0_EE.exit1
  %i.m = tail call noundef i32 @_ZNK8rawspeed15Cr2DecompressorINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS2_EEEEE15decompressN_X_YILi3ELi2ELi1EEEjv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %bb.e

end_hunk_0
