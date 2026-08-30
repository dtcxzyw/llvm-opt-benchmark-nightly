Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/File?download=true
begin_hunk_0_@_ZNK7openvdb5v13_02io4File7hasGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !29, !range !103, !noundef !104
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !14
  store i8 0, ptr %i.f, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #30 ; 0 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !17
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.t, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.w = call ptr @__cxa_begin_catch(ptr %.1) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %2) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_07IoErrorE, i64 16), ptr %i.x, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN7openvdb5v13_07IoErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #32
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.f
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !17
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.y

bb.l:                                             ; preds = %bb.a
  %i.ad = tail call ptr @_ZNK7openvdb5v13_02io4File14findDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = icmp ne ptr %i.ad, %i.af
  ret i1 %i.ag

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK7openvdb5v13_02io4File14findDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN7openvdb5v13_02io14GridDescriptor18stringAsUniqueNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = invoke { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7openvdb5v13_02io14GridDescriptorEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit unwind label %bb.d ; 2 uses

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit: ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.e, 1        ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN7openvdb5v13_02io14GridDescriptor11stripSuffixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = invoke { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7openvdb5v13_02io14GridDescriptorEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit22 unwind label %bb.f ; 2 uses

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit22: ; preds = %bb.c
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  %i.n = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit22
  %i.q = load i64, ptr %i.o, align 8, !tbaa !17
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.e
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.w

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit
  %.sroa.052.0.a = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorESt4lessIS5_ESaISt4pairIKS5_S9_EEE11equal_rangeERSD_.exit ] ; 3 uses
  %.not4.i = icmp eq ptr %.sroa.052.0.a, %.sroa.9.0
  br i1 %.not4.i, label %_ZNSolsEPFRSoS_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.06.i = phi i64 [ %i.ab, %.lr.ph.i ], [ 0, %bb.g ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.052.0.a, %bb.g ]
  %i.aa = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i) #34 ; 2 uses
  %i.ab = add nuw nsw i64 %.06.i, 1
  %.not.i = icmp eq ptr %i.aa, %.sroa.9.0
  br i1 %.not.i, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !187

_ZSt10__distanceISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %.not = icmp eq i64 %.06.i, 0
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57, label %bb.h

bb.h:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_St18input_iterator_tag.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.i
  %i.ai = load ptr, ptr %2, align 8, !tbaa !69
  %i.aj = load ptr, ptr %1, align 8, !tbaa !69
  %bcmp.i = call i32 @bcmp(ptr %i.aj, ptr %i.ai, i64 %i.ad)
  %i.ak = icmp eq i32 %bcmp.i, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.an, i64 noundef %i.ap)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.25, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !69
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.as, i64 noundef %i.at)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27 unwind label %bb.m ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !188 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc44 unwind label %bb.m

.noexc44:                                         ; preds = %bb.j
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !189
  %.not.i1.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 67
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bb)
          to label %.noexc45 unwind label %bb.m

.noexc45:                                         ; preds = %bb.l
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef signext i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(570) %i.bb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.m, !inline_history !195

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc45, %bb.k
  %.0.i.i.i = phi i8 [ %i.bf, %bb.k ], [ %i.bj, %.noexc45 ]
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext %.0.i.i.i)
          to label %.noexc47 unwind label %bb.m

