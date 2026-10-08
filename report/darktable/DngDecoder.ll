Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DngDecoder?download=true
inline.NumInlined: 1619
inline.NumDeleted: 868
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE:bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef %1, i64 noundef %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.g
  store i64 %i.g, ptr %i.b, align 8, !tbaa !271
  %i.o = load ptr, ptr %0, align 8, !tbaa !253
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !59
  %i.q = load i64, ptr %i.b, align 8, !tbaa !271  ; 5 uses
  %i.r = sub i64 9223372036854775807, %i.q
  %i.s = icmp ult i64 %i.r, %4
  br i1 %i.s, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10

.invoke:                                          ; preds = %bb.h, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #29
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10: ; preds = %bb.h
  %i.t = add i64 %i.q, %4                         ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !253    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %i.w = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %i.x = load i64, ptr %i.a, align 8, !tbaa !59
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16 ]
  %.not.i.i13 = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i13, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12
  %.not8.i.i14 = icmp eq i64 %4, 0
  br i1 %.not8.i.i14, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q ; 2 uses
  %cond.i.i15 = icmp eq i64 %4, 1
  br i1 %cond.i.i15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = load i8, ptr %3, align 1, !tbaa !59
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !59
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %3, i64 %4, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef 0, ptr noundef %3, i64 noundef %4)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %.invoke, %bb.m, %bb.g, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !253   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !59
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ab

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.m
  store i64 %i.t, ptr %i.b, align 8, !tbaa !271
  %i.ag = load ptr, ptr %0, align 8, !tbaa !253
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.t
  store i8 0, ptr %i.ah, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !253
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !243

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #30 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !253    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !271  ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.p = load i8, ptr %i.l, align 1, !tbaa !59
  store i8 %i.p, ptr %i.k, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  %i.q = icmp eq ptr %i.l, %i.b
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.r = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.s = load i64, ptr %i.b, align 8, !tbaa !59
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8, !tbaa !253
  store i64 %.0, ptr %i.b, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

declare noundef zeroext i1 @_ZN8rawspeed10RawDecoder20checkCameraSupportedEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19TiffParserExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #22 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #33
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19TiffParserExceptionE, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #22 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #33
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK8rawspeed11NORangesSetINS_6BufferEE44rangeIsOverlappingExistingElementOfSortedSetERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !164
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !163  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !277 ; 11 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !143 ; 4 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.04.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.e, %bb.b ]
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.04.i.i) #27 ; 2 uses
  %i.i = add nuw nsw i64 %.05.i.i, 1              ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !497

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.k = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = zext nneg i32 %.sroa.2.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.015.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.e ] ; 2 uses
  %.sroa.011.014.i = phi ptr [ %i.e, %.lr.ph.i ], [ %.sroa.011.1.i, %bb.e ] ; 3 uses
  %i.n = lshr i64 %.015.i, 1                      ; 4 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.012.i.i = phi i64 [ %i.p, %.preheader.i.i ], [ %i.n, %bb.c ]
  %i.o = phi ptr [ %i.q, %.preheader.i.i ], [ %.sroa.011.014.i, %bb.c ]
  %i.p = add nsw i64 %.012.i.i, -1                ; 2 uses
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.o) #27 ; 2 uses
  %.not6.i.i = icmp eq i64 %i.p, 0
  br i1 %.not6.i.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.preheader.i.i, !llvm.loop !498

_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.preheader.i.i, %bb.c
  %.sroa.0.0.i = phi ptr [ %.sroa.011.014.i, %bb.c ], [ %i.q, %.preheader.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 32
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.r, align 8, !tbaa !277 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 40
  %.sroa.22.0.copyload.i.i = load i32, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !143 ; 2 uses
  %i.s = icmp sgt i32 %.sroa.22.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = zext nneg i32 %.sroa.22.0.copyload.i.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i, i64 %i.t
  %i.v = icmp ult ptr %.sroa.01.0.copyload.i.i, %.sroa.01.0.copyload
  %i.w = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.01.0.copyload
  %.not.i.i.i = icmp ult ptr %i.u, %i.m
  %i.x = select i1 %i.w, i1 %.not.i.i.i, i1 %i.v
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.0.i) #27
  %i.z = xor i64 %i.n, -1
  %i.aa = add nsw i64 %.015.i, %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %.sroa.011.1.i = phi ptr [ %i.y, %bb.d ], [ %.sroa.011.014.i, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ] ; 2 uses
  %.1.i = phi i64 [ %i.aa, %bb.d ], [ %i.n, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ] ; 2 uses
  %i.ab = icmp sgt i64 %.1.i, 0
  br i1 %i.ab, label %bb.c, label %_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit, !llvm.loop !499

