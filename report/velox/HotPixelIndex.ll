inline.NumInlined: 348
inline.NumDeleted: 212
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4geos6noding9snapround13HotPixelIndex3addEPKNS_4geom18CoordinateSequenceE:bb.a

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt13random_deviceD2Ev.exit, %bb.m
  ret void

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph49:                                         ; preds = %.preheader, %bb.p
  %.sroa.022.048 = phi ptr [ %i.bb, %bb.p ], [ %.sroa.028.0.lcssa, %.preheader ] ; 2 uses
  %i.av = load i64, ptr %.sroa.022.048, align 8, !tbaa !77
  %i.aw = load ptr, ptr %1, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.av)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %.lr.ph49
  %i.ba = invoke noundef ptr @_ZN4geos6noding9snapround13HotPixelIndex3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.022.048, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bb, %.sroa.10.0.lcssa
  br i1 %.not, label %._crit_edge, label %.lr.ph49

bb.q:                                             ; preds = %bb.o, %.lr.ph49
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.au, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #17
  unreachable

.body:                                            ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %.pn.pn = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body
  %.sroa.028.2 = phi ptr [ %.sroa.028.0.lcssa, %.body ], [ %.sroa.028.042, %.loopexit ], [ %.sroa.028.1.ph, %.loopexit.split-lp ] ; 2 uses
  %.pn14 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i20 = icmp eq ptr %.sroa.028.2, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorImSaImEED2Ev.exit21, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdlPv(ptr noundef nonnull %.sroa.028.2) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit21

_ZNSt6vectorImSaImEED2Ev.exit21:                  ; preds = %bb.t, %bb.u
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(5000) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %4 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %5 = alloca %"class.std::uniform_int_distribution", align 8 ; 5 uses
  %6 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = udiv i64 4294967295, %i.e
  %.not = icmp ult i64 %i.f, %i.e
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = and i64 %i.d, 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i64 0, ptr %4, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !77
  %i.o = load i64, ptr %i.m, align 8, !tbaa !77
  store i64 %i.o, ptr %i.g, align 8, !tbaa !77
  store i64 %i.n, ptr %i.m, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.018.0 = phi ptr [ %i.k, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %.not3739 = icmp eq ptr %.sroa.018.0, %1
  br i1 %.not3739, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.018.140 = phi ptr [ %.sroa.018.0, %.lr.ph ], [ %i.ae, %bb.f ] ; 5 uses
  %i.q = ptrtoint ptr %.sroa.018.140 to i64
  %i.r = sub i64 %i.q, %i.c
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = add nsw i64 %i.s, 1
  %i.u = add nsw i64 %i.s, 2                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.v = mul i64 %i.u, %i.t
  %i.w = add i64 %i.v, -1
  store i64 0, ptr %3, align 8, !tbaa !81
  store i64 %i.w, ptr %i.p, align 8, !tbaa !83
  %i.x = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.y = udiv i64 %i.x, %i.u
  %i.z = urem i64 %i.x, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.018.140, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.ac = load i64, ptr %.sroa.018.140, align 8, !tbaa !77
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !77
  store i64 %i.ad, ptr %.sroa.018.140, align 8, !tbaa !77
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.140, i64 16 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !77
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !77
  store i64 %i.ah, ptr %i.aa, align 8, !tbaa !77
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !77
  %.not37 = icmp eq ptr %i.ae, %1
  br i1 %.not37, label %.loopexit, label %bb.f, !llvm.loop !84

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -1, ptr %i.ai, align 8, !tbaa !83
  %.sroa.0.041 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not3842 = icmp eq ptr %.sroa.0.041, %1
  br i1 %.not3842, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph44, %bb.h
  %.sroa.0.043 = phi ptr [ %.sroa.0.041, %.lr.ph44 ], [ %.sroa.0.0, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ak = ptrtoint ptr %.sroa.0.043 to i64
  %i.al = sub i64 %i.ak, %i.c
  %i.am = ashr exact i64 %i.al, 3
  store i64 0, ptr %6, align 8, !tbaa !81
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !83
  %i.an = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(5000) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %.sroa.0.043, align 8, !tbaa !77
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !77
  store i64 %i.aq, ptr %.sroa.0.043, align 8, !tbaa !77
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not38, label %._crit_edge, label %bb.h, !llvm.loop !85

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos6noding9snapround13HotPixelIndex3addERKSt6vectorINS_4geom10CoordinateESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::random_device", align 8 ; 7 uses
  %4 = alloca %"class.std::mersenne_twister_engine", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %.not53 = icmp eq ptr %i.b, %i.c
  br i1 %.not53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv i64 %i.f, 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.a
  %.sroa.028.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.028.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 6 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.h, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 7, ptr %i.i, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %i.j, align 1, !tbaa !75
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.k = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.c:                                             ; preds = %._crit_edge
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.n) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.047 = phi i64 [ %i.ad, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.046 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %.lr.ph.preheader ] ; 3 uses
  %.sroa.10.045 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %.lr.ph.preheader ] ; 3 uses
  %.sroa.028.044 = phi ptr [ %.sroa.028.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %.lr.ph.preheader ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.10.045, %.sroa.15.046
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store i64 %.047, ptr %.sroa.10.045, align 8, !tbaa !77
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.p = ptrtoint ptr %.sroa.15.046 to i64
  %i.q = ptrtoint ptr %.sroa.028.044 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #13
          to label %.noexc16 unwind label %.loopexit ; 4 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store i64 %.047, ptr %i.aa, align 8, !tbaa !77
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %.sroa.028.044, i64 %i.r, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc16
  %.not.i17.i.i = icmp eq ptr %.sroa.028.044, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.028.044) #14
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.d
  %.sroa.028.1 = phi ptr [ %i.z, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.028.044, %bb.d ] ; 2 uses
  %.pn35 = phi ptr [ %i.aa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.10.045, %bb.d ]
  %.sroa.15.1 = phi ptr [ %i.ac, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.15.046, %bb.d ]
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn35, i64 8 ; 2 uses
  %i.ad = add nuw i64 %.047, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ae = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.n

