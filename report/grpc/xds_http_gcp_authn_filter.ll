Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_http_gcp_authn_filter?download=true
inline.NumInlined: 1364
inline.NumDeleted: 947
begin_hunk_0_@_ZNSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN9grpc_core15FilterAndConfigESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseIN9grpc_core15FilterAndConfigESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9grpc_core15FilterAndConfigESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9grpc_core15FilterAndConfigESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !201
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(448) ptr @_ZN9grpc_core24InterceptionChainBuilder3AddINS_23GcpAuthenticationFilterEEENSt9enable_ifIXnestNT_4CallELi0EERS0_E4typeENS_13RefCountedPtrIKNS_12FilterConfigEEE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef align 8 %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::StatusOr.165", align 8 ; 12 uses
  %5 = alloca %"class.grpc_core::FilterArgs", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !56
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.e = load atomic i8, ptr @_ZGVZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmv.exit, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmvE2id) #25
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw add ptr @_ZN9grpc_core24InterceptionChainBuilder15next_filter_id_E, i64 1 monotonic, align 8
  store i64 %i.h, ptr @_ZZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmvE2id, align 8, !tbaa !48
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmvE2id) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmvE2id) #25
  br label %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmv.exit

_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.j = load i64, ptr @_ZZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmvE2id, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.a, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = load ptr, ptr %1, align 8, !tbaa !14
  store ptr null, ptr %1, align 8, !tbaa !14
  store i64 %i.m, ptr %5, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.p, align 8, !tbaa !210
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !14
  invoke void @_ZN9grpc_core23GcpAuthenticationFilter6CreateERKNS_11ChannelArgsENS_10FilterArgsE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.165") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmv.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 4 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.g, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #25, !inline_history !206
  br label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit

_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.y = load i64, ptr %4, align 8, !tbaa !56     ; 6 uses
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.o, label %bb.h

bb.h:                                             ; preds = %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !56  ; 3 uses
  %.not.i14 = icmp eq i64 %i.y, %i.aa
  br i1 %.not.i14, label %_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = trunc i64 %i.y to i1
  br i1 %i.ab, label %_ZN4absl12lts_202505126Status3RefEm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = inttoptr i64 %i.y to ptr
  %i.ad = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i = load i64, ptr %4, align 8, !tbaa !56
  br label %_ZN4absl12lts_202505126Status3RefEm.exit.i

_ZN4absl12lts_202505126Status3RefEm.exit.i:       ; preds = %bb.j, %bb.i
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre.i, %bb.j ]
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !56
  %i.af = trunc i64 %i.aa to i1
  br i1 %i.af, label %_ZN4absl12lts_202505126StatusaSERKS1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_202505126Status3RefEm.exit.i
  %i.ag = inttoptr i64 %i.aa to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ag)
          to label %_ZN4absl12lts_202505126StatusaSERKS1_.exit unwind label %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %_ZN9grpc_core24InterceptionChainBuilder12FilterTypeIdINS_23GcpAuthenticationFilterEEEmv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !14  ; 4 uses
  %.not.i.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i15, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 acq_rel, align 8
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.n, label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #25, !inline_history !206
  br label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18

bb.o:                                             ; preds = %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !212, !range !45, !noundef !46
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit.thread, label %_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i

_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i: ; preds = %bb.o
  store i64 1, ptr %i.ap, align 8, !tbaa !113
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.at, i8 0, i64 336, i1 false)
  store i8 1, ptr %i.aq, align 8, !tbaa !212
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !214 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !214 ; 2 uses
  %.not7.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not7.i, label %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i, %.noexc20
  %.sroa.04.08.i = phi ptr [ %i.ba, %.noexc20 ], [ %i.av, %_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !216
  invoke void %i.az(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.04.08.i, ptr noundef nonnull align 8 dereferenceable(448) %0)
          to label %.noexc20 unwind label %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !207

.noexc20:                                         ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 32 ; 2 uses
  %.not.i19 = icmp eq ptr %i.ba, %i.ax
  br i1 %.not.i19, label %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit, label %.lr.ph.i

_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit.thread: ; preds = %_ZNSt8optionalIN9grpc_core11CallFilters12StackBuilderEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit.i, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.t

_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit: ; preds = %.noexc20
  %.pre = load i64, ptr %4, align 8, !tbaa !56    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bb = icmp eq i64 %.pre, 1
  br i1 %i.bb, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN9grpc_core24InterceptionChainBuilder13stack_builderEv.exit
  store i64 %.pre, ptr %3, align 8, !tbaa !56
  %i.bc = trunc i64 %.pre to i1
  br i1 %i.bc, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = inttoptr i64 %.pre to ptr
  %i.be = atomicrmw add ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.q, %bb.p
  invoke void @_ZN4absl12lts_2025051217internal_statusor22ThrowBadStatusOrAccessENS0_6StatusE(ptr noundef nonnull align 8 %3) #28
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !115
  invoke void @_ZN9grpc_core11CallFilters12StackBuilder3AddINS_23GcpAuthenticationFilterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(344) %i.ap, ptr noundef %i.bh)
          to label %bb.u unwind label %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bi = load i64, ptr %4, align 8, !tbaa !56    ; 4 uses
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.bi, ptr %2, align 8, !tbaa !56
  %i.bk = trunc i64 %i.bi to i1
  br i1 %i.bk, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i21, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = inttoptr i64 %i.bi to ptr
  %i.bm = atomicrmw add ptr %i.bl, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i21

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i21:   ; preds = %bb.w, %bb.v
  invoke void @_ZN4absl12lts_2025051217internal_statusor22ThrowBadStatusOrAccessENS0_6StatusE(ptr noundef nonnull align 8 %2) #28
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i21
  unreachable

