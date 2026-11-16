Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/HotPixel?download=true
inline.NumInlined: 133
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !39
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4geos6noding9snapround8HotPixel13getCoordinateEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(56) %0) local_unnamed_addr #4 align 2 !guid !46 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos6noding9snapround8HotPixel10intersectsERKNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 !guid !47 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.d = fmul double %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !33
  %i.g = fmul double %i.c, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !32 ; 2 uses
  %i.j = fadd double %i.i, 5.000000e-01
  %i.k = fcmp oge double %i.d, %i.j
  %i.l = fadd double %i.i, -5.000000e-01
  %i.m = fcmp olt double %i.d, %i.l
  %or.cond = or i1 %i.k, %i.m
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load double, ptr %i.n, align 8, !tbaa !34 ; 2 uses
  %i.p = fadd double %i.o, 5.000000e-01
  %i.q = fcmp ult double %i.g, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = fadd double %i.o, -5.000000e-01
  %i.s = fcmp uge double %i.g, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.s, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos6noding9snapround8HotPixel10intersectsERKNS_4geom10CoordinateES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 !guid !48 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !25 ; 5 uses
  %i.c = fcmp oeq double %i.b, 1.000000e+00
  %i.d = load double, ptr %1, align 8, !tbaa !40  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !33
  %i.g = load double, ptr %2, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !33
  %i.j = tail call noundef zeroext i1 @_ZNK4geos6noding9snapround8HotPixel16intersectsScaledEdddd(ptr noundef nonnull align 8 dereferenceable(56) %0, double noundef %i.d, double noundef %i.f, double noundef %i.g, double noundef %i.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = fmul double %i.b, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !33
  %i.n = fmul double %i.b, %i.m
  %i.o = load double, ptr %2, align 8, !tbaa !40
  %i.p = fmul double %i.b, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !33
  %i.s = fmul double %i.b, %i.r
  %i.t = tail call noundef zeroext i1 @_ZNK4geos6noding9snapround8HotPixel16intersectsScaledEdddd(ptr noundef nonnull align 8 dereferenceable(56) %0, double noundef %i.k, double noundef %i.n, double noundef %i.p, double noundef %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ %i.t, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos6noding9snapround8HotPixel16intersectsScaledEdddd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 align 2 !guid !49 {
bb.a:
  %i.a = fcmp ogt double %1, %3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.098 = phi double [ %3, %bb.b ], [ %1, %bb.a ] ; 8 uses
  %.097 = phi double [ %4, %bb.b ], [ %2, %bb.a ] ; 8 uses
  %.096 = phi double [ %1, %bb.b ], [ %3, %bb.a ] ; 8 uses
  %.0 = phi double [ %2, %bb.b ], [ %4, %bb.a ]   ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load double, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  %i.d = fadd double %i.c, 5.000000e-01           ; 3 uses
  %i.e = fcmp olt double %.096, %.098
  %.sroa.speculated78 = select i1 %i.e, double %.096, double %.098
  %i.f = fcmp ult double %.sroa.speculated78, %i.d
  br i1 %i.f, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.g = fadd double %i.c, -5.000000e-01          ; 3 uses
  %i.h = fcmp olt double %.098, %.096
  %.sroa.speculated75 = select i1 %i.h, double %.096, double %.098
  %i.i = fcmp olt double %.sroa.speculated75, %i.g
  br i1 %i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load double, ptr %i.j, align 8, !tbaa !34 ; 2 uses
  %i.l = fadd double %i.k, 5.000000e-01           ; 3 uses
  %i.m = fcmp uge double %.0, %.097               ; 2 uses
  %.sroa.speculated68 = select i1 %i.m, double %.097, double %.0
  %i.n = fcmp ult double %.sroa.speculated68, %i.l
  br i1 %i.n, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.o = fadd double %i.k, -5.000000e-01          ; 3 uses
  %i.p = fcmp uge double %.097, %.0               ; 3 uses
  %.sroa.speculated = select i1 %i.p, double %.097, double %.0
  %i.q = fcmp olt double %.sroa.speculated, %i.o
  br i1 %i.q, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = fcmp oeq double %3, %1
  %i.s = fcmp oeq double %4, %2
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexEdddddd(double noundef %.098, double noundef %.097, double noundef %.096, double noundef %.0, double noundef %i.g, double noundef %i.l) ; 4 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexEdddddd(double noundef %.098, double noundef %.097, double noundef %.096, double noundef %.0, double noundef %i.d, double noundef %i.l) ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq i32 %i.t, %i.v
  br i1 %.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.x = tail call noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexEdddddd(double noundef %.098, double noundef %.097, double noundef %.096, double noundef %.0, double noundef %i.g, double noundef %i.o)
  %.not49 = icmp eq i32 %i.x, %i.t
  br i1 %.not49, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = tail call noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexEdddddd(double noundef %.098, double noundef %.097, double noundef %.096, double noundef %.0, double noundef %i.d, double noundef %i.o) ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %.not50 = icmp ne i32 %i.t, %i.y
  %spec.select = select i1 %i.z, i1 %i.p, i1 %.not50
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.d, %bb.f, %bb.g, %bb.j, %bb.k, %bb.e, %bb.c
  %.7 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.k ], [ false, %bb.f ], [ true, %bb.g ], [ %i.m, %bb.i ], [ %i.p, %bb.h ], [ true, %bb.j ], [ %spec.select, %bb.l ]
  ret i1 %.7
}

declare noundef i32 @_ZN4geos9algorithm14CGAlgorithmsDD16orientationIndexEdddddd(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos6noding9snapround8HotPixel22intersectsPixelClosureERKNS_4geom10CoordinateES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 !guid !50 {
bb.a:
  %3 = alloca %"class.geos::algorithm::LineIntersector", align 8 ; 13 uses
  %4 = alloca %"struct.std::array", align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.b, align 8, !tbaa !51
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 0, ptr %i.d, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %.ptr.1.i18 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.ptr.3.i.a = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !21 ; 2 uses
  %7 = extractelement <2 x double> %i.h, i64 0    ; 2 uses
  %8 = load double, ptr %6, align 8, !tbaa !34
  %9 = fadd double %7, 5.000000e-01               ; 2 uses
  %10 = fadd double %8, -5.000000e-01             ; 2 uses
  %11 = fadd double %7, -5.000000e-01
  %12 = shufflevector <2 x double> %i.h, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %13 = insertelement <4 x double> %12, double -0.000000e+00, i64 1
  %14 = fadd <4 x double> %13, <double 5.000000e-01, double +qnan, double -5.000000e-01, double 5.000000e-01>
  store double %9, ptr %4, align 8, !tbaa !21
  store <4 x double> %14, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !21
  store double +qnan, ptr %5, align 8, !tbaa !21
  store double %11, ptr %.ptr.2.i, align 8, !tbaa !21
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store double %10, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !21
  store double +qnan, ptr %i.e, align 8, !tbaa !21
  store double %9, ptr %.ptr.3.i.a, align 8, !tbaa !21
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  store double %10, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  store double +qnan, ptr %i.f, align 8, !tbaa !21
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i18)
  %i.i = load i64, ptr %i.a, align 8, !tbaa !55
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i18, ptr noundef nonnull align 8 dereferenceable(24) %.ptr.2.i)
  %i.j = load i64, ptr %i.a, align 8, !tbaa !55
  %.not28 = icmp eq i64 %i.j, 0
  br i1 %.not28, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.ptr.2.i, ptr noundef nonnull align 8 dereferenceable(24) %.ptr.3.i.a)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !55
  %.not29 = icmp eq i64 %i.k, 0
  br i1 %.not29, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.ptr.3.i.a, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.l = load i64, ptr %i.a, align 8, !tbaa !55
  %i.m = icmp ne i64 %i.l, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.c ], [ true, %bb.a ], [ true, %bb.b ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i1 %.0
}

declare void @_ZN4geos9algorithm15LineIntersector19computeIntersectionERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos6noding9snapround8HotPixellsERSo(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !56 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN4geos2io9WKTWriter7toPointB5cxx11ERKNS_4geom10CoordinateE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.b = load ptr, ptr %2, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.g) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %1

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.j
}

declare void @_ZN4geos2io9WKTWriter7toPointB5cxx11ERKNS_4geom10CoordinateE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !63 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.a = load ptr, ptr %1, align 8, !tbaa !31, !noalias !64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37, !noalias !64 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !35, !alias.scope !65
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !37, !alias.scope !65
  store i8 0, ptr %i.d, align 8, !tbaa !36, !alias.scope !65
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !37, !alias.scope !65
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !37, !alias.scope !65
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #15
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !31, !alias.scope !65 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #16
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37, !noalias !66 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !37, !noalias !66
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #15
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !31, !noalias !66
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !35, !alias.scope !66
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !31   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !37 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !31, !alias.scope !66
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !36
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !36, !alias.scope !66
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !37, !alias.scope !66
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !31
  store i64 0, ptr %i.ai, align 8, !tbaa !37
  store i8 0, ptr %i.aa, align 8, !tbaa !36
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

end_hunk_0
