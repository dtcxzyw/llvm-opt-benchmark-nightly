Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_http_fault_filter?download=true
inline.NumInlined: 1241
inline.NumDeleted: 814
begin_hunk_0_@_ZNSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN9grpc_core15FilterAndConfigESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #27
  br label %_ZNSt12_Vector_baseIN9grpc_core15FilterAndConfigESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9grpc_core15FilterAndConfigESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !135
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(448) ptr @_ZN9grpc_core24InterceptionChainBuilder3AddINS_20FaultInjectionFilterEEENSt9enable_ifIXnestNT_4CallELi0EERS0_E4typeENS_13RefCountedPtrIKNS_12FilterConfigEEE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef align 8 %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::StatusOr.147", align 8 ; 12 uses
  %5 = alloca %"class.grpc_core::FilterArgs", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.e = load atomic i8, ptr @_ZGVZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmv.exit, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmvE2id) #25
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw add ptr @_ZN9grpc_core24InterceptionChainBuilder15next_filter_id_E, i64 1 monotonic, align 8
  store i64 %i.h, ptr @_ZZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmvE2id, align 8, !tbaa !26
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmvE2id) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmvE2id) #25
  br label %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmv.exit

_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.j = load i64, ptr @_ZZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmvE2id, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.a, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = load ptr, ptr %1, align 8, !tbaa !12
  store ptr null, ptr %1, align 8, !tbaa !12
  store i64 %i.m, ptr %5, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.p, align 8, !tbaa !144
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !12
  invoke void @_ZN9grpc_core20FaultInjectionFilter6CreateERKNS_11ChannelArgsENS_10FilterArgsE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.147") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmv.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12   ; 4 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #25, !inline_history !140
  br label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit

_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.y = load i64, ptr %4, align 8, !tbaa !31     ; 6 uses
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.o, label %bb.h

bb.h:                                             ; preds = %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !31  ; 3 uses
  %.not.i14 = icmp eq i64 %i.y, %i.aa
  br i1 %.not.i14, label %_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = trunc i64 %i.y to i1
  br i1 %i.ab, label %_ZN4absl12lts_202505126Status3RefEm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = inttoptr i64 %i.y to ptr
  %i.ad = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i = load i64, ptr %4, align 8, !tbaa !31
  br label %_ZN4absl12lts_202505126Status3RefEm.exit.i

_ZN4absl12lts_202505126Status3RefEm.exit.i:       ; preds = %bb.j, %bb.i
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre.i, %bb.j ]
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !31
  %i.af = trunc i64 %i.aa to i1
  br i1 %i.af, label %_ZN4absl12lts_202505126StatusaSERKS1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_202505126Status3RefEm.exit.i
  %i.ag = inttoptr i64 %i.aa to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ag)
          to label %_ZN4absl12lts_202505126StatusaSERKS1_.exit unwind label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_20FaultInjectionFilterEEEmv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !12  ; 4 uses
  %.not.i.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i15, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 acq_rel, align 8
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.n, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #25, !inline_history !140
  br label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18

bb.o:                                             ; preds = %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !146, !range !40, !noundef !41
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit.thread, label %_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i

