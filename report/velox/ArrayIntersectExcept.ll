inline.NumInlined: 20898
inline.NumDeleted: 6710
begin_hunk_0_@_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !38

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #43
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not4 = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  br i1 %.not4, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1857   ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !1926, !range !92, !noundef !93
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1933 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1944
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.c, ptr %i.i, align 8, !tbaa !1867
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !1933
  br label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit unwind label %bb.i

_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit: ; preds = %bb.f
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !1867 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit, label %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2

_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2: ; preds = %bb.c, %bb.b, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit
  %i.n = phi ptr [ %.pr.pre, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.c ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1802 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1804
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #45
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.g, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit.thread2
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1824 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1826
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 120) #45
  br label %_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.e, %_ZN8facebook5velox4core7ExecCtx20releaseDecodedVectorEOSt10unique_ptrINS0_13DecodedVectorESt14default_deleteIS4_EE.exit, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #44
  unreachable
}

declare void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(38), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1867   ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1802 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1804
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #45
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1824 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1826
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #45
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #45
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1802 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1804
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #45
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1824 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1826
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #45
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN8facebook5velox9functions12_GLOBAL__N_119decodeArrayElementsERNS0_4exec18LocalDecodedVectorES5_RKNS0_17SelectivityVectorEPS6_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.53", align 8 ; 7 uses
  %5 = alloca %"class.facebook::velox::SelectivityVector", align 16 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1867 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1868
  %i.e = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.d, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87   ; 3 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !87
  %.pre17 = load ptr, ptr %i.a, align 8, !tbaa !1867
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.p = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre17, %bb.d ]
  %i.q = phi ptr [ %i.g, %bb.a ], [ %i.g, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1945
  %i.t = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %i.p, ptr noundef nonnull %2)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !1867 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1922 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.f, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.u)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !1922
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

_ZNK8facebook5velox13DecodedVector7indicesEv.exit: ; preds = %.noexc, %bb.e
  %i.x = phi ptr [ %.pre.i, %.noexc ], [ %i.w, %bb.e ]
  invoke void @_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKi(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::SelectivityVector") align 8 %5, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef nonnull %i.e, ptr noundef %i.t, ptr noundef %i.x)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit
  %i.y = load ptr, ptr %3, align 8, !tbaa !1802   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1804
  %i.ab = load <2 x ptr>, ptr %5, align 16, !tbaa !1677
  store <2 x ptr> %i.ab, ptr %3, align 8, !tbaa !1677
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !1804
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !1804
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %5, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectoraSEOS1_.exit.thread, label %_ZN8facebook5velox17SelectivityVectoraSEOS1_.exit

_ZN8facebook5velox17SelectivityVectoraSEOS1_.exit.thread: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ae, ptr noundef nonnull align 8 dereferenceable(14) %i.af, i64 14, i1 false)
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectoraSEOS1_.exit: ; preds = %bb.g
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ai) #45
  %.pr = load ptr, ptr %5, align 16, !tbaa !1802  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.aj, ptr noundef nonnull align 8 dereferenceable(14) %i.ak, i64 14, i1 false)
  %.not.i.i.i.i15 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i15, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN8facebook5velox17SelectivityVectoraSEOS1_.exit
  %i.al = load ptr, ptr %i.ac, align 16, !tbaa !1804
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %.pr to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ao) #45
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %_ZN8facebook5velox17SelectivityVectoraSEOS1_.exit.thread, %_ZN8facebook5velox17SelectivityVectoraSEOS1_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.ap = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.ap, ptr noundef nonnull align 8 dereferenceable(94) %i.q, ptr noundef nonnull align 8 dereferenceable(38) %3, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.aq = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !29  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.as, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !34
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #43, !inline_history !1946
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #43, !inline_history !1946
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i16 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i16, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.o ], [ %i.bf, %bb.p ]
  %i.bg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bg, label %bb.q, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !38

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #43
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  ret ptr %i.aq

bb.r:                                             ; preds = %bb.f, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.u

bb.s:                                             ; preds = %bb.i, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.bi, %bb.s ], [ %i.bh, %bb.r ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKi(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::SelectivityVector") align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %class.anon.190, align 8            ; 6 uses
  %7 = alloca %class.anon.192, align 8            ; 6 uses
  %8 = alloca %class.anon.186, align 8            ; 6 uses
  %9 = alloca %class.anon.187, align 8            ; 6 uses
  %10 = alloca %class.anon.179, align 8           ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  store ptr %4, ptr %i.c, align 8, !tbaa !1677
  store ptr %5, ptr %i.d, align 8, !tbaa !1816
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1947
  switch i32 %i.h, label %bb.b [
    i32 6, label %.critedge
    i32 8, label %.critedge
  ], !prof !1948

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiE18veloxCheckFailArgs) #47
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1800
  store ptr %i.j, ptr %i.e, align 8, !tbaa !1816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1797
  store ptr %i.l, ptr %i.f, align 8, !tbaa !1816
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !1801
  %i.n = sext i32 %1 to i64
  %i.o = add nsw i64 %i.n, 63
  %i.p = lshr i64 %i.o, 6                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %0, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store i64 0, ptr %i.b, align 8, !tbaa !106
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr null, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %i.r = load ptr, ptr %0, align 8, !tbaa !1802   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1804
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #45
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %.critedge, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  store i32 %1, ptr %i.z, align 8, !tbaa !1805
  store i32 0, ptr %i.y, align 4, !tbaa !1813
  store i32 0, ptr %i.x, align 8, !tbaa !1810
  store i16 256, ptr %i.aa, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.d, ptr %10, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.e, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !1801, !range !92, !noundef !93
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.f

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %.0.in.pre.i.i = load i8, ptr %i.ab, align 4, !tbaa !20, !range !92
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1813
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1810 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1805
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.h, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %2, align 8, !tbaa !1802  ; 2 uses
end_hunk_0
