Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/main?download=true
inline.NumInlined: 13087
inline.NumDeleted: 5245
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_jEEC2B8ne180100IJLm0ELm1ELm2EEJS8_S8_jETpTnmJEJEJRKS8_RA1_KcRKjEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !105
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.f)
  br label %_ZNSt3__112__tuple_leafILm0ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEC2B8ne180100IRKS6_vEEOT_.exit

_ZNSt3__112__tuple_leafILm0ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEC2B8ne180100IRKS6_vEEOT_.exit: ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1) %2) #40 ; 8 uses
  %i.i = icmp ugt i64 %i.h, -9
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt3__112__tuple_leafILm0ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEC2B8ne180100IRKS6_vEEOT_.exit
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZNSt3__112__tuple_leafILm0ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEC2B8ne180100IRKS6_vEEOT_.exit
  %i.j = icmp ult i64 %i.h, 23
  br i1 %i.j, label %bb.f, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.e
  %i.k = or i64 %i.h, 7                           ; 2 uses
  %i.l = icmp eq i64 %i.k, 23
  %i.m = add nuw i64 %i.k, 1
  %i.n = select i1 %i.l, i64 25, i64 %i.m         ; 2 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #42
          to label %.noexc5 unwind label %bb.i    ; 2 uses

.noexc5:                                          ; preds = %.thread.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !105
  %i.q = or i64 %i.n, 1
  store i64 %i.q, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.h, ptr %i.r, align 8, !tbaa !105
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = trunc nuw nsw i64 %i.h to i8
  %i.t = shl nuw nsw i8 %i.s, 1
  store i8 %i.t, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc5
  %.017.i.i.i = phi ptr [ %i.o, %.noexc5 ], [ %i.u, %bb.f ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i, ptr nonnull align 1 dereferenceable(1) %2, i64 %i.h, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.018.i.i.i = phi ptr [ %i.u, %bb.f ], [ %.017.i.i.i, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 %i.h
  store i8 0, ptr %i.v, align 1, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i32, ptr %3, align 4, !tbaa !287
  store i32 %i.x, ptr %i.w, align 8, !tbaa !543
  ret void

bb.i:                                             ; preds = %.thread.i.i.i, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load i8, ptr %0, align 8
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %_ZNSt3__112__tuple_leafILm0ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !105
  %i.ad = load i64, ptr %0, align 8
  %i.ae = and i64 %i.ad, -2
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #43
  br label %_ZNSt3__112__tuple_leafILm0ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit

_ZNSt3__112__tuple_leafILm0ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !582  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !581  ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not2.i.i.i, label %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i
  %i.e = phi ptr [ %i.t, %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i ], [ %i.d, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -56 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !581
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = trunc i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = load i64, ptr %i.g, align 8
  %i.m = and i64 %i.l, -2
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #43
  br label %_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.n = load i8, ptr %i.f, align 8
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i

bb.c:                                             ; preds = %_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !105
  %i.r = load i64, ptr %i.f, align 8
  %i.s = and i64 %i.r, -2
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #43
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i: ; preds = %bb.c, %_ZNSt3__112__tuple_leafILm1ENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !581  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.t
  br i1 %.not.i.i.i, label %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEE7destroyB8ne180100IS8_vvEEvRS9_PT_.exit.i.i.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !580    ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !541
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEE5clearB8ne180100Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__insert_with_sizeB8ne180100INS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EESF_NSD_IPKS8_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !544    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 9 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_jEEEEEEESB_EET0_T_SF_SE_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !541
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !540  ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 56
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 3 uses
  %i.q = sdiv exact i64 %i.p, 56
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.p ; 3 uses
  %i.t = icmp eq ptr %i.s, %3
  br i1 %i.t, label %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.04.09.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.s, %bb.d ] ; 5 uses
  %storemerge8.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.j, %bb.d ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %storemerge8.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.09.i.i.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.04.09.i.i.i, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !287
  store i32 %i.y, ptr %i.w, align 8, !tbaa !287
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i, i64 56 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %3
  br i1 %i.ab, label %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1506

_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre53 = ptrtoint ptr %i.aa to i64
  br label %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit

_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre53, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit.loopexit ], [ %i.l, %bb.d ]
  %i.ac = sub i64 %.pre-phi, %i.l
  %i.ad = getelementptr inbounds i8, ptr %i.j, i64 %i.ac ; 3 uses
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !540
  %i.ae = icmp sgt i64 %i.p, 0
  br i1 %i.ae, label %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_jEEEEEEESB_EET0_T_SF_SE_.exit

_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit
  %.pre54 = ptrtoint ptr %i.ad to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi55 = phi i64 [ %.pre54, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ]
  %i.af = phi ptr [ %i.ad, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.s, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS8_EEEESG_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %.pre-phi55, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.e, i64 %i.ai ; 3 uses
  %i.ak = icmp ult ptr %i.aj, %i.j
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.af, %.critedge ], [ %i.bm, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !540
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE12__move_rangeEPS8_SB_SB_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i, %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i.i ], [ %i.aj, %._crit_edge.i ] ; 5 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i.i ], [ %i.af, %._crit_edge.i ] ; 5 uses
  %i.al = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -56 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -56 ; 4 uses
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !105
  %i.ar = load i64, ptr %i.am, align 8
  %i.as = and i64 %i.ar, -2
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.as) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 24, i1 false), !tbaa.struct !111
  store i8 0, ptr %i.al, align 8
  %i.at = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -55
  store i8 0, ptr %i.at, align 1, !tbaa !105
  %i.au = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32 ; 3 uses
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.f, label %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !105
  %i.az = load i64, ptr %i.au, align 8
  %i.ba = and i64 %i.az, -2
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.ba) #43
  br label %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i.i

