Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_usageprefs?download=true
inline.NumInlined: 103
inline.NumDeleted: 60
begin_hunk_0_@_ZN6icu_7815MeasureUnitImplD2Ev:bb.a

bb.b:                                             ; preds = %._crit_edge.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  invoke void @uprv_free_78(ptr noundef %i.j)
          to label %_ZN6icu_7810MemoryPoolINS_14SingleUnitImplELi8EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #15
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %i.m = phi i32 [ %i.d, %.lr.ph.i ], [ %i.r, %bb.f ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.p) #14
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi i32 [ %i.m, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %bb.d, label %._crit_edge.i, !llvm.loop !0

_ZN6icu_7810MemoryPoolINS_14SingleUnitImplELi8EED2Ev.exit: ; preds = %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_785units11RouteResultD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.h = load i8, ptr %i.g, align 4, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  invoke void @uprv_free_78(ptr noundef %i.j)
          to label %_ZN6icu_7815MeasureUnitImplD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #15
  unreachable

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.m = phi i32 [ %i.d, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.p) #14
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi i32 [ %i.m, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next.i.i, %i.s
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i, !llvm.loop !0

_ZN6icu_7815MeasureUnitImplD2Ev.exit:             ; preds = %._crit_edge.i.i, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN6icu_7815MeasureUnitImplD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.k, %_ZN6icu_7815MeasureUnitImplD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i8, ptr %i.y, align 4, !tbaa !59
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810MemoryPoolINS_7MeasureELi8EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30
  invoke void @uprv_free_78(ptr noundef %i.ab)
          to label %_ZN6icu_7810MemoryPoolINS_7MeasureELi8EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #15
  unreachable

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ae = phi i32 [ %i.v, %.lr.ph.i ], [ %i.am, %bb.k ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %i.ah) #14, !inline_history !60
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = phi i32 [ %i.ae, %bb.i ], [ %.pre.i, %bb.j ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next.i, %i.an
  br i1 %i.ao, label %bb.i, label %._crit_edge.i, !llvm.loop !1

_ZN6icu_7810MemoryPoolINS_7MeasureELi8EED2Ev.exit: ; preds = %._crit_edge.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl21UnitConversionHandlerC2ERKNS_11MeasureUnitEPKNS1_19MicroPropsGeneratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::MeasureUnitImpl", align 8 ; 11 uses
  %5 = alloca %"class.icu_78::MeasureUnitImpl", align 8 ; 12 uses
  %6 = alloca %"class.icu_78::units::ConversionRates", align 8 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786number4impl21UnitConversionHandlerE, i64 16), ptr %0, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN6icu_7811MeasureUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(19) %i.a, ptr noundef nonnull align 8 dereferenceable(19) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i32 0, ptr %4, align 8, !tbaa !127
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.f, ptr %i.e, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 8, ptr %i.g, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i8 0, ptr %i.h, align 4, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 0, ptr %5, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.l, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 8, ptr %i.m, align 8, !tbaa !128
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  store i8 0, ptr %i.n, align 4, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 0, ptr %6, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.q, ptr %i.p, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 8, ptr %i.r, align 8, !tbaa !129
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 0, ptr %i.s, align 4, !tbaa !72
  invoke void @_ZN6icu_785units21getAllConversionRatesERNS_16MaybeStackVectorINS0_18ConversionRateInfoELi8EEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_785units15ConversionRatesC2ER10UErrorCode.exit unwind label %bb.o

_ZN6icu_785units15ConversionRatesC2ER10UErrorCode.exit: ; preds = %bb.a
  %i.t = load i32, ptr %3, align 4, !tbaa !48
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN6icu_785units15ConversionRatesC2ER10UErrorCode.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7815MeasureUnitImpl14forMeasureUnitERKNS_11MeasureUnitERS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 184) #14 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6icu_785units21ComplexUnitsConverterC1ERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(184) %i.w, ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @_ZN6icu_7812LocalPointerINS_5units21ComplexUnitsConverterEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.w, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e, %_ZN6icu_785units15ConversionRatesC2ER10UErrorCode.exit
  call void @_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !50
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.y) #14
  %i.z = load i32, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.j, %bb.f
  %i.ab = load i8, ptr %i.n, align 4, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !56
  invoke void @uprv_free_78(ptr noundef %i.ac)
          to label %_ZN6icu_7815MeasureUnitImplD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #15
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.j
  %i.af = phi i32 [ %i.ak, %bb.j ], [ %i.z, %bb.f ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ 0, %bb.f ] ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ai) #14
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %i.ak = phi i32 [ %i.af, %.lr.ph.i.i ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i.i, %i.al
  br i1 %i.am, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

_ZN6icu_7815MeasureUnitImplD2Ev.exit:             ; preds = %._crit_edge.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !50
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.an) #14
  %i.ao = load i32, ptr %i.d, align 8, !tbaa !54  ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i28, label %._crit_edge.i.i26