.noexc47:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %.noexc47, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc45, %bb.l, %bb.j, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.g
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57: ; preds = %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSt10__distanceISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7openvdb5v13_02io14GridDescriptorEEEENSt15iterator_traitsIT_E15difference_typeESG_SG_St18input_iterator_tag.exit, %.noexc47
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !14 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !14
  %i.bv = icmp eq i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.n, label %.lr.ph

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57
  %i.bw = icmp eq i64 %i.bs, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30: ; preds = %bb.n
  %i.bx = load ptr, ptr %2, align 8, !tbaa !69
  %i.by = load ptr, ptr %1, align 8, !tbaa !69
  %bcmp.i29 = call i32 @bcmp(ptr %i.by, ptr %i.bx, i64 %i.bs)
  %i.bz = icmp eq i32 %bcmp.i29, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.012.066 = phi ptr [ %i.bq, %.lr.ph ], [ %.sroa.012.1, %bb.v ] ; 2 uses
  %.sroa.0.065 = phi ptr [ %.sroa.052.0.a, %.lr.ph ], [ %i.dh, %bb.v ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 96
  store ptr %i.ca, ptr %4, align 8, !tbaa !10
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !69 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 104
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !70
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.ch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ch, ptr %4, align 8, !tbaa !69
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.o
  %i.cj = phi ptr [ %i.ch, %.noexc ], [ %i.ca, %bb.o ] ; 2 uses
  switch i64 %i.cf, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !17
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !17
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  store i64 %i.cl, ptr %i.cb, align 8, !tbaa !14
  %i.cm = load ptr, ptr %4, align 8, !tbaa !69
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  store i8 0, ptr %i.cn, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.co = load i64, ptr %i.cb, align 8, !tbaa !14 ; 7 uses
  %i.cp = load i64, ptr %i.bt, align 8, !tbaa !14
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread61

bb.s:                                             ; preds = %bb.r
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32: ; preds = %bb.s
  %i.cs = load ptr, ptr %2, align 8, !tbaa !69
  %i.ct = load ptr, ptr %4, align 8, !tbaa !69
  %bcmp.i31 = call i32 @bcmp(ptr %i.ct, ptr %i.cs, i64 %i.co)
  %i.cu = icmp eq i32 %bcmp.i31, 0
  br i1 %i.cu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread61: ; preds = %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32
  %i.cv = load i64, ptr %i.br, align 8, !tbaa !14
  %i.cw = icmp eq i64 %i.co, %i.cv
  br i1 %i.cw, label %bb.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34.thread62

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread61
  %i.cx = icmp eq i64 %i.co, 0
  br i1 %i.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34: ; preds = %bb.t
  %i.cy = load ptr, ptr %1, align 8, !tbaa !69
  %i.cz = load ptr, ptr %4, align 8, !tbaa !69
  %bcmp.i33 = call i32 @bcmp(ptr %i.cz, ptr %i.cy, i64 %i.co)
  %i.da = icmp eq i32 %bcmp.i33, 0
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34.thread62

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread: ; preds = %bb.t, %bb.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34.thread62

bb.u:                                             ; preds = %.noexc.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.w

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34.thread62: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread61, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread
  %.sroa.012.1 = phi ptr [ %.sroa.0.065, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread ], [ %.sroa.012.066, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34 ], [ %.sroa.012.066, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread61 ] ; 3 uses
  %cond = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit32.thread61 ]
  %i.dc = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ca
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34.thread62
  %i.de = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.de)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit34.thread62
  %i.df = load i64, ptr %i.ca, align 8, !tbaa !17
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %cond, label %bb.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30.thread

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.dh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.065) #34 ; 2 uses
  %.not63 = icmp eq ptr %i.dh, %.sroa.9.0
  br i1 %.not63, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30.thread, label %bb.o, !llvm.loop !196

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30.thread: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30, %_ZNSolsEPFRSoS_E.exit
  %.sroa.012.3 = phi ptr [ %i.bo, %_ZNSolsEPFRSoS_E.exit ], [ %.sroa.052.0.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30 ], [ %.sroa.052.0.a, %bb.n ], [ %.sroa.012.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %.sroa.012.1, %bb.v ]
  %i.di = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30.thread
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !17
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit30.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.sroa.012.3

bb.w:                                             ; preds = %bb.m, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.d
  %.pn19.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.db, %bb.u ], [ %i.bm, %bb.m ]
  %i.dn = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.w
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !17
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_02io4File11getMetadataEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.2") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !29, !range !103, !noundef !104
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !14
  store i8 0, ptr %i.f, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #30 ; 0 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !17
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.t, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.w = call ptr @__cxa_begin_catch(ptr %.1) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %2) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_07IoErrorE, i64 16), ptr %i.x, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN7openvdb5v13_07IoErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #32
          to label %bb.s unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.f
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.k
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !17
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume

bb.l:                                             ; preds = %bb.a
  %i.ad = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  invoke void @_ZN7openvdb5v13_07MetaMapC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  store ptr %i.ad, ptr %0, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !72
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %_ZNSt10shared_ptrIN7openvdb5v13_07MetaMapEEC2IS2_vEEPT_.exit unwind label %bb.n ; 5 uses

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #30 ; 0 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(56) %i.ad) #30, !inline_history !144
  invoke void @__cxa_rethrow() #32
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.p

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.r, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %i.au, %bb.r ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #33
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable

_ZNSt10shared_ptrIN7openvdb5v13_07MetaMapEEC2IS2_vEEPT_.exit: ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 1, ptr %i.ar, align 8, !tbaa !74
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 1, ptr %i.as, align 4, !tbaa !76
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7openvdb5v13_07MetaMapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ah, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ad, ptr %i.at, align 8, !tbaa !145
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !72
  ret void

bb.r:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 56) #31
  br label %common.resume

bb.s:                                             ; preds = %bb.j
  unreachable
}

declare void @_ZN7openvdb5v13_07MetaMapC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_02io4File8getGridsEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::map", align 8          ; 12 uses
  %6 = alloca %"class.std::shared_ptr.71", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !29, !range !103, !noundef !104
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !14
  store i8 0, ptr %i.f, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #30 ; 0 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !17
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.t, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.w = call ptr @__cxa_begin_catch(ptr %.1) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %2) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_07IoErrorE, i64 16), ptr %i.x, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN7openvdb5v13_07IoErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #32
          to label %bb.bi unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.f
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.k
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !17
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.bh

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !66, !range !103, !noundef !104
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  store ptr %i.ah, ptr %0, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrISt6vectorIS_IN7openvdb5v13_08GridBaseEESaIS4_EEEaSERKS7_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.n
  %i.an = load i32, ptr %i.al, align 4, !tbaa !73
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.n
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !72 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.aq, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !76
  %i.av = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #30, !inline_history !80
  %i.ay = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #30, !inline_history !80
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i9.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i9.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.at, %bb.r ], [ %i.bd, %bb.s ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.be, label %bb.t, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !78

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !72
  br label %_ZNSt10shared_ptrISt6vectorIS_IN7openvdb5v13_08GridBaseEESaIS4_EEEaSERKS7_.exit

bb.u:                                             ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body36

bb.v:                                             ; preds = %bb.l
  %i.bg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.w unwind label %bb.u       ; 5 uses

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %_ZNSt12__shared_ptrISt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE5resetIS7_EENSt9enable_ifIXsr21__sp_is_constructibleIS7_T_EE5valueEvE4typeEPSD_.exit unwind label %bb.x ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = tail call ptr @__cxa_begin_catch(ptr %i.bj) #30 ; 0 uses
  tail call void @_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bg) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 24) #31
  invoke void @__cxa_rethrow() #32
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body36 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #33
  unreachable