_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !111
  store i8 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -31
  store i8 0, ptr %i.bc, align 1, !tbaa !105
  %i.bd = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !287
  %i.bf = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !287
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.al
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE12__move_rangeEPS8_SB_SB_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1507

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.01924.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %i.aj, %.critedge ] ; 5 uses
  %.sroa.6.023.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.af, %.critedge ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.023.i, ptr noundef nonnull align 8 dereferenceable(56) %.01924.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.01924.i, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %.01924.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %.01924.i, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !287
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !287
  %i.bl = getelementptr inbounds nuw i8, ptr %.01924.i, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 56 ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.j
  br i1 %i.bn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1508

_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE12__move_rangeEPS8_SB_SB_.exit: ; preds = %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i.i, %._crit_edge.i
  %i.bo = icmp eq ptr %2, %.sroa.0.0
  br i1 %i.bo, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_jEEEEEEESB_EET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE12__move_rangeEPS8_SB_SB_.exit, %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i
  %storemerge7.i.i.i.i.i = phi ptr [ %i.cj, %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i ], [ %i.e, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE12__move_rangeEPS8_SB_SB_.exit ] ; 8 uses
  %.sroa.03.06.i.i.i.i.i = phi ptr [ %i.ci, %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i ], [ %2, %_ZNSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE12__move_rangeEPS8_SB_SB_.exit ] ; 7 uses
  %i.bp = load i8, ptr %storemerge7.i.i.i.i.i, align 8
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge7.i.i.i.i.i, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !105
  %i.bt = load i64, ptr %storemerge7.i.i.i.i.i, align 8
  %i.bu = and i64 %i.bt, -2
  tail call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bu) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %storemerge7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.03.06.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !111
  store i8 0, ptr %.sroa.03.06.i.i.i.i.i, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 1
  store i8 0, ptr %i.bv, align 1, !tbaa !105
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge7.i.i.i.i.i, i64 24 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 8
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge7.i.i.i.i.i, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !105
  %i.cb = load i64, ptr %i.bw, align 8
  %i.cc = and i64 %i.cb, -2
  tail call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cc) #43
  br label %_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i

_ZNSt3__15tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_jEEaSB8ne180100EOS7_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !tbaa.struct !111
  store i8 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 25
  store i8 0, ptr %i.ce, align 1, !tbaa !105
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 48
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !287
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge7.i.i.i.i.i, i64 48
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !287
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge7.i.i.i.i.i, i64 56
  %i.ck = icmp eq ptr %i.ci, %.sroa.0.0
  br i1 %i.ck, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES9_jEEEEEEESB_EET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1509

bb.i:                                             ; preds = %bb.b
  %i.cl = sub i64 %i.l, %i.c
  %i.cm = sdiv exact i64 %i.cl, 56
  %i.cn = add i64 %i.cm, %4                       ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 329406144173384850
  br i1 %i.co, label %bb.j, label %_ZNKSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE11__recommendB8ne180100Em.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNKSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #41
  unreachable

_ZNKSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.i
  %i.cp = sub i64 %i.k, %i.c
  %i.cq = sdiv exact i64 %i.cp, 56                ; 2 uses
  %.not.i = icmp ult i64 %i.cq, 164703072086692425
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.cn)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 329406144173384850 ; 4 uses
  %i.cs = icmp eq i64 %.0.i, 0
  br i1 %i.cs, label %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNKSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE11__recommendB8ne180100Em.exit
  %i.ct = icmp ugt i64 %.0.i, 329406144173384850
  br i1 %i.ct, label %bb.l, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEEEDaRT_m.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #41
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEEEDaRT_m.exit.i: ; preds = %bb.k
  %i.cu = mul nuw i64 %.0.i, 56
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #42
  br label %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit

_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit: ; preds = %_ZNKSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEEEDaRT_m.exit.i
  %storemerge.i = phi ptr [ %i.cv, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES7_jEEEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEENS5_IS8_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 10 uses
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i = mul nuw nsw i64 %4, 56                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i ; 3 uses
  %i.cz = add nsw i64 %.idx.i, -56                ; 2 uses
  %i.da = udiv i64 %i.cz, 56
  %i.db = and i64 %i.da, 1
  %lcmp.mod.not.not = icmp eq i64 %i.db, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i38.prol, label %.lr.ph.i38.prol.loopexit

.lr.ph.i38.prol:                                  ; preds = %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cw, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 24, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !287
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !287
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %.lr.ph.i38.prol.loopexit

.lr.ph.i38.prol.loopexit:                         ; preds = %.lr.ph.i38.prol, %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit
  %.sroa.0.012.i.unr = phi ptr [ %i.cw, %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit ], [ %i.dh, %.lr.ph.i38.prol ]
  %.sroa.08.011.i.unr = phi ptr [ %2, %_ZNSt3__114__split_bufferINS_5tupleIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_jEEERNS5_IS8_EEEC2EmmSA_.exit ], [ %i.di, %.lr.ph.i38.prol ]
  %i.dj = icmp ult i64 %i.cz, 56
  br i1 %i.dj, label %.unr-lcssa, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.prol.loopexit, %.lr.ph.i38
  %.sroa.0.012.i = phi ptr [ %i.dw, %.lr.ph.i38 ], [ %.sroa.0.012.i.unr, %.lr.ph.i38.prol.loopexit ] ; 7 uses
end_hunk_0
begin_hunk_1_@_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPS3_EESA_EESA_NS8_IPKS3_EET_T0_l:bb.a
_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit: ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v ; 3 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !556
  %i.x = icmp sgt i64 %i.q, 0
  br i1 %i.x, label %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit

_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit
  %.pre48 = ptrtoint ptr %i.w to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre48, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ]
  %i.y = phi ptr [ %i.w, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.s, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %.pre-phi, %i.aa                ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %i.e, i64 %i.ab ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.j
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.y, %.critedge ], [ %i.aj, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !556
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.ae = ashr exact i64 %i.ab, 3
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %i.e, i64 %i.ab, i1 false)
  br label %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.01924.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.ac, %.critedge ] ; 2 uses
  %.sroa.6.023.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.y, %.critedge ] ; 2 uses
  %i.ah = load ptr, ptr %.01924.i, align 8, !tbaa !585
  store ptr %i.ah, ptr %.sroa.6.023.i, align 8, !tbaa !585
  %i.ai = getelementptr inbounds nuw i8, ptr %.01924.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 8 ; 2 uses
  %i.ak = icmp ult ptr %i.ai, %i.j
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1523