_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit: ; preds = %bb.e, %bb.b
  %.sroa.011.0.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.011.1.i, %bb.e ] ; 4 uses
  %i.ac = icmp eq ptr %.sroa.011.0.lcssa.i, %i.f
  br i1 %i.ac, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i, i64 32 ; 3 uses
  %i.ae = icmp eq ptr %1, %i.ad
  br i1 %i.ae, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %2 = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %2)
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !166 ; 4 uses
  %i.ag = icmp eq ptr %.sroa.01.0.copyload, %i.af
  br i1 %i.ag, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit

_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit: ; preds = %bb.g
  %i.ah = icmp ult ptr %i.af, %.sroa.01.0.copyload ; 3 uses
  %spec.select6.i.i = select i1 %i.ah, ptr %i.ad, ptr %1
  %i.ai = select i1 %i.ah, ptr %.sroa.01.0.copyload, ptr %i.af ; 2 uses
  %i.aj = select i1 %i.ah, ptr %i.af, ptr %.sroa.01.0.copyload ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select6.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !165 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp uge ptr %i.ai, %i.aj
  %i.ao = zext nneg i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = icmp ugt ptr %i.ap, %i.ai
  %.0.i.i = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %.0.i.i, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %.critedge

.critedge:                                        ; preds = %_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit, %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit
  %i.ar = icmp eq ptr %.sroa.011.0.lcssa.i, %i.e
  br i1 %i.ar, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %.lr.ph.i8.preheader

.lr.ph.i8.preheader:                              ; preds = %.critedge
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.011.0.lcssa.i) #27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.au = icmp eq ptr %1, %i.at
  br i1 %i.au, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i8.preheader
  %3 = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %3)
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !166 ; 4 uses
  %i.aw = icmp eq ptr %.sroa.01.0.copyload, %i.av
  br i1 %i.aw, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp ult ptr %i.av, %.sroa.01.0.copyload ; 3 uses
  %spec.select6.i.i11 = select i1 %i.ax, ptr %i.at, ptr %1
  %i.ay = select i1 %i.ax, ptr %.sroa.01.0.copyload, ptr %i.av ; 2 uses
  %i.az = select i1 %i.ax, ptr %i.av, ptr %.sroa.01.0.copyload ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select6.i.i11, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !165 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp uge ptr %i.ay, %i.az
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.be
  %i.bg = icmp ugt ptr %i.bf, %i.ay
  %.0.i.i12 = select i1 %i.bd, i1 %i.bg, i1 false
  br label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14

