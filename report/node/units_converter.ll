inline.NumInlined: 203
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6icu_785units14UnitsConverterC2ENS_11StringPieceES2_R10UErrorCode:bb.a
  store ptr %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ab = load i32, ptr %7, align 8
  store i32 %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8
  store i32 %i.ae, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.ah, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 3 uses
  %i.an = load i8, ptr %i.am, align 4
  store i8 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.ap = icmp eq ptr %i.ah, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6icu_7815MeasureUnitImplC2EOS0_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.aq, ptr %i.af, align 8
  %i.ar = sext i32 %i.ak to i64
  %i.as = shl nsw i64 %i.ar, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.ao, i64 %i.as, i1 false)
  br label %_ZN6icu_785units14ConversionRateC2EONS_15MeasureUnitImplES3_.exit

bb.e:                                             ; preds = %_ZN6icu_7815MeasureUnitImplC2EOS0_.exit.i
  store ptr %i.ao, ptr %i.ag, align 8
  store i32 8, ptr %i.aj, align 8
  store i8 0, ptr %i.am, align 4
  br label %_ZN6icu_785units14ConversionRateC2EONS_15MeasureUnitImplES3_.exit

_ZN6icu_785units14ConversionRateC2EONS_15MeasureUnitImplES3_.exit: ; preds = %bb.d, %bb.e
  store i32 0, ptr %i.ad, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  store ptr null, ptr %i.au, align 8
  store ptr %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ay = load i64, ptr %i.ax, align 8
  store i64 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bb, i8 0, i64 17, i1 false)
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef null) #15
  %i.bc = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %_ZN6icu_785units14ConversionRateC2EONS_15MeasureUnitImplES3_.exit
  %i.be = load i8, ptr %i.am, align 4
  %.not.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bf = load ptr, ptr %i.ag, align 8
  call void @uprv_free_78(ptr noundef %i.bf) #15
  br label %_ZN6icu_7815MeasureUnitImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %_ZN6icu_785units14ConversionRateC2EONS_15MeasureUnitImplES3_.exit, %bb.h
  %i.bg = phi i32 [ %i.bl, %bb.h ], [ %i.bc, %_ZN6icu_785units14ConversionRateC2EONS_15MeasureUnitImplES3_.exit ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %_ZN6icu_785units14ConversionRateC2EONS_15MeasureUnitImplES3_.exit ] ; 2 uses
  %i.bh = load ptr, ptr %i.ag, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i.i
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bj) #15
  %.pre.i.i = load i32, ptr %i.ad, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.bl = phi i32 [ %i.bg, %.lr.ph.i.i ], [ %.pre.i.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next.i.i, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !8

_ZN6icu_7815MeasureUnitImplD2Ev.exit:             ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.bo = load ptr, ptr %i.v, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.bo) #15
  %i.bp = load i32, ptr %i.e, align 8             ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i16, label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %bb.k, %_ZN6icu_7815MeasureUnitImplD2Ev.exit
  %i.br = load i8, ptr %i.n, align 4
  %.not.i.i.i.i15 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i15, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit20, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i14
  %i.bs = load ptr, ptr %i.h, align 8
  call void @uprv_free_78(ptr noundef %i.bs) #15
  br label %_ZN6icu_7815MeasureUnitImplD2Ev.exit20

.lr.ph.i.i16:                                     ; preds = %_ZN6icu_7815MeasureUnitImplD2Ev.exit, %bb.k
  %i.bt = phi i32 [ %i.by, %bb.k ], [ %i.bp, %_ZN6icu_7815MeasureUnitImplD2Ev.exit ]
  %indvars.iv.i.i17 = phi i64 [ %indvars.iv.next.i.i19, %bb.k ], [ 0, %_ZN6icu_7815MeasureUnitImplD2Ev.exit ] ; 2 uses
  %i.bu = load ptr, ptr %i.h, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i17
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i16
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bw) #15
  %.pre.i.i18 = load i32, ptr %i.e, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i16
  %i.by = phi i32 [ %i.bt, %.lr.ph.i.i16 ], [ %.pre.i.i18, %bb.j ] ; 2 uses
  %indvars.iv.next.i.i19 = add nuw nsw i64 %indvars.iv.i.i17, 1 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next.i.i19, %i.bz
  br i1 %i.ca, label %.lr.ph.i.i16, label %._crit_edge.i.i14, !llvm.loop !8