_ZNSt13random_deviceclEv.exit:                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  store i64 %i.af, ptr %4, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_ZNSt13random_deviceclEv.exit
  %store_forwarded = phi i64 [ %i.af, %_ZNSt13random_deviceclEv.exit ], [ %i.as, %bb.j ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit ], [ %i.at, %bb.j ] ; 4 uses
  %i.ag = getelementptr [8 x i8], ptr %4, i64 %.011.i.i
  %i.ah = lshr i64 %store_forwarded, 30
  %i.ai = xor i64 %i.ah, %store_forwarded
  %i.aj = mul nuw nsw i64 %i.ai, 1812433253
  %i.ak = add nuw i64 %i.aj, %.011.i.i            ; 2 uses
  %i.al = and i64 %i.ak, 4294967295               ; 2 uses
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !77
  %i.am = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.am, 624
  br i1 %exitcond.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr [8 x i8], ptr %4, i64 %i.am
  %i.ao = lshr i64 %i.al, 30
  %i.ap = xor i64 %i.ao, %i.ak
  %i.aq = mul i64 %i.ap, 1812433253
  %i.ar = add i64 %i.aq, %i.am
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !77
  %i.at = add nuw nsw i64 %.011.i.i, 2
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4992
  store i64 624, ptr %i.au, align 8, !tbaa !79
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEvT_SA_OT0_(ptr %.sroa.028.0.lcssa, ptr %.sroa.10.0.lcssa, ptr noundef nonnull align 8 dereferenceable(5000) %4)
          to label %.preheader unwind label %bb.n

.preheader:                                       ; preds = %bb.k
  %.not49 = icmp eq ptr %.sroa.028.0.lcssa, %.sroa.10.0.lcssa
  br i1 %.not49, label %._crit_edge52, label %.lr.ph51

._crit_edge52:                                    ; preds = %bb.o, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge52
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #17
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %._crit_edge52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.not.i.i.i18 = icmp eq ptr %.sroa.028.0.lcssa, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt13random_deviceD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.028.0.lcssa) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt13random_deviceD2Ev.exit, %bb.m
  ret void

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph51:                                         ; preds = %.preheader, %bb.o
  %.sroa.022.050 = phi ptr [ %i.bc, %bb.o ], [ %.sroa.028.0.lcssa, %.preheader ] ; 2 uses
  %i.ay = load i64, ptr %.sroa.022.050, align 8, !tbaa !77
  %i.az = load ptr, ptr %1, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ay
  %i.bb = invoke noundef ptr @_ZN4geos6noding9snapround13HotPixelIndex3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %.lr.ph51
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.022.050, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bc, %.sroa.10.0.lcssa
  br i1 %.not, label %._crit_edge52, label %.lr.ph51

bb.p:                                             ; preds = %.lr.ph51
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.ax, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %3)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #17
  unreachable

.body:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %.pn.pn = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body
  %.sroa.028.040 = phi ptr [ %.sroa.028.0.lcssa, %.body ], [ %.sroa.028.044, %.loopexit ], [ %.sroa.028.044, %.loopexit.split-lp ] ; 2 uses
  %.pn14 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i20 = icmp eq ptr %.sroa.028.040, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorImSaImEED2Ev.exit21, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdlPv(ptr noundef nonnull %.sroa.028.040) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit21

_ZNSt6vectorImSaImEED2Ev.exit21:                  ; preds = %bb.s, %bb.t
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos6noding9snapround13HotPixelIndex8addNodesEPKNS_4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !69 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.07)
  %i.i = tail call noundef ptr @_ZN4geos6noding9snapround13HotPixelIndex3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 1, ptr %i.j, align 8, !tbaa !55
  %i.k = add nuw i64 %.07, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos6noding9snapround13HotPixelIndex8addNodesERKSt6vectorINS_4geom10CoordinateESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %.not8 = icmp eq ptr %i.a, %i.c
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.f, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09, i64 24, i1 false), !tbaa.struct !47
  %i.d = call noundef ptr @_ZN4geos6noding9snapround13HotPixelIndex3addERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 1, ptr %i.e, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare noundef ptr @_ZN4geos5index6kdtree6KdTree5queryERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4geos6noding9snapround13HotPixelIndex5queryERKNS_4geom10CoordinateES6_RNS_5index6kdtree13KdNodeVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.geos::geom::Envelope", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
end_hunk_0