_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14: ; preds = %bb.g, %bb.f, %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit, %.critedge, %.lr.ph.i8.preheader, %bb.h, %bb.i, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.h ], [ true, %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit ], [ false, %.critedge ], [ %.0.i.i12, %bb.i ], [ true, %.lr.ph.i8.preheader ], [ true, %bb.f ], [ true, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02729.i = load ptr, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %.not30.i = icmp eq ptr %.02729.i, null
  br i1 %.not30.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.01.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !277 ; 4 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i = load i32, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !143 ; 2 uses
  %i.c = icmp sgt i32 %.sroa.22.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext nneg i32 %.sroa.22.0.copyload.i.i to i64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i, i64 %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02731.i = phi ptr [ %.02729.i, %.lr.ph.i ], [ %.027.i, %bb.b ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02731.i, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !277 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.02731.i, i64 40
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !143 ; 2 uses
  %i.g = icmp sgt i32 %.sroa.2.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = zext nneg i32 %.sroa.2.0.copyload.i.i to i64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.h
  %i.j = icmp ult ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.k = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %.not.i.i.i = icmp ult ptr %i.e, %i.i
  %i.l = select i1 %i.k, i1 %.not.i.i.i, i1 %i.j  ; 2 uses
  %.in.v.i = select i1 %i.l, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02731.i, i64 %.in.v.i
  %.027.i = load ptr, ptr %.in.i, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %.027.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !500

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.l, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.026.lcssa36.i = phi ptr [ %.02731.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !163
  %i.o = icmp eq ptr %.026.lcssa36.i, %i.n
  br i1 %i.o, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa36.i) #27 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.01.0.copyload.i5.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !277
  %.sroa.22.0..sroa_idx.i6.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.22.0.copyload.i7.i.pre = load i32, ptr %.sroa.22.0..sroa_idx.i6.i.phi.trans.insert, align 8, !tbaa !143
  %.sroa.0.0.copyload.i8.i.pre = load ptr, ptr %1, align 8, !tbaa !277
  %.sroa.2.0..sroa_idx.i9.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i10.i.pre = load i32, ptr %.sroa.2.0..sroa_idx.i9.i.phi.trans.insert, align 8, !tbaa !143
  %.pre = zext nneg i32 %.sroa.22.0.copyload.i7.i.pre to i64
  %.pre29 = zext nneg i32 %.sroa.2.0.copyload.i10.i.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.pre-phi30 = phi i64 [ %.pre29, %bb.c ], [ %i.d, %._crit_edge.i ]
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.h, %._crit_edge.i ]
  %.sroa.0.0.copyload.i8.i = phi ptr [ %.sroa.0.0.copyload.i8.i.pre, %bb.c ], [ %.sroa.01.0.copyload.i.i, %._crit_edge.i ] ; 3 uses
  %.sroa.01.0.copyload.i5.i = phi ptr [ %.sroa.01.0.copyload.i5.i.pre, %bb.c ], [ %.sroa.0.0.copyload.i.i, %._crit_edge.i ] ; 3 uses
  %.026.lcssa35.i = phi ptr [ %.026.lcssa36.i, %bb.c ], [ %.02731.i, %._crit_edge.i ]
  %.sroa.012.0.i = phi ptr [ %i.p, %bb.c ], [ %.02731.i, %._crit_edge.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i5.i, i64 %.pre-phi
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i8.i, i64 %.pre-phi30
  %i.s = icmp ult ptr %.sroa.01.0.copyload.i5.i, %.sroa.0.0.copyload.i8.i
  %i.t = icmp eq ptr %.sroa.01.0.copyload.i5.i, %.sroa.0.0.copyload.i8.i
  %.not.i.i11.i = icmp ult ptr %i.q, %i.r
  %i.u = select i1 %i.t, i1 %.not.i.i11.i, i1 %i.s
  br i1 %i.u, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.026.lcssa36.i, %._crit_edge.thread.i ], [ %.026.lcssa35.i, %bb.d ] ; 4 uses
  %i.v = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.v, label %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %.sroa.01.0.copyload.i.i6 = load ptr, ptr %1, align 8, !tbaa !277 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i8 = load i32, ptr %.sroa.22.0..sroa_idx.i.i7, align 8, !tbaa !143 ; 2 uses
  %.sroa.0.0.copyload.i.i9 = load ptr, ptr %i.w, align 8, !tbaa !277 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %.sroa.2.0.copyload.i.i11 = load i32, ptr %.sroa.2.0..sroa_idx.i.i10, align 8, !tbaa !143 ; 2 uses
  %i.x = icmp sgt i32 %.sroa.22.0.copyload.i.i8, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = zext nneg i32 %.sroa.22.0.copyload.i.i8 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i6, i64 %i.y
  %i.aa = icmp sgt i32 %.sroa.2.0.copyload.i.i11, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = zext nneg i32 %.sroa.2.0.copyload.i.i11 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i9, i64 %i.ab
  %i.ad = icmp ult ptr %.sroa.01.0.copyload.i.i6, %.sroa.0.0.copyload.i.i9
  %i.ae = icmp eq ptr %.sroa.01.0.copyload.i.i6, %.sroa.0.0.copyload.i.i9
  %.not.i.i.i12 = icmp ult ptr %i.z, %i.ac
  %i.af = select i1 %i.ae, i1 %.not.i.i.i12, i1 %i.ad
  br label %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit

_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit: ; preds = %select.unfold, %bb.e
  %i.ag = phi i1 [ %i.af, %bb.e ], [ true, %select.unfold ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !501
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ag, ptr noundef nonnull %i.ah, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !164
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !164
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit
  %.sroa.017.0 = phi ptr [ %i.ah, %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit ], [ %.sroa.012.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.017.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { cold noreturn }
attributes #24 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { cold }

!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !70}
!1 = distinct !{!1, !70}
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !184, file: !231, line: 92, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt9type_info")
!3 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !235, file: !234, line: 49, baseType: !236, size: 32, elements: !240, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Mutex_base<(__gnu_cxx::_Lock_policy)2>", scope: !184, file: !179, line: 106, size: 8, flags: DIFlagTypePassByValue, elements: !149, templateParams: !233, identifier: "_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE")
!5 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !184, file: !179, line: 125, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !230, vtableHolder: !5, templateParams: !242, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "runtime_error", scope: !184, file: !244, line: 219, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt13runtime_error")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
