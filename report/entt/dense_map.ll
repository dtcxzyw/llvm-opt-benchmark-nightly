Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/dense_map?download=true
inline.NumInlined: 11368
inline.NumDeleted: 3149
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4entt9dense_mapImmSt4hashImESt8equal_toIvEN4test18throwing_allocatorISt4pairIKmmEEEE7emplaceIJRKSt21piecewise_construct_tSt5tupleIJjEESH_EEES7_INS_8internal18dense_map_iteratorIPNSI_14dense_map_nodeImmEEEEbEDpOT_:bb.a
  %.pre-phi27 = phi i64 [ %i.ap, %bb.f ], [ %.pre26, %bb.g ]
  %i.ay = phi ptr [ %i.y, %bb.f ], [ %.pre21, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.pre-phi27
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -24
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN4entt9dense_mapImmSt4hashImESt8equal_toIvEN4test18throwing_allocatorISt4pairIKmmEEEE18rehash_if_requiredEv.exit
  %.sroa.013.1 = phi ptr [ %i.ba, %_ZN4entt9dense_mapImmSt4hashImESt8equal_toIvEN4test18throwing_allocatorISt4pairIKmmEEEE18rehash_if_requiredEv.exit ], [ %.sroa.0.1.i, %bb.e ]
  %.sroa.3.1 = phi i8 [ 1, %_ZN4entt9dense_mapImmSt4hashImESt8equal_toIvEN4test18throwing_allocatorISt4pairIKmmEEEE18rehash_if_requiredEv.exit ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapImmSt4hashImESt8equal_toIvEN4test18throwing_allocatorISt4pairIKmmEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEEN4test18throwing_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEEN4test18throwing_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i.i.i

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEEN4test18throwing_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEEN4test18throwing_allocatorIS4_EEELm0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEEN4test18throwing_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !206
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !999
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27, !inline_history !999
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEEN4test18throwing_allocatorIS4_EEELm0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEEN4test18throwing_allocatorIS4_EEELm0EED2Ev.exit, !prof !118

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEEN4test18throwing_allocatorIS4_EEELm0EED2Ev.exit

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEEN4test18throwing_allocatorIS4_EEELm0EED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEEN4test18throwing_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i.i.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !217  ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i1, label %_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEEN4test18throwing_allocatorIS4_EEELm0EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !251
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #28
  br label %_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i.i

_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i.i: ; preds = %bb.i, %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEEN4test18throwing_allocatorIS4_EEELm0EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !196 ; 8 uses
  %.not.i.i.i.i.i.i2 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i2, label %_ZN4entt8internal23compressed_pair_elementISt6vectorImN4test18throwing_allocatorImEEELm0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ah, align 8, !tbaa !205
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !206
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #27, !inline_history !1000
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #27, !inline_history !1000
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorImN4test18throwing_allocatorImEEELm0EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i.i.i.i.i3 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i4

bb.n:                                             ; preds = %bb.l
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i4: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i5 = phi i32 [ %i.ak, %bb.m ], [ %i.au, %bb.n ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i.i.i.i5, 1
  br i1 %i.av, label %bb.o, label %_ZN4entt8internal23compressed_pair_elementISt6vectorImN4test18throwing_allocatorImEEELm0EED2Ev.exit, !prof !118

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i4
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #27
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorImN4test18throwing_allocatorImEEELm0EED2Ev.exit

_ZN4entt8internal23compressed_pair_elementISt6vectorImN4test18throwing_allocatorImEEELm0EED2Ev.exit: ; preds = %_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i4, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN41DenseMap_NoUsesAllocatorConstruction_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.test::tracked_memory_resource", align 8 ; 10 uses
  %2 = alloca %"class.entt::dense_map.190", align 8 ; 18 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4test23tracked_memory_resourceE, i64 16), ptr %1, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  store i64 %i.h, ptr %2, align 8, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store i64 %i.h, ptr %i.j, align 8, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store float 8.750000e-01, ptr %i.l, align 8, !tbaa !269
  invoke void @_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(68) %2, i64 noundef 8)
          to label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEEC2ERKSA_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS4_EEELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #27
  call void @_ZN4entt8internal23compressed_pair_elementISt6vectorImNSt3pmr21polymorphic_allocatorImEEELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(68) %2) #27
  br label %.body

