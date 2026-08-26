Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeFunction?download=true
inline.NumInlined: 2735
inline.NumDeleted: 1179
begin_hunk_0_@_ZN4Luau15ToStringOptionsD2Ev:bb.a
bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.s, align 8, !tbaa !305
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !307
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !342
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !342
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i1 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.h, label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26
  br label %_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau5ScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4Luau15ToStringNameMapD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.ah) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau21UnscopedGenericFinderC2Ev(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 21, ptr %i.a, align 8, !tbaa !39
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !58
  %i.d = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.c, ptr noundef nonnull align 1 dereferenceable(21) @.str.78, i64 21, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !61
  %i.f = load ptr, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN4Luau15TypeOnceVisitorC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !60
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 272) (i8, ptr @_ZTVN4Luau21UnscopedGenericFinderE, i64 16), ptr %0, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.l, i8 0, i64 49, i1 false)
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.p = load i64, ptr %i.b, align 8, !tbaa !60
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  resume { ptr, i32 } %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau21UnscopedGenericFinderD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 272) (i8, ptr @_ZTVN4Luau21UnscopedGenericFinderE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !320
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 272) (i8, ptr @_ZTVN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEEE, i64 16), ptr %0, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #26, !inline_history !206
  br label %_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i

_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !60
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28, !inline_history !206
  br label %_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEED2Ev.exit

_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEED2Ev.exit: ; preds = %_ZN4Luau12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau19TypeFunctionReducer19testForSkippabilityEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(444) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::VecDeque", align 8    ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %1)
          to label %bb.b unwind label %.thread146

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  invoke void @_ZN4Luau8VecDequeIPKNS_4TypeESaIS3_EE4growEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.thread146

.noexc:                                           ; preds = %bb.b
  %.pre208 = load ptr, ptr %2, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !259
  %.pre2.i = load i64, ptr %i.c, align 8, !tbaa !54
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = add i64 %.pre, %.pre.i
  %i.f = urem i64 %i.e, %.pre2.i
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.pre208, i64 %i.f
  store ptr %i.a, ptr %i.g, align 8, !tbaa !88
  %i.h = add i64 %.pre.i, 1                       ; 3 uses
  store i64 %i.h, ptr %i.b, align 8, !tbaa !32
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %.lr.ph188

thread-pre-split:                                 ; preds = %bb.f, %.lr.ph.i, %._crit_edge.i
  %.sroa.17.1.ph.a = phi i64 [ %.sroa.11.2, %._crit_edge.i ], [ %.sroa.11.2, %.lr.ph.i ], [ %.sroa.17.0179, %bb.f ]
  %.sroa.090.1.ph = phi ptr [ %.sroa.090.4, %._crit_edge.i ], [ %.sroa.090.4, %.lr.ph.i ], [ %.sroa.090.0182, %bb.f ] ; 2 uses
  %.sroa.17.1.ph = phi i64 [ %i.ed, %._crit_edge.i ], [ %.sroa.17.0184, %.lr.ph.i ], [ %.sroa.17.0184, %bb.f ]
  %.pr = load i64, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.j = icmp eq i64 %.pr, 0
  br i1 %i.j, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %.lr.ph188

