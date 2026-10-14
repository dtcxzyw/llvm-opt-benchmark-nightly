Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/OffsetPointGenerator?download=true
inline.NumInlined: 115
inline.NumDeleted: 90
begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9operation7overlay8validate20OffsetPointGeneratorC2ERKNS_4geom8GeometryEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, double noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay8validate20OffsetPointGenerator9getPointsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.10", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EE5resetEPS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #11
  br label %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit.i.i

_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #11
  br label %_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EE5resetEPS5_.exit

_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EE5resetEPS5_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteISt6vectorIN4geos4geom10CoordinateESaIS3_EEEclEPS5_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !30, !nonnull !31, !align !32
  invoke void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EE5resetEPS5_.exit
  %i.f = load ptr, ptr %2, align 8, !tbaa !35     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not16 = icmp eq ptr %i.f, %i.h
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.d ] ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.j, ptr %0, align 8, !tbaa !20
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.i) #11
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.f:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EE5resetEPS5_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.lr.ph:                                           ; preds = %bb.d, %_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE.exit
  %.sroa.013.017 = phi ptr [ %i.ab, %_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE.exit ], [ %i.f, %bb.d ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.013.017, align 8, !tbaa !39
  %i.m = invoke noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %.noexc unwind label %.loopexit.split-lp ; 6 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc7 unwind label %.loopexit.split-lp, !inline_history !40

.noexc7:                                          ; preds = %.noexc
  %i.r = add i64 %i.q, -1                         ; 2 uses
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc7, %.noexc10
  %.09.i = phi i64 [ %i.w, %.noexc10 ], [ 0, %.noexc7 ] ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %.09.i)
          to label %.noexc8 unwind label %.loopexit, !inline_history !40

.noexc8:                                          ; preds = %.lr.ph.i
  %i.w = add nuw i64 %.09.i, 1                    ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit, !inline_history !40

.noexc9:                                          ; preds = %.noexc8
  invoke void @_ZN4geos9operation7overlay8validate20OffsetPointGenerator14computeOffsetsERKNS_4geom10CoordinateES7_(ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %.noexc9
  %exitcond.not.i = icmp eq i64 %i.w, %i.r
  br i1 %exitcond.not.i, label %_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE.exit, label %.lr.ph.i, !llvm.loop !0

_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE.exit: ; preds = %.noexc10, %.noexc7
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc8, %.noexc9
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.lr.ph, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ac = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #11
  br label %_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit12

_ZNSt6vectorIPKN4geos4geom10LineStringESaIS4_EED2Ev.exit12: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !41
  %i.f = add i64 %i.e, -1                         ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.09), !inline_history !42
  %i.k = add nuw i64 %.09, 1                      ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.k), !inline_history !42
  tail call void @_ZN4geos9operation7overlay8validate20OffsetPointGenerator14computeOffsetsERKNS_4geom10CoordinateES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  %exitcond.not = icmp eq i64 %i.k, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay8validate20OffsetPointGenerator14computeOffsetsERKNS_4geom10CoordinateES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load <1 x double>, ptr %i.a, align 8
  %i.b = load <2 x double>, ptr %2, align 8, !tbaa !50 ; 2 uses
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !50 ; 2 uses
  %i.d = fsub <2 x double> %i.b, %i.c             ; 3 uses
  %i.e = fmul <2 x double> %i.d, %i.d             ; 2 uses
  %shift = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.e, %shift
  %i.f = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt = tail call double @llvm.sqrt.f64(double %i.f)
  %4 = shufflevector <1 x double> %3, <1 x double> poison, <2 x i32> zeroinitializer
  %5 = fmul <2 x double> %4, %i.d
  %6 = insertelement <2 x double> poison, double %sqrt, i64 0
  %7 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.g = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fdiv <2 x double> %7, %i.g               ; 2 uses
  %i.i = fadd <2 x double> %i.b, %i.c
  %i.j = fmul <2 x double> %i.i, splat (double 5.000000e-01) ; 2 uses
  %i.k = fsub <2 x double> %i.j, %i.h             ; 2 uses
  %i.l = fadd <2 x double> %i.j, %i.h             ; 2 uses
  %i.m = shufflevector <2 x double> %i.k, <2 x double> %i.l, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.n = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.t
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x double> %i.m, ptr %i.r, align 8, !tbaa !50
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store double +qnan, ptr %.sroa.649.0..sroa_idx, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !tbaa !51
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !23   ; 5 uses
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.d, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.aa = sdiv exact i64 %i.y, 24                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 384307168202282325)
  %i.ae = select i1 %i.ac, i64 384307168202282325, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = mul nuw nsw i64 %i.ae, 24
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #10 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y ; 2 uses
  store <2 x double> %i.m, ptr %i.ah, align 8, !tbaa !50
  %.sroa.649.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store double +qnan, ptr %.sroa.649.0..sroa_idx50, align 8, !tbaa !50
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !53, !alias.scope !54
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !46

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #11
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !23
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.al, ptr %i.s, align 8, !tbaa !52
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !20  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre54 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre56 = load ptr, ptr %.phi.trans.insert55, align 8, !tbaa !52
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.am = phi ptr [ %i.t, %bb.b ], [ %.pre56, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.an = phi ptr [ %i.u, %bb.b ], [ %.pre54, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.ao = phi ptr [ %i.p, %bb.b ], [ %.pre, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.not.i25 = icmp eq ptr %i.an, %i.am
  br i1 %.not.i25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  store <2 x double> %i.n, ptr %i.an, align 8, !tbaa !50
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !51
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit38

bb.g:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 5 uses
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.h, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26: ; preds = %bb.g
  %i.ax = sdiv exact i64 %i.av, 24                ; 3 uses
  %.sroa.speculated.i.i.i27 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i27, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 384307168202282325)
  %i.bb = select i1 %i.az, i64 384307168202282325, i64 %i.ba ; 3 uses
  %.not.i.i.i28 = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i28)
  %i.bc = mul nuw nsw i64 %i.bb, 24
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #10 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av ; 2 uses
  store <2 x double> %i.n, ptr %i.be, align 8, !tbaa !50
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx42, align 8, !tbaa !50
  %.not10.i.i.i.i.i.i29 = icmp eq ptr %i.as, %i.am
  br i1 %.not10.i.i.i.i.i.i29, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34, label %.lr.ph.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i30:                             ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26, %.lr.ph.i.i.i.i.i.i30
  %.012.i.i.i.i.i.i31 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i30 ], [ %i.bd, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26 ] ; 2 uses
  %.0911.i.i.i.i.i.i32 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i30 ], [ %i.as, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i31, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i32, i64 24, i1 false), !tbaa.struct !53, !alias.scope !55
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i32, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i31, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i33 = icmp eq ptr %i.bf, %i.am
  br i1 %.not.i.i.i.i.i.i33, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34, label %.lr.ph.i.i.i.i.i.i30, !llvm.loop !46

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34: ; preds = %.lr.ph.i.i.i.i.i.i30, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26
  %.0.lcssa.i.i.i.i.i.i35 = phi ptr [ %i.bd, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i30 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i35, i64 24
  %.not.i23.i.i36 = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i36, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i37, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #11
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i37

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i37: ; preds = %bb.i, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34
  store ptr %i.bd, ptr %i.ao, align 8, !tbaa !23
  store ptr %i.bh, ptr %i.ap, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bi, ptr %i.aq, align 8, !tbaa !52
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit38

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit38: ; preds = %bb.f, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
end_hunk_0
