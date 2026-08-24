Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/OffsetPointGenerator?download=true
inline.NumInlined: 115
inline.NumDeleted: 90
begin_hunk_0_@_ZN4geos9operation7overlay8validate20OffsetPointGenerator9getPointsEv:bb.a

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
  %i.e = load ptr, ptr %1, align 8, !tbaa !26, !nonnull !27, !align !28
  invoke void @_ZN4geos4geom4util24LinearComponentExtracter8getLinesERKNS0_8GeometryERSt6vectorIPKNS0_10LineStringESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EE5resetEPS5_.exit
  %i.f = load ptr, ptr %2, align 8, !tbaa !29     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not16 = icmp eq ptr %i.f, %i.h
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.d ] ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.j, ptr %0, align 8, !tbaa !22
  store ptr null, ptr %i.a, align 8, !tbaa !22
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
  %i.l = load ptr, ptr %.sroa.013.017, align 8, !tbaa !34
  %i.m = invoke noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %.noexc unwind label %.loopexit.split-lp ; 6 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc7 unwind label %.loopexit.split-lp, !inline_history !38

.noexc7:                                          ; preds = %.noexc
  %i.r = add i64 %i.q, -1                         ; 2 uses
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc7, %.noexc10
  %.09.i = phi i64 [ %i.w, %.noexc10 ], [ 0, %.noexc7 ] ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %.09.i)
          to label %.noexc8 unwind label %.loopexit, !inline_history !38

.noexc8:                                          ; preds = %.lr.ph.i
  %i.w = add nuw i64 %.09.i, 1                    ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.w)
          to label %.noexc9 unwind label %.loopexit, !inline_history !38