_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit: ; preds = %._crit_edge.i, %bb.f
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0, %2
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit
  %i.al = ptrtoint ptr %.sroa.0.0 to i64
  %i.am = ptrtoint ptr %2 to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.e, ptr align 8 %2, i64 %i.an, i1 false)
  br label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.b
  %i.ao = sub i64 %i.l, %i.c
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = add i64 %i.ap, %4                       ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 2305843009213693951
  br i1 %i.ar, label %bb.i, label %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #41
  unreachable

_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.h
  %i.as = sub i64 %i.k, %i.c                      ; 2 uses
  %.not.i = icmp ult i64 %i.as, 9223372036854775800
  %i.at = ashr exact i64 %i.as, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.aq)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.au = icmp eq i64 %.0.i, 0
  br i1 %i.au, label %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.av = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.av, label %bb.k, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #41
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i: ; preds = %bb.j
  %i.aw = shl nuw i64 %.0.i, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #42
  %.pre = load ptr, ptr %0, align 8, !tbaa !557
  br label %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit

_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit: ; preds = %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i
  %i.ay = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i ], [ %i.a, %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 5 uses
  %storemerge.i = phi ptr [ %i.ax, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPN4args8FlagBaseEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 6 uses
  %.idx.i = shl nuw nsw i64 %4, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.az, ptr align 8 %2, i64 %.idx.i, i1 false), !tbaa !585
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %storemerge.i, i64 %.0.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %1, %i.ay
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit, %.lr.ph.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.az, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.e, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit ]
  %i.bd = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !585, !noalias !1533
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !585, !noalias !1533
  %.not.i.i.i.i.i.i.i41 = icmp eq ptr %i.bd, %i.ay
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1532

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit
  %.sroa.436.0.i.i.i.i.i.i = phi ptr [ %i.az, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEEC2EmmS6_.exit ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !556 ; 2 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.b                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.e, i64 %i.bi, i1 false)
  br label %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %bb.l, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPN4args8FlagBaseEEENS_16reverse_iteratorIPS4_EES8_S4_vEET1_RT_T0_SC_S9_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bi
  store ptr %.sroa.436.0.i.i.i.i.i.i, ptr %0, align 8, !tbaa !558
  store ptr %i.bj, ptr %i.i, align 8, !tbaa !558
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !558
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !558
  %.not.i42 = icmp eq ptr %i.ay, null
  br i1 %.not.i42, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.ay to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bn) #43
  br label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit

_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPPN4args8FlagBaseEEES5_EET0_T_S8_S7_.exit: ; preds = %bb.m, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit, %bb.g, %bb.a
  %.035 = phi ptr [ %i.e, %bb.a ], [ %i.e, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPS3_EESA_EEvT_T0_m.exit ], [ %i.e, %bb.g ], [ %i.e, %_ZNSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_.exit ], [ %i.az, %_ZNSt3__114__split_bufferIPN4args8FlagBaseERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i ], [ %i.az, %bb.m ]
  ret ptr %.035
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPN4args8FlagBaseENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.7) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__insert_with_sizeB8ne180100INS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EESD_NSB_IPKS6_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 9 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEES9_EET0_T_SD_SC_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102  ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 3 uses
  %i.q = sdiv exact i64 %i.p, 24
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.p ; 3 uses
  %i.t = icmp eq ptr %i.s, %3
  br i1 %i.t, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.04.09.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %storemerge8.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.09.i.i.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.09.i.i.i, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %3
  br i1 %i.w, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1534

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre51 = ptrtoint ptr %i.v to i64
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre51, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit.loopexit ], [ %i.l, %bb.d ]
  %i.x = sub i64 %.pre-phi, %i.l
  %i.y = getelementptr inbounds i8, ptr %i.j, i64 %i.x ; 3 uses
  store ptr %i.y, ptr %i.i, align 8, !tbaa !102
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEES9_EET0_T_SD_SC_.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit
  %.pre52 = ptrtoint ptr %i.y to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi53 = phi i64 [ %.pre52, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ]
  %i.aa = phi ptr [ %i.y, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.s, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_13move_iteratorINS_11__wrap_iterIPS6_EEEESE_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %4 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %.pre-phi53, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.e, i64 %i.ad ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.j
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.aa, %.critedge ], [ %i.aq, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !102
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i ], [ %i.ae, %._crit_edge.i ] ; 2 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i ], [ %i.aa, %._crit_edge.i ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.am = load i64, ptr %i.ah, align 8
  %i.an = and i64 %i.am, -2
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !tbaa.struct !111
  store i8 0, ptr %i.ag, align 8
  %i.ao = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -23
  store i8 0, ptr %i.ao, align 1, !tbaa !105
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.ag
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !50

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.01924.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.ae, %.critedge ] ; 3 uses
  %.sroa.6.023.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.aa, %.critedge ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.023.i, ptr noundef nonnull align 8 dereferenceable(24) %.01924.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01924.i, i8 0, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.01924.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 24 ; 2 uses
  %i.ar = icmp ult ptr %i.ap, %i.j
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !51

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i, %._crit_edge.i
  %i.as = icmp eq ptr %2, %.sroa.0.0
  br i1 %i.as, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEES9_EET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i
  %storemerge7.i.i.i.i.i = phi ptr [ %i.bb, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i ], [ %i.e, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit ] ; 5 uses
  %.sroa.03.06.i.i.i.i.i = phi ptr [ %i.ba, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i ], [ %2, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit ] ; 4 uses
  %i.at = load i8, ptr %storemerge7.i.i.i.i.i, align 8
  %i.au = trunc i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge7.i.i.i.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !105
  %i.ax = load i64, ptr %storemerge7.i.i.i.i.i, align 8
  %i.ay = and i64 %i.ax, -2
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ay) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.06.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !111
  store i8 0, ptr %.sroa.03.06.i.i.i.i.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 1
  store i8 0, ptr %i.az, align 1, !tbaa !105
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge7.i.i.i.i.i, i64 24
  %i.bc = icmp eq ptr %i.ba, %.sroa.0.0
  br i1 %i.bc, label %_ZNSt3__14copyB8ne180100INS_13move_iteratorINS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEES9_EET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1535

