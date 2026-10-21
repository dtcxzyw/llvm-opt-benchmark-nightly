Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/coordinateoperationfactory?download=true
inline.NumInlined: 9028
inline.NumDeleted: 2068
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESt4lessIS5_ESaISt4pairIKS5_SF_EEE6insertISI_IS5_SF_EEENSt9enable_ifIXsr16is_constructibleISK_T_EE5valueESI_ISt17_Rb_tree_iteratorISK_EbEE4typeEOSQ_:bb.a
  %.sroa.013.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !94
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !11
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !11
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, !prof !95

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !90
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESt4lessIS5_ESaISt4pairIKS5_SF_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #35
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZZN5osgeo4proj9operation26CoordinateOperationFactory7Private30createOperationsCompoundToGeogERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextEPKNS8_11CompoundCRSEPKNS8_13GeographicCRSERSt6vectorINS6_IS7_INS1_19CoordinateOperationEEEESaISW_EEEN19SetGeogCRSOfVertCRSD2Ev(ptr nofree captures(none) %.0.val, i8 %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %.8.val to i1
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !193  ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  store ptr %i.d, ptr %i.b, align 8, !tbaa !193
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !94
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !892
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !892
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit, !prof !95

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEESaIS9_EE8pop_backEv.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5osgeo4proj9operationL23getInterpolationGeogCRSERKN7dropbox6oxygen2nnISt10shared_ptrINS1_19CoordinateOperationEEEERKS5_INS0_2io15DatabaseContextEE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 16)) %0, ptr %.0.val, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dropbox::oxygen::nn.321", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %.0.val, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation14TransformationE, i64 -1) #31 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.thread26

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %.0.val, align 8, !tbaa !80
  %i.e = icmp eq ptr %i.d, getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5osgeo4proj9operation21ConcatenatedOperationE, i64 16)
  br i1 %i.e, label %bb.d, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj9operation21ConcatenatedOperation10operationsEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.val)
          to label %bb.e unwind label %bb.w       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %.not35 = icmp eq ptr %i.g, %i.i
  br i1 %.not35, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.thread16
  %.02437 = phi ptr [ %.222, %.thread16 ], [ null, %bb.e ] ; 3 uses
  %.sroa.010.036 = phi ptr [ %i.m, %.thread16 ], [ %i.g, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.010.036, align 8, !tbaa !191 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread16, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.l = tail call ptr @__dynamic_cast(ptr nonnull %i.j, ptr nonnull @_ZTIN5osgeo4proj9operation19CoordinateOperationE, ptr nonnull @_ZTIN5osgeo4proj9operation14TransformationE, i64 -1) #31 ; 2 uses
  %.not32 = icmp eq ptr %i.l, null                ; 2 uses
  %.not33 = icmp eq ptr %.02437, null             ; 2 uses
  %spec.select = select i1 %.not33, ptr %i.l, ptr null
  %.2 = select i1 %.not32, ptr %.02437, ptr %spec.select
  %cond = select i1 %.not32, i1 true, i1 %.not33
  br i1 %cond, label %.thread16, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.thread16:                                        ; preds = %.lr.ph, %bb.f
  %.222 = phi ptr [ %.2, %bb.f ], [ %.02437, %.lr.ph ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.036, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread16
  %.not34 = icmp eq ptr %.222, null
  br i1 %.not34, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.thread26

.thread26:                                        ; preds = %bb.b, %._crit_edge
  %.529 = phi ptr [ %.222, %._crit_edge ], [ %i.b, %bb.b ] ; 5 uses
  %i.n = load ptr, ptr %.529, align 8, !tbaa !80
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %.529, i64 %i.p
  %i.r = invoke noundef zeroext i1 @_ZNK5osgeo4proj9operation19CoordinateOperation25hasBallparkTransformationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.q)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %.thread26
  br i1 %i.r, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %.529, align 8, !tbaa !80
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %.529, i64 %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation19CoordinateOperation16interpolationCRSEv(ptr noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %bb.i unwind label %bb.w       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !89   ; 12 uses
  %.not.i.i.i = icmp eq ptr %i.z, null            ; 3 uses
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !91
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !91
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.not30 = icmp eq ptr %i.x, null
  br i1 %.not30, label %bb.x, label %bb.m

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit
  %i.af = tail call ptr @__dynamic_cast(ptr nonnull %i.x, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #31, !noalias !897 ; 2 uses
  %.not.not.i = icmp eq ptr %i.af, null
  %brmerge = or i1 %.not.i.i.i, %.not.not.i
  br i1 %brmerge, label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90, !noalias !897
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !91, !noalias !897
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !91, !noalias !897
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.p:                                             ; preds = %bb.n
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !897 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.m, %bb.o, %bb.p
  %.sroa.63.0 = phi ptr [ %i.z, %bb.o ], [ null, %bb.m ], [ %i.z, %bb.p ]
  store ptr %i.af, ptr %0, align 8, !tbaa !339
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !89 ; 8 uses
  store ptr %.sroa.63.0, ptr %i.al, align 8, !tbaa !89
  %.not.i.i.i.i38 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i38, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.an, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !94
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31, !inline_history !50
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31, !inline_history !50
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i39 = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i39, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.aq, %bb.t ], [ %i.ba, %bb.u ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.v, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.d, %.thread26, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs3CRSEEC2ERKS4_.exit
  %i.bd = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj9operation14Transformation9targetCRSEv(ptr noundef nonnull align 8 dereferenceable(24) %.529) #36 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !162, !noalias !898 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = tail call ptr @__dynamic_cast(ptr nonnull %i.be, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #31, !noalias !898 ; 4 uses
  %.not.not.i41 = icmp eq ptr %i.bg, null
  br i1 %.not.not.i41, label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !89, !noalias !898 ; 4 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i42, label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90, !noalias !898
  %.not.i.i.i.i.i43 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i43, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !91, !noalias !898
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !91, !noalias !898
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45

bb.ac:                                            ; preds = %bb.aa
  %i.bn = atomicrmw volatile add ptr %i.bj, i32 1 acq_rel, align 4, !noalias !898 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45

_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45: ; preds = %bb.x, %bb.y, %bb.z, %bb.ab, %bb.ac
  %.sroa.0.0 = phi ptr [ %i.bg, %bb.ab ], [ %i.bg, %bb.z ], [ %i.bg, %bb.ac ], [ null, %bb.y ], [ null, %bb.x ]
  %.sroa.6.0 = phi ptr [ %i.bi, %bb.ab ], [ null, %bb.z ], [ %i.bi, %bb.ac ], [ null, %bb.y ], [ null, %bb.x ]
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !339
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !89 ; 8 uses
  store ptr %.sroa.6.0, ptr %i.bo, align 8, !tbaa !89
  %.not.i.i.i.i46 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i46, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.bq, align 8, !tbaa !93
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !94
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31, !inline_history !50
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31, !inline_history !50
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i47 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i47, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48

bb.ah:                                            ; preds = %bb.af
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i49 = phi i32 [ %i.bt, %bb.ag ], [ %i.cd, %bb.ah ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i49, 1
  br i1 %i.ce, label %bb.ai, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit45, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i48, %bb.ai, %_ZSt20dynamic_pointer_castIN5osgeo4proj3crs13GeographicCRSENS2_3CRSEESt10shared_ptrIT_ERKS5_IT0_E.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cf, align 8, !tbaa !93
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !94
  %i.ck = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31, !inline_history !20
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31, !inline_history !20
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i57 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i57, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

bb.an:                                            ; preds = %bb.al
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i59 = phi i32 [ %i.ci, %bb.am ], [ %i.cs, %bb.an ]
  %i.ct = icmp eq i32 %.0.i.i.i.i59, 1
  br i1 %i.ct, label %bb.ao, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i58, %bb.ak, %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g, %._crit_edge
  %.pr = load ptr, ptr %0, align 8, !tbaa !297    ; 3 uses
  %.not31 = icmp eq ptr %.pr, null
  br i1 %.not31, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cu = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs13GeographicCRS16coordinateSystemEv(ptr noundef nonnull align 8 dereferenceable(24) %.pr) #36
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !216
  %i.cw = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cv) #36 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !219
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !220
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp eq i64 %i.dc, 48
  br i1 %i.dd, label %bb.aq, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.de, ptr %3, align 8, !tbaa !229
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.df, align 8, !tbaa !206
  store i8 0, ptr %i.de, align 8, !tbaa !90
  invoke void @_ZNK5osgeo4proj3crs13GeographicCRS10demoteTo2DERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.321") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.pr, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ar unwind label %bb.be

bb.ar:                                            ; preds = %bb.aq
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load <2 x ptr>, ptr %2, align 16, !tbaa !155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !89 ; 8 uses
  store <2 x ptr> %i.di, ptr %0, align 8, !tbaa !155
  %.not.i.i.i.i60 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i60, label %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.dk, align 8, !tbaa !93
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !94
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !80
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #31, !inline_history !50
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !80
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #31, !inline_history !50
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64

bb.au:                                            ; preds = %bb.as
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i.i61 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i61, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62

bb.aw:                                            ; preds = %bb.au
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i63 = phi i32 [ %i.dn, %bb.av ], [ %i.dx, %bb.aw ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i63, 1
  br i1 %i.dy, label %bb.ax, label %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64, !prof !95

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #31
  br label %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64

_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64: ; preds = %bb.ar, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i62, %bb.ax
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !89 ; 8 uses
  %.not.i.i.i65 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i65, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.ea, align 8, !tbaa !93
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !94
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !80
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #31, !inline_history !38
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !80
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #31, !inline_history !38
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i.i66 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i66, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i = phi i32 [ %i.ed, %bb.bb ], [ %i.en, %bb.bc ]
  %i.eo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eo, label %bb.bd, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, !prof !95

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEaSEOS4_.exit64, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bd
  %i.ep = load ptr, ptr %3, align 8, !tbaa !132   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.de
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit
  %i.er = load i64, ptr %i.de, align 8, !tbaa !90
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.be:                                            ; preds = %bb.aq
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %3, align 8, !tbaa !132   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.de
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.be
  %i.ew = load i64, ptr %i.de, align 8, !tbaa !90
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.w
  %.pn = phi { ptr, i32 } [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.bc, %bb.w ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #31
  resume { ptr, i32 } %.pn

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %bb.a, %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ap
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5osgeo4proj9operation26CoordinateOperationFactory7Private30createOperationsCompoundToGeogERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS0_4util8optionalINS0_6common9DataEpochEEESD_SK_RNS3_7ContextEPKNS8_11CompoundCRSEPKNS8_13GeographicCRSERSt6vectorINS6_IS7_INS1_19CoordinateOperationEEEESaISW_EEENK3$_2clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.35", align 16   ; 10 uses
  %2 = alloca %"class.osgeo::proj::util::optional", align 8 ; 6 uses
  %3 = alloca %"class.dropbox::oxygen::nn.40", align 8 ; 7 uses
  %4 = alloca %"class.dropbox::oxygen::nn.321", align 8 ; 8 uses
  %5 = alloca %"class.osgeo::proj::util::optional", align 8 ; 6 uses
  %6 = alloca %"class.dropbox::oxygen::nn.40", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.116", align 8 ; 7 uses
  %9 = alloca %"class.dropbox::oxygen::nn.321", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.116", align 8 ; 7 uses
  %12 = alloca %"class.std::vector.35", align 16  ; 9 uses
  %13 = alloca %"class.dropbox::oxygen::nn.40", align 8 ; 7 uses
  %14 = alloca %"class.dropbox::oxygen::nn.321", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.dropbox::oxygen::nn.492", align 8 ; 7 uses
  %18 = alloca %"class.std::vector.35", align 8   ; 10 uses
  %19 = alloca %"class.osgeo::proj::util::optional", align 8 ; 6 uses
  %20 = alloca %"class.osgeo::proj::util::optional", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !900, !nonnull !118, !align !197
end_hunk_0