_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i: ; preds = %bb.o
  store i64 1, ptr %i.ap, align 8, !tbaa !187
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.at, i8 0, i64 336, i1 false)
  store i8 1, ptr %i.aq, align 8, !tbaa !146
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !189 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !189 ; 2 uses
  %.not7.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not7.i, label %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i, %.noexc20
  %.sroa.04.08.i = phi ptr [ %i.ba, %.noexc20 ], [ %i.av, %_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !191
  invoke void %i.az(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.04.08.i, ptr noundef nonnull align 8 dereferenceable(448) %0)
          to label %.noexc20 unwind label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !141

.noexc20:                                         ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 32 ; 2 uses
  %.not.i19 = icmp eq ptr %i.ba, %i.ax
  br i1 %.not.i19, label %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit, label %.lr.ph.i

_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit.thread: ; preds = %_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.t

_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit: ; preds = %.noexc20
  %.pre = load i64, ptr %4, align 8, !tbaa !31    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bb = icmp eq i64 %.pre, 1
  br i1 %i.bb, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit
  store i64 %.pre, ptr %3, align 8, !tbaa !31
  %i.bc = trunc i64 %.pre to i1
  br i1 %i.bc, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = inttoptr i64 %.pre to ptr
  %i.be = atomicrmw add ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.q, %bb.p
  invoke void @_ZN4absl12lts_2025051217internal_statusor22ThrowBadStatusOrAccessENS0_6StatusE(ptr noundef nonnull align 8 %3) #29
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  unreachable

bb.s:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %.body

bb.t:                                             ; preds = %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit.thread, %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !51 ; 2 uses
  %i.bi = load i64, ptr %i.ap, align 8, !tbaa !26
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  store i64 %.sroa.speculated.i.i.i, ptr %i.ap, align 8, !tbaa !187
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN9grpc_core14filters_detail9AddOpImplINS_20FaultInjectionFilterESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEMNS2_4CallEFNS_12ArenaPromiseIN4absl12lts_202505126StatusEEERS4_PS2_EXadL_ZNS8_23OnClientInitialMetadataESE_SF_EEvE3AddESF_mRNS0_6LayoutIS7_EE(ptr noundef %i.bh, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %.noexc21 unwind label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.t
  invoke void @_ZN9grpc_core14filters_detail9StackData17AddFilterMetadataINS_20FaultInjectionFilterEEEvPT_mMNS4_4CallEFNS_8channelz12PropertyListEvE(ptr noundef nonnull align 8 dereferenceable(344) %i.ap, ptr noundef %i.bh, i64 noundef 0, i64 ptrtoint (ptr @_ZN9grpc_core20FaultInjectionFilter4Call18ChannelzPropertiesEv to i64), i64 0)
          to label %_ZN9grpc_core11CallFilters12StackBuilder3AddINS_20FaultInjectionFilterEEEvPT_.exit unwind label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN9grpc_core11CallFilters12StackBuilder3AddINS_20FaultInjectionFilterEEEvPT_.exit: ; preds = %.noexc21
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bk = load i64, ptr %4, align 8, !tbaa !31    ; 4 uses
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZN9grpc_core11CallFilters12StackBuilder3AddINS_20FaultInjectionFilterEEEvPT_.exit
  store i64 %i.bk, ptr %2, align 8, !tbaa !31
  %i.bm = trunc i64 %i.bk to i1
  br i1 %i.bm, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i23, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = inttoptr i64 %i.bk to ptr
  %i.bo = atomicrmw add ptr %i.bn, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i23

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i23:   ; preds = %bb.v, %bb.u
  invoke void @_ZN4absl12lts_2025051217internal_statusor22ThrowBadStatusOrAccessENS0_6StatusE(ptr noundef nonnull align 8 %2) #29
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i23
  unreachable

bb.x:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i23
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %.body

bb.y:                                             ; preds = %_ZN9grpc_core11CallFilters12StackBuilder3AddINS_20FaultInjectionFilterEEEvPT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bq = load i64, ptr %i.bg, align 8, !tbaa !51
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !192 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !193
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.bw
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr @_ZZN9grpc_core11CallFilters12StackBuilder14AddOwnedObjectINS_20FaultInjectionFilterEEEvSt10unique_ptrIT_St14default_deleteIS5_EEENUlPvE_8__invokeES9_, ptr %i.bu, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.br, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !34
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !192
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !192
  br label %_ZN4absl12lts_202505126StatusaSERKS1_.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !194 ; 4 uses
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 5 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775792
  br i1 %i.cd, label %bb.ab, label %_ZNKSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc27 unwind label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.ce = ashr exact i64 %i.cc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 576460752303423487)
  %i.ci = select i1 %i.cg, i64 576460752303423487, i64 %i.ch ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 4
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #26
          to label %.noexc28 unwind label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 3 uses
  store ptr @_ZZN9grpc_core11CallFilters12StackBuilder14AddOwnedObjectINS_20FaultInjectionFilterEEEvSt10unique_ptrIT_St14default_deleteIS5_EEENUlPvE_8__invokeES9_, ptr %i.cl, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.br, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !tbaa !34
  %i.cm = icmp sgt i64 %i.cc, 0
  br i1 %i.cm, label %bb.ac, label %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc28
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.bz, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i

_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i: ; preds = %bb.ac, %.noexc28
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i
  %i.co = load ptr, ptr %i.bv, align 8, !tbaa !193
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cq) #27
  br label %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ad, %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i
  store ptr %i.ck, ptr %i.bs, align 8, !tbaa !194
  store ptr %i.cn, ptr %i.bt, align 8, !tbaa !192
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cr, ptr %i.bv, align 8, !tbaa !193
  br label %_ZN4absl12lts_202505126StatusaSERKS1_.exit