bb.y:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i21
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  br label %.body

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bo = load i64, ptr %i.bg, align 8, !tbaa !115
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !115
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !217 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !218
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr @_ZZN9grpc_core11CallFilters12StackBuilder14AddOwnedObjectINS_23GcpAuthenticationFilterEEEvSt10unique_ptrIT_St14default_deleteIS5_EEENUlPvE_8__invokeES9_, ptr %i.bs, align 8, !tbaa !59
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !59
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !217
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !217
  br label %_ZN4absl12lts_202505126StatusaSERKS1_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !219 ; 4 uses
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775792
  br i1 %i.cb, label %bb.ac, label %_ZNKSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #28
          to label %.noexc25 unwind label %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.ab
  %i.cc = ashr exact i64 %i.ca, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 576460752303423487)
  %i.cg = select i1 %i.ce, i64 576460752303423487, i64 %i.cf ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ch = shl nuw nsw i64 %i.cg, 4
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #26
          to label %.noexc26 unwind label %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 3 uses
  store ptr @_ZZN9grpc_core11CallFilters12StackBuilder14AddOwnedObjectINS_23GcpAuthenticationFilterEEEvSt10unique_ptrIT_St14default_deleteIS5_EEENUlPvE_8__invokeES9_, ptr %i.cj, align 8, !tbaa !59
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.bp, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !tbaa !59
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.ad, label %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i

bb.ad:                                            ; preds = %.noexc26
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.bx, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i

_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i: ; preds = %bb.ad, %.noexc26
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i
  %i.cm = load ptr, ptr %i.bt, align 8, !tbaa !218
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.co) #29
  br label %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ae, %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i.i
  store ptr %i.ci, ptr %i.bq, align 8, !tbaa !219
  store ptr %i.cl, ptr %i.br, align 8, !tbaa !217
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.cp, ptr %i.bt, align 8, !tbaa !218
  br label %_ZN4absl12lts_202505126StatusaSERKS1_.exit

_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.t, %bb.k, %bb.ac, %_ZNKSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4absl12lts_202505126StatusaSERKS1_.exit:       ; preds = %_ZNSt6vectorIN9grpc_core14filters_detail21ChannelDataDestructorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.aa, %_ZN4absl12lts_202505126Status3RefEm.exit.i, %bb.k
  %.pr = load i64, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.cq = icmp eq i64 %.pr, 1
  br i1 %i.cq, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZN4absl12lts_202505126StatusaSERKS1_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !115 ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i31, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS5_EEED2Ev.exit.a, label %_ZNKSt14default_deleteIN9grpc_core23GcpAuthenticationFilterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN9grpc_core23GcpAuthenticationFilterEEclEPS1_.exit.i.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs) #25, !inline_history !208
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS5_EEED2Ev.exit.a

_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread: ; preds = %bb.h, %_ZN4absl12lts_202505126StatusaSERKS1_.exit
  %i.cw = phi i64 [ %.pr, %_ZN4absl12lts_202505126StatusaSERKS1_.exit ], [ %i.y, %bb.h ] ; 2 uses
  %i.cx = trunc i64 %i.cw to i1
  br i1 %i.cx, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS5_EEED2Ev.exit.a, label %bb.af

bb.af:                                            ; preds = %_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread
  %i.cy = inttoptr i64 %i.cw to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cy)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS5_EEED2Ev.exit.a unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #27
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS5_EEED2Ev.exit.a: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %_ZNKSt14default_deleteIN9grpc_core23GcpAuthenticationFilterEEclEPS1_.exit.i.i, %_ZN4absl12lts_202505126StatusaSERKS1_.exit.thread, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ah