bb.aa:                                            ; preds = %bb.x
  unreachable

_ZNSt12__shared_ptrISt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE5resetIS7_EENSt9enable_ifIXsr21__sp_is_constructibleIS7_T_EE5valueEvE4typeEPSD_.exit: ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 1, ptr %i.bo, align 8, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 1, ptr %i.bp, align 4, !tbaa !76
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPSt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bh, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bg, ptr %i.bq, align 8, !tbaa !149
  store ptr %i.bg, ptr %0, align 8, !tbaa !151
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.br, align 8, !tbaa !72
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bw, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.not47 = icmp eq ptr %.pre, %i.bx
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt12__shared_ptrISt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE5resetIS7_EENSt9enable_ifIXsr21__sp_is_constructibleIS7_T_EE5valueEvE4typeEPSD_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.ab

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre54 = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.pre54, i64 104
  %.pre56 = load ptr, ptr %.phi.trans.insert55, align 8, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt12__shared_ptrISt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE5resetIS7_EENSt9enable_ifIXsr21__sp_is_constructibleIS7_T_EE5valueEvE4typeEPSD_.exit
  %i.bz = phi ptr [ %.pre56, %._crit_edge.loopexit ], [ %.pre, %_ZNSt12__shared_ptrISt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE5resetIS7_EENSt9enable_ifIXsr21__sp_is_constructibleIS7_T_EE5valueEvE4typeEPSD_.exit ] ; 2 uses
  %i.ca = phi ptr [ %.pre54, %._crit_edge.loopexit ], [ %i.b, %_ZNSt12__shared_ptrISt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS5_EELN9__gnu_cxx12_Lock_policyE2EE5resetIS7_EENSt9enable_ifIXsr21__sp_is_constructibleIS7_T_EE5valueEvE4typeEPSD_.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 88 ; 2 uses
  %.not4649 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not4649, label %._crit_edge53, label %.lr.ph52

bb.ab:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.042.048 = phi ptr [ %.pre, %.lr.ph ], [ %i.ek, %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.042.048, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNK7openvdb5v13_02io4File10createGridERKNS1_14GridDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.71") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.cc)
          to label %.noexc22 unwind label %bb.bb

.noexc22:                                         ; preds = %bb.ab
  %i.cd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7openvdb5v13_02io4File11inputStreamEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %.noexc22
  invoke void @_ZNK7openvdb5v13_02io14GridDescriptor10seekToGridERSi(ptr noundef nonnull align 8 dereferenceable(160) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN7openvdb5v13_02io4File4Impl9unarchiveERKS2_RSt10shared_ptrINS0_8GridBaseEERKNS1_14GridDescriptorENS3_6NoBBoxE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(160) %i.cc)
          to label %_ZNK7openvdb5v13_02io4File8readGridERKNS1_14GridDescriptorE.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.noexc22
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #30
  br label %.body

_ZNK7openvdb5v13_02io4File8readGridERKNS1_14GridDescriptorE.exit: ; preds = %bb.ad
  %i.cf = load ptr, ptr %0, align 8, !tbaa !79    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !157 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !160
  %.not.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_ZNK7openvdb5v13_02io4File8readGridERKNS1_14GridDescriptorE.exit
  %i.ck = load ptr, ptr %i.by, align 8, !tbaa !72 ; 2 uses
  %i.cl = load <2 x ptr>, ptr %6, align 16, !tbaa !88
  store <2 x ptr> %i.cl, ptr %i.ch, align 8, !tbaa !88
  %.not.i.i.i.i23 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i23, label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEC2ERKS3_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !73
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !73
  br label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEC2ERKS3_.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.cq = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.cg, align 8, !tbaa !157
  br label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEC2ERKS3_.exit.i: ; preds = %bb.ai, %bb.ah, %bb.af
  %i.cr = phi ptr [ %i.ch, %bb.af ], [ %i.ch, %bb.ah ], [ %.pre.i, %bb.ai ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.cs, ptr %i.cg, align 8, !tbaa !157
  br label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS4_EE9push_backERKS4_.exit

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_02io4File8readGridERKNS1_14GridDescriptorE.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS4_EE9push_backERKS4_.exit unwind label %bb.bc

_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEC2ERKS3_.exit.i, %bb.aj
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.042.048, i64 96
  %i.cu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08GridBaseEESt4lessIS5_ESaISt4pairIKS5_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %bb.ak unwind label %bb.bc     ; 2 uses

bb.ak:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_08GridBaseEESaIS4_EE9push_backERKS4_.exit
  %i.cv = load ptr, ptr %6, align 16, !tbaa !161
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !161
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cx = load ptr, ptr %i.by, align 8, !tbaa !72 ; 5 uses
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i.i25, label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSERKS3_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not7.i.i.i26 = icmp eq ptr %i.cx, null
  br i1 %.not7.i.i.i26, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i28, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i27 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i27, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !73
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i28

bb.ao:                                            ; preds = %bb.am
  %i.dd = atomicrmw volatile add ptr %i.cz, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i34 = load ptr, ptr %i.cw, align 8, !tbaa !72
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i28

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i28: ; preds = %bb.ao, %bb.an, %bb.al
  %i.de = phi ptr [ %i.cy, %bb.al ], [ %i.cy, %bb.an ], [ %.pr.pre.i.i.i34, %bb.ao ] ; 8 uses
  %.not8.i.i.i29 = icmp eq ptr %i.de, null
  br i1 %.not8.i.i.i29, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i33, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i28
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.df, align 8, !tbaa !74
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !76
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #30, !inline_history !164
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #30, !inline_history !164
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i33

bb.ar:                                            ; preds = %bb.ap
  %i.dq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i9.i.i.i30 = icmp eq i8 %i.dq, 0
  br i1 %.not.i9.i.i.i30, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dr = add nsw i32 %i.di, -1
  store i32 %i.dr, ptr %i.df, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31

bb.at:                                            ; preds = %bb.ar
  %i.ds = atomicrmw volatile add ptr %i.df, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i32 = phi i32 [ %i.di, %bb.as ], [ %i.ds, %bb.at ]
  %i.dt = icmp eq i32 %.0.i.i.i.i.i32, 1
  br i1 %i.dt, label %bb.au, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i33, !prof !78

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i33

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i33: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31, %bb.aq, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i28
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !72
  %.pr = load ptr, ptr %i.by, align 8, !tbaa !72
  br label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSERKS3_.exit

_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSERKS3_.exit: ; preds = %bb.ak, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i33
  %i.du = phi ptr [ %i.cx, %bb.ak ], [ %.pr, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i33 ] ; 8 uses
  %.not.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSERKS3_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.dv, align 8, !tbaa !74
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !76
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #30, !inline_history !153
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #30, !inline_history !153
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i35 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i35, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i = phi i32 [ %i.dy, %bb.ay ], [ %i.ei, %bb.az ]
  %i.ej = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ej, label %bb.ba, label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !78

end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_02io4File16readGridMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.pn17 = phi { ptr, i32 } [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn13.pn, %bb.ax ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  resume { ptr, i32 } %.pn17

bb.az:                                            ; preds = %bb.al, %bb.u, %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io4File8readGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.71") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.openvdb::v13_0::math::BBox", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x double> splat (double f0x7FEFFFFFFFFFFFFF), ptr %3, align 16, !tbaa !209
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.b, align 16, !tbaa !209
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.a, align 16, !tbaa !209
  call void @_ZN7openvdb5v13_02io4File14readGridByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4math4BBoxINSB_4Vec3IdEEEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.71") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io4File14readGridByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4math4BBoxINSB_4Vec3IdEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.71") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.108", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.71", align 16 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.71", align 16 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.71", align 16 ; 8 uses
  %20 = alloca %"class.openvdb::v13_0::math::CoordBBox", align 4 ; 5 uses
  %21 = alloca %"class.std::shared_ptr.71", align 16 ; 8 uses
  %22 = alloca %"class.std::shared_ptr.71", align 16 ; 8 uses
  %23 = alloca %"class.std::shared_ptr.86", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !29, !range !103, !noundef !104
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !14
  store i8 0, ptr %i.f, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.18, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7) #30 ; 0 uses
  %i.o = load ptr, ptr %7, align 8, !tbaa !69     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !17
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.t, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.w = call ptr @__cxa_begin_catch(ptr %.1) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %5) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_07IoErrorE, i64 16), ptr %i.x, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN7openvdb5v13_07IoErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #32
          to label %bb.eb unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.f
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.k
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !17
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ea