.lr.ph188:                                        ; preds = %.noexc, %thread-pre-split
  %.sroa.17.0184 = phi i64 [ %.sroa.17.1.ph, %thread-pre-split ], [ 0, %.noexc ] ; 6 uses
  %.sroa.090.0182 = phi ptr [ %.sroa.090.1.ph, %thread-pre-split ], [ null, %.noexc ] ; 20 uses
  %.sroa.17.0179 = phi i64 [ %.sroa.17.1.ph.a, %thread-pre-split ], [ 0, %.noexc ] ; 11 uses
  %i.k = phi i64 [ %.pr, %thread-pre-split ], [ %i.h, %.noexc ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !38
  %i.m = load i64, ptr %i.d, align 8, !tbaa !259  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88   ; 17 uses
  %i.p = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !tbaa !259
  %i.q = add i64 %i.k, -1
  store i64 %i.q, ptr %i.b, align 8, !tbaa !32
  %i.r = load i64, ptr %i.c, align 8, !tbaa !54
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %_ZN4Luau8VecDequeIPKNS_4TypeESaIS3_EE9pop_frontEv.exit

bb.c:                                             ; preds = %.lr.ph188
  store i64 0, ptr %i.d, align 8, !tbaa !259
  br label %_ZN4Luau8VecDequeIPKNS_4TypeESaIS3_EE9pop_frontEv.exit

_ZN4Luau8VecDequeIPKNS_4TypeESaIS3_EE9pop_frontEv.exit: ; preds = %.lr.ph188, %bb.c
  %i.t = icmp eq i64 %.sroa.17.0184, 0            ; 2 uses
  br i1 %i.t, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau8VecDequeIPKNS_4TypeESaIS3_EE9pop_frontEv.exit
  %i.u = icmp eq ptr %i.o, null
  br i1 %i.u, label %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit.thread151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add i64 %.sroa.17.0179, -1               ; 2 uses
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i = phi i64 [ %i.z, %bb.e ], [ %i.af, %bb.h ]
  %.02032.i.i = phi i64 [ 0, %bb.e ], [ %i.ae, %bb.h ]
  %.02133.i.i = and i64 %.pn.i.i, %i.v            ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.090.0182, i64 %.02133.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !88 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.o
  br i1 %i.ac, label %thread-pre-split, label %bb.g, !llvm.loop !343

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add i64 %.02032.i.i, 1                  ; 3 uses
  %i.af = add i64 %i.ae, %.02133.i.i
  %.not.i.i = icmp ugt i64 %i.ae, %i.v
  br i1 %.not.i.i, label %.loopexit, label %bb.f, !llvm.loop !258

.thread146:                                       ; preds = %bb.a, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit63

bb.i:                                             ; preds = %.lr.ph.preheader.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit:                                        ; preds = %bb.g, %bb.h, %_ZN4Luau8VecDequeIPKNS_4TypeESaIS3_EE9pop_frontEv.exit
  %.not.i.i47 = icmp eq ptr %i.o, null            ; 2 uses
  br i1 %.not.i.i47, label %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !64  ; 2 uses
  switch i32 %i.ai, label %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit [
    i32 20, label %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
    i32 3, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit
    i32 14, label %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit
  ]

_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !213 ; 2 uses
  switch i32 %i.ak, label %bb.l [
    i32 2, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.l:                                             ; preds = %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37 ; 2 uses
  %.not164192 = icmp eq ptr %i.am, %i.ao
  br i1 %.not164192, label %._crit_edge, label %.lr.ph194

bb.m:                                             ; preds = %.lr.ph194
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.077.0193, i64 8 ; 2 uses
  %.not164 = icmp eq ptr %i.ap, %i.ao
  br i1 %.not164, label %._crit_edge, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.l, %bb.m
  %.sroa.077.0193 = phi ptr [ %i.ap, %bb.m ], [ %i.am, %bb.l ] ; 2 uses
  %i.aq = load ptr, ptr %.sroa.077.0193, align 8, !tbaa !88
  %.not40 = icmp eq ptr %i.o, %i.aq
  br i1 %.not40, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.m

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.at = load i64, ptr %i.as, align 8, !tbaa !253
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17 ; 2 uses
  %i.ax = icmp eq ptr %i.o, %i.aw
  br i1 %i.ax, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !254
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  %i.bb = ptrtoint ptr %i.o to i64
  %i.bc = mul i64 %i.bb, -4658895280553007687     ; 2 uses
  %i.bd = lshr i64 %i.bc, 31
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.pn.i.i48 = phi i64 [ %i.be, %bb.o ], [ %i.bl, %bb.r ]
  %.02032.i.i49 = phi i64 [ 0, %bb.o ], [ %i.bk, %bb.r ]
  %.02133.i.i50 = and i64 %.pn.i.i48, %i.ba       ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.02133.i.i50
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.o
  br i1 %i.bi, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = icmp eq ptr %i.bh, %i.aw
  br i1 %i.bj, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = add i64 %.02032.i.i49, 1                ; 3 uses
  %i.bl = add i64 %i.bk, %.02133.i.i50
  %.not.i.i51 = icmp ugt i64 %i.bk, %i.ba
  br i1 %.not.i.i51, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.p, !llvm.loop !255

_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !37 ; 2 uses
  %.not177 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not177, label %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit, %bb.u
  %.sroa.072.0178 = phi ptr [ %i.cd, %bb.u ], [ %i.bn, %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.072.0178, align 8, !tbaa !88
  %i.br = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.bq)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %.lr.ph
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4Luau8VecDequeIPKNS_4TypeESaIS3_EE4growEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc56 unwind label %bb.v

.noexc56:                                         ; preds = %bb.t
  %.pre.i54 = load i64, ptr %i.b, align 8, !tbaa !32
  %.pre2.i55 = load i64, ptr %i.c, align 8, !tbaa !54
  br label %bb.u

bb.u:                                             ; preds = %.noexc56, %bb.s
  %i.bv = phi i64 [ %.pre2.i55, %.noexc56 ], [ %i.bt, %bb.s ]
  %i.bw = phi i64 [ %.pre.i54, %.noexc56 ], [ %i.bs, %bb.s ] ; 2 uses
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !259
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = urem i64 %i.by, %i.bv
  %i.ca = load ptr, ptr %2, align 8, !tbaa !38
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.br, ptr %i.cb, align 8, !tbaa !88
  %i.cc = add i64 %i.bw, 1
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.072.0178, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cd, %i.bp
  br i1 %.not, label %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit, label %.lr.ph

bb.v:                                             ; preds = %bb.t, %.lr.ph
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit: ; preds = %bb.u, %bb.j, %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit, %.loopexit
  %i.cf = mul i64 %.sroa.17.0179, 3
  %i.cg = lshr i64 %i.cf, 2
  %.not.i.i58 = icmp ult i64 %.sroa.17.0184, %i.cg
  br i1 %.not.i.i58, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, label %bb.w

_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit.thread151: ; preds = %bb.d
  %i.ch = mul i64 %.sroa.17.0179, 3
  %i.ci = lshr i64 %i.ch, 2
  %.not.i.i58155 = icmp ult i64 %.sroa.17.0184, %i.ci
  br i1 %.not.i.i58155, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, label %.loopexit.i.i

bb.w:                                             ; preds = %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit
  %brmerge = or i1 %i.t, %.not.i.i47
  br i1 %brmerge, label %.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = add i64 %.sroa.17.0179, -1              ; 2 uses
  %i.ck = ptrtoint ptr %i.o to i64
  %i.cl = mul i64 %i.ck, -4658895280553007687     ; 2 uses
  %i.cm = lshr i64 %i.cl, 31
  %i.cn = xor i64 %i.cm, %i.cl
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.pn.i.i.i = phi i64 [ %i.cn, %bb.x ], [ %i.ct, %bb.aa ]
  %.02032.i.i.i = phi i64 [ 0, %bb.x ], [ %i.cs, %bb.aa ]
  %.02133.i.i.i = and i64 %.pn.i.i.i, %i.cj       ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.090.0182, i64 %.02133.i.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !88 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.o
  br i1 %i.cq, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = icmp eq ptr %i.cp, null
  br i1 %i.cr, label %.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = add i64 %.02032.i.i.i, 1                ; 3 uses
  %i.ct = add i64 %i.cs, %.02133.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.cs, %i.cj
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.y, !llvm.loop !258

.loopexit.i.i:                                    ; preds = %bb.aa, %bb.z, %bb.w, %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit.thread151
  %i.cu = icmp eq i64 %.sroa.17.0179, 0           ; 2 uses
  %i.cv = shl i64 %.sroa.17.0179, 1               ; 2 uses
  %spec.select.i = select i1 %i.cu, i64 16, i64 %i.cv ; 4 uses
  %.not.i.i64 = icmp eq i64 %spec.select.i, 0
  br i1 %.not.i.i64, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i.i
  %i.cw = shl i64 %spec.select.i, 3               ; 2 uses
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #32
          to label %.lr.ph.i.i.i.preheader unwind label %bb.i ; 2 uses

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cx, i8 0, i64 %i.cw, i1 false), !tbaa !88
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i: ; preds = %.lr.ph.i.i.i.preheader, %.loopexit.i.i
  %.sroa.0.0.i = phi ptr [ null, %.loopexit.i.i ], [ %i.cx, %.lr.ph.i.i.i.preheader ] ; 6 uses
  br i1 %i.cu, label %._crit_edge28.i, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i
  %i.cy = add i64 %i.cv, -1                       ; 3 uses
  br label %bb.ac

._crit_edge28.i:                                  ; preds = %bb.af, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERKS4_m.exit.i
  %.not.i11.i = icmp eq ptr %.sroa.090.0182, null
  br i1 %.not.i11.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge28.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.090.0182) #26
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i