bb.g:                                             ; preds = %bb.b
  %i.bd = sub i64 %i.l, %i.c
  %i.be = sdiv exact i64 %i.bd, 24
  %i.bf = add i64 %i.be, %4                       ; 2 uses
  %i.bg = icmp ugt i64 %i.bf, 768614336404564650
  br i1 %i.bg, label %bb.h, label %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #41
  unreachable

_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.g
  %i.bh = sub i64 %i.k, %i.c
  %i.bi = sdiv exact i64 %i.bh, 24                ; 2 uses
  %.not.i = icmp ult i64 %i.bi, 384307168202282325
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bf)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 768614336404564650 ; 4 uses
  %i.bk = icmp eq i64 %.0.i, 0
  br i1 %i.bk, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit
  %i.bl = icmp ugt i64 %.0.i, 768614336404564650
  br i1 %i.bl, label %bb.j, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #41
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i: ; preds = %bb.i
  %i.bm = mul nuw i64 %.0.i, 24
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #42
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit: ; preds = %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i
  %storemerge.i = phi ptr [ %i.bn, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 7 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i = mul nuw nsw i64 %4, 24                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i ; 3 uses
  %i.br = add nsw i64 %.idx.i, -24                ; 2 uses
  %i.bs = udiv i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.bs, 1
  %xtraiter = and i64 %i.bt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.prol.loopexit, label %.lr.ph.i38.prol

.lr.ph.i38.prol:                                  ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit, %.lr.ph.i38.prol
  %.sroa.0.012.i.prol = phi ptr [ %i.bu, %.lr.ph.i38.prol ], [ %i.bo, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit ] ; 2 uses
  %.sroa.08.011.i.prol = phi ptr [ %i.bv, %.lr.ph.i38.prol ], [ %2, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i38.prol ], [ 0, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.prol, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.prol, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.prol, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.prol.loopexit, label %.lr.ph.i38.prol, !llvm.loop !1536

.lr.ph.i38.prol.loopexit:                         ; preds = %.lr.ph.i38.prol, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit
  %.sroa.0.012.i.unr = phi ptr [ %i.bo, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit ], [ %i.bu, %.lr.ph.i38.prol ]
  %.sroa.08.011.i.unr = phi ptr [ %2, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit ], [ %i.bv, %.lr.ph.i38.prol ]
  %i.bw = icmp ult i64 %i.br, 72
  br i1 %i.bw, label %.unr-lcssa, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.prol.loopexit, %.lr.ph.i38
  %.sroa.0.012.i = phi ptr [ %i.cd, %.lr.ph.i38 ], [ %.sroa.0.012.i.unr, %.lr.ph.i38.prol.loopexit ] ; 5 uses
  %.sroa.08.011.i = phi ptr [ %i.ce, %.lr.ph.i38 ], [ %.sroa.08.011.i.unr, %.lr.ph.i38.prol.loopexit ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i, i8 0, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 72
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 96 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 96
  %.not.i39.3 = icmp eq ptr %i.cd, %i.bq
  br i1 %.not.i39.3, label %.unr-lcssa, label %.lr.ph.i38, !llvm.loop !1537

.unr-lcssa:                                       ; preds = %.lr.ph.i38, %.lr.ph.i38.prol.loopexit
  %i.cf = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %.not12.i.i = icmp eq ptr %1, %i.cf
  br i1 %.not12.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.unr-lcssa, %.lr.ph.i.i
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %i.bo, %.unr-lcssa ]
  %.sroa.18.013.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %i.e, %.unr-lcssa ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -24 ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -24 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %i.ci, %i.cf
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i: ; preds = %.lr.ph.i.i, %.unr-lcssa
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.bo, %.unr-lcssa ], [ %i.ch, %.lr.ph.i.i ]
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !102 ; 3 uses
  %.not8.i.i = icmp eq ptr %1, %i.cj
  br i1 %.not8.i.i, label %bb.k, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i, %.lr.ph.i14.i
  %.010.i.i = phi ptr [ %i.ck, %.lr.ph.i14.i ], [ %i.e, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ] ; 3 uses
  %storemerge9.i.i = phi ptr [ %i.cl, %.lr.ph.i14.i ], [ %i.bq, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge9.i.i, i64 24 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i15.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !52

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i: ; preds = %.lr.ph.i14.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i
end_hunk_1
begin_hunk_2_@_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6insertENS_11__wrap_iterIPKS6_EERSA_:bb.a
.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i, %.lr.ph.i14.i
  %.010.i.i = phi ptr [ %i.ce, %.lr.ph.i14.i ], [ %i.e, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ] ; 3 uses
  %storemerge9.i.i = phi ptr [ %i.cf, %.lr.ph.i14.i ], [ %i.cd, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge9.i.i, i64 24 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.ce, %i.cc
  br i1 %.not.i15.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !52

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i: ; preds = %.lr.ph.i14.i
  %.pre.i = load ptr, ptr %i.bv, align 8, !tbaa !107
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !107
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i
  %i.cg = phi ptr [ %i.cc, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ], [ %.pre, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i ] ; 3 uses
  %i.ch = phi ptr [ %.sroa.2.0.copyload.i.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ], [ %.pre.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i ]
  %storemerge.lcssa.i.i = phi ptr [ %i.cd, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ], [ %i.cf, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i ]
  %i.ci = load ptr, ptr %0, align 8, !tbaa !107   ; 5 uses
  store ptr %i.ch, ptr %0, align 8, !tbaa !107
  store ptr %i.ci, ptr %i.bv, align 8, !tbaa !107
  store ptr %storemerge.lcssa.i.i, ptr %i.f, align 8, !tbaa !107
  store ptr %i.cg, ptr %i.bu, align 8, !tbaa !107
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.ck = load ptr, ptr %i.bn, align 8, !tbaa !107
  store ptr %i.ck, ptr %i.h, align 8, !tbaa !107
  store ptr %i.cj, ptr %i.bn, align 8, !tbaa !107
  store ptr %i.ci, ptr %3, align 8, !tbaa !316
  %.not2.i.i.i.i = icmp eq ptr %i.ci, %i.cg
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i
  %i.cl = phi ptr [ %i.ct, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i ], [ %i.cg, %bb.u ] ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -24 ; 4 uses
  store ptr %i.cm, ptr %i.bu, align 8, !tbaa !315
  %i.cn = load i8, ptr %i.cm, align 8
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.v, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 -8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !105
  %i.cr = load i64, ptr %i.cm, align 8
  %i.cs = and i64 %i.cr, -2
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cs) #43
  %.pre.i.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !315
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i
  %i.ct = phi ptr [ %i.cm, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i.i, %bb.v ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, %i.ct
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.ithread-pre-split, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.ithread-pre-split: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i
  %.pr = load ptr, ptr %3, align 8, !tbaa !316
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.ithread-pre-split, %bb.u
  %i.cu = phi ptr [ %.pr, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.ithread-pre-split ], [ %i.ci, %bb.u ] ; 3 uses
  %.not.i25 = icmp eq ptr %i.cu, null
  br i1 %.not.i25, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i
  %i.cv = load ptr, ptr %i.bn, align 8, !tbaa !107
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #43
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit

bb.x:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %common.resume

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.j, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB8ne180100IJRKS6_EEEvDpOT_.exit, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit
  %.0 = phi ptr [ %i.e, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB8ne180100IJRKS6_EEEvDpOT_.exit ], [ %i.bx, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit ], [ %i.e, %bb.j ], [ %i.e, %bb.m ], [ %i.e, %bb.n ], [ %i.e, %bb.o ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPS6_EESC_EESC_NSA_IPKS6_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"struct.std::__1::__exception_guard_exceptions.382", align 8 ; 8 uses
  %6 = alloca %"struct.std::__1::__split_buffer.91", align 8 ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 9 uses
  %i.h = icmp sgt i64 %4, 0
  br i1 %i.h, label %bb.b, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEES8_EET0_T_SB_SA_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 9 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 6 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %.not = icmp sgt i64 %4, %i.p
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %4
  %i.r = sub i64 %i.n, %i.d                       ; 3 uses
  %i.s = sdiv exact i64 %i.r, 24
  %i.t = icmp sgt i64 %4, %i.s
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.r ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store ptr %i.l, ptr %i.b, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %i.i, ptr %5, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.v, align 8, !tbaa !337, !alias.scope !1568
  %.not8.i.i.i = icmp eq ptr %i.u, %3
  br i1 %.not8.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i
  %i.w = phi ptr [ %i.af, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i ], [ %i.l, %bb.d ] ; 3 uses
  %.09.i.i.i = phi ptr [ %i.ae, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i ], [ %i.u, %bb.d ] ; 5 uses
  %i.x = load i8, ptr %.09.i.i.i, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i, i64 24, i1 false), !tbaa.struct !111
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !105
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %._ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit_crit_edge.i.i.i unwind label %.body.i

._ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit_crit_edge.i.i.i: ; preds = %bb.f
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !107
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i: ; preds = %._ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit_crit_edge.i.i.i, %bb.e
  %i.ad = phi ptr [ %.pre.i.i.i, %._ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit_crit_edge.i.i.i ], [ %i.w, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !107
  %.not.i.i.i = icmp eq ptr %i.ae, %3
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !54

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %.body.i ], [ %i.cx, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  store ptr %i.l, ptr %i.k, align 8, !tbaa !102
  br label %common.resume

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit.loopexit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i.i.i
  %.pre53 = ptrtoint ptr %i.af to i64
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre53, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit.loopexit ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = sub i64 %.pre-phi, %i.n
  %i.ai = getelementptr inbounds i8, ptr %i.l, i64 %i.ah ; 3 uses
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !102
  %i.aj = icmp sgt i64 %i.r, 0
  br i1 %i.aj, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEES8_EET0_T_SB_SA_.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit
  %.pre54 = ptrtoint ptr %i.ai to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi55 = phi i64 [ %.pre54, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.n, %bb.c ]
  %i.ak = phi ptr [ %i.ai, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.u, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_11__wrap_iterIPS6_EESC_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.q, %bb.c ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %4 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %.pre-phi55, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.g, i64 %i.an ; 3 uses
  %i.ap = icmp ult ptr %i.ao, %i.l
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.ak, %.critedge ], [ %i.ba, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.k, align 8, !tbaa !102
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.aq, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i ], [ %i.ao, %._crit_edge.i ] ; 2 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.au = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !105
  %i.aw = load i64, ptr %i.ar, align 8
  %i.ax = and i64 %i.aw, -2
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ax) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !111
  store i8 0, ptr %i.aq, align 8
  %i.ay = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -23
  store i8 0, ptr %i.ay, align 1, !tbaa !105
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.aq
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !50

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.01924.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.ao, %.critedge ] ; 3 uses
  %.sroa.6.023.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.ak, %.critedge ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.023.i, ptr noundef nonnull align 8 dereferenceable(24) %.01924.i, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01924.i, i8 0, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.01924.i, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 24 ; 2 uses
  %i.bb = icmp ult ptr %i.az, %i.l
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !51

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i, %._crit_edge.i
  %.not6.i.i.i.i.i = icmp eq ptr %2, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEES8_EET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i
  %storemerge8.i.i.i.i.i = phi ptr [ %i.bw, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i ], [ %i.g, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit ] ; 6 uses
  %.07.i.i.i.i.i = phi ptr [ %i.bv, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i ], [ %2, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit ] ; 9 uses
  %.not.i.i.i.i.i.i38 = icmp eq ptr %storemerge8.i.i.i.i.i, %.07.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i38, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = load i8, ptr %storemerge8.i.i.i.i.i, align 8
  %i.bd = trunc i8 %i.bc to i1
  %i.be = load i8, ptr %.07.i.i.i.i.i, align 8    ; 2 uses
  %i.bf = trunc i8 %i.be to i1                    ; 3 uses
  br i1 %i.bd, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.07.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !111
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i, ptr noundef %i.bh, i64 noundef %i.bj) ; 0 uses
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 1
  %i.bo = select i1 %i.bf, ptr %i.bm, ptr %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = lshr i8 %i.be, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = select i1 %i.bf, i64 %i.bq, i64 %i.bs
  %i.bu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i, ptr noundef %i.bo, i64 noundef %i.bt) ; 0 uses
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %.sroa.0.0
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100INS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEES8_EET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !55

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.bx = sub i64 %i.n, %i.e
  %i.by = sdiv exact i64 %i.bx, 24
  %i.bz = add i64 %i.by, %4                       ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 768614336404564650
  br i1 %i.ca, label %bb.n, label %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #41
  unreachable

