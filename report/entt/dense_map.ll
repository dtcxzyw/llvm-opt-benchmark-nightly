Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/dense_map?download=true
inline.NumInlined: 11368
inline.NumDeleted: 3149
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4entt9dense_mapImmSt4hashImESt8equal_toIvEN4test18throwing_allocatorISt4pairIKmmEEEED2Ev:bb.a
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
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = icmp eq ptr %i.o, %i.p
  br i1 %i.r, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE11_M_allocateEm.exit.i.i, label %.noexc

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE11_M_allocateEm.exit.i.i: ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEEC2ERKSA_.exit
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !272  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = sub i64 %i.v, %i.s
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !273  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef nonnull align 8 ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef 16, i64 noundef 8)
          to label %.noexc84 unwind label %bb.e, !inline_history !1001 ; 10 uses

.noexc84:                                         ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE11_M_allocateEm.exit.i.i
  %i.ac = icmp eq ptr %i.o, %i.u
  br i1 %i.ac, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc84
  %i.ad = add i64 %i.v, -16
  %i.ae = sub i64 %i.ad, %i.q                     ; 3 uses
  %i.af = lshr i64 %i.ae, 4
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 208
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ah = and i64 %i.ae, -16
  %i.ai = add i64 %i.ah, 16                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.ai
  %bound0 = icmp ult ptr %i.ab, %i.ak
  %bound1 = icmp ult ptr %i.p, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 2305843009213693950     ; 3 uses
  %i.al = shl i64 %n.vec, 4                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.al
  %i.an = getelementptr i8, ptr %i.p, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 4                       ; 3 uses
  %i.ap = or disjoint i64 %i.ao, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ao
  %next.gep117 = getelementptr i8, ptr %i.ab, i64 %i.ap
  %next.gep118 = getelementptr i8, ptr %i.p, i64 %i.ao
  %next.gep119 = getelementptr i8, ptr %i.p, i64 %i.ap
  %wide.load = load <2 x i64>, ptr %next.gep118, align 8, !alias.scope !1007
  %wide.load120 = load <2 x i64>, ptr %next.gep119, align 8, !alias.scope !1007
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1008, !noalias !1007
  store <2 x i64> %wide.load120, ptr %next.gep117, align 8, !alias.scope !1008, !noalias !1007
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1005

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i, label %.lr.ph.i.i.i.preheader122

.lr.ph.i.i.i.preheader122:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.014.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.sroa.010.013.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader122, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.014.i.i.i.ph, %.lr.ph.i.i.i.preheader122 ] ; 3 uses
  %.sroa.010.013.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.sroa.010.013.i.i.i.ph, %.lr.ph.i.i.i.preheader122 ] ; 3 uses
  %i.ar = load i64, ptr %.sroa.010.013.i.i.i, align 8, !tbaa !114
  store i64 %i.ar, ptr %.014.i.i.i, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8
  store i64 %i.au, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  %i.ax = icmp eq ptr %i.av, %i.u
  br i1 %i.ax, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1006

_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %.noexc84
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !271 ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i83, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !270
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !273 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull %i.ay, i64 noundef %i.bc, i64 noundef 8)
          to label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i unwind label %bb.d, !inline_history !21

bb.d:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #29
  unreachable

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE20_M_allocate_and_copyISt13move_iteratorIPS3_EEESA_mT_SC_.exit.i
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !271
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  store ptr %i.bj, ptr %i.t, align 8, !tbaa !272
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.bk, ptr %i.n, align 8, !tbaa !270
  br label %.noexc

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit.i, %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEEC2ERKSA_.exit
  %i.bl = load float, ptr %i.l, align 8, !tbaa !269
  %i.bm = fdiv float 1.000000e+00, %i.bl
  %i.bn = call noundef float @llvm.ceil.f32(float %i.bm)
  %i.bo = fptoui float %i.bn to i64
  invoke void @_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(68) %2, i64 noundef %i.bo)
          to label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7reserveEm.exit unwind label %bb.e

_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7reserveEm.exit: ; preds = %.noexc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !111
  %i.bp = invoke { ptr, i8 } @_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE20insert_or_do_nothingIiJiEEEDaOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7emplaceIJiiEEES7_INS_8internal18dense_map_iteratorIPNSD_14dense_map_nodeIiiEEEEbEDpOT_.exit unwind label %bb.f ; 0 uses