_ZN6icu_7815MeasureUnitImplD2Ev.exit20:           ; preds = %._crit_edge.i.i14, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.cb = load i32, ptr %5, align 4
  %i.cc = icmp slt i32 %i.cb, 1
  br i1 %i.cc, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_ZN6icu_7815MeasureUnitImplD2Ev.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i32 0, ptr %8, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 8, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 0, ptr %i.cg, align 4
  call void @_ZN6icu_785units21getAllConversionRatesERNS_16MaybeStackVectorINS0_18ConversionRateInfoELi8EEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 4 dereferenceable(4) %5) #15
  %i.ch = load i32, ptr %5, align 4
  %i.ci = icmp slt i32 %i.ch, 1
  br i1 %i.ci, label %bb.m, label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit

bb.m:                                             ; preds = %bb.l
  %i.cj = load i32, ptr %i.b, align 8
  %i.ck = icmp eq i32 %i.cj, 2
  br i1 %i.ck, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = load i32, ptr %i.aa, align 8
  %i.cm = icmp eq i32 %i.cl, 2
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 65804, ptr %5, align 4
  br label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit

bb.p:                                             ; preds = %bb.n
  %i.cn = call noundef i32 @_ZN6icu_785units21extractConvertibilityERKNS_15MeasureUnitImplES3_RKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 2 uses
  %i.co = load i32, ptr %5, align 4
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %bb.q, label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit

bb.q:                                             ; preds = %bb.p
  %i.cq = icmp eq i32 %i.cn, 2
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 65804, ptr %5, align 4
  br label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit

bb.s:                                             ; preds = %bb.q
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(281) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.aa, i32 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit

_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit: ; preds = %bb.l, %bb.o, %bb.p, %bb.r, %bb.s
  call void @_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7815MeasureUnitImplD2Ev.exit20, %_ZN6icu_785units14UnitsConverter4initERKNS0_15ConversionRatesER10UErrorCode.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2, i32 noundef range(i32 3, 2) %3, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"struct.icu_78::units::Factor", align 16 ; 11 uses
  %7 = alloca %"struct.icu_78::units::Factor", align 8 ; 12 uses
  %8 = alloca %"struct.icu_78::units::Factor", align 8 ; 19 uses
  %9 = alloca %"struct.icu_78::units::Factor", align 16 ; 19 uses
  %10 = alloca %"struct.icu_78::units::Factor", align 16 ; 19 uses
  %i.a = tail call fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.a, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.a, 1 ; 3 uses
  %i.b = tail call fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.b, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.b, 1 ; 3 uses
  %i.c = sext i32 %.fca.1.extract6 to i64         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.e = icmp eq i32 %.fca.1.extract6, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.f) #15
  store ptr null, ptr %i.d, align 8
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.c, 1
  %i.h = load ptr, ptr %i.d, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.h) #15
  %i.i = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.g) #15 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %.fca.0.extract5, i64 %i.c, i1 false)
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c
  store i8 0, ptr %i.k, align 1
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.l = sext i32 %.fca.1.extract to i64          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.n = icmp eq i32 %.fca.1.extract, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.o = load ptr, ptr %i.m, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.o) #15
  store ptr null, ptr %i.m, align 8
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62

bb.f:                                             ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.p = add nsw i64 %i.l, 1
  %i.q = load ptr, ptr %i.m, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.q) #15
  %i.r = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.p) #15 ; 3 uses
  store ptr %i.r, ptr %i.m, align 8
  %.not.i61 = icmp eq ptr %i.r, null
  br i1 %.not.i61, label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %.fca.0.extract, i64 %i.l, i1 false)
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store i8 0, ptr %i.t, align 1
  br label %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62

_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62: ; preds = %bb.e, %bb.f, %bb.g
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  %i.w = icmp ne i32 %.fca.1.extract6, 0
  %.not = xor i1 %i.w, %i.v
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62
  %i.x = load ptr, ptr %i.m, align 8
  %i.y = icmp eq ptr %i.x, null                   ; 3 uses
  %i.z = icmp ne i32 %.fca.1.extract, 0
  %.not54 = xor i1 %i.z, %i.y
  br i1 %.not54, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6icu_7811FixedStringaSESt17basic_string_viewIcSt11char_traitsIcEE.exit62
  store i32 7, ptr %5, align 4
  br label %bb.ch