_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.m
  %i.cb = sub i64 %i.m, %i.e
  %i.cc = sdiv exact i64 %i.cb, 24                ; 2 uses
  %.not.i = icmp ult i64 %i.cc, 384307168202282325
  %i.cd = shl nuw nsw i64 %i.cc, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.bz)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 768614336404564650 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.i, ptr %i.cf, align 8, !tbaa !599
  %i.cg = icmp eq i64 %.0.i, 0
  br i1 %i.cg, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit
  %i.ch = icmp ugt i64 %.0.i, 768614336404564650
  br i1 %i.ch, label %bb.p, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #41
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i: ; preds = %bb.o
  %i.ci = mul nuw i64 %.0.i, 24
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #42
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit: ; preds = %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i
  %storemerge.i = phi ptr [ %i.cj, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  store ptr %storemerge.i, ptr %6, align 8, !tbaa !316
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.f ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !314
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %storemerge.i, i64 %.0.i ; 2 uses
  store ptr %i.cn, ptr %i.ce, align 8, !tbaa !107
  %.idx.i = mul nuw nsw i64 %4, 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i ; 3 uses
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i
  %.sroa.0.013.i = phi ptr [ %i.cv, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i ], [ %i.ck, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit ] ; 4 uses
  %.sroa.08.012.i = phi ptr [ %i.cw, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i ], [ %2, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit ] ; 5 uses
  %i.cp = load i8, ptr %.sroa.08.012.i, align 8
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.013.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i, i64 24, i1 false), !tbaa.struct !111
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i