bb.l:                                             ; preds = %bb.a
  %i.ad = load double, ptr %3, align 8, !tbaa !209
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !209
  %i.ag = fadd double %i.af, 1.000000e-15
  %i.ah = fcmp olt double %i.ad, %i.ag
  br i1 %i.ah, label %bb.m, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isSortedEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !209
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = load double, ptr %i.ak, align 8, !tbaa !209
  %i.am = fadd double %i.al, 1.000000e-15
  %i.an = fcmp olt double %i.aj, %i.am
  br i1 %i.an, label %bb.n, label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isSortedEv.exit

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !209
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !209
  %i.as = fadd double %i.ar, 1.000000e-15
  %i.at = fcmp olt double %i.ap, %i.as
  br label %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isSortedEv.exit

_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isSortedEv.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.au = phi i1 [ false, %bb.m ], [ false, %bb.l ], [ %i.at, %bb.n ] ; 3 uses
  tail call void @_ZNK7openvdb5v13_02io4File18retrieveCachedGridERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.71") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.av = load ptr, ptr %0, align 8, !tbaa !161   ; 3 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.af, label %bb.o

bb.o:                                             ; preds = %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isSortedEv.exit
  br i1 %i.au, label %bb.p, label %bb.dy

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.71") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.av)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load <2 x ptr>, ptr %8, align 16, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !72 ; 8 uses
  store <2 x ptr> %i.bb, ptr %0, align 8, !tbaa !88
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bd, align 8, !tbaa !74
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !76
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #30, !inline_history !212
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #30, !inline_history !212
  br label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.u ], [ %i.bq, %bb.v ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.br, label %bb.w, label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit, !prof !78

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #30
  br label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit

_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !72 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bt, align 8, !tbaa !74
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !76
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !153
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !153
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ %i.bw, %bb.aa ], [ %i.cg, %bb.ab ]
  %i.ch = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ch, label %bb.ac, label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !78

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ci = load ptr, ptr %0, align 8, !tbaa !161
  invoke void @_ZN7openvdb5v13_08GridBase8clipGridERKNS0_4math4BBoxINS2_4Vec3IdEEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.dy unwind label %bb.ae