bb.j:                                             ; preds = %bb.h
  br i1 %i.v, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %6, align 16
  %scevgep.i = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.ab = load double, ptr %7, align 8            ; 2 uses
  %11 = load double, ptr %6, align 16
  %12 = fmul double %i.ab, %11
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load double, ptr %13, align 8             ; 2 uses
  %i.ac = load double, ptr %i.aa, align 8
  %i.ad = fmul double %14, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.af = load <4 x i32>, ptr %i.ae, align 4
  %i.ag = load <4 x i32>, ptr %scevgep.i, align 4
  %i.ah = add nsw <4 x i32> %i.ag, %i.af          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 3 uses
  %i.ak = load <4 x i32>, ptr %i.ai, align 4
  %i.al = load <4 x i32>, ptr %i.aj, align 4
  %i.am = add nsw <4 x i32> %i.al, %i.ak          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = load <4 x i32>, ptr %i.an, align 4
  %i.aq = load <4 x i32>, ptr %i.ao, align 4
  %i.ar = add nsw <4 x i32> %i.aq, %i.ap          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 76 ; 3 uses
  %i.au = load <2 x i32>, ptr %i.as, align 4
  %i.av = load <2 x i32>, ptr %i.at, align 4
  %i.aw = add nsw <2 x i32> %i.av, %i.au          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add nsw i32 %i.ba, %i.ay                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %15 = load double, ptr %i.bc, align 8
  switch i32 %3, label %bb.o [
    i32 1, label %bb.m
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.be = load double, ptr %i.bd, align 8         ; 2 uses
  %i.bf = load double, ptr %8, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.bh = load <4 x i32>, ptr %i.bg, align 4
  %i.bi = sub nsw <4 x i32> %i.ah, %i.bh
  store <4 x i32> %i.bi, ptr %scevgep.i, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.bk = load <4 x i32>, ptr %i.bj, align 4
  %i.bl = sub nsw <4 x i32> %i.am, %i.bk
  store <4 x i32> %i.bl, ptr %i.aj, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.bn = load <4 x i32>, ptr %i.bm, align 4
  %i.bo = sub nsw <4 x i32> %i.ar, %i.bn
  store <4 x i32> %i.bo, ptr %i.ao, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.bq = load <2 x i32>, ptr %i.bp, align 4
  %i.br = sub nsw <2 x i32> %i.aw, %i.bq
  store <2 x i32> %i.br, ptr %i.at, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = sub nsw i32 %i.bb, %i.bt
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bv = load double, ptr %8, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bx = load double, ptr %i.bw, align 8         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.bz = load <4 x i32>, ptr %i.by, align 4
  %i.ca = add nsw <4 x i32> %i.bz, %i.ah
  store <4 x i32> %i.ca, ptr %scevgep.i, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.cc = load <4 x i32>, ptr %i.cb, align 4
  %i.cd = add nsw <4 x i32> %i.cc, %i.am
  store <4 x i32> %i.cd, ptr %i.aj, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.cf = load <4 x i32>, ptr %i.ce, align 4
  %i.cg = add nsw <4 x i32> %i.cf, %i.ar
  store <4 x i32> %i.cg, ptr %i.ao, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.ci = load <2 x i32>, ptr %i.ch, align 4
  %i.cj = add nsw <2 x i32> %i.ci, %i.aw
  store <2 x i32> %i.cj, ptr %i.at, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 84
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add nsw i32 %i.cl, %i.bb
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  store i32 65804, ptr %5, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ch

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i32 [ %i.cm, %bb.n ], [ %i.bu, %bb.m ]
  %i.cn = phi double [ %i.bv, %bb.n ], [ %i.bf, %bb.m ]
  %i.co = phi double [ %i.bx, %bb.n ], [ %i.be, %bb.m ]
  %.pn = phi double [ %i.bx, %bb.n ], [ %i.bf, %bb.m ]
  %.pn148 = phi double [ %i.bv, %bb.n ], [ %i.be, %bb.m ]
  %.promoted.i = fmul double %12, %.pn148
  %.promoted13.i = fmul double %i.ad, %.pn
  store i32 %.sink, ptr %i.az, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cq = load double, ptr %i.cp, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %indvars.iv.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %i.cr = phi double [ %.promoted13.i, %bb.p ], [ %i.dg, %bb.s ] ; 3 uses
  %i.cs = phi double [ %.promoted.i, %bb.p ], [ %i.dh, %bb.s ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %scevgep.i, i64 %indvars.iv.i ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4            ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = tail call i32 @llvm.abs.i32(i32 %i.cu, i1 true)
  %i.cx = icmp slt i32 %i.cu, 0                   ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL15constantsValuesE, i64 %indvars.iv.i
  %i.cz = load double, ptr %i.cy, align 8
  %i.da = uitofp nneg i32 %i.cw to double
  %i.db = tail call noundef double @pow(double noundef %i.cz, double noundef %i.da) #15 ; 2 uses
  %i.dc = fmul double %i.cs, %i.db
  %i.dd = fmul double %i.cr, %i.db
  %i.de = select i1 %i.cx, double %i.dd, double %i.cr
  %i.df = select i1 %i.cx, double %i.cs, double %i.dc
  store i32 0, ptr %i.ct, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dg = phi double [ %i.cr, %bb.q ], [ %i.de, %bb.r ] ; 2 uses
  %i.dh = phi double [ %i.cs, %bb.q ], [ %i.df, %bb.r ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 15
  br i1 %exitcond.not.i, label %_ZN6icu_785units6Factor19substituteConstantsEv.exit, label %bb.q, !llvm.loop !5

_ZN6icu_785units6Factor19substituteConstantsEv.exit: ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.dg, ptr %i.dj, align 8
  %.val58 = load i32, ptr %5, align 4
  %i.dk = icmp slt i32 %.val58, 1
  %i.dl = load i32, ptr %1, align 8
  %.not6.i = icmp eq i32 %i.dl, 0
  %or.cond1.i = select i1 %i.dk, i1 %.not6.i, i1 false
  br i1 %or.cond1.i, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN6icu_785units6Factor19substituteConstantsEv.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit: ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.ds = icmp ne i32 %.sroa.4.0.copyload.i, 1
  %i.dt = icmp ne i32 %.sroa.3.0.copyload.i, 30
  %or.cond.not.i.not = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.not.i.not, label %.critedge, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87: ; preds = %bb.t, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit
  %i.du = load i32, ptr %2, align 8
  %.not6.i63 = icmp eq i32 %i.du, 0
  br i1 %.not6.i63, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72: ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.sroa.3.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %.sroa.3.0.copyload.i67 = load i32, ptr %.sroa.3.0..sroa_idx.i66, align 4
  %.sroa.4.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.4.0.copyload.i69 = load i32, ptr %.sroa.4.0..sroa_idx.i68, align 4
  %i.eb = icmp ne i32 %.sroa.4.0.copyload.i69, 1
  %i.ec = icmp ne i32 %.sroa.3.0.copyload.i67, 30
  %or.cond.not.i70.not = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond.not.i70.not, label %.critedge, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92: ; preds = %bb.u, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72
  %16 = fmul double %14, %15
  %17 = fdiv double %16, %i.ab
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %17, ptr %18, align 8
  %19 = fmul double %i.cq, %i.co
  %20 = fdiv double %19, %i.cn
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double %20, ptr %21, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87, %_ZN6icu_785units6Factor19substituteConstantsEv.exit, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit
  %i.ed = icmp eq i32 %3, 0
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ef = zext i1 %i.ed to i8
  store i8 %i.ef, ptr %i.ee, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ch

bb.v:                                             ; preds = %bb.j
  br i1 %i.y, label %.thread.thread, label %bb.ch

.thread:                                          ; preds = %bb.k
  %.not55 = icmp eq i32 %3, 1
  br i1 %.not55, label %bb.x, label %bb.w

.thread.thread:                                   ; preds = %bb.v
  %.not55145 = icmp eq i32 %3, 1
  br i1 %.not55145, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.thread.thread, %.thread
  store i32 65804, ptr %5, align 4
  br label %bb.ch

bb.x:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.eg = load <2 x double>, ptr %9, align 16
  %.sroa.12110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 28
  %.sroa.12110.0.copyload = load i32, ptr %.sroa.12110.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 36
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 44
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 16
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 52
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 60
  %.sroa.29.0.copyload = load i32, ptr %.sroa.29.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.31.0.copyload = load i32, ptr %.sroa.31.0..sroa_idx, align 16
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 68
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 72
  %.sroa.35.0.copyload = load i32, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 76
  %.sroa.37.0.copyload = load i32, ptr %.sroa.37.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 16
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 84
  %.sroa.41.0.copyload = load i32, ptr %.sroa.41.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.z

bb.y:                                             ; preds = %.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.eh = load <2 x double>, ptr %10, align 16
  %.sroa.12110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.sroa.12110.0.copyload112 = load i32, ptr %.sroa.12110.0..sroa_idx111, align 4
  %.sroa.15.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.15.0.copyload114 = load i32, ptr %.sroa.15.0..sroa_idx113, align 16
  %.sroa.17.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %10, i64 36
  %.sroa.17.0.copyload116 = load i32, ptr %.sroa.17.0..sroa_idx115, align 4
  %.sroa.19.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.sroa.19.0.copyload118 = load i32, ptr %.sroa.19.0..sroa_idx117, align 8
  %.sroa.21.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %10, i64 44
  %.sroa.21.0.copyload120 = load i32, ptr %.sroa.21.0..sroa_idx119, align 4
  %.sroa.23.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.sroa.23.0.copyload122 = load i32, ptr %.sroa.23.0..sroa_idx121, align 16
  %.sroa.25.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %10, i64 52
  %.sroa.25.0.copyload124 = load i32, ptr %.sroa.25.0..sroa_idx123, align 4
  %.sroa.27.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %.sroa.27.0.copyload126 = load i32, ptr %.sroa.27.0..sroa_idx125, align 8
  %.sroa.29.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %10, i64 60
  %.sroa.29.0.copyload128 = load i32, ptr %.sroa.29.0..sroa_idx127, align 4
  %.sroa.31.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %.sroa.31.0.copyload130 = load i32, ptr %.sroa.31.0..sroa_idx129, align 16
  %.sroa.33.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %10, i64 68
  %.sroa.33.0.copyload132 = load i32, ptr %.sroa.33.0..sroa_idx131, align 4
  %.sroa.35.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %.sroa.35.0.copyload134 = load i32, ptr %.sroa.35.0..sroa_idx133, align 8
  %.sroa.37.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %10, i64 76
  %.sroa.37.0.copyload136 = load i32, ptr %.sroa.37.0..sroa_idx135, align 4
  %.sroa.39.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %.sroa.39.0.copyload138 = load i32, ptr %.sroa.39.0..sroa_idx137, align 16
  %.sroa.41.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %10, i64 84
  %.sroa.41.0.copyload140 = load i32, ptr %.sroa.41.0..sroa_idx139, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.12110.0 = phi i32 [ %.sroa.12110.0.copyload, %bb.x ], [ %.sroa.12110.0.copyload112, %bb.y ] ; 3 uses
  %.sroa.15.0 = phi i32 [ %.sroa.15.0.copyload, %bb.x ], [ %.sroa.15.0.copyload114, %bb.y ] ; 3 uses
  %.sroa.17.0 = phi i32 [ %.sroa.17.0.copyload, %bb.x ], [ %.sroa.17.0.copyload116, %bb.y ] ; 3 uses
  %.sroa.19.0 = phi i32 [ %.sroa.19.0.copyload, %bb.x ], [ %.sroa.19.0.copyload118, %bb.y ] ; 3 uses
  %.sroa.21.0 = phi i32 [ %.sroa.21.0.copyload, %bb.x ], [ %.sroa.21.0.copyload120, %bb.y ] ; 3 uses
  %.sroa.23.0 = phi i32 [ %.sroa.23.0.copyload, %bb.x ], [ %.sroa.23.0.copyload122, %bb.y ] ; 3 uses
  %.sroa.25.0 = phi i32 [ %.sroa.25.0.copyload, %bb.x ], [ %.sroa.25.0.copyload124, %bb.y ] ; 3 uses
  %.sroa.27.0 = phi i32 [ %.sroa.27.0.copyload, %bb.x ], [ %.sroa.27.0.copyload126, %bb.y ] ; 3 uses
  %.sroa.29.0 = phi i32 [ %.sroa.29.0.copyload, %bb.x ], [ %.sroa.29.0.copyload128, %bb.y ] ; 3 uses
  %.sroa.31.0 = phi i32 [ %.sroa.31.0.copyload, %bb.x ], [ %.sroa.31.0.copyload130, %bb.y ] ; 3 uses
  %.sroa.33.0 = phi i32 [ %.sroa.33.0.copyload, %bb.x ], [ %.sroa.33.0.copyload132, %bb.y ] ; 3 uses
  %.sroa.35.0 = phi i32 [ %.sroa.35.0.copyload, %bb.x ], [ %.sroa.35.0.copyload134, %bb.y ] ; 3 uses
  %.sroa.37.0 = phi i32 [ %.sroa.37.0.copyload, %bb.x ], [ %.sroa.37.0.copyload136, %bb.y ] ; 3 uses
  %.sroa.39.0 = phi i32 [ %.sroa.39.0.copyload, %bb.x ], [ %.sroa.39.0.copyload138, %bb.y ] ; 3 uses
  %.sroa.41.0 = phi i32 [ %.sroa.41.0.copyload, %bb.x ], [ %.sroa.41.0.copyload140, %bb.y ] ; 3 uses
  %i.ei = phi <2 x double> [ %i.eg, %bb.x ], [ %i.eh, %bb.y ] ; 2 uses
  %i.ej = icmp eq i32 %.sroa.12110.0, 0
  %i.ek = extractelement <2 x double> %i.ei, i64 0 ; 3 uses
  %i.el = extractelement <2 x double> %i.ei, i64 1 ; 3 uses
  br i1 %i.ej, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = tail call i32 @llvm.abs.i32(i32 %.sroa.12110.0, i1 true)
  %i.en = icmp slt i32 %.sroa.12110.0, 0
  %i.eo = uitofp nneg i32 %i.em to double
  %i.ep = tail call noundef double @pow(double noundef 3.048000e-01, double noundef %i.eo) #15 ; 2 uses
  br i1 %i.en, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = fmul double %i.el, %i.ep
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.er = fmul double %i.ek, %i.ep
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z
  %i.es = phi double [ %i.el, %bb.z ], [ %i.el, %bb.ac ], [ %i.eq, %bb.ab ] ; 3 uses
  %i.et = phi double [ %i.ek, %bb.z ], [ %i.er, %bb.ac ], [ %i.ek, %bb.ab ] ; 3 uses
  %i.eu = icmp eq i32 %.sroa.15.0, 0
  br i1 %i.eu, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = tail call i32 @llvm.abs.i32(i32 %.sroa.15.0, i1 true)
  %i.ew = icmp slt i32 %.sroa.15.0, 0
  %i.ex = uitofp nneg i32 %i.ev to double
  %i.ey = tail call noundef double @pow(double noundef f0x400921FB54442D18, double noundef %i.ex) #15 ; 2 uses
  br i1 %i.ew, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ez = fmul double %i.et, %i.ey
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fa = fmul double %i.es, %i.ey
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ad
  %i.fb = phi double [ %i.es, %bb.ad ], [ %i.es, %bb.af ], [ %i.fa, %bb.ag ] ; 3 uses
  %i.fc = phi double [ %i.et, %bb.ad ], [ %i.ez, %bb.af ], [ %i.et, %bb.ag ] ; 3 uses
  %i.fd = icmp eq i32 %.sroa.17.0, 0
  br i1 %i.fd, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fe = tail call i32 @llvm.abs.i32(i32 %.sroa.17.0, i1 true)
  %i.ff = icmp slt i32 %.sroa.17.0, 0
  %i.fg = uitofp nneg i32 %i.fe to double
  %i.fh = tail call noundef double @pow(double noundef f0x40239D013A92A305, double noundef %i.fg) #15 ; 2 uses
  br i1 %i.ff, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fi = fmul double %i.fc, %i.fh
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.fj = fmul double %i.fb, %i.fh
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ah
  %i.fk = phi double [ %i.fb, %bb.ah ], [ %i.fb, %bb.aj ], [ %i.fj, %bb.ak ] ; 3 uses
  %i.fl = phi double [ %i.fc, %bb.ah ], [ %i.fi, %bb.aj ], [ %i.fc, %bb.ak ] ; 3 uses
  %i.fm = icmp eq i32 %.sroa.19.0, 0
  br i1 %i.fm, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fn = tail call i32 @llvm.abs.i32(i32 %.sroa.19.0, i1 true)
  %i.fo = icmp slt i32 %.sroa.19.0, 0
  %i.fp = uitofp nneg i32 %i.fn to double
  %i.fq = tail call noundef double @pow(double noundef 6.674080e-11, double noundef %i.fp) #15 ; 2 uses
  br i1 %i.fo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = fmul double %i.fl, %i.fq
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.fs = fmul double %i.fk, %i.fq
  br label %bb.ap
end_hunk_0