_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEEC2ERKSA_.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !270  ; 3 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !271  ; 9 uses
  %13 = ptrtoaddr ptr %i.p to i64                 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE11_M_allocateEm.exit.i.i, label %.noexc

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE11_M_allocateEm.exit.i.i: ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEEC2ERKSA_.exit
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !272  ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.v = sub i64 %i.u, %i.r
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !273  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef nonnull align 8 ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 16, i64 noundef 8)
          to label %.noexc84 unwind label %bb.e, !inline_history !1001 ; 10 uses

.noexc84:                                         ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE11_M_allocateEm.exit.i.i
  %i.ab = icmp eq ptr %i.o, %i.t
  br i1 %i.ab, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc84
  %i.ac = add i64 %i.u, -16
  %i.ad = sub i64 %i.ac, %13                      ; 2 uses
  %i.ae = lshr i64 %i.ad, 4
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 208
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %14 = add i64 %i.u, -16
  %15 = sub i64 %14, %13
  %i.ag = and i64 %15, -16
  %i.ah = add i64 %i.ag, 16                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.ah
  %scevgep116 = getelementptr i8, ptr %i.p, i64 %i.ah
  %bound0 = icmp ult ptr %i.aa, %scevgep116
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 2305843009213693950     ; 3 uses
  %i.ai = shl i64 %n.vec, 4                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 4                       ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.al
  %next.gep117 = getelementptr i8, ptr %i.aa, i64 %i.am
  %next.gep118 = getelementptr i8, ptr %i.p, i64 %i.al
  %next.gep119 = getelementptr i8, ptr %i.p, i64 %i.am
  %wide.load = load <2 x i64>, ptr %next.gep118, align 8, !alias.scope !1007
  %wide.load120 = load <2 x i64>, ptr %next.gep119, align 8, !alias.scope !1007
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1008, !noalias !1007
  store <2 x i64> %wide.load120, ptr %next.gep117, align 8, !alias.scope !1008, !noalias !1007
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1005

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i, label %.lr.ph.i.i.i.preheader122

.lr.ph.i.i.i.preheader122:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.014.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.sroa.010.013.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader122, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.014.i.i.i.ph, %.lr.ph.i.i.i.preheader122 ] ; 3 uses
  %.sroa.010.013.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.sroa.010.013.i.i.i.ph, %.lr.ph.i.i.i.preheader122 ] ; 3 uses
  %i.ao = load i64, ptr %.sroa.010.013.i.i.i, align 8, !tbaa !114
  store i64 %i.ao, ptr %.014.i.i.i, align 8, !tbaa !114
  %i.ap = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  store i64 %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  %i.au = icmp eq ptr %i.as, %i.t
  br i1 %i.au, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1006

_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %.noexc84
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !271 ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.av, null
  br i1 %.not.i.i83, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !270
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !273 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.av, i64 noundef %i.az, i64 noundef 8)
          to label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i unwind label %bb.d, !inline_history !21

bb.d:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #29
  unreachable

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !271
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.v
  store ptr %i.bg, ptr %i.s, align 8, !tbaa !272
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.bh, ptr %i.n, align 8, !tbaa !270
  br label %.noexc

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i, %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEEC2ERKSA_.exit
  %i.bi = load float, ptr %i.l, align 8, !tbaa !269
  %i.bj = fdiv float 1.000000e+00, %i.bi
  %i.bk = call noundef float @llvm.ceil.f32(float %i.bj)
  %i.bl = fptoui float %i.bk to i64
  invoke void @_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(68) %2, i64 noundef %i.bl)
          to label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7reserveEm.exit unwind label %bb.e

_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7reserveEm.exit: ; preds = %.noexc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !111
  %i.bm = invoke { ptr, i8 } @_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE20insert_or_do_nothingIiJiEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7emplaceIJiiEEES7_INS_8internal18dense_map_iteratorIPNSD_14dense_map_nodeIiiEEEEbEDpOT_.exit unwind label %bb.f ; 0 uses

_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7emplaceIJiiEEES7_INS_8internal18dense_map_iteratorIPNSD_14dense_map_nodeIiiEEEEbEDpOT_.exit: ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !253 ; 2 uses
  %i.bn = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #27, !inline_history !22 ; 2 uses
  %i.br = zext i1 %i.bq to i8
  store i8 %i.br, ptr %3, align 8, !tbaa !102
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !103
  br i1 %i.bq, label %bb.r, label %bb.g

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE11_M_allocateEm.exit.i.i, %.noexc
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.f:                                             ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7reserveEm.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bc