bb.r:                                             ; preds = %.lr.ph.i39
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !105
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !105
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.013.i, ptr noundef %i.cs, i64 noundef %i.cu)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i unwind label %.body

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i: ; preds = %bb.r, %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 24
  %.not.i40 = icmp eq ptr %i.cv, %i.co
  br i1 %.not.i40, label %bb.s, label %.lr.ph.i39, !llvm.loop !1567

.body:                                            ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.013.i, ptr %i.cl, align 8, !tbaa !107
  call void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume

bb.s:                                             ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRS6_EvvEEvRS7_PT_DpOT0_.exit.i
  %i.cy = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %.not12.i.i = icmp eq ptr %1, %i.cy
  br i1 %.not12.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.cz = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.ck, %bb.s ]
  %.sroa.18.013.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.g, %bb.s ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -24 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -24 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %i.db, %i.cy
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i: ; preds = %.lr.ph.i.i, %bb.s
  %.pre.i = phi ptr [ %i.ck, %bb.s ], [ %i.da, %.lr.ph.i.i ]
end_hunk_2
begin_hunk_3_@_ZN4args14ArgumentParser10ParseShortINSt3__111__wrap_iterIPKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEbRT_SD_:bb.a
  br i1 %i.id, label %bb.aq, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62

bb.aq:                                            ; preds = %bb.ap
  %i.ie = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !105
  %i.ig = load i64, ptr %10, align 8
  %i.ih = and i64 %i.ig, -2
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ih) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62: ; preds = %bb.ap, %bb.aq
  %i.ii = load i8, ptr %11, align 8
  %i.ij = trunc i8 %i.ii to i1
  br i1 %i.ij, label %bb.ar, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63

bb.ar:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !105
  %i.im = load i64, ptr %11, align 8
  %i.in = and i64 %i.im, -2
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.in) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit62, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  %i.io = call ptr @__cxa_allocate_exception(i64 16) #40 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4args10ParseErrorE, i64 16), ptr %i.io, align 8, !tbaa !109
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull @_ZTIN4args10ParseErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #41
          to label %bb.be unwind label %bb.ay

bb.at:                                            ; preds = %bb.an
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66

bb.au:                                            ; preds = %bb.ao
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ir = load i8, ptr %10, align 8
  %i.is = trunc i8 %i.ir to i1
  br i1 %i.is, label %bb.av, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66

bb.av:                                            ; preds = %bb.au
  %i.it = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !105
  %i.iv = load i64, ptr %10, align 8
  %i.iw = and i64 %i.iv, -2
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iw) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66: ; preds = %bb.av, %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.ip, %bb.at ], [ %i.iq, %bb.au ], [ %i.iq, %bb.av ]
  %i.ix = load i8, ptr %11, align 8
  %i.iy = trunc i8 %i.ix to i1
  br i1 %i.iy, label %bb.aw, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit67

bb.aw:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !105
  %i.jb = load i64, ptr %11, align 8
  %i.jc = and i64 %i.jb, -2
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jc) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit67

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit67: ; preds = %bb.aw, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68

bb.ax:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit63
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.io) #40
  br label %bb.az