bb.ac:                                            ; preds = %bb.af, %.lr.ph27.i
  %.026.i = phi i64 [ 0, %.lr.ph27.i ], [ %i.dt, %bb.af ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.090.0182, i64 %.026.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !88 ; 5 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = mul i64 %i.dc, -4658895280553007687     ; 2 uses
  %i.de = lshr i64 %i.dd, 31
  %i.df = xor i64 %i.de, %i.dd
  %.02336.i22.i = and i64 %i.df, %i.cy            ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02336.i22.i
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !88 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %._crit_edge.i69, label %.lr.ph.i67

._crit_edge.i69:                                  ; preds = %bb.ae, %bb.ad
  %.02336.i.lcssa21.i = phi i64 [ %.02336.i22.i, %bb.ad ], [ %.02336.i.i68, %bb.ae ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02336.i.lcssa21.i ; 2 uses
  store ptr %i.da, ptr %i.dj, align 8, !tbaa !88
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i

.lr.ph.i67:                                       ; preds = %bb.ad, %bb.ae
  %i.dk = phi ptr [ %i.dp, %bb.ae ], [ %i.dh, %bb.ad ]
  %.02336.i24.i = phi i64 [ %.02336.i.i68, %bb.ae ], [ %.02336.i22.i, %bb.ad ] ; 2 uses
  %.02235.i23.i = phi i64 [ %i.dm, %bb.ae ], [ 0, %bb.ad ]
  %i.dl = icmp eq ptr %i.dk, %i.da
  br i1 %i.dl, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i70, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i67
  %i.dm = add i64 %.02235.i23.i, 1                ; 3 uses
  %i.dn = add i64 %i.dm, %.02336.i24.i
  %.not.i12.i = icmp ule i64 %i.dm, %i.cy
  call void @llvm.assume(i1 %.not.i12.i)
  %.02336.i.i68 = and i64 %i.dn, %i.cy            ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02336.i.i68
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !88 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %._crit_edge.i69, label %.lr.ph.i67

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i70: ; preds = %.lr.ph.i67
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %.02336.i24.i
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i70, %._crit_edge.i69
  %i.ds = phi ptr [ %i.dj, %._crit_edge.i69 ], [ %i.dr, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.loopexit.i70 ]
  store ptr %i.da, ptr %i.ds, align 8, !tbaa !88
  br label %bb.af

bb.af:                                            ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERKS4_.exit.i, %bb.ac
  %i.dt = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dt, %.sroa.17.0179
  br i1 %exitcond.not.i, label %._crit_edge28.i, label %bb.ac, !llvm.loop !271

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i: ; preds = %bb.y, %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit.thread151, %._crit_edge28.i, %bb.ab, %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit
  %.sroa.11.2 = phi i64 [ %.sroa.17.0179, %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit ], [ %.sroa.17.0179, %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit.thread151 ], [ %spec.select.i, %bb.ab ], [ %spec.select.i, %._crit_edge28.i ], [ %.sroa.17.0179, %bb.y ] ; 3 uses
  %.sroa.090.4 = phi ptr [ %.sroa.090.0182, %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit ], [ %.sroa.090.0182, %_ZNK4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EE8containsERKS2_.exit.thread151 ], [ %.sroa.0.0.i, %bb.ab ], [ %.sroa.0.0.i, %._crit_edge28.i ], [ %.sroa.090.0182, %bb.y ] ; 5 uses
  %i.du = add i64 %.sroa.11.2, -1                 ; 3 uses
  %i.dv = ptrtoint ptr %i.o to i64
  %i.dw = mul i64 %i.dv, -4658895280553007687     ; 2 uses
  %i.dx = lshr i64 %i.dw, 31
  %i.dy = xor i64 %i.dx, %i.dw
  %.02336.i6.i = and i64 %i.du, %i.dy             ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.090.4, i64 %.02336.i6.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !88 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ag, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i
  %.02336.i.lcssa5.i = phi i64 [ %.02336.i6.i, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ], [ %.02336.i.i, %bb.ag ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.090.4, i64 %.02336.i.lcssa5.i
  store ptr %i.o, ptr %i.ec, align 8, !tbaa !88
  %i.ed = add i64 %.sroa.17.0184, 1
  br label %thread-pre-split

.lr.ph.i:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i, %bb.ag
  %i.ee = phi ptr [ %i.ej, %bb.ag ], [ %i.ea, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ]
  %.02336.i8.i = phi i64 [ %.02336.i.i, %bb.ag ], [ %.02336.i6.i, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ]
  %.02235.i7.i = phi i64 [ %i.eg, %bb.ag ], [ 0, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeES4_S4_NS0_16ItemInterfaceSetIS4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERKS4_.exit.i ]
  %i.ef = icmp eq ptr %i.ee, %i.o
  br i1 %i.ef, label %thread-pre-split, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i
  %i.eg = add i64 %.02235.i7.i, 1                 ; 3 uses
  %i.eh = add i64 %i.eg, %.02336.i8.i
  %.not.i3.i = icmp ule i64 %i.eg, %i.du
  call void @llvm.assume(i1 %.not.i3.i)
  %.02336.i.i = and i64 %i.eh, %i.du              ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.090.4, i64 %.02336.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !88 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %._crit_edge.i, label %.lr.ph.i

_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit: ; preds = %thread-pre-split, %bb.j, %.lr.ph194, %bb.r, %bb.q, %bb.p, %._crit_edge, %bb.n, %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit, %bb.k
  %.sroa.090.0174 = phi ptr [ %.sroa.090.0182, %bb.n ], [ %.sroa.090.0182, %.lr.ph194 ], [ %.sroa.090.0182, %._crit_edge ], [ %.sroa.090.0182, %bb.r ], [ %.sroa.090.0182, %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit ], [ %.sroa.090.0182, %bb.k ], [ %.sroa.090.0182, %bb.p ], [ %.sroa.090.0182, %bb.q ], [ %.sroa.090.0182, %bb.j ], [ %.sroa.090.1.ph, %thread-pre-split ] ; 2 uses
  %.6 = phi i32 [ 4, %bb.n ], [ 0, %.lr.ph194 ], [ 4, %._crit_edge ], [ 4, %bb.r ], [ %i.ak, %_ZN4Luau3getINS_24TypeFunctionInstanceTypeEEEPKT_PKNS_4TypeE.exit ], [ 3, %bb.k ], [ 4, %bb.q ], [ 1, %bb.p ], [ %i.ai, %bb.j ], [ 5, %thread-pre-split ] ; 2 uses
  %.not.i.i61 = icmp eq ptr %.sroa.090.0174, null
  br i1 %.not.i.i61, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread236

_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread236: ; preds = %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.090.0174) #26
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %.noexc, %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread236
  %.6235 = phi i32 [ %.6, %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit.thread236 ], [ %.6, %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit ], [ 5, %.noexc ]
  %i.el = load ptr, ptr %2, align 8, !tbaa !38
  %i.em = load i64, ptr %i.c, align 8, !tbaa !54
  %i.en = shl i64 %i.em, 3
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.en) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %.6235

bb.ah:                                            ; preds = %bb.i, %bb.v
  %.pn43.pn = phi { ptr, i32 } [ %i.ce, %bb.v ], [ %i.ah, %bb.i ] ; 2 uses
  %.not.i.i62 = icmp eq ptr %.sroa.090.0182, null
  br i1 %.not.i.i62, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit63, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef nonnull %.sroa.090.0182) #26
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit63

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit63: ; preds = %bb.ai, %bb.ah, %.thread146
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.ai ], [ %i.ag, %.thread146 ], [ %.pn43.pn, %bb.ah ]
  %i.eo = load ptr, ptr %2, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !54
  %i.er = shl i64 %i.eq, 3
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau19TypeFunctionReducer14testParametersIPKNS_4TypeENS_24TypeFunctionInstanceTypeEEEbT_PKT0_(ptr noundef nonnull align 8 dereferenceable(444) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"struct.Luau::ToStringOptions", align 8 ; 28 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not397 = icmp eq ptr %i.b, %i.d
  br i1 %.not397, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.cf
  %.sroa.0355.0398 = phi ptr [ %i.vr, %bb.cf ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.0355.0398, align 8, !tbaa !88 ; 4 uses
  %i.f = tail call noundef i32 @_ZN4Luau19TypeFunctionReducer19testForSkippabilityEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(444) %0, ptr noundef %i.e) ; 2 uses
  switch i32 %i.f, label %bb.cf [
    i32 2, label %bb.b
    i32 1, label %.thread
    i32 3, label %bb.t
    i32 4, label %bb.bl
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i8, ptr @_ZN5FFlag24DebugLuauLogTypeFamiliesE, align 8, !tbaa !83, !range !66, !noundef !86
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i8 1, ptr %4, align 8, !tbaa !276
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.i, i8 0, i64 6, i1 false)
  store i8 1, ptr %i.j, align 1, !tbaa !290
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !291
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load i32, ptr @_ZN4FInt37LuauTableTypeMaximumStringifierLengthE, align 8, !tbaa !67
  %i.n = sext i32 %i.m to i64
  store i64 %i.n, ptr %i.l, align 8, !tbaa !292
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load i32, ptr @_ZN4FInt32LuauTypeMaximumStringifierLengthE, align 8, !tbaa !67
  %i.q = sext i32 %i.p to i64
  store i64 %i.q, ptr %i.o, align 8, !tbaa !293
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 5, ptr %i.r, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.t, ptr %i.s, align 8, !tbaa !295
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 1, ptr %i.u, align 8, !tbaa !296
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8, !tbaa !297
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 144
  store ptr %i.z, ptr %i.y, align 8, !tbaa !298
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 1, ptr %i.aa, align 8, !tbaa !299
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ac, align 8, !tbaa !297
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false)
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeERNS_15ToStringOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(192) %4)
          to label %_ZN4Luau8toStringB5cxx11EPKNS_4TypeEONS_15ToStringOptionsE.exit unwind label %bb.k

_ZN4Luau8toStringB5cxx11EPKNS_4TypeEONS_15ToStringOptionsE.exit: ; preds = %bb.c
  %i.ae = load ptr, ptr %3, align 8, !tbaa !58
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, ptr noundef %i.ae) ; 0 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4Luau8toStringB5cxx11EPKNS_4TypeEONS_15ToStringOptionsE.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !60
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4Luau8toStringB5cxx11EPKNS_4TypeEONS_15ToStringOptionsE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !300 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !301 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.ap = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !58 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !302

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.al, align 8, !tbaa !300
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !303
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !304 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZN4Luau15ToStringOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.bd, align 8, !tbaa !305
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !307
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !308
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #26, !inline_history !308
  br label %_ZN4Luau15ToStringOptionsD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i1.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i1.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_0