_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7emplaceIJiiEEES7_INS_8internal18dense_map_iteratorIPNSD_14dense_map_nodeIiiEEEEbEDpOT_.exit: ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !253 ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #27, !inline_history !22 ; 2 uses
  %i.bu = zext i1 %i.bt to i8
  store i8 %i.bu, ptr %3, align 8, !tbaa !102
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.bv, align 8, !tbaa !103
  br i1 %i.bt, label %bb.r, label %bb.g

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE11_M_allocateEm.exit.i.i, %.noexc
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.f:                                             ; preds = %_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE7reserveEm.exit
  %i.bx = landingpad { ptr, i32 }
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
  %i.by = load ptr, ptr %6, align 8, !tbaa !88
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1206, ptr noundef %i.by)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  %i.bz = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !89
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ce = load ptr, ptr %4, align 8, !tbaa !91    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(128) %i.ce) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !104 ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !88 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !89
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.aw

bb.m:                                             ; preds = %bb.g
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit43

bb.n:                                             ; preds = %bb.h
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.o:                                             ; preds = %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
end_hunk_0
begin_hunk_1_@_ZN4entt9dense_mapIiiSt4hashIiESt8equal_toIvENSt3pmr21polymorphic_allocatorISt4pairIKiiEEEE20insert_or_do_nothingIiJiEEEDaOT_DpOT0_:bb.a

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
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
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
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
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
  %i.ae = sub i64 %i.ad, %i.f                     ; 3 uses
  %i.af = lshr i64 %i.ae, 4
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 208
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = and i64 %i.ae, -16
  %i.ai = add i64 %i.ah, 16                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.u, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.d, i64 %i.ai
  %bound0 = icmp ult ptr %i.u, %i.ak
  %bound1 = icmp ult ptr %i.d, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 2305843009213693950     ; 3 uses
  %i.al = shl i64 %n.vec, 4                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.u, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %i.d, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 4                       ; 3 uses
  %i.ap = or disjoint i64 %i.ao, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ao
  %next.gep49 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep50 = getelementptr i8, ptr %i.d, i64 %i.ao
  %next.gep51 = getelementptr i8, ptr %i.d, i64 %i.ap
  %wide.load = load <2 x i64>, ptr %next.gep50, align 8, !alias.scope !1431
  %wide.load52 = load <2 x i64>, ptr %next.gep51, align 8, !alias.scope !1431
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1432, !noalias !1431
  store <2 x i64> %wide.load52, ptr %next.gep49, align 8, !alias.scope !1432, !noalias !1431
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.preheader81

.lr.ph.i.i.preheader81:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.014.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.sroa.010.013.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader81, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader81 ] ; 3 uses
  %.sroa.010.013.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.sroa.010.013.i.i.ph, %.lr.ph.i.i.preheader81 ] ; 3 uses
  %i.ar = load i64, ptr %.sroa.010.013.i.i, align 8, !tbaa !114
  store i64 %i.ar, ptr %.014.i.i, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8
  store i64 %i.au, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %1
  br i1 %i.ax, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1423

_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i = phi ptr [ %i.u, %_ZNKSt6vectorIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE12_M_check_lenEmPKc.exit ], [ %i.am, %middle.block ], [ %i.aw, %.lr.ph.i.i ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 7 uses
  %i.az = icmp eq ptr %1, %i.c
  br i1 %i.az, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i31.preheader

.lr.ph.i.i31.preheader:                           ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit
  %i.ba = add i64 %i.e, -16
  %i.bb = sub i64 %i.ba, %i.n                     ; 3 uses
  %i.bc = lshr i64 %i.bb, 4
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check60 = icmp ult i64 %i.bb, 240
  br i1 %min.iters.check60, label %.lr.ph.i.i31.preheader80, label %vector.memcheck61

vector.memcheck61:                                ; preds = %.lr.ph.i.i31.preheader
  %i.be = and i64 %i.bb, -16                      ; 2 uses
  %i.bf = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = getelementptr i8, ptr %1, i64 %i.be
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %bound062 = icmp ult ptr %i.ay, %i.bi
  %bound163 = icmp ult ptr %1, %i.bg
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph.i.i31.preheader80, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck61
  %n.vec66 = and i64 %i.bd, 2305843009213693950   ; 3 uses
  %i.bj = shl i64 %n.vec66, 4                     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ay, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %1, i64 %i.bj
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next75, %vector.body67 ] ; 2 uses
  %i.bm = shl i64 %index68, 4                     ; 3 uses
  %i.bn = or disjoint i64 %i.bm, 16               ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.ay, i64 %i.bm
  %next.gep70 = getelementptr i8, ptr %i.ay, i64 %i.bn
  %next.gep71 = getelementptr i8, ptr %1, i64 %i.bm
  %next.gep72 = getelementptr i8, ptr %1, i64 %i.bn
  %wide.load73 = load <2 x i64>, ptr %next.gep71, align 8, !alias.scope !1433
  %wide.load74 = load <2 x i64>, ptr %next.gep72, align 8, !alias.scope !1433
  store <2 x i64> %wide.load73, ptr %next.gep69, align 8, !alias.scope !1434, !noalias !1433
  store <2 x i64> %wide.load74, ptr %next.gep70, align 8, !alias.scope !1434, !noalias !1433
  %index.next75 = add nuw i64 %index68, 2         ; 2 uses
  %i.bo = icmp eq i64 %index.next75, %n.vec66
  br i1 %i.bo, label %middle.block76, label %vector.body67, !llvm.loop !1427