bb.g:                                             ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7emplaceIJiiEEES7_INS_8internal18dense_map_iteratorIPNSD_14dense_map_nodeIiiEEEEbEDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bv = load ptr, ptr %6, align 8, !tbaa !88
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1206, ptr noundef %i.bv)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  %i.bw = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !89
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.cb = load ptr, ptr %4, align 8, !tbaa !91    ; 3 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(128) %i.cb) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !104 ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !88 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !89
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorImNSt3pmr21polymorphic_allocatorImEEE17_M_default_appendEm:bb.a
  %i.v = shl nuw nsw i64 %i.t, 3
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 8 ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.v, i64 noundef 8), !inline_history !1399 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g ; 2 uses
  %i.ab = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.ab, i1 false), !tbaa !110
  %i.ac = icmp eq ptr %i.d, %i.c
  br i1 %i.ac, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_NSt3pmr21polymorphic_allocatorImEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt6vectorImNSt3pmr21polymorphic_allocatorImEEE12_M_check_lenEmPKc.exit, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.z, %_ZNKSt6vectorImNSt3pmr21polymorphic_allocatorImEEE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.010.013.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.d, %_ZNKSt6vectorImNSt3pmr21polymorphic_allocatorImEEE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.010.013.i.i, align 8, !tbaa !110
  store i64 %i.ad, ptr %.014.i.i, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.ag = icmp eq ptr %i.ae, %i.c
  br i1 %i.ag, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_NSt3pmr21polymorphic_allocatorImEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1400

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_NSt3pmr21polymorphic_allocatorImEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %_ZNKSt6vectorImNSt3pmr21polymorphic_allocatorImEEE12_M_check_lenEmPKc.exit
  %.not.i44 = icmp eq ptr %i.d, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEE13_M_deallocateEPmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_NSt3pmr21polymorphic_allocatorImEEET0_T_S5_S4_RT1_.exit
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !281
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !282   ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.d, i64 noundef %i.aj, i64 noundef 8)
          to label %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEE13_M_deallocateEPmm.exit unwind label %bb.f, !inline_history !21

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #29
  unreachable

_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEE13_M_deallocateEPmm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_NSt3pmr21polymorphic_allocatorImEEET0_T_S5_S4_RT1_.exit, %bb.e
  store ptr %i.z, ptr %i.a, align 8, !tbaa !280
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %1
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !296
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !281
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmNSt3pmr21polymorphic_allocatorImEEET_S4_T0_RT1_.exit, %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE20insert_or_do_nothingIiJiEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.291", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.291", align 8    ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !111    ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !296
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !280  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = add nsw i64 %i.j, -1
  %i.l = and i64 %i.k, %i.b                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.in.i = phi ptr [ %i.m, %bb.a ], [ %i.p, %bb.c ]
  %.07.i = load i64, ptr %.07.in.i, align 8, !tbaa !110 ; 2 uses
  %.not.i = icmp eq i64 %.07.i, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds [16 x i8], ptr %i.o, i64 %.07.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !111
  %i.s = icmp eq i32 %i.r, %i.a
  br i1 %i.s, label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit.loopexit, label %bb.b, !llvm.loop !1401

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !272  ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  br label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit

_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit.loopexit: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !272
  br label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit

_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit: ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit.loopexit, %bb.d
  %i.z = phi ptr [ %i.u, %bb.d ], [ %.pre, %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit.loopexit ] ; 5 uses
  %.sroa.0.1.i = phi ptr [ %i.y, %bb.d ], [ %i.p, %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit.loopexit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ab = icmp eq ptr %.sroa.0.1.i, %i.z
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %1, ptr %3, align 8, !tbaa !165, !alias.scope !1406
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %2, ptr %4, align 8, !tbaa !165, !alias.scope !1407
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !270
  %.not.i13 = icmp eq ptr %i.z, %i.ad
  br i1 %.not.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !110
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i32, ptr %2, align 4, !tbaa !111
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.ag to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.04.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.a to i64
  %.sroa.04.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.04.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.04.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !272
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !272
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESF_EEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESF_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre21 = load ptr, ptr %i.aa, align 8, !tbaa !272
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESF_EEERS3_DpOT_.exit

_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESF_EEERS3_DpOT_.exit: ; preds = %bb.f, %bb.g
  %i.ak = phi ptr [ %i.ai, %bb.f ], [ %.pre21, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !271 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 4                 ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !280 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.l
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !110
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !296
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = uitofp i64 %i.ax to float
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load float, ptr %i.az, align 8, !tbaa !269
  %i.bb = fmul float %i.ba, %i.ay
  %i.bc = fptoui float %i.bb to i64
  %i.bd = icmp ugt i64 %i.ap, %i.bc
  br i1 %i.bd, label %bb.h, label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE18rehash_if_requiredEv.exit

bb.h:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESF_EEERS3_DpOT_.exit
  %i.be = ashr exact i64 %i.aw, 2
  call void @_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef %i.be)
  %.pre22 = load ptr, ptr %i.n, align 8, !tbaa !271 ; 2 uses
  %.pre23 = load ptr, ptr %i.aa, align 8, !tbaa !272
  %.pre24 = ptrtoint ptr %.pre23 to i64
  %.pre25 = ptrtoint ptr %.pre22 to i64
  %.pre27 = sub i64 %.pre24, %.pre25
  br label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE18rehash_if_requiredEv.exit

_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE18rehash_if_requiredEv.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESF_EEERS3_DpOT_.exit, %bb.h
  %.pre-phi28 = phi i64 [ %i.ao, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESF_EEERS3_DpOT_.exit ], [ %.pre27, %bb.h ]
  %i.bf = phi ptr [ %i.al, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12emplace_backIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESF_EEERS3_DpOT_.exit ], [ %.pre22, %bb.h ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.pre-phi28
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16
  br label %bb.i

bb.i:                                             ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit, %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE18rehash_if_requiredEv.exit
  %.sroa.012.1 = phi ptr [ %i.bh, %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE18rehash_if_requiredEv.exit ], [ %.sroa.0.1.i, %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit ]
  %.sroa.3.1 = phi i8 [ 1, %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE18rehash_if_requiredEv.exit ], [ 0, %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE16constrained_findIiEEDaRKT_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESF_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !272  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !271  ; 11 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775792
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.390) #30
  unreachable

_ZNKSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 576460752303423487)
  %i.m = select i1 %i.k, i64 576460752303423487, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = load ptr, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.q = shl nuw nsw i64 %i.m, 4
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.q, i64 noundef 8), !inline_history !1408 ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o ; 2 uses
  %i.w = load i64, ptr %2, align 8, !tbaa !110
  store i64 %i.w, ptr %i.v, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %4, align 8, !tbaa !356, !noalias !1429, !nonnull !109, !align !357
  %i.z = load ptr, ptr %5, align 8, !tbaa !356, !noalias !1430, !nonnull !109, !align !357
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !111
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !111
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.ab to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.04.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.aa to i64
  %.sroa.04.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.04.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.sroa.04.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.x, align 8
  %i.ac = icmp eq ptr %i.d, %1
  br i1 %i.ac, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12_M_check_lenEmPKc.exit
  %i.ad = add i64 %i.n, -16
  %i.ae = sub i64 %i.ad, %i.f                     ; 2 uses
  %i.af = lshr i64 %i.ae, 4
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 208
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %6 = add i64 %i.n, -16
  %7 = sub i64 %6, %i.f
  %i.ah = and i64 %7, -16
  %i.ai = add i64 %i.ah, 16                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ai
  %scevgep48 = getelementptr i8, ptr %i.d, i64 %i.ai
  %bound0 = icmp ult ptr %i.u, %scevgep48
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 2305843009213693950     ; 3 uses
  %i.aj = shl i64 %n.vec, 4                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.d, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 4                       ; 3 uses
  %i.an = or disjoint i64 %i.am, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.am
  %next.gep49 = getelementptr i8, ptr %i.u, i64 %i.an
  %next.gep50 = getelementptr i8, ptr %i.d, i64 %i.am
  %next.gep51 = getelementptr i8, ptr %i.d, i64 %i.an
  %wide.load = load <2 x i64>, ptr %next.gep50, align 8, !alias.scope !1431
  %wide.load52 = load <2 x i64>, ptr %next.gep51, align 8, !alias.scope !1431
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1432, !noalias !1431
  store <2 x i64> %wide.load52, ptr %next.gep49, align 8, !alias.scope !1432, !noalias !1431
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.preheader78