bb.ay:                                            ; preds = %bb.as
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn43 = phi { ptr, i32 } [ %i.je, %bb.ay ], [ %i.jd, %bb.ax ] ; 2 uses
  %i.jf = load i8, ptr %9, align 8
  %i.jg = trunc i8 %i.jf to i1
  br i1 %i.jg, label %bb.ba, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68

bb.ba:                                            ; preds = %bb.az
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !105
  %i.jj = load i64, ptr %9, align 8
  %i.jk = and i64 %i.jj, -2
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jk) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68: ; preds = %bb.ba, %bb.az, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit67
  %.pn43.pn = phi { ptr, i32 } [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit67 ], [ %.pn43, %bb.az ], [ %.pn43, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61, %_ZN4args10EitherFlagD2Ev.exit56
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61 ], [ %.pn43.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68 ], [ %i.fs, %_ZN4args10EitherFlagD2Ev.exit56 ]
  %i.jl = load i8, ptr %3, align 8
  %i.jm = trunc i8 %i.jl to i1
  br i1 %i.jm, label %bb.bc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit69

bb.bc:                                            ; preds = %bb.bb
  %i.jn = load ptr, ptr %i.an, align 8, !tbaa !105
  %i.jo = load i64, ptr %3, align 8
  %i.jp = and i64 %i.jo, -2
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jp) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit69

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit69: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %.pn48.pn.pn.pn

split:                                            ; preds = %bb.h, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit59._crit_edge
  %i.jq = phi i8 [ %.pre, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit59._crit_edge ], [ %i.bl, %bb.h ]
  %.130 = phi i1 [ %.029, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit59._crit_edge ], [ true, %bb.h ]
  %i.jr = trunc i8 %i.jq to i1
  br i1 %i.jr, label %bb.bd, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70

bb.bd:                                            ; preds = %split
  %i.js = load ptr, ptr %i.an, align 8, !tbaa !105
  %i.jt = load i64, ptr %3, align 8
  %i.ju = and i64 %i.jt, -2
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.ju) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit70: ; preds = %split, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret i1 %.130