bb.ad:                                            ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.dz

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.af:                                            ; preds = %_ZNK7openvdb5v13_04math4BBoxINS1_4Vec3IdEEE8isSortedEv.exit
  %i.cl = invoke ptr @_ZNK7openvdb5v13_02io4File14findDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ag unwind label %bb.ak     ; 5 uses

bb.ag:                                            ; preds = %bb.af
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.co = icmp eq ptr %i.cl, %i.cn
  br i1 %i.co, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.cp, ptr %9, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !14
  store i8 0, ptr %i.cp, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !14
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %i.cs, i64 noundef %i.cu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit51 unwind label %bb.am ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit51: ; preds = %bb.ai
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull @.str.15, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit51
  %i.cx = load ptr, ptr %2, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.cx, i64 noundef %i.cz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53 unwind label %bb.am

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54 unwind label %bb.am ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.dc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11) #30 ; 0 uses
  %i.dd = load ptr, ptr %11, align 8, !tbaa !69   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.aj
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !17
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.aq

bb.ak:                                            ; preds = %bb.af
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.al:                                            ; preds = %bb.ah
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ap

bb.am:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit53, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit51, %bb.ai
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn42 = phi { ptr, i32 } [ %i.dl, %bb.an ], [ %i.dk, %bb.am ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #30
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.ao ], [ %i.dj, %bb.al ]
  %.3 = extractvalue { ptr, i32 } %.pn42.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.dm = call ptr @__cxa_begin_catch(ptr %.3) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.dn = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %9) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_08KeyErrorE, i64 16), ptr %i.dn, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN7openvdb5v13_08KeyErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #32
          to label %bb.eb unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.ar
  %i.dr = load i64, ptr %i.cp, align 8, !tbaa !17
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.dz

bb.as:                                            ; preds = %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cl, i64 64 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  br i1 %i.au, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  invoke void @_ZNK7openvdb5v13_02io4File10createGridERKNS1_14GridDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.71") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.dt)
          to label %.noexc unwind label %bb.bv

.noexc:                                           ; preds = %bb.at
  %i.du = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7openvdb5v13_02io4File11inputStreamEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %.noexc
  invoke void @_ZNK7openvdb5v13_02io14GridDescriptor10seekToGridERSi(ptr noundef nonnull align 8 dereferenceable(160) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.du)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN7openvdb5v13_02io4File4Impl9unarchiveERKS2_RSt10shared_ptrINS0_8GridBaseEERKNS1_14GridDescriptorERKNS0_4math4BBoxINSD_4Vec3IdEEEE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(160) %i.dt, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %_ZNK7openvdb5v13_02io4File8readGridERKNS1_14GridDescriptorERKNS0_4math4BBoxINS6_4Vec3IdEEEE.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %.noexc
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #30
  br label %.body

bb.ax:                                            ; preds = %bb.as
  invoke void @_ZNK7openvdb5v13_02io4File10createGridERKNS1_14GridDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.71") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.dt)
          to label %.noexc61 unwind label %bb.bv

.noexc61:                                         ; preds = %bb.ax
  %i.dw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7openvdb5v13_02io4File11inputStreamEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %.noexc61
  invoke void @_ZNK7openvdb5v13_02io14GridDescriptor10seekToGridERSi(ptr noundef nonnull align 8 dereferenceable(160) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.dw)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN7openvdb5v13_02io4File4Impl9unarchiveERKS2_RSt10shared_ptrINS0_8GridBaseEERKNS1_14GridDescriptorENS3_6NoBBoxE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(160) %i.dt)
          to label %_ZNK7openvdb5v13_02io4File8readGridERKNS1_14GridDescriptorERKNS0_4math4BBoxINS6_4Vec3IdEEEE.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %.noexc61
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #30
  br label %.body

_ZNK7openvdb5v13_02io4File8readGridERKNS1_14GridDescriptorERKNS0_4math4BBoxINS6_4Vec3IdEEEE.exit: ; preds = %bb.az, %bb.av
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ea = load <2 x ptr>, ptr %12, align 16, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !72 ; 8 uses
  store <2 x ptr> %i.ea, ptr %0, align 8, !tbaa !88
  %.not.i.i.i.i64 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i64, label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit68, label %bb.bb