middle.block76:                                   ; preds = %vector.body67
  %cmp.n77 = icmp eq i64 %i.bd, %n.vec66
  br i1 %cmp.n77, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i31.preheader80

.lr.ph.i.i31.preheader80:                         ; preds = %vector.memcheck61, %.lr.ph.i.i31.preheader, %middle.block76
  %.014.i.i32.ph = phi ptr [ %i.ay, %vector.memcheck61 ], [ %i.ay, %.lr.ph.i.i31.preheader ], [ %i.bk, %middle.block76 ]
  %.sroa.010.013.i.i33.ph = phi ptr [ %1, %vector.memcheck61 ], [ %1, %.lr.ph.i.i31.preheader ], [ %i.bl, %middle.block76 ]
  br label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %.lr.ph.i.i31.preheader80, %.lr.ph.i.i31
  %.014.i.i32 = phi ptr [ %i.bu, %.lr.ph.i.i31 ], [ %.014.i.i32.ph, %.lr.ph.i.i31.preheader80 ] ; 3 uses
  %.sroa.010.013.i.i33 = phi ptr [ %i.bt, %.lr.ph.i.i31 ], [ %.sroa.010.013.i.i33.ph, %.lr.ph.i.i31.preheader80 ] ; 3 uses
  %i.bp = load i64, ptr %.sroa.010.013.i.i33, align 8, !tbaa !114
  store i64 %i.bp, ptr %.014.i.i32, align 8, !tbaa !114
  %i.bq = getelementptr inbounds nuw i8, ptr %.014.i.i32, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i33, i64 8
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %i.bq, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i33, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.i32, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.c
  br i1 %i.bv, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35, label %.lr.ph.i.i31, !llvm.loop !1428

_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35: ; preds = %.lr.ph.i.i31, %middle.block76, %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i34 = phi ptr [ %i.ay, %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit ], [ %i.bk, %middle.block76 ], [ %i.bu, %.lr.ph.i.i31 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not.i36 = icmp eq ptr %i.d, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !270
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.f
  %i.ca = load ptr, ptr %0, align 8, !tbaa !273   ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull %i.d, i64 noundef %i.bz, i64 noundef 8)
          to label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit unwind label %bb.d, !inline_history !21

bb.d:                                             ; preds = %bb.c
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #29
  unreachable

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiiEENSt3pmr21polymorphic_allocatorIS3_EEE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4entt8internal14dense_map_nodeIiiEES4_NSt3pmr21polymorphic_allocatorIS3_EEET0_T_S9_S8_RT1_.exit35, %bb.c
  store ptr %i.u, ptr %i.a, align 8, !tbaa !271
  store ptr %.0.lcssa.i.i34, ptr %i.b, align 8, !tbaa !272
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.m
  store ptr %i.cg, ptr %i.bw, align 8, !tbaa !270
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
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !110
  store i64 %.022, ptr %i.bl, align 8, !tbaa !110
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !298 ; 2 uses
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %.022
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !361
  %i.bp = add nuw i64 %.022, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.at
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !1435

.loopexit:                                        ; preds = %_ZNK4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEE13key_to_bucketIS8_EEmRKT_.exit, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 164703072086692425
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.399) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
end_hunk_1