._crit_edge.i.i26:                                ; preds = %bb.n, %_ZN6icu_7815MeasureUnitImplD2Ev.exit
  %i.aq = load i8, ptr %i.h, align 4, !tbaa !55
  %.not.i.i.i.i27 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i27, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit32, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i26
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !56
  invoke void @uprv_free_78(ptr noundef %i.ar)
          to label %_ZN6icu_7815MeasureUnitImplD2Ev.exit32 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #15
  unreachable

.lr.ph.i.i28:                                     ; preds = %_ZN6icu_7815MeasureUnitImplD2Ev.exit, %bb.n
  %i.au = phi i32 [ %i.az, %bb.n ], [ %i.ao, %_ZN6icu_7815MeasureUnitImplD2Ev.exit ]
  %indvars.iv.i.i29 = phi i64 [ %indvars.iv.next.i.i31, %bb.n ], [ 0, %_ZN6icu_7815MeasureUnitImplD2Ev.exit ] ; 2 uses
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i.i29
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i28
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ax) #14
  %.pre.i.i30 = load i32, ptr %i.d, align 8, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i28
  %i.az = phi i32 [ %i.au, %.lr.ph.i.i28 ], [ %.pre.i.i30, %bb.m ] ; 2 uses
  %indvars.iv.next.i.i31 = add nuw nsw i64 %indvars.iv.i.i29, 1 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next.i.i31, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i28, label %._crit_edge.i.i26, !llvm.loop !0

_ZN6icu_7815MeasureUnitImplD2Ev.exit32:           ; preds = %._crit_edge.i.i26, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.o:                                             ; preds = %bb.a, %bb.e, %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.w) #14
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.bc, %bb.o ]
  call void @_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN6icu_7815MeasureUnitImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN6icu_7815MeasureUnitImplD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @_ZN6icu_7812LocalPointerINS_5units21ComplexUnitsConverterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #14
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %i.a) #14
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6icu_7811MeasureUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7815MeasureUnitImpl14forMeasureUnitERKNS_11MeasureUnitERS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_7812LocalPointerINS_5units21ComplexUnitsConverterEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !48
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !63     ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  tail call void @_ZN6icu_7810MemoryPoolINS_24MeasureUnitImplWithIndexELi8EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.k = load i8, ptr %i.j, align 4, !tbaa !77
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  invoke void @uprv_free_78(ptr noundef %i.m)
          to label %_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #15
  unreachable

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.p = phi i32 [ %i.g, %.lr.ph.i.i ], [ %i.v, %bb.h ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80   ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  tail call void @_ZN6icu_785units14ConversionRateD2Ev(ptr noundef nonnull align 8 dead_on_return(281) dereferenceable(281) %i.u) #14
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.s) #14
  %.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !76
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = phi i32 [ %i.p, %bb.f ], [ %.pre.i.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next.i.i, %i.w
  br i1 %i.x, label %bb.f, label %._crit_edge.i.i, !llvm.loop !2

_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit: ; preds = %._crit_edge.i.i, %bb.d
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.c) #14
  br label %bb.i

bb.i:                                             ; preds = %_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit, %bb.b
  store ptr %1, ptr %0, align 8, !tbaa !63
  %i.y = icmp eq ptr %1, null
  br i1 %i.y, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  store i32 7, ptr %2, align 4, !tbaa !48
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %1, null
  br i1 %i.z, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_ZN6icu_7810MemoryPoolINS_24MeasureUnitImplWithIndexELi8EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.aa) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i9, label %._crit_edge.i.i7

.lr.ph.i.i9:                                      ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.o

._crit_edge.i.i7:                                 ; preds = %bb.q, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !77
  %.not.i.i.i.i8 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i8, label %_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit13, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i7
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78
  invoke void @uprv_free_78(ptr noundef %i.ai)
          to label %_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit13 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #15
  unreachable

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.i9
  %i.al = phi i32 [ %i.ac, %.lr.ph.i.i9 ], [ %i.ar, %bb.q ]
  %indvars.iv.i.i10 = phi i64 [ 0, %.lr.ph.i.i9 ], [ %indvars.iv.next.i.i12, %bb.q ] ; 2 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !78
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i.i10
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !80 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @_ZN6icu_785units14ConversionRateD2Ev(ptr noundef nonnull align 8 dead_on_return(281) dereferenceable(281) %i.aq) #14
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ao) #14
  %.pre.i.i11 = load i32, ptr %i.ab, align 8, !tbaa !76
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = phi i32 [ %i.al, %bb.o ], [ %.pre.i.i11, %bb.p ] ; 2 uses
  %indvars.iv.next.i.i12 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next.i.i12, %i.as
  br i1 %i.at, label %bb.o, label %._crit_edge.i.i7, !llvm.loop !2

_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit13: ; preds = %._crit_edge.i.i7, %bb.m
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %1) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit13, %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #10

declare void @_ZN6icu_785units21ComplexUnitsConverterC1ERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7812LocalPointerINS_5units21ComplexUnitsConverterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @_ZN6icu_7810MemoryPoolINS_24MeasureUnitImplWithIndexELi8EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.i = load i8, ptr %i.h, align 4, !tbaa !77
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  invoke void @uprv_free_78(ptr noundef %i.k)
          to label %_ZN6icu_785units21ComplexUnitsConverterD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