.lr.ph.i.i.preheader78:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.014.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ak, %middle.block ]
  %.sroa.010.013.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader78, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader78 ] ; 3 uses
  %.sroa.010.013.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.sroa.010.013.i.i.ph, %.lr.ph.i.i.preheader78 ] ; 3 uses
  %i.ap = load i64, ptr %.sroa.010.013.i.i, align 8, !tbaa !114
  store i64 %i.ap, ptr %.014.i.i, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %1
  br i1 %i.av, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1423

_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i = phi ptr [ %i.u, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12_M_check_lenEmPKc.exit ], [ %i.ak, %middle.block ], [ %i.au, %.lr.ph.i.i ] ; 2 uses
  %i.aw = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 7 uses
  %i.ax = icmp eq ptr %1, %i.c
  br i1 %i.ax, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i31.preheader

.lr.ph.i.i31.preheader:                           ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit
  %i.ay = add i64 %i.e, -16
  %i.az = sub i64 %i.ay, %i.n                     ; 2 uses
  %i.ba = lshr i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.az, 240
  br i1 %min.iters.check61, label %.lr.ph.i.i31.preheader77, label %vector.memcheck54

vector.memcheck54:                                ; preds = %.lr.ph.i.i31.preheader
  %8 = add i64 %i.e, -16
  %9 = sub i64 %8, %i.n
  %i.bc = and i64 %9, -16                         ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.bc
  %scevgep55 = getelementptr i8, ptr %i.bd, i64 32
  %i.be = getelementptr i8, ptr %1, i64 %i.bc
  %scevgep56 = getelementptr i8, ptr %i.be, i64 16
  %bound057 = icmp ult ptr %i.aw, %scevgep56
  %bound158 = icmp ult ptr %1, %scevgep55
  %found.conflict59 = and i1 %bound057, %bound158
  br i1 %found.conflict59, label %.lr.ph.i.i31.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck54
  %n.vec63 = and i64 %i.bb, 2305843009213693950   ; 3 uses
  %i.bf = shl i64 %n.vec63, 4                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %1, i64 %i.bf
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next72, %vector.body64 ] ; 2 uses
  %i.bi = shl i64 %index65, 4                     ; 3 uses
  %i.bj = or disjoint i64 %i.bi, 16               ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.aw, i64 %i.bi
  %next.gep67 = getelementptr i8, ptr %i.aw, i64 %i.bj
  %next.gep68 = getelementptr i8, ptr %1, i64 %i.bi
  %next.gep69 = getelementptr i8, ptr %1, i64 %i.bj
  %wide.load70 = load <2 x i64>, ptr %next.gep68, align 8, !alias.scope !1433
  %wide.load71 = load <2 x i64>, ptr %next.gep69, align 8, !alias.scope !1433
  store <2 x i64> %wide.load70, ptr %next.gep66, align 8, !alias.scope !1434, !noalias !1433
  store <2 x i64> %wide.load71, ptr %next.gep67, align 8, !alias.scope !1434, !noalias !1433
  %index.next72 = add nuw i64 %index65, 2         ; 2 uses
  %i.bk = icmp eq i64 %index.next72, %n.vec63
  br i1 %i.bk, label %middle.block73, label %vector.body64, !llvm.loop !1427

middle.block73:                                   ; preds = %vector.body64
  %cmp.n74 = icmp eq i64 %i.bb, %n.vec63
  br i1 %cmp.n74, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i31.preheader77

.lr.ph.i.i31.preheader77:                         ; preds = %vector.memcheck54, %.lr.ph.i.i31.preheader, %middle.block73
  %.014.i.i32.ph = phi ptr [ %i.aw, %vector.memcheck54 ], [ %i.aw, %.lr.ph.i.i31.preheader ], [ %i.bg, %middle.block73 ]
  %.sroa.010.013.i.i33.ph = phi ptr [ %1, %vector.memcheck54 ], [ %1, %.lr.ph.i.i31.preheader ], [ %i.bh, %middle.block73 ]
  br label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %.lr.ph.i.i31.preheader77, %.lr.ph.i.i31
  %.014.i.i32 = phi ptr [ %i.bq, %.lr.ph.i.i31 ], [ %.014.i.i32.ph, %.lr.ph.i.i31.preheader77 ] ; 3 uses
  %.sroa.010.013.i.i33 = phi ptr [ %i.bp, %.lr.ph.i.i31 ], [ %.sroa.010.013.i.i33.ph, %.lr.ph.i.i31.preheader77 ] ; 3 uses
  %i.bl = load i64, ptr %.sroa.010.013.i.i33, align 8, !tbaa !114
  store i64 %i.bl, ptr %.014.i.i32, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw i8, ptr %.014.i.i32, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i33, i64 8
  %i.bo = load i64, ptr %i.bn, align 8
  store i64 %i.bo, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i33, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.i32, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.c
  br i1 %i.br, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i31, !llvm.loop !1428

