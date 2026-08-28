Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 644
loop-unroll.NumUnrolled: 782
begin_hunk_0_@_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorINS3_10btree_nodeINS3_15set_params_implINS2_4CordEJSt4lessIS7_ESaIS7_ESt17integral_constantIiLi256EESB_IbLb1EEEEEEERKS7_PSG_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15set_params_implINS3_4CordEJSt4lessIS8_ESaIS8_ESt17integral_constantIiLi256EESC_IbLb1EEEEEEERKS8_PSH_EEE5PrintERKSK_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106, !noalias !4590 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !4590 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23, !alias.scope !4590
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #36
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15set_params_implINS3_4CordEJSt4lessIS8_ESaIS8_ESt17integral_constantIiLi256EESC_IbLb1EEEEEEERKS8_PSH_EEE5PrintERKSK_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !25
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !25
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #37
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !25
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorIKNS3_10btree_nodeINS3_15set_params_implINS2_4CordEJSt4lessIS7_ESaIS7_ESt17integral_constantIiLi256EESB_IbLb1EEEEEEERKS7_PSH_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef 16, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINS3_4CordEJSt4lessIS8_ESaIS8_ESt17integral_constantIiLi256EESC_IbLb1EEEEEEERKS8_PSI_EEE5PrintERKSL_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINS3_4CordEJSt4lessIS8_ESaIS8_ESt17integral_constantIiLi256EESC_IbLb1EEEEEEERKS8_PSI_EEE5PrintERKSL_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4591)
  call void @llvm.experimental.noalias.scope.decl(metadata !4594)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24, !alias.scope !4597
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !21, !alias.scope !4597
  store i8 0, ptr %i.b, align 8, !tbaa !23, !alias.scope !4597
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104, !noalias !4597 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4597 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINS3_4CordEJSt4lessIS8_ESaIS8_ESt17integral_constantIiLi256EESC_IbLb1EEEEEEERKS8_PSI_EEE5PrintERKSL_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106, !noalias !4597 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !4597 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23, !alias.scope !4597
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #36
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINS3_4CordEJSt4lessIS8_ESaIS8_ESt17integral_constantIiLi256EESC_IbLb1EEEEEEERKS8_PSI_EEE5PrintERKSL_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !25
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !25
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #37
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !25
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE13internal_findIS4_EENS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSH_EERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.02.0.in.i = phi ptr [ %0, %bb.a ], [ %i.az, %bb.j ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !tbaa !4371, !noalias !4598 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23, !noalias !4598 ; 2 uses
  %.not20.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not20.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread45.i.i.i.i, %.lr.ph.i.i.i.i
  %.023.i.i.i.ph.i = phi i64 [ %i.as, %.thread45.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ] ; 9 uses
  %.01522.i.i.i.ph.i = phi i64 [ %i.aq, %.thread45.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i ] ; 6 uses
  %.01721.i.i.i.ph.i = phi i8 [ %i.ar, %.thread45.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.g = add i64 %.01522.i.i.i.ph.i, %.023.i.i.i.ph.i
  %i.h = lshr i64 %i.g, 1                         ; 8 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 5 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23, !noalias !4598 ; 2 uses
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.outer.i
  %i.l = load i8, ptr %1, align 8, !tbaa !23, !noalias !4598 ; 2 uses
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.0.copyload5.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.n, align 1, !noalias !4598 ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.a, align 1, !noalias !4598 ; 2 uses
  %i.o = icmp eq i64 %.0.copyload5.i.i.i.i.i.i.i.i.peel, %.0.copyload.i.i.i.i.i.i.i.i.peel
  br i1 %i.o, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload7.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.p, align 1, !noalias !4598 ; 4 uses
  %.0.copyload1.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.b, align 8, !noalias !4598 ; 2 uses
  %i.q = icmp eq i64 %.0.copyload7.i.i.i.i.i.i.i.i.peel, %.0.copyload1.i.i.i.i.i.i.i.i.peel
  br i1 %i.q, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.r = sext i8 %i.j to i64
  %i.s = lshr exact i64 %i.r, 1                   ; 3 uses
  %i.t = sext i8 %i.l to i64
  %i.u = lshr exact i64 %i.t, 1                   ; 2 uses
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %.thread45.i.i.i.thread.i.peel, label %.loopexit56

.thread45.i.i.i.thread.i.peel:                    ; preds = %bb.f
  %.not.i.i.i30.i.peel = icmp eq i64 %.023.i.i.i.ph.i, %i.h
  br i1 %.not.i.i.i30.i.peel, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit.loopexit.split.loop.exit, label %.peel.next

.peel.next:                                       ; preds = %.thread45.i.i.i.thread.i.peel, %.thread45.i.i.i.thread.i
  %.01522.i.i.i.i = phi i64 [ %i.x, %.thread45.i.i.i.thread.i ], [ %i.h, %.thread45.i.i.i.thread.i.peel ] ; 5 uses
  %i.w = add i64 %.01522.i.i.i.i, %.023.i.i.i.ph.i
  %i.x = lshr i64 %i.w, 1                         ; 7 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.x ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23, !noalias !4598 ; 2 uses
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload5.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 1, !noalias !4598 ; 2 uses
  %i.ac = icmp eq i64 %.0.copyload5.i.i.i.i.i.i.i.i, %.0.copyload5.i.i.i.i.i.i.i.i.peel
  br i1 %i.ac, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload7.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 1, !noalias !4598 ; 2 uses
  %i.ae = icmp eq i64 %.0.copyload7.i.i.i.i.i.i.i.i, %.0.copyload7.i.i.i.i.i.i.i.i.peel
  br i1 %i.ae, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.af = sext i8 %i.z to i64
  %i.ag = lshr exact i64 %i.af, 1                 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.s
  br i1 %i.ah, label %.thread45.i.i.i.thread.i, label %.loopexit56

.loopexit56:                                      ; preds = %bb.i, %bb.f
  %.lcssa49 = phi i64 [ %i.s, %bb.f ], [ %i.ag, %bb.i ]
  %.01522.i.i.i.i.lcssa44.a = phi i64 [ %.01522.i.i.i.ph.i, %bb.f ], [ %.01522.i.i.i.i, %bb.i ]
  %.01721.i.i.i.i.lcssa40.a = phi i8 [ %.01721.i.i.i.ph.i, %bb.f ], [ 0, %bb.i ] ; 2 uses
  %.lcssa37.a = phi i64 [ %i.h, %bb.f ], [ %i.x, %bb.i ] ; 2 uses
  %i.ai = icmp samesign ult i64 %.lcssa49, %i.u
  br i1 %i.ai, label %.split47.thread.i.i.i.i, label %.thread45.i.i.i.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.01522.i.i.i.i.lcssa43 = phi i64 [ %.01522.i.i.i.ph.i, %bb.d ], [ %.01522.i.i.i.ph.i, %bb.e ], [ %.01522.i.i.i.i, %bb.g ], [ %.01522.i.i.i.i, %bb.h ]
  %.01721.i.i.i.i.lcssa39 = phi i8 [ %.01721.i.i.i.ph.i, %bb.d ], [ %.01721.i.i.i.ph.i, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %.lcssa36.a = phi i64 [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.x, %bb.g ], [ %i.x, %bb.h ] ; 2 uses
  %.019.i.i.i.i.i.i.i.i = phi i64 [ %.0.copyload5.i.i.i.i.i.i.i.i.peel, %bb.d ], [ %.0.copyload7.i.i.i.i.i.i.i.i.peel, %bb.e ], [ %.0.copyload7.i.i.i.i.i.i.i.i, %bb.h ], [ %.0.copyload5.i.i.i.i.i.i.i.i, %bb.g ]
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.peel, %bb.d ], [ %.0.copyload1.i.i.i.i.i.i.i.i.peel, %bb.e ], [ %.0.copyload7.i.i.i.i.i.i.i.i.peel, %bb.h ], [ %.0.copyload5.i.i.i.i.i.i.i.i.peel, %bb.g ]
  %i.aj = tail call noundef i64 @llvm.bswap.i64(i64 %.019.i.i.i.i.i.i.i.i)
  %i.ak = tail call noundef i64 @llvm.bswap.i64(i64 %.0.i.i.i.i.i.i.i.i)
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %.split47.thread.i.i.i.i, label %.thread45.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i: ; preds = %.peel.next, %bb.c, %.outer.i
  %.01522.i.i.i.i.lcssa = phi i64 [ %.01522.i.i.i.ph.i, %.outer.i ], [ %.01522.i.i.i.ph.i, %bb.c ], [ %.01522.i.i.i.i, %.peel.next ]
  %.01721.i.i.i.i.lcssa = phi i8 [ %.01721.i.i.i.ph.i, %.outer.i ], [ %.01721.i.i.i.ph.i, %bb.c ], [ 0, %.peel.next ] ; 2 uses
  %.lcssa35 = phi i64 [ %i.h, %.outer.i ], [ %i.h, %bb.c ], [ %i.x, %.peel.next ] ; 2 uses
  %.lcssa = phi ptr [ %i.i, %.outer.i ], [ %i.i, %bb.c ], [ %i.y, %.peel.next ]
  %i.am = tail call noundef i32 @_ZNK4absl12lts_202605264Cord11CompareImplERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %1), !noalias !4598 ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  %.not19.i.i.i.i = icmp eq i32 %i.am, 0
  %.mux.i.i.i = select i1 %.not19.i.i.i.i, i8 0, i8 %.01721.i.i.i.i.lcssa
  br i1 %i.an, label %.thread45.i.i.i.i, label %.split47.thread.i.i.i.i

.split47.thread.i.i.i.i:                          ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, %.loopexit, %.loopexit56
  %.01522.i.i.i.i46 = phi i64 [ %.01522.i.i.i.i.lcssa, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.01522.i.i.i.i.lcssa43, %.loopexit ], [ %.01522.i.i.i.i.lcssa44.a, %.loopexit56 ]
  %.01721.i.i.i.i42 = phi i8 [ %.01721.i.i.i.i.lcssa, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.01721.i.i.i.i.lcssa39, %.loopexit ], [ %.01721.i.i.i.i.lcssa40.a, %.loopexit56 ]
  %i.ao = phi i64 [ %.lcssa35, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.lcssa36.a, %.loopexit ], [ %.lcssa37.a, %.loopexit56 ]
  %i.ap = add nuw i64 %i.ao, 1
  br label %.thread45.i.i.i.i

.thread45.i.i.i.i:                                ; preds = %.split47.thread.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, %.loopexit, %.loopexit56
  %i.aq = phi i64 [ %.01522.i.i.i.i46, %.split47.thread.i.i.i.i ], [ %.lcssa36.a, %.loopexit ], [ %.lcssa35, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.lcssa37.a, %.loopexit56 ] ; 4 uses
  %i.ar = phi i8 [ %.01721.i.i.i.i42, %.split47.thread.i.i.i.i ], [ %.01721.i.i.i.i.lcssa39, %.loopexit ], [ %.mux.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.01721.i.i.i.i.lcssa40.a, %.loopexit56 ] ; 2 uses
  %i.as = phi i64 [ %i.ap, %.split47.thread.i.i.i.i ], [ %.023.i.i.i.ph.i, %.loopexit ], [ %.023.i.i.i.ph.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.023.i.i.i.ph.i, %.loopexit56 ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.as, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i, label %.outer.i, !llvm.loop !4601

.thread45.i.i.i.thread.i:                         ; preds = %bb.i
  %.not.i.i.i30.i = icmp eq i64 %.023.i.i.i.ph.i, %i.x
  br i1 %.not.i.i.i30.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit.loopexit.split.loop.exit, label %.peel.next, !llvm.loop !4602

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i: ; preds = %.thread45.i.i.i.i
  %i.at = icmp eq i8 %i.ar, 0
  br i1 %i.at, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit.loopexit.split.loop.exit, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i, %bb.b
  %i.au = phi i64 [ %i.aq, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i ], [ 0, %bb.b ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !23, !noalias !4598
  %.not.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i, label %bb.j, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 256
  %i.ay = and i64 %i.au, 255
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  br label %bb.b

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit.loopexit.split.loop.exit: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i, %.thread45.i.i.i.thread.i.peel, %.thread45.i.i.i.thread.i
  %.sink59.i.ph.in = phi i64 [ %.023.i.i.i.ph.i, %.thread45.i.i.i.thread.i ], [ %.023.i.i.i.ph.i, %.thread45.i.i.i.thread.i.peel ], [ %i.aq, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i ]
  %i.ba = trunc i64 %.sink59.i.ph.in to i32
  br label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit.loopexit.split.loop.exit
  %.sroa.03.0 = phi ptr [ %.sroa.02.0.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit.loopexit.split.loop.exit ], [ null, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i ]
  %.sroa.3.0 = phi i32 [ %i.ba, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISB_EERKS4_PSI_EELb1EEERKT_.exit.loopexit.split.loop.exit ], [ 0, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJSt4lessIS4_ESaIS4_ESt17integral_constantIiLi256EES8_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15set_params_implINS3_4CordEJSt4lessIS8_ESaIS8_ESt17integral_constantIiLi256EESC_IbLb1EEEEEEERKS8_PSI_EENS5_ISG_SJ_SK_EEEENS_15AssertionResultEPKcSP_RKT_RKT0_SP_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.295, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #37, !inline_history !349
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !41    ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #37, !inline_history !349
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.d
  %i.m = icmp eq ptr %1, null
  %i.n = load ptr, ptr %14, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br i1 %i.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.q = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.301, %.noexc15 ]
  %i.r = phi i64 [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.t = load ptr, ptr %14, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #37, !inline_history !350
  br label %bb.g

bb.f:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %14, align 8, !tbaa !41    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #37, !inline_history !350
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %.body

bb.g:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc23 unwind label %bb.ah

.noexc23:                                         ; preds = %bb.g
  %i.ac = load ptr, ptr %13, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @.str.296, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.i ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %.noexc23
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  %i.af = load ptr, ptr %13, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i21, label %bb.j, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22: ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #37, !inline_history !351
  br label %bb.j

bb.i:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i, %.noexc23
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %13, align 8, !tbaa !41   ; 3 uses
  %.not.i.i3.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i3.i18, label %_ZN7testing7MessageD2Ev.exit5.i20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19: ; preds = %bb.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #37, !inline_history !351
  br label %_ZN7testing7MessageD2Ev.exit5.i20

_ZN7testing7MessageD2Ev.exit5.i20:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %.body

bb.j:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc34 unwind label %bb.ah

.noexc34:                                         ; preds = %bb.j
  %i.ao = icmp eq ptr %5, null
  %i.ap = load ptr, ptr %12, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br i1 %i.ao, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26: ; preds = %.noexc34
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #37
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26, %.noexc34
  %i.as = phi ptr [ %5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ @.str.301, %.noexc34 ]
  %i.at = phi i64 [ %i.ar, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ 6, %.noexc34 ]
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.as, i64 noundef %i.at)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31
  %i.av = load ptr, ptr %12, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i32, label %bb.m, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i33

end_hunk_0
begin_hunk_1_@_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorINS3_10btree_nodeINS3_15map_params_implINS2_4CordES7_JSt4lessIS7_ESaISt4pairIKS7_S7_EESt17integral_constantIiLi256EESE_IbLb1EEEEEEERSC_PSC_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS3_4CordES8_JSt4lessIS8_ESaISt4pairIKS8_S8_EESt17integral_constantIiLi256EESF_IbLb1EEEEEEERSD_PSD_EEE5PrintERKSM_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106, !noalias !5874 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !5874 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23, !alias.scope !5874
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #36
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS3_4CordES8_JSt4lessIS8_ESaISt4pairIKS8_S8_EESt17integral_constantIiLi256EESF_IbLb1EEEEEEERSD_PSD_EEE5PrintERKSM_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !25
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !25
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #37
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !25
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIN4absl12lts_2026052618container_internal14btree_iteratorIKNS3_10btree_nodeINS3_15map_params_implINS2_4CordES7_JSt4lessIS7_ESaISt4pairIKS7_S7_EESt17integral_constantIiLi256EESE_IbLb1EEEEEEERKSC_PSK_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef 16, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINS3_4CordES8_JSt4lessIS8_ESaISt4pairIKS8_S8_EESt17integral_constantIiLi256EESF_IbLb1EEEEEEERKSD_PSL_EEE5PrintERKSO_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINS3_4CordES8_JSt4lessIS8_ESaISt4pairIKS8_S8_EESt17integral_constantIiLi256EESF_IbLb1EEEEEEERKSD_PSL_EEE5PrintERKSO_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5875)
  call void @llvm.experimental.noalias.scope.decl(metadata !5878)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !24, !alias.scope !5881
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !21, !alias.scope !5881
  store i8 0, ptr %i.b, align 8, !tbaa !23, !alias.scope !5881
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104, !noalias !5881 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !5881 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINS3_4CordES8_JSt4lessIS8_ESaISt4pairIKS8_S8_EESt17integral_constantIiLi256EESF_IbLb1EEEEEEERKSD_PSL_EEE5PrintERKSO_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106, !noalias !5881 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !18, !alias.scope !5881 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23, !alias.scope !5881
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #36
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINS3_4CordES8_JSt4lessIS8_ESaISt4pairIKS8_S8_EESt17integral_constantIiLi256EESF_IbLb1EEEEEEERKSD_PSL_EEE5PrintERKSO_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !25
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !25
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #37
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !25
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE13internal_findIS4_EENS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.02.0.in.i = phi ptr [ %0, %bb.a ], [ %i.az, %bb.j ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !tbaa !5671, !noalias !5882 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23, !noalias !5882 ; 2 uses
  %.not20.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not20.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread45.i.i.i.i, %.lr.ph.i.i.i.i
  %.023.i.i.i.ph.i = phi i64 [ %i.as, %.thread45.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ] ; 9 uses
  %.01522.i.i.i.ph.i = phi i64 [ %i.aq, %.thread45.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i ] ; 6 uses
  %.01721.i.i.i.ph.i = phi i8 [ %i.ar, %.thread45.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.g = add i64 %.01522.i.i.i.ph.i, %.023.i.i.i.ph.i
  %i.h = lshr i64 %i.g, 1                         ; 8 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h ; 5 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23, !noalias !5882 ; 2 uses
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.outer.i
  %i.l = load i8, ptr %1, align 8, !tbaa !23, !noalias !5882 ; 2 uses
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.0.copyload5.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.n, align 1, !noalias !5882 ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.a, align 1, !noalias !5882 ; 2 uses
  %i.o = icmp eq i64 %.0.copyload5.i.i.i.i.i.i.i.i.peel, %.0.copyload.i.i.i.i.i.i.i.i.peel
  br i1 %i.o, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload7.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.p, align 1, !noalias !5882 ; 4 uses
  %.0.copyload1.i.i.i.i.i.i.i.i.peel = load i64, ptr %i.b, align 8, !noalias !5882 ; 2 uses
  %i.q = icmp eq i64 %.0.copyload7.i.i.i.i.i.i.i.i.peel, %.0.copyload1.i.i.i.i.i.i.i.i.peel
  br i1 %i.q, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.r = sext i8 %i.j to i64
  %i.s = lshr exact i64 %i.r, 1                   ; 3 uses
  %i.t = sext i8 %i.l to i64
  %i.u = lshr exact i64 %i.t, 1                   ; 2 uses
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %.thread45.i.i.i.thread.i.peel, label %.loopexit56

.thread45.i.i.i.thread.i.peel:                    ; preds = %bb.f
  %.not.i.i.i30.i.peel = icmp eq i64 %.023.i.i.i.ph.i, %i.h
  br i1 %.not.i.i.i30.i.peel, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit.loopexit.split.loop.exit, label %.peel.next

.peel.next:                                       ; preds = %.thread45.i.i.i.thread.i.peel, %.thread45.i.i.i.thread.i
  %.01522.i.i.i.i = phi i64 [ %i.x, %.thread45.i.i.i.thread.i ], [ %i.h, %.thread45.i.i.i.thread.i.peel ] ; 5 uses
  %i.w = add i64 %.01522.i.i.i.i, %.023.i.i.i.ph.i
  %i.x = lshr i64 %i.w, 1                         ; 7 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.x ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23, !noalias !5882 ; 2 uses
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.0.copyload5.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 1, !noalias !5882 ; 2 uses
  %i.ac = icmp eq i64 %.0.copyload5.i.i.i.i.i.i.i.i, %.0.copyload5.i.i.i.i.i.i.i.i.peel
  br i1 %i.ac, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload7.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 1, !noalias !5882 ; 2 uses
  %i.ae = icmp eq i64 %.0.copyload7.i.i.i.i.i.i.i.i, %.0.copyload7.i.i.i.i.i.i.i.i.peel
  br i1 %i.ae, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.af = sext i8 %i.z to i64
  %i.ag = lshr exact i64 %i.af, 1                 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.s
  br i1 %i.ah, label %.thread45.i.i.i.thread.i, label %.loopexit56

.loopexit56:                                      ; preds = %bb.i, %bb.f
  %.lcssa49 = phi i64 [ %i.s, %bb.f ], [ %i.ag, %bb.i ]
  %.01522.i.i.i.i.lcssa44.a = phi i64 [ %.01522.i.i.i.ph.i, %bb.f ], [ %.01522.i.i.i.i, %bb.i ]
  %.01721.i.i.i.i.lcssa40.a = phi i8 [ %.01721.i.i.i.ph.i, %bb.f ], [ 0, %bb.i ] ; 2 uses
  %.lcssa37.a = phi i64 [ %i.h, %bb.f ], [ %i.x, %bb.i ] ; 2 uses
  %i.ai = icmp samesign ult i64 %.lcssa49, %i.u
  br i1 %i.ai, label %.split47.thread.i.i.i.i, label %.thread45.i.i.i.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.01522.i.i.i.i.lcssa43 = phi i64 [ %.01522.i.i.i.ph.i, %bb.d ], [ %.01522.i.i.i.ph.i, %bb.e ], [ %.01522.i.i.i.i, %bb.g ], [ %.01522.i.i.i.i, %bb.h ]
  %.01721.i.i.i.i.lcssa39 = phi i8 [ %.01721.i.i.i.ph.i, %bb.d ], [ %.01721.i.i.i.ph.i, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %.lcssa36.a = phi i64 [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.x, %bb.g ], [ %i.x, %bb.h ] ; 2 uses
  %.019.i.i.i.i.i.i.i.i = phi i64 [ %.0.copyload5.i.i.i.i.i.i.i.i.peel, %bb.d ], [ %.0.copyload7.i.i.i.i.i.i.i.i.peel, %bb.e ], [ %.0.copyload7.i.i.i.i.i.i.i.i, %bb.h ], [ %.0.copyload5.i.i.i.i.i.i.i.i, %bb.g ]
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.peel, %bb.d ], [ %.0.copyload1.i.i.i.i.i.i.i.i.peel, %bb.e ], [ %.0.copyload7.i.i.i.i.i.i.i.i.peel, %bb.h ], [ %.0.copyload5.i.i.i.i.i.i.i.i.peel, %bb.g ]
  %i.aj = tail call noundef i64 @llvm.bswap.i64(i64 %.019.i.i.i.i.i.i.i.i)
  %i.ak = tail call noundef i64 @llvm.bswap.i64(i64 %.0.i.i.i.i.i.i.i.i)
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %.split47.thread.i.i.i.i, label %.thread45.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i: ; preds = %.peel.next, %bb.c, %.outer.i
  %.01522.i.i.i.i.lcssa = phi i64 [ %.01522.i.i.i.ph.i, %.outer.i ], [ %.01522.i.i.i.ph.i, %bb.c ], [ %.01522.i.i.i.i, %.peel.next ]
  %.01721.i.i.i.i.lcssa = phi i8 [ %.01721.i.i.i.ph.i, %.outer.i ], [ %.01721.i.i.i.ph.i, %bb.c ], [ 0, %.peel.next ] ; 2 uses
  %.lcssa35 = phi i64 [ %i.h, %.outer.i ], [ %i.h, %bb.c ], [ %i.x, %.peel.next ] ; 2 uses
  %.lcssa = phi ptr [ %i.i, %.outer.i ], [ %i.i, %bb.c ], [ %i.y, %.peel.next ]
  %i.am = tail call noundef i32 @_ZNK4absl12lts_202605264Cord11CompareImplERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %1), !noalias !5882 ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  %.not19.i.i.i.i = icmp eq i32 %i.am, 0
  %.mux.i.i.i = select i1 %.not19.i.i.i.i, i8 0, i8 %.01721.i.i.i.i.lcssa
  br i1 %i.an, label %.thread45.i.i.i.i, label %.split47.thread.i.i.i.i

.split47.thread.i.i.i.i:                          ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, %.loopexit, %.loopexit56
  %.01522.i.i.i.i46 = phi i64 [ %.01522.i.i.i.i.lcssa, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.01522.i.i.i.i.lcssa43, %.loopexit ], [ %.01522.i.i.i.i.lcssa44.a, %.loopexit56 ]
  %.01721.i.i.i.i42 = phi i8 [ %.01721.i.i.i.i.lcssa, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.01721.i.i.i.i.lcssa39, %.loopexit ], [ %.01721.i.i.i.i.lcssa40.a, %.loopexit56 ]
  %i.ao = phi i64 [ %.lcssa35, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.lcssa36.a, %.loopexit ], [ %.lcssa37.a, %.loopexit56 ]
  %i.ap = add nuw i64 %i.ao, 1
  br label %.thread45.i.i.i.i

.thread45.i.i.i.i:                                ; preds = %.split47.thread.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, %.loopexit, %.loopexit56
  %i.aq = phi i64 [ %.01522.i.i.i.i46, %.split47.thread.i.i.i.i ], [ %.lcssa36.a, %.loopexit ], [ %.lcssa35, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.lcssa37.a, %.loopexit56 ] ; 4 uses
  %i.ar = phi i8 [ %.01721.i.i.i.i42, %.split47.thread.i.i.i.i ], [ %.01721.i.i.i.i.lcssa39, %.loopexit ], [ %.mux.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.01721.i.i.i.i.lcssa40.a, %.loopexit56 ] ; 2 uses
  %i.as = phi i64 [ %i.ap, %.split47.thread.i.i.i.i ], [ %.023.i.i.i.ph.i, %.loopexit ], [ %.023.i.i.i.ph.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i ], [ %.023.i.i.i.ph.i, %.loopexit56 ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.as, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i, label %.outer.i, !llvm.loop !5885

.thread45.i.i.i.thread.i:                         ; preds = %bb.i
  %.not.i.i.i30.i = icmp eq i64 %.023.i.i.i.ph.i, %i.x
  br i1 %.not.i.i.i30.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit.loopexit.split.loop.exit, label %.peel.next, !llvm.loop !5886

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i: ; preds = %.thread45.i.i.i.i
  %i.at = icmp eq i8 %i.ar, 0
  br i1 %i.at, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit.loopexit.split.loop.exit, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i, %bb.b
  %i.au = phi i64 [ %i.aq, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i ], [ 0, %bb.b ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !23, !noalias !5882
  %.not.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i, label %bb.j, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 240
  %i.ay = and i64 %i.au, 255
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  br label %bb.b

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit.loopexit.split.loop.exit: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i, %.thread45.i.i.i.thread.i.peel, %.thread45.i.i.i.thread.i
  %.sink59.i.ph.in = phi i64 [ %.023.i.i.i.ph.i, %.thread45.i.i.i.thread.i ], [ %.023.i.i.i.ph.i, %.thread45.i.i.i.thread.i.peel ], [ %i.aq, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.i ]
  %i.ba = trunc i64 %.sink59.i.ph.in to i32
  br label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit.loopexit.split.loop.exit
  %.sroa.03.0 = phi ptr [ %.sroa.02.0.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit.loopexit.split.loop.exit ], [ null, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i ]
  %.sroa.3.0 = phi i32 [ %i.ba, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE15internal_locateIS4_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISE_EERS9_PS9_EELb1EEERKT_.exit.loopexit.split.loop.exit ], [ 0, %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JSt4lessIS4_ESaISt4pairIKS4_S4_EESt17integral_constantIiLi256EESB_IbLb1EEEEEE11lower_boundIS4_EENS1_12SearchResultImLb1EEERKT_RKNS1_22StringBtreeDefaultLessE.exit.thread.i ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorIKNS4_10btree_nodeINS4_15map_params_implINS3_4CordES8_JSt4lessIS8_ESaISt4pairIKS8_S8_EESt17integral_constantIiLi256EESF_IbLb1EEEEEEERKSD_PSL_EENS5_ISJ_RSD_PSD_EEEENS_15AssertionResultEPKcSU_RKT_RKT0_SU_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.295, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #37, !inline_history !349
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !41    ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #37, !inline_history !349
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.d
  %i.m = icmp eq ptr %1, null
  %i.n = load ptr, ptr %14, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br i1 %i.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.q = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.301, %.noexc15 ]
  %i.r = phi i64 [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.t = load ptr, ptr %14, align 8, !tbaa !41    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #37, !inline_history !350
  br label %bb.g

bb.f:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %14, align 8, !tbaa !41    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #37, !inline_history !350
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %.body

bb.g:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc23 unwind label %bb.ah

.noexc23:                                         ; preds = %bb.g
  %i.ac = load ptr, ptr %13, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @.str.296, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.i ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %.noexc23
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  %i.af = load ptr, ptr %13, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i21, label %bb.j, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22: ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #37, !inline_history !351
  br label %bb.j

bb.i:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i, %.noexc23
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %13, align 8, !tbaa !41   ; 3 uses
  %.not.i.i3.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i3.i18, label %_ZN7testing7MessageD2Ev.exit5.i20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19: ; preds = %bb.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #37, !inline_history !351
  br label %_ZN7testing7MessageD2Ev.exit5.i20

_ZN7testing7MessageD2Ev.exit5.i20:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %.body

bb.j:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc34 unwind label %bb.ah

.noexc34:                                         ; preds = %bb.j
  %i.ao = icmp eq ptr %5, null
  %i.ap = load ptr, ptr %12, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br i1 %i.ao, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26: ; preds = %.noexc34
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #37
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26, %.noexc34
  %i.as = phi ptr [ %5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ @.str.301, %.noexc34 ]
  %i.at = phi i64 [ %i.ar, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ 6, %.noexc34 ]
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.as, i64 noundef %i.at)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31
  %i.av = load ptr, ptr %12, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i32, label %bb.m, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i33

end_hunk_1