_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.k, %bb.t, %.noexc21, %bb.ab, %_ZNKSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4absl12lts_202505126StatusaSERKS1_.exit:       ; preds = %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.z, %_ZN4absl12lts_202505126Status3RefEm.exit.i, %bb.k
  %.pr = load i64, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.cs = icmp eq i64 %.pr, 1
  br i1 %i.cs, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZN4absl12lts_202505126StatusaSERKS1_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !51 ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i33, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS5_EEED2Ev.exit.a, label %_ZNKSt14default_deleteIN9grpc_core20FaultInjectionFilterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN9grpc_core20FaultInjectionFilterEEclEPS1_.exit.i.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 16 dereferenceable(64) %i.cu) #25, !inline_history !142
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS5_EEED2Ev.exit.a

_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread: ; preds = %bb.h, %_ZN4absl12lts_202505126StatusaSERKS1_.exit
  %i.cy = phi i64 [ %.pr, %_ZN4absl12lts_202505126StatusaSERKS1_.exit ], [ %i.y, %bb.h ] ; 2 uses
  %i.cz = trunc i64 %i.cy to i1
  br i1 %i.cz, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS5_EEED2Ev.exit.a, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread
  %i.da = inttoptr i64 %i.cy to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.da)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS5_EEED2Ev.exit.a unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #28
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS5_EEED2Ev.exit.a: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %_ZNKSt14default_deleteIN9grpc_core20FaultInjectionFilterEEclEPS1_.exit.i.i, %_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ag

.body:                                            ; preds = %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.x ], [ %i.bf, %bb.s ], [ %lpad.loopexit.split-lp52, %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  br label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18

_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18: ; preds = %bb.l, %bb.m, %bb.n, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ah, %bb.n ], [ %i.ah, %bb.m ], [ %i.ah, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn.pn

bb.ag:                                            ; preds = %bb.a, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS5_EEED2Ev.exit.a
  ret ptr %0
}

declare void @_ZN9grpc_core20FaultInjectionFilter6CreateERKNS_11ChannelArgsENS_10FilterArgsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr.147") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN9grpc_core20FaultInjectionFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN9grpc_core20FaultInjectionFilterEEclEPS1_.exit.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(64) %i.d) #25, !inline_history !195
  br label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.a to i1
  br i1 %i.h, label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable

_ZNSt10unique_ptrIN9grpc_core20FaultInjectionFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNKSt14default_deleteIN9grpc_core20FaultInjectionFilterEEclEPS1_.exit.i, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !26     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !196

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !26
  store i64 %i.n, ptr %i.m, align 8, !tbaa !199
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !200
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !26
  %i.v = load i64, ptr %i.t, align 8, !tbaa !26
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !57
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !57
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #27
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #27
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %i.i = load i64, ptr %2, align 8, !tbaa !26
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !56 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !26     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !201

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !202
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #30 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !26
  %.pre82 = load i64, ptr %2, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
end_hunk_0