.noexc9:                                          ; preds = %.noexc8
  invoke void @_ZN4geos9operation7overlay8validate20OffsetPointGenerator14computeOffsetsERKNS_4geom10CoordinateES7_(ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %.noexc9
  %exitcond.not.i = icmp eq i64 %i.w, %i.r
  br i1 %exitcond.not.i, label %_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE.exit, label %.lr.ph.i, !llvm.loop !39

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
  %i.ac = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.09), !inline_history !42
  %i.k = add nuw i64 %.09, 1                      ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.k), !inline_history !42
  tail call void @_ZN4geos9operation7overlay8validate20OffsetPointGenerator14computeOffsetsERKNS_4geom10CoordinateES7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  %exitcond.not = icmp eq i64 %i.k, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay8validate20OffsetPointGenerator14computeOffsetsERKNS_4geom10CoordinateES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x double>, ptr %i.a, align 8
  %i.c = load <2 x double>, ptr %2, align 8, !tbaa !43 ; 2 uses
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !43 ; 2 uses
  %i.e = fsub <2 x double> %i.c, %i.d             ; 3 uses
  %i.f = fmul <2 x double> %i.e, %i.e             ; 2 uses
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.f, %shift
  %i.g = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt = tail call double @llvm.sqrt.f64(double %i.g)
  %i.h = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.i = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fmul <2 x double> %i.i, %i.j
  %i.l = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x double> %i.k, %i.l             ; 2 uses
  %i.n = fadd <2 x double> %i.c, %i.d
  %i.o = fmul <2 x double> %i.n, splat (double 5.000000e-01) ; 2 uses
  %i.p = fsub <2 x double> %i.o, %i.m             ; 2 uses
  %i.q = fadd <2 x double> %i.o, %i.m             ; 2 uses
  %i.r = shufflevector <2 x double> %i.p, <2 x double> %i.q, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.s = shufflevector <2 x double> %i.q, <2 x double> %i.p, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x double> %i.r, ptr %i.w, align 8, !tbaa !43
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store double +qnan, ptr %.sroa.649.0..sroa_idx, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !44
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !23  ; 5 uses
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.d, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.af = sdiv exact i64 %i.ad, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 384307168202282325)
  %i.aj = select i1 %i.ah, i64 384307168202282325, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = mul nuw nsw i64 %i.aj, 24
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #10 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad ; 2 uses
  store <2 x double> %i.r, ptr %i.am, align 8, !tbaa !43
  %.sroa.649.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store double +qnan, ptr %.sroa.649.0..sroa_idx50, align 8, !tbaa !43
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.w
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !46, !alias.scope !47
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !51

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #11
  %.pre.pre = load ptr, ptr %i.t, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.u, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i ] ; 3 uses
  store ptr %i.al, ptr %i.u, align 8, !tbaa !23
  store ptr %i.ap, ptr %i.v, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.aq, ptr %i.x, align 8, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre54 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre56 = load ptr, ptr %.phi.trans.insert55, align 8, !tbaa !45
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ar = phi ptr [ %i.y, %bb.b ], [ %.pre56, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.as = phi ptr [ %i.z, %bb.b ], [ %.pre54, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.at = phi ptr [ %i.u, %bb.b ], [ %.pre, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.not.i25 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  store <2 x double> %i.s, ptr %i.as, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !44
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit38

bb.g:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !23 ; 5 uses
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.h, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26: ; preds = %bb.g
  %i.bc = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.sroa.speculated.i.i.i27 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i27, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 384307168202282325)
  %i.bg = select i1 %i.be, i64 384307168202282325, i64 %i.bf ; 3 uses
  %.not.i.i.i28 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i28)
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #10 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba ; 2 uses
  store <2 x double> %i.s, ptr %i.bj, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx42, align 8, !tbaa !43
  %.not10.i.i.i.i.i.i29 = icmp eq ptr %i.ax, %i.ar
  br i1 %.not10.i.i.i.i.i.i29, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34, label %.lr.ph.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i30:                             ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26, %.lr.ph.i.i.i.i.i.i30
  %.012.i.i.i.i.i.i31 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i30 ], [ %i.bi, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26 ] ; 2 uses
  %.0911.i.i.i.i.i.i32 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i30 ], [ %i.ax, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i31, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i32, i64 24, i1 false), !tbaa.struct !46, !alias.scope !52
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i32, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i31, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i33 = icmp eq ptr %i.bk, %i.ar
  br i1 %.not.i.i.i.i.i.i33, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34, label %.lr.ph.i.i.i.i.i.i30, !llvm.loop !51

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34: ; preds = %.lr.ph.i.i.i.i.i.i30, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26
  %.0.lcssa.i.i.i.i.i.i35 = phi ptr [ %i.bi, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i30 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i35, i64 24
  %.not.i23.i.i36 = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i.i36, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i37, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34
  tail call void @_ZdlPv(ptr noundef nonnull %i.ax) #11
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i37

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i37: ; preds = %bb.i, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i34
  store ptr %i.bi, ptr %i.at, align 8, !tbaa !23
  store ptr %i.bm, ptr %i.au, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bn, ptr %i.av, align 8, !tbaa !45
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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN4geos4geom8GeometryE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSN4geos9operation7overlay8validate20OffsetPointGeneratorE", !9, i64 0, !13, i64 8, !14, i64 16}
!13 = !{!"double", !6, i64 0}
!14 = !{!"_ZTSSt10unique_ptrISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EE", !15, i64 0}
!15 = !{!"_ZTSSt15__uniq_ptr_dataISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_ELb1ELb1EE", !16, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_implISt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EE", !17, i64 0}
!17 = !{!"_ZTSSt5tupleIJPSt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EEE", !18, i64 0}
!18 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6vectorIN4geos4geom10CoordinateESaIS3_EESt14default_deleteIS5_EEE", !19, i64 0}
!19 = !{!"_ZTSSt10_Head_baseILm0EPSt6vectorIN4geos4geom10CoordinateESaIS3_EELb0EE", !20, i64 0}
!20 = !{!"p1 _ZTSSt6vectorIN4geos4geom10CoordinateESaIS2_EE", !10, i64 0}
!21 = !{!19, !20, i64 0}
!22 = !{!20, !20, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !10, i64 0}
!26 = !{!12, !9, i64 0}
!27 = !{}
!28 = !{i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"p2 _ZTSN4geos4geom10LineStringE", !31, i64 0}
!31 = !{!"any p2 pointer", !10, i64 0}
!32 = !{!33, !30, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10LineStringESaIS4_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN4geos4geom10LineStringE", !10, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !7, i64 0}
!38 = !{ptr @_ZN4geos9operation7overlay8validate20OffsetPointGenerator13extractPointsEPKNS_4geom10LineStringE}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = !{!13, !13, i64 0}
!44 = !{!24, !25, i64 8}
!45 = !{!24, !25, i64 16}
!46 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!49 = distinct !{!49, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!51 = distinct !{!51, !40}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!55 = distinct !{!55, !54, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
end_hunk_0