bb.bb:                                            ; preds = %_ZNK7openvdb5v13_02io4File8readGridERKNS1_14GridDescriptorERKNS0_4math4BBoxINS6_4Vec3IdEEEE.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %i.ed = load atomic i64, ptr %i.ec acquire, align 8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 4294967297
  %i.ef = trunc i64 %i.ed to i32                  ; 2 uses
  br i1 %i.ee, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.ec, align 8, !tbaa !74
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !76
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #30, !inline_history !212
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #30, !inline_history !212
  br label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit68

bb.bd:                                            ; preds = %bb.bb
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i65 = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i65, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66

bb.bf:                                            ; preds = %bb.bd
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i67 = phi i32 [ %i.ef, %bb.be ], [ %i.ep, %bb.bf ]
  %i.eq = icmp eq i32 %.0.i.i.i.i.i.i67, 1
  br i1 %i.eq, label %bb.bg, label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit68, !prof !78

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #30
  br label %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit68

_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit68: ; preds = %_ZNK7openvdb5v13_02io4File8readGridERKNS1_14GridDescriptorERKNS0_4math4BBoxINS6_4Vec3IdEEEE.exit, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i66, %bb.bg
  %i.er = load ptr, ptr %i.dy, align 8, !tbaa !72 ; 8 uses
  %.not.i.i69 = icmp eq ptr %i.er, null
  br i1 %.not.i.i69, label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit68
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 4 uses
  %i.et = load atomic i64, ptr %i.es acquire, align 8 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 4294967297
  %i.ev = trunc i64 %i.et to i32                  ; 2 uses
  br i1 %i.eu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.es, align 8, !tbaa !74
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !76
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #30, !inline_history !153
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #30, !inline_history !153
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73

bb.bj:                                            ; preds = %bb.bh
  %i.fd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i70 = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i.i70, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fe = add nsw i32 %i.ev, -1
  store i32 %i.fe, ptr %i.es, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71

bb.bl:                                            ; preds = %bb.bj
  %i.ff = atomicrmw volatile add ptr %i.es, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i72 = phi i32 [ %i.ev, %bb.bk ], [ %i.ff, %bb.bl ]
  %i.fg = icmp eq i32 %.0.i.i.i.i72, 1
  br i1 %i.fg, label %bb.bm, label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73, !prof !78

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #30
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73

_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_08GridBaseEEaSEOS3_.exit68, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cl, i64 136
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !14
  %.not157 = icmp eq i64 %i.fi, 0
  br i1 %.not157, label %bb.dy, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cl, i64 128 ; 2 uses
  invoke void @_ZN7openvdb5v13_02io14GridDescriptor12nameAsStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.fj)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.fk = invoke ptr @_ZNK7openvdb5v13_02io4File14findDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bp unwind label %bb.bx     ; 3 uses

bb.bp:                                            ; preds = %bb.bo
  %i.fl = load ptr, ptr %13, align 8, !tbaa !69   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.bp
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !17
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  %i.fs = icmp eq ptr %i.fk, %i.fr
  br i1 %i.fs, label %bb.bq, label %bb.ck

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.ft, ptr %14, align 8, !tbaa !10
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.fu, align 8, !tbaa !14
  store i8 0, ptr %i.ft, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.br unwind label %bb.by

bb.br:                                            ; preds = %bb.bq
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.19, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %bb.bz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZN7openvdb5v13_02io14GridDescriptor12nameAsStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %i.fj)
          to label %bb.bs unwind label %bb.ca

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.fw = load ptr, ptr %16, align 8, !tbaa !69
  %i.fx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !14
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.fw, i64 noundef %i.fy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80 unwind label %bb.cb ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80: ; preds = %bb.bs
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull @.str.20, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %bb.cb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  invoke void @_ZN7openvdb5v13_02io14GridDescriptor12nameAsStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %i.gb)
          to label %bb.bt unwind label %bb.cc

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.gc = load ptr, ptr %17, align 8, !tbaa !69
  %i.gd = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !14
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef %i.gc, i64 noundef %i.ge)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84 unwind label %bb.cd ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84: ; preds = %bb.bt
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull @.str.21, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 unwind label %bb.cd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !69
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !14
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef %i.gi, i64 noundef %i.gk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88 unwind label %bb.cd ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
  %i.gm = load ptr, ptr %17, align 8, !tbaa !69   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !17
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.gr = load ptr, ptr %16, align 8, !tbaa !69   ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !17
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.bu unwind label %bb.cf

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.gw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %18) #30 ; 0 uses
  %i.gx = load ptr, ptr %18, align 8, !tbaa !69   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.bu
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !17
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.ci