.body:                                            ; preds = %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.y ], [ %i.bf, %bb.s ], [ %lpad.loopexit.split-lp50, %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit30.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  br label %_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18

_ZN9grpc_core13RefCountedPtrIKNS_12FilterConfigEED2Ev.exit18: ; preds = %bb.l, %bb.m, %bb.n, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ah, %bb.n ], [ %i.ah, %bb.m ], [ %i.ah, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn.pn

bb.ah:                                            ; preds = %bb.a, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS5_EEED2Ev.exit.a
  ret ptr %0
}

declare void @_ZN9grpc_core23GcpAuthenticationFilter6CreateERKNS_11ChannelArgsENS_10FilterArgsE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr.165") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core11CallFilters12StackBuilder3AddINS_23GcpAuthenticationFilterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !48
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1)
  store i64 %.sroa.speculated.i.i, ptr %0, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !221
  %.not.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.d, align 8, !tbaa !59
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !tbaa !48
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZZN9grpc_core14filters_detail9AddOpImplINS_23GcpAuthenticationFilterESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEMNS2_4CallEFN4absl12lts_202505126StatusERS4_PS2_EXadL_ZNS8_23OnClientInitialMetadataESC_SD_EEvE3AddESD_mRNS0_6LayoutIS7_EEENUlPvSK_SK_OS7_E_8__invokeESK_SK_SK_SL_, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !59
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !220
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.h, ptr %i.c, align 8, !tbaa !220
  br label %_ZN9grpc_core14filters_detail9StackData26AddClientInitialMetadataOpINS_23GcpAuthenticationFilterEEEvPT_m.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !222  ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #28
  unreachable

_ZNKSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = sdiv exact i64 %i.l, 40                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 230584300921369395)
  %i.r = select i1 %i.p, i64 230584300921369395, i64 %i.q ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.s = mul nuw nsw i64 %i.r, 40
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #26 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 5 uses
  store ptr %1, ptr %i.u, align 8, !tbaa !59
  %.sroa.55.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %.sroa.55.0..sroa_idx6.i.i.i, align 8, !tbaa !48
  %.sroa.6.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr @_ZZN9grpc_core14filters_detail9AddOpImplINS_23GcpAuthenticationFilterESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEMNS2_4CallEFN4absl12lts_202505126StatusERS4_PS2_EXadL_ZNS8_23OnClientInitialMetadataESC_SD_EEvE3AddESD_mRNS0_6LayoutIS7_EEENUlPvSK_SK_OS7_E_8__invokeESK_SK_SK_SL_, ptr %.sroa.6.0..sroa_idx8.i.i.i, align 8, !tbaa !59
  %.sroa.7.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.v = icmp sgt i64 %i.l, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx10.i.i.i, i8 0, i64 16, i1 false)
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i.i

_ZNSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !221
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #29
  br label %_ZNSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit16.i.i.i.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !222
  store ptr %i.w, ptr %i.c, align 8, !tbaa !220
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !221
  br label %_ZN9grpc_core14filters_detail9StackData26AddClientInitialMetadataOpINS_23GcpAuthenticationFilterEEEvPT_m.exit

_ZN9grpc_core14filters_detail9StackData26AddClientInitialMetadataOpINS_23GcpAuthenticationFilterEEEvPT_m.exit: ; preds = %bb.b, %_ZNSt6vectorIN9grpc_core14filters_detail8OperatorISt10unique_ptrI19grpc_metadata_batchNS0_5Arena13PooledDeleterEEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i
  tail call void @_ZN9grpc_core14filters_detail9StackData17AddFilterMetadataINS_23GcpAuthenticationFilterEEEvPT_mMNS4_4CallEFNS_8channelz12PropertyListEvE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %1, i64 noundef 0, i64 ptrtoint (ptr @_ZN9grpc_core23GcpAuthenticationFilter4Call18ChannelzPropertiesEv to i64), i64 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN9grpc_core23GcpAuthenticationFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN9grpc_core23GcpAuthenticationFilterEEclEPS1_.exit.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #25, !inline_history !223
  br label %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.a to i1
  br i1 %i.h, label %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #27
  unreachable

_ZNSt10unique_ptrIN9grpc_core23GcpAuthenticationFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNKSt14default_deleteIN9grpc_core23GcpAuthenticationFilterEEclEPS1_.exit.i, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !48     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !224

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !48
  store i64 %i.n, ptr %i.m, align 8, !tbaa !227
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !228
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
  %i.u = load i64, ptr %i.m, align 8, !tbaa !48
  %i.v = load i64, ptr %i.t, align 8, !tbaa !48
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

end_hunk_0