_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35: ; preds = %.lr.ph.i.i31, %middle.block73, %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i34 = phi ptr [ %i.aw, %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit ], [ %i.bg, %middle.block73 ], [ %i.bq, %.lr.ph.i.i31 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not.i36 = icmp eq ptr %i.d, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !270
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.f
  %i.bw = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %i.d, i64 noundef %i.bv, i64 noundef 8)
          to label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit unwind label %bb.d, !inline_history !21

bb.d:                                             ; preds = %bb.c
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #29
  unreachable

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35, %bb.c
  store ptr %i.u, ptr %i.a, align 8, !tbaa !271
  store ptr %.0.lcssa.i.i34, ptr %i.b, align 8, !tbaa !272
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.m
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !270
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(68) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !297
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 56
  %i.i = uitofp i64 %i.h to float
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load float, ptr %i.j, align 8, !tbaa !293
  %i.l = fdiv float %i.i, %i.k
  %i.m = fptoui float %i.l to i64
  %i.n = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.m)
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 8)
  %i.p = add i64 %i.o, -1
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = sub nuw nsw i64 64, %i.q
  %i.s = shl nuw i64 1, %i.r                      ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !296  ; 4 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !280  ; 5 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3                  ; 4 uses
  %.not = icmp eq i64 %i.s, %i.aa
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp ugt i64 %i.s, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = sub nuw i64 %i.s, %i.aa
  tail call void @_ZNSt6vectorImNSt3pmr21polymorphic_allocatorImEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ac)
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !131
  %.pre26 = load ptr, ptr %i.u, align 8, !tbaa !131
  br label %_ZNSt6vectorImNSt3pmr21polymorphic_allocatorImEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.s, %i.aa
  br i1 %i.ad, label %bb.e, label %_ZNSt6vectorImNSt3pmr21polymorphic_allocatorImEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.s ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorImNSt3pmr21polymorphic_allocatorImEEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !296
  br label %_ZNSt6vectorImNSt3pmr21polymorphic_allocatorImEEE6resizeEm.exit

_ZNSt6vectorImNSt3pmr21polymorphic_allocatorImEEE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.af = phi ptr [ %.pre26, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ag = phi ptr [ %.pre, %bb.c ], [ %i.w, %bb.d ], [ %i.w, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImNSt3pmr21polymorphic_allocatorImEEE6resizeEm.exit
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = add i64 %i.ai, -8
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 -1, i64 %i.an, i1 false), !tbaa !110
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZNSt6vectorImNSt3pmr21polymorphic_allocatorImEEE6resizeEm.exit
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !297 ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !298 ; 3 uses
  %.not25 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not25, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph24, %_ZNK4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEE13key_to_bucketIS8_EEmRKT_.exit
  %i.au = phi ptr [ %i.ap, %.lr.ph24 ], [ %i.bn, %_ZNK4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEE13key_to_bucketIS8_EEmRKT_.exit ]
  %.022 = phi i64 [ 0, %.lr.ph24 ], [ %i.bp, %_ZNK4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEE13key_to_bucketIS8_EEmRKT_.exit ] ; 4 uses
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %i.au, i64 %.022 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !304
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !358
  %i.ba = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ax, i64 noundef %i.az, i64 noundef 3339675911)
          to label %_ZNK4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEE13key_to_bucketIS8_EEmRKT_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #29
  unreachable

_ZNK4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEE13key_to_bucketIS8_EEmRKT_.exit: ; preds = %bb.g
  %i.bd = load ptr, ptr %i.u, align 8, !tbaa !296
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !280 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = add nsw i64 %i.bi, -1
  %i.bk = and i64 %i.bj, %i.ba
end_hunk_1