bb.bv:                                            ; preds = %bb.ax, %bb.at
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bv, %bb.ba, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.dv, %bb.aw ], [ %i.hc, %bb.bv ], [ %i.dx, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.dz

bb.bw:                                            ; preds = %bb.bn
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.bx:                                            ; preds = %bb.bo
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %13, align 8, !tbaa !69   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.bx
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !17
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.bw
  %.pn31 = phi { ptr, i32 } [ %i.hd, %bb.bw ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.he, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.dz

bb.by:                                            ; preds = %bb.bq
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ch

bb.bz:                                            ; preds = %bb.br
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cg

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.cb:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80, %bb.bs
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ce

bb.cc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.cd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84, %bb.bt
  %i.hp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.hq = load ptr, ptr %17, align 8, !tbaa !69   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.cd
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !17
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.cc
  %.pn37 = phi { ptr, i32 } [ %i.ho, %bb.cc ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.hp, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.cb
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.hn, %bb.cb ] ; 2 uses
  %i.hv = load ptr, ptr %16, align 8, !tbaa !69   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.ce
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !17
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ca
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.hm, %bb.ca ], [ %.pn37.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn37.pn, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.cg

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.bz
  %.pn38 = phi { ptr, i32 } [ %i.ia, %bb.cf ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.hl, %bb.bz ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #30
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.by
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.cg ], [ %i.hk, %bb.by ]
  %.9 = extractvalue { ptr, i32 } %.pn38.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.ib = call ptr @__cxa_begin_catch(ptr %.9) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.ic = call ptr @__cxa_allocate_exception(i64 40) #30 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ic, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %14) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_08KeyErrorE, i64 16), ptr %i.ic, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.ic, ptr nonnull @_ZTIN7openvdb5v13_08KeyErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #32
          to label %bb.eb unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.id = landingpad { ptr, i32 }
          cleanup
  %i.ie = load ptr, ptr %14, align 8, !tbaa !69   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.ft
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.cj
  %i.ig = load i64, ptr %i.ft, align 8, !tbaa !17
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.dz

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  br i1 %i.au, label %bb.cl, label %bb.ct

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.ii = load ptr, ptr %0, align 8, !tbaa !161
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 56
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !213
  invoke void @_ZNK7openvdb5v13_04math9Transform24worldToIndexNodeCenteredERKNS1_4BBoxINS1_4Vec3IdEEEE(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::CoordBBox") align 4 %20, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.il = getelementptr inbounds nuw i8, ptr %i.fk, i64 64 ; 3 uses
  invoke void @_ZNK7openvdb5v13_02io4File10createGridERKNS1_14GridDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.71") align 8 %21, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.il)
          to label %.noexc110 unwind label %bb.cr

.noexc110:                                        ; preds = %bb.cm
  %i.im = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7openvdb5v13_02io4File11inputStreamEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %.noexc110
  invoke void @_ZNK7openvdb5v13_02io14GridDescriptor10seekToGridERSi(ptr noundef nonnull align 8 dereferenceable(160) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.im)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN7openvdb5v13_02io4File4Impl9unarchiveERKS2_RSt10shared_ptrINS0_8GridBaseEERKNS1_14GridDescriptorERKNS0_4math9CoordBBoxE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(160) %i.il, ptr noundef nonnull align 4 dereferenceable(24) %20)
          to label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %.noexc110
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #30
  br label %.body111

_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122: ; preds = %bb.co
  %i.io = load <2 x ptr>, ptr %21, align 16, !tbaa !88
  %i.ip = load ptr, ptr %21, align 16, !tbaa !161
  store <2 x ptr> %i.io, ptr %19, align 16, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.cy

bb.cq:                                            ; preds = %bb.cl
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cm
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body111

.body111:                                         ; preds = %bb.cp, %bb.cr
  %eh.lpad-body112 = phi { ptr, i32 } [ %i.ir, %bb.cr ], [ %i.in, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.cs

bb.cs:                                            ; preds = %.body111, %bb.cq
  %.pn33 = phi { ptr, i32 } [ %eh.lpad-body112, %.body111 ], [ %i.iq, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.dx

bb.ct:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.is = getelementptr inbounds nuw i8, ptr %i.fk, i64 64 ; 3 uses
  invoke void @_ZNK7openvdb5v13_02io4File10createGridERKNS1_14GridDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.71") align 8 %22, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.is)
          to label %.noexc123 unwind label %bb.cx

.noexc123:                                        ; preds = %bb.ct
  %i.it = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7openvdb5v13_02io4File11inputStreamEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %.noexc123
  invoke void @_ZNK7openvdb5v13_02io14GridDescriptor10seekToGridERSi(ptr noundef nonnull align 8 dereferenceable(160) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.it)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN7openvdb5v13_02io4File4Impl9unarchiveERKS2_RSt10shared_ptrINS0_8GridBaseEERKNS1_14GridDescriptorENS3_6NoBBoxE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(160) %i.is)
          to label %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit136 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %.noexc123
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #30
  br label %.body124

_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit136: ; preds = %bb.cv
  %i.iv = load <2 x ptr>, ptr %22, align 16, !tbaa !88
  %i.iw = load ptr, ptr %22, align 16, !tbaa !161
  store <2 x ptr> %i.iv, ptr %19, align 16, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.cy

bb.cx:                                            ; preds = %bb.ct
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %.body124

.body124:                                         ; preds = %bb.cw, %bb.cx
  %eh.lpad-body125 = phi { ptr, i32 } [ %i.ix, %bb.cx ], [ %i.iu, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.dx

bb.cy:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit136, %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122
  %i.iy = phi ptr [ %i.iw, %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit136 ], [ %i.ip, %_ZNSt12__shared_ptrIN7openvdb5v13_08GridBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122 ] ; 3 uses
  %.not158 = icmp eq ptr %i.iy, null
  br i1 %.not158, label %_ZNSt12__shared_ptrIN7openvdb5v13_04tree8TreeBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.iz = load ptr, ptr %0, align 8, !tbaa !161   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !216
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !8, !noalias !216
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 88
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !216
  invoke void %i.jc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.108") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.iy)
          to label %.noexc139 unwind label %bb.dp, !inline_history !219

.noexc139:                                        ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.jd = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !72, !noalias !216 ; 3 uses
  %i.jg = load <2 x ptr>, ptr %4, align 16, !tbaa !88, !noalias !216
  store <2 x ptr> %i.jg, ptr %23, align 16, !tbaa !88, !alias.scope !226
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i.i.i, label %bb.dh, label %bb.da

bb.da:                                            ; preds = %.noexc139
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 3 uses
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !226
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_012ConstPtrCastINS0_4tree8TreeBaseEKS3_EESt10shared_ptrIT_ERKS5_IT0_E.exit.i, label %_ZN7openvdb5v13_012ConstPtrCastINS0_4tree8TreeBaseEKS3_EESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i

_ZN7openvdb5v13_012ConstPtrCastINS0_4tree8TreeBaseEKS3_EESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i: ; preds = %bb.da
  %i.jj = load i32, ptr %i.jh, align 4, !tbaa !73, !noalias !226
  %i.jk = add nsw i32 %i.jj, 1
  store i32 %i.jk, ptr %i.jh, align 4, !tbaa !73, !noalias !226
  br label %bb.db

_ZN7openvdb5v13_012ConstPtrCastINS0_4tree8TreeBaseEKS3_EESt10shared_ptrIT_ERKS5_IT0_E.exit.i: ; preds = %bb.da
  %i.jl = atomicrmw volatile add ptr %i.jh, i32 1 acq_rel, align 4, !noalias !226 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.je, align 8, !tbaa !72, !noalias !216 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i.i138, label %bb.dh, label %bb.db

bb.db:                                            ; preds = %_ZN7openvdb5v13_012ConstPtrCastINS0_4tree8TreeBaseEKS3_EESt10shared_ptrIT_ERKS5_IT0_E.exit.i, %_ZN7openvdb5v13_012ConstPtrCastINS0_4tree8TreeBaseEKS3_EESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i
  %.pr5.i = phi ptr [ %i.jf, %_ZN7openvdb5v13_012ConstPtrCastINS0_4tree8TreeBaseEKS3_EESt10shared_ptrIT_ERKS5_IT0_E.exit.thread.i ], [ %.pr.pre.i, %_ZN7openvdb5v13_012ConstPtrCastINS0_4tree8TreeBaseEKS3_EESt10shared_ptrIT_ERKS5_IT0_E.exit.i ] ; 7 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.pr5.i, i64 8 ; 4 uses
  %i.jn = load atomic i64, ptr %i.jm acquire, align 8, !noalias !216 ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 4294967297
  %i.jp = trunc i64 %i.jn to i32                  ; 2 uses
  br i1 %i.jo, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.jm, align 8, !tbaa !74, !noalias !216
  %i.jq = getelementptr inbounds nuw i8, ptr %.pr5.i, i64 12
  store i32 0, ptr %i.jq, align 4, !tbaa !76, !noalias !216
  %i.jr = load ptr, ptr %.pr5.i, align 8, !tbaa !8, !noalias !216
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !216
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %.pr5.i) #30, !noalias !216, !inline_history !227
  %i.ju = load ptr, ptr %.pr5.i, align 8, !tbaa !8, !noalias !216
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !216
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %.pr5.i) #30, !noalias !216, !inline_history !227
  br label %bb.dh

bb.dd:                                            ; preds = %bb.db
  %i.jx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !216
  %.not.i.i.i.i137 = icmp eq i8 %i.jx, 0
  br i1 %.not.i.i.i.i137, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jy = add nsw i32 %i.jp, -1
  store i32 %i.jy, ptr %i.jm, align 8, !tbaa !73, !noalias !216
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.jz = atomicrmw volatile add ptr %i.jm, i32 -1 acq_rel, align 4, !noalias !216
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.df, %bb.de
  %.0.i.i.i.i.i = phi i32 [ %i.jp, %bb.de ], [ %i.jz, %bb.df ]
  %i.ka = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ka, label %bb.dg, label %bb.dh, !prof !78

bb.dg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr5.i) #30, !noalias !216
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.dc, %_ZN7openvdb5v13_012ConstPtrCastINS0_4tree8TreeBaseEKS3_EESt10shared_ptrIT_ERKS5_IT0_E.exit.i, %.noexc139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !216
  %i.kb = load ptr, ptr %i.iz, align 8, !tbaa !8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 104
  %i.kd = load ptr, ptr %i.kc, align 8
  invoke void %i.kd(ptr noundef nonnull align 8 dereferenceable(72) %i.iz, ptr nofree noundef nonnull align 8 dereferenceable(16) %23)
          to label %bb.di unwind label %bb.dq

end_hunk_1