bb.be:                                            ; preds = %bb.as, %bb.u
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ult i64 %i.g, %1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.g, %1
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.k, %i.b
  br i1 %.not6.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i
  %.07.i.i = phi ptr [ %i.l, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i ], [ %i.b, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.07.i.i, i64 -24 ; 4 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds i8, ptr %.07.i.i, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105
  %i.q = load i64, ptr %i.l, align 8
  %i.r = and i64 %i.q, -2
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.r) #43
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit, label %.lr.ph.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i, %bb.d
  store ptr %i.k, ptr %i.a, align 8, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5eraseENS_11__wrap_iterIPKS6_EESC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 5 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.f, %i.b
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102  ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i
  %storemerge9.i.i.i.i.i = phi ptr [ %i.s, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 5 uses
  %.08.i.i.i.i.i = phi ptr [ %i.r, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i ], [ %i.h, %bb.b ] ; 4 uses
  %i.k = load i8, ptr %storemerge9.i.i.i.i.i, align 8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = load i64, ptr %storemerge9.i.i.i.i.i, align 8
  %i.p = and i64 %i.o, -2
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge9.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !111
  store i8 0, ptr %.08.i.i.i.i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !56

_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !102
  br label %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit

_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit: ; preds = %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit, %bb.b
  %i.t = phi ptr [ %i.j, %bb.b ], [ %.pre, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.s, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit ]
  %3 = ptrtoint ptr %storemerge.lcssa.i.i.i.i.i to i64
  %i.u = sub i64 %3, %i.b
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 %i.u ; 3 uses
  %.not6.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not6.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i
  %.07.i.i = phi ptr [ %i.w, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i ], [ %i.t, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.07.i.i, i64 -24 ; 4 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds i8, ptr %.07.i.i, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105
  %i.ab = load i64, ptr %i.w, align 8
  %i.ac = and i64 %i.ab, -2
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #43
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit, label %.lr.ph.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit
  store ptr %i.v, ptr %i.i, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit, %bb.a
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102  ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not7.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i
  %storemerge9.i.i.i.i.i = phi ptr [ %i.q, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 5 uses
  %.08.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i ], [ %i.f, %bb.a ] ; 4 uses
  %i.i = load i8, ptr %storemerge9.i.i.i.i.i, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = load i64, ptr %storemerge9.i.i.i.i.i, align 8
  %i.n = and i64 %i.m, -2
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge9.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !111
  store i8 0, ptr %.08.i.i.i.i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 1
  store i8 0, ptr %i.o, align 1, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !56

_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !102
  br label %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit

_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit: ; preds = %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit, %bb.a
  %i.r = phi ptr [ %i.h, %bb.a ], [ %.pre, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.q, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit.loopexit ]
  %2 = ptrtoint ptr %storemerge.lcssa.i.i.i.i.i to i64
  %i.s = sub i64 %2, %i.b
  %i.t = getelementptr inbounds i8, ptr %i.e, i64 %i.s ; 3 uses
  %.not6.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not6.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i
  %.07.i.i = phi ptr [ %i.u, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i ], [ %i.r, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.07.i.i, i64 -24 ; 4 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds i8, ptr %.07.i.i, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105
  %i.z = load i64, ptr %i.u, align 8
  %i.aa = and i64 %i.z, -2
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #43
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit, label %.lr.ph.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i, %_ZNSt3__14moveB8ne180100IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EET0_T_S9_S8_.exit
  store ptr %i.t, ptr %i.g, align 8, !tbaa !102
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN4args14ArgumentParser5ParseINSt3__111__wrap_iterIPNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEET_SC_SC_(ptr noundef nonnull align 16 dereferenceable(1024) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::vector.32", align 16 ; 9 uses
  %4 = alloca %"class.std::__1::vector.385", align 16 ; 15 uses
  %5 = alloca %"class.std::__1::__wrap_iter.225", align 8 ; 18 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.args::Command::RaiiSubparser", align 16 ; 10 uses
  %8 = alloca %"class.std::__1::vector.32", align 16 ; 9 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__1::vector.385", align 16 ; 6 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__1::vector.32", align 8 ; 13 uses
  %14 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.a = load ptr, ptr %0, align 16, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.385") align 8 %4, ptr noundef nonnull align 16 dereferenceable(368) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %1, ptr %5, align 8, !tbaa !107
  %.not241266 = icmp eq ptr %1, %2
  br i1 %.not241266, label %.thread228, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 441
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.cz
  %.074268 = phi i1 [ false, %.lr.ph ], [ %.175, %bb.cz ] ; 2 uses
  %storemerge267 = phi ptr [ %1, %.lr.ph ], [ %i.mh, %bb.cz ]
  %i.n = invoke noundef zeroext i1 @_ZN4args14ArgumentParser8CompleteINSt3__111__wrap_iterIPNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEbT_SC_(ptr noundef nonnull align 16 dereferenceable(1024) %0, ptr %storemerge267, ptr %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %5, align 8, !tbaa !676    ; 12 uses
  br i1 %.074268, label %.critedge149, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.p, align 8               ; 2 uses
  %i.r = trunc i8 %i.q to i1                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = lshr i8 %i.q, 1                          ; 2 uses
  %i.v = zext nneg i8 %i.u to i64                 ; 2 uses
  %i.w = select i1 %i.r, i64 %i.t, i64 %i.v
  %i.x = load i8, ptr %i.d, align 8               ; 2 uses
  %i.y = trunc i8 %i.x to i1                      ; 2 uses
  %i.z = load i64, ptr %i.e, align 16
  %i.aa = lshr i8 %i.x, 1
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = select i1 %i.y, i64 %i.z, i64 %i.ab
  %.not.i = icmp eq i64 %i.w, %i.ac
  br i1 %.not.i, label %bb.g, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread198

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = select i1 %i.y, ptr %i.ad, ptr %i.g     ; 2 uses
  br i1 %i.r, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.not1922.i = icmp eq i8 %i.u, 0
  br i1 %.not1922.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.h
  %.01525.pn.i = phi ptr [ %.01525.i, %bb.h ], [ %i.p, %.preheader.i ]
  %.024.i = phi ptr [ %i.ai, %bb.h ], [ %i.ae, %.preheader.i ] ; 2 uses
  %.01623.i = phi i64 [ %i.ah, %bb.h ], [ %i.v, %.preheader.i ]
  %.01525.i = getelementptr inbounds nuw i8, ptr %.01525.pn.i, i64 1 ; 2 uses
  %i.af = load i8, ptr %.01525.i, align 1, !tbaa !105
  %i.ag = load i8, ptr %.024.i, align 1, !tbaa !105
  %.not20.i = icmp eq i8 %i.af, %i.ag
  br i1 %.not20.i, label %bb.h, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread198

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = add nsw i64 %.01623.i, -1               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %.not19.i = icmp eq i64 %i.ah, 0
  br i1 %.not19.i, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread, label %.lr.ph.i, !llvm.loop !57

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit: ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.ak, ptr %i.ae, i64 %i.t)
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread198

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread198: ; preds = %.lr.ph.i, %bb.f, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit
  %i.am = call noundef i32 @_ZN4args14ArgumentParser11ParseOptionERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef nonnull align 16 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i1 noundef zeroext false)
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread198
  %i.ao = invoke noundef zeroext i1 @_ZN4args14ArgumentParser9ParseLongINSt3__111__wrap_iterIPNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEbRT_SC_(ptr noundef nonnull align 16 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.ao, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.067.0.copyload68 = load ptr, ptr %5, align 8, !tbaa !107
  br label %.sink.split

bb.l:                                             ; preds = %bb.m, %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.critedge:                                        ; preds = %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread198
  %i.aq = call noundef i32 @_ZN4args14ArgumentParser11ParseOptionERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEb(ptr noundef nonnull align 16 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i1 noundef zeroext false)
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.m, label %.critedge148

bb.m:                                             ; preds = %.critedge
  %i.as = invoke noundef zeroext i1 @_ZN4args14ArgumentParser10ParseShortINSt3__111__wrap_iterIPNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEbRT_SC_(ptr noundef nonnull align 16 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %2)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  br i1 %i.as, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.067.0.copyload69 = load ptr, ptr %5, align 8, !tbaa !107
  br label %.sink.split

.critedge148:                                     ; preds = %.critedge
  %i.at = load ptr, ptr %4, align 16, !tbaa !549  ; 3 uses
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !550 ; 4 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.critedge149, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.critedge148
  %i.aw = load i8, ptr %i.p, align 8
  %.fr19.i = freeze i8 %i.aw                      ; 2 uses
  %i.ax = trunc i8 %.fr19.i to i1                 ; 2 uses
  %i.ay = load i64, ptr %i.s, align 8
  %i.az = lshr i8 %.fr19.i, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = select i1 %i.ax, i64 %i.ay, i64 %i.ba   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  br i1 %i.ax, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i151, %_ZZN4args14ArgumentParser5ParseINSt3__111__wrap_iterIPNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEET_SC_SC_ENKUlPNS_7CommandEE_clESE_.exit.thread7.us.i
  %.sroa.02.013.us.i = phi ptr [ %i.bv, %_ZZN4args14ArgumentParser5ParseINSt3__111__wrap_iterIPNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEET_SC_SC_ENKUlPNS_7CommandEE_clESE_.exit.thread7.us.i ], [ %i.at, %.lr.ph.i151 ] ; 5 uses
  %i.be = load ptr, ptr %.sroa.02.013.us.i, align 8, !tbaa !583 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 112 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bh = trunc i8 %i.bg to i1                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bk = lshr i8 %i.bg, 1                        ; 2 uses
  %i.bl = zext nneg i8 %i.bk to i64               ; 2 uses
  %i.bm = select i1 %i.bh, i64 %i.bj, i64 %i.bl
end_hunk_3
