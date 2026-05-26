inline.NumInlined: 4983
inline.NumDeleted: 1990
begin_hunk_0_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  %i.gy = icmp eq i32 %i.gx, 10
  br i1 %i.gy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.noexc64
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.38, i64 noundef 4)
          to label %.thread unwind label %.loopexit.split-lp.loopexit

.thread:                                          ; preds = %bb.az
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !822
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.ba:                                            ; preds = %.noexc64
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteSingularINS1_17UnparseProto3TypeEJEEEN4absl12lts_202505126StatusERNS1_10JsonWriterENT_5FieldEDpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.dn)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit, !inline_history !818

bb.bb:                                            ; preds = %.noexc63
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteSingularINS1_17UnparseProto3TypeEJRKNS1_14UntypedMessageEEEEN4absl12lts_202505126StatusERNS1_10JsonWriterENT_5FieldEDpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.dn, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit, !inline_history !818

.loopexit:                                        ; preds = %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc99.invoke, %bb.ak, %bb.al, %.noexc98, %.noexc97, %.noexc51, %.noexc87, %.noexc86, %.noexc85, %.noexc55, %.noexc79, %.noexc78, %bb.ar, %bb.as, %bb.at, %bb.ay, %bb.az, %bb.bb, %bb.ba, %bb.ax, %bb.aw, %bb.aa
  %lpad.loopexit177 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aq
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit.thread, %bb.bb, %bb.ba, %bb.ax, %bb.aw
  %.pr162.pr = load i64, ptr %0, align 8, !tbaa !22
  %i.gz = icmp eq i64 %.pr162.pr, 1
  br i1 %i.gz, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %.thread256, %bb.bc, %.thread
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0125.0205, i64 8 ; 2 uses
  %.not176 = icmp eq ptr %i.ha, %.sroa.12.1
  br i1 %.not176, label %.critedge37, label %.noexc45

.critedge37:                                      ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.b, %._crit_edge
  %.sroa.19.0.lcssa233244 = phi ptr [ null, %bb.b ], [ %.sroa.19.1, %._crit_edge ], [ %.sroa.19.1, %_ZN4absl12lts_202505126StatusD2Ev.exit ]
  %.sroa.0132.0.lcssa235242 = phi ptr [ null, %bb.b ], [ %.sroa.0132.1, %._crit_edge ], [ %.sroa.0132.1, %_ZN4absl12lts_202505126StatusD2Ev.exit ]
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !825
  br label %.critedge

.critedge:                                        ; preds = %bb.bc, %.critedge37
  %.sroa.19.0.lcssa233243 = phi ptr [ %.sroa.19.0.lcssa233244, %.critedge37 ], [ %.sroa.19.1, %bb.bc ]
  %.sroa.0132.0.lcssa235241 = phi ptr [ %.sroa.0132.0.lcssa235242, %.critedge37 ], [ %.sroa.0132.1, %bb.bc ] ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %.sroa.0132.0.lcssa235241, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %.critedge
  %i.hb = ptrtoint ptr %.sroa.19.0.lcssa233243 to i64
  %i.hc = ptrtoint ptr %.sroa.0132.0.lcssa235241 to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0.lcssa235241, i64 noundef %i.hd) #30
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit: ; preds = %.critedge, %bb.bd
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit181, %.loopexit.split-lp182, %bb.ac, %bb.t
  %.sroa.19.0196 = phi ptr [ %.sroa.12.0199, %.loopexit.split-lp182 ], [ %.sroa.19.1, %bb.ac ], [ %.sroa.19.0198, %bb.t ], [ %.sroa.19.0198.lcssa208, %.loopexit181 ], [ %.sroa.19.1, %.loopexit.split-lp.loopexit ], [ %.sroa.19.1, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.19.1, %.loopexit ]
  %.sroa.0132.0188 = phi ptr [ %.sroa.0132.0200, %.loopexit.split-lp182 ], [ %.sroa.0132.1, %bb.ac ], [ %.sroa.0132.0200, %bb.t ], [ %.sroa.0132.0200, %.loopexit181 ], [ %.sroa.0132.1, %.loopexit.split-lp.loopexit ], [ %.sroa.0132.1, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0132.1, %.loopexit ] ; 3 uses
  %.pn34.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp182 ], [ %i.dx, %bb.ac ], [ %i.cq, %bb.t ], [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit177, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i70 = icmp eq ptr %.sroa.0132.0188, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit71, label %.body.thread168

.body.thread168:                                  ; preds = %.body
  %i.he = ptrtoint ptr %.sroa.19.0196 to i64
  %i.hf = ptrtoint ptr %.sroa.0132.0188 to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0188, i64 noundef %i.hg) #30
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit71

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit71: ; preds = %.body, %.body.thread168
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !828
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  %.fr = freeze i8 %i.az
  switch i8 %.fr, label %.thread [
    i8 7, label %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 16, label %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !450 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !452
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 5
  br label %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bg, %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #23

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldEi(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK6google8protobuf13json_internal14UntypedMessage5CountEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::protobuf::json_internal::SizeVisitor", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !405  ; 4 uses
  %i.c = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ult i64 %i.b, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3
  %i.i = icmp eq i32 %i.h, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.g, 1
  %spec.select.i.i.i = select i1 %i.i, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = zext i32 %1 to i64
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.n = mul i64 %i.m, -2543921745674291987
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !409, !noalias !832
  %i.r = and i64 %i.q, 65535
  %i.s = lshr i64 %i.o, 7
  %i.t = xor i64 %i.r, %i.s
  %i.u = trunc i64 %i.o to i8
  %i.v = and i8 %i.u, 127
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !21 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.b    ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1, !tbaa !21 ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = icmp eq i32 %i.aj, %1
  br i1 %i.ak, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i16 %.sroa.017.046.i.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not43.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.al, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ai, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.au = extractvalue { ptr, ptr } %.pn.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !424 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !463 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ay, -1
  br i1 %.not.i.i, label %bb.i, label %_ZSt5visitIN6google8protobuf13json_internal11SizeVisitorEJRSt7variantIJNS2_14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St6vectorIS6_SaIS6_EESD_IiSaIiEESD_IjSaIjEESD_IlSaIlEESD_ImSaImEESD_IfSaIfEESD_IdSaIdEESD_ISC_SaISC_EESD_IS5_SaIS5_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS11_EEEEE4typeEE4typeEOS1A_EEEE4typeEOSZ_DpOS11_.exit

bb.i:                                             ; preds = %bb.h
  %i.az = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.az, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @.str.70, ptr %i.ba, align 8, !tbaa !835
  tail call void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #31
  unreachable

_ZSt5visitIN6google8protobuf13json_internal11SizeVisitorEJRSt7variantIJNS2_14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St6vectorIS6_SaIS6_EESD_IiSaIiEESD_IjSaIjEESD_IlSaIlEESD_ImSaImEESD_IfSaIfEESD_IdSaIdEESD_ISC_SaISC_EESD_IS5_SaIS5_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS11_EEEEE4typeEE4typeEOS1A_EEEE4typeEOSZ_DpOS11_.exit: ; preds = %bb.h
  %i.bb = sext i8 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEEON6google8protobuf13json_internal11SizeVisitorEJRSt7variantIJNS6_14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St6vectorISB_SaISB_EESI_IiSaIiEESI_IjSaIjEESI_IlSaIlEESI_ImSaImEESI_IfSaIfEESI_IdSaIdEESI_ISH_SaISH_EESI_ISA_SaISA_EEEEEE9_S_vtableE, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !465
  %i.be = call noundef i64 %i.bd(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(41) %i.aw), !inline_history !838
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt5visitIN6google8protobuf13json_internal11SizeVisitorEJRSt7variantIJNS2_14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St6vectorIS6_SaIS6_EESD_IiSaIiEESD_IjSaIjEESD_IlSaIlEESD_ImSaImEESD_IfSaIfEESD_IdSaIdEESD_ISC_SaISC_EESD_IS5_SaIS5_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS11_EEEEE4typeEE4typeEOS1A_EEEE4typeEOSZ_DpOS11_.exit
  %.0 = phi i64 [ %i.be, %_ZSt5visitIN6google8protobuf13json_internal11SizeVisitorEJRSt7variantIJNS2_14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St6vectorIS6_SaIS6_EESD_IiSaIiEESD_IjSaIjEESD_IlSaIlEESD_ImSaImEESD_IfSaIfEESD_IdSaIdEESD_ISC_SaISC_EESD_IS5_SaIS5_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS11_EEEEE4typeEE4typeEOS1A_EEEE4typeEOSZ_DpOS11_.exit ], [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ]
  ret i64 %.0
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13json_internal10Proto3Type16EnumNameByNumberB5cxx11EPKNS1_12ResolverPool5FieldEi:bb.a
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.w
  %.pn26 = phi { ptr, i32 } [ %i.be, %.body ], [ %i.bp, %bb.w ] ; 2 uses
  %i.bq = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.x
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !21
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.v
  %.pn26.pn = phi { ptr, i32 } [ %i.bo, %bb.v ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn26, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ab

bb.y:                                             ; preds = %bb.p, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load i64, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.bw = trunc i64 %i.bv to i1
  br i1 %i.bw, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool4EnumEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = inttoptr i64 %i.bv to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bx)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool4EnumEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #29
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool4EnumEED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.ab:                                            ; preds = %bb.o, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.e
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.g, %bb.e ], [ %i.z, %bb.k ], [ %i.as, %bb.o ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool4EnumEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn26.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !22     ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !22
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !22
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESF_.exit, !prof !414

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESF_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #28
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESF_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIfEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !854
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifIfJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  %.fr = freeze i8 %i.az
  switch i8 %.fr, label %.thread [
    i8 5, label %_ZSt6get_ifIfJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 14, label %_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !442 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !844
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  br label %_ZSt6get_ifIfJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifIfJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bg, %_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorIfSaIfEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES2_S0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIdEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !857
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifIdJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  %.fr = freeze i8 %i.az
  switch i8 %.fr, label %.thread [
    i8 6, label %_ZSt6get_ifIdJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 15, label %_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !446 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !845
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  br label %_ZSt6get_ifIdJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifIdJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bg, %_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorIdSaIdEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES2_S0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIlEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !860
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifIlJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  %.fr = freeze i8 %i.az
  switch i8 %.fr, label %.thread [
    i8 3, label %_ZSt6get_ifIlJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 12, label %_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !435 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !842
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  br label %_ZSt6get_ifIlJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifIlJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bg, %_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorIlSaIlEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES2_S0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetImEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !863
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifImJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  %.fr = freeze i8 %i.az
  switch i8 %.fr, label %.thread [
    i8 4, label %_ZSt6get_ifImJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 13, label %_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !439 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !843
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  br label %_ZSt6get_ifImJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifImJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bg, %_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorImSaImEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES2_S0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIiEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !866
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifIiJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  %.fr = freeze i8 %i.az
  switch i8 %.fr, label %.thread [
    i8 1, label %_ZSt6get_ifIiJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 10, label %_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !429 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !840
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  br label %_ZSt6get_ifIiJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifIiJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bg, %_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorIiSaIiEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES2_S0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIjEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !869
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifIjJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  %.fr = freeze i8 %i.az
  switch i8 %.fr, label %.thread [
    i8 2, label %_ZSt6get_ifIjJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 11, label %_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !432 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !841
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  br label %_ZSt6get_ifIjJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifIjJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bg, %_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorIjSaIjEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S0_IS7_SaIS7_EES0_IiSaIiEES2_S0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS6_SaIS6_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetINS2_4BoolEEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !872
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessage4BoolEJS4_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  %.fr = freeze i8 %i.az
  switch i8 %.fr, label %.thread [
    i8 0, label %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessage4BoolEJS4_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 9, label %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !426 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !839
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  br label %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessage4BoolEJS4_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessage4BoolEJS4_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bf, %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessage4BoolESaIS5_EEJS5_ijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S7_S0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES0_IS4_SaIS4_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIS2_EEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !875
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  %.fr = freeze i8 %i.az
  switch i8 %.fr, label %.thread [
    i8 8, label %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 17, label %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !455 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !458
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 40
  br label %_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifIN6google8protobuf13json_internal14UntypedMessageEJNS3_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St6vectorIS4_SaIS4_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_ISA_SaISA_EESB_IS3_SaIS3_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bg, %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorIN6google8protobuf13json_internal14UntypedMessageESaIS4_EEJNS4_4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_S0_IS7_SaIS7_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES0_ISD_SaISD_EES6_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf13json_internal10Proto3Type13WithFieldTypeIZNS1_12_GLOBAL__N_110WriteValueINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSC_4DescEbEUlRKNS1_12ResolverPool7MessageEE_EES9_PKNSJ_5FieldESC_(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0, ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK6google8protobuf13json_internal12ResolverPool5Field11MessageTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = load i64, ptr %4, align 8, !tbaa !22     ; 5 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !22
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pre13.pre = load i64, ptr %4, align 8, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %.invoke, %.noexc10, %.noexc8
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %.pre13 = phi i64 [ %i.a, %bb.a ], [ %.pre13.pre, %bb.b ] ; 2 uses
  %i.f = icmp eq i64 %i.a, 1
  br i1 %i.f, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.d
  %i.g = icmp eq i64 %.pre13, 1
  br i1 %i.g, label %bb.e, label %.invoke, !prof !50

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.h = load i64, ptr %3, align 8, !tbaa !22
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %.noexc8, label %.invoke, !prof !50

.invoke:                                          ; preds = %bb.e, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.j = phi ptr [ %4, %_ZN4absl12lts_202505126StatusD2Ev.exit ], [ %3, %bb.e ]
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #31
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

.noexc8:                                          ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !767, !noalias !878
  %i.o = invoke noundef ptr @_ZN6google8protobuf13json_internal10Proto3Type13MustHaveFieldERKNS1_12ResolverPool7MessageEiNS1_12JsonLocation14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %i.l, i32 noundef 1)
          to label %.noexc10 unwind label %bb.c, !inline_history !881

.noexc10:                                         ; preds = %.noexc8
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_18WriteMapINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgENSA_5FieldE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef %i.o)
          to label %.noexc10..critedge_crit_edge unwind label %bb.c, !inline_history !881

.noexc10..critedge_crit_edge:                     ; preds = %.noexc10
  %.pre = load i64, ptr %4, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %.noexc10..critedge_crit_edge, %bb.d
  %i.p = phi i64 [ %.pre, %.noexc10..critedge_crit_edge ], [ %.pre13, %bb.d ] ; 2 uses
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.r = inttoptr i64 %i.p to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #29
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf13json_internal10Proto3Type13WithFieldTypeIZNS1_12_GLOBAL__N_110WriteValueINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSC_4DescEbEUlRKNS1_12ResolverPool7MessageEE0_EES9_PKNSJ_5FieldESC_(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0, ptr noundef nonnull %1, ptr nonnull %2, ptr nonnull %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK6google8protobuf13json_internal12ResolverPool5Field11MessageTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = load i64, ptr %4, align 8, !tbaa !22     ; 5 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !22
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pre13.pre = load i64, ptr %4, align 8, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %.invoke, %.noexc10, %.noexc8
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal12ResolverPool7MessageEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %.pre13 = phi i64 [ %i.a, %bb.a ], [ %.pre13.pre, %bb.b ] ; 2 uses
  %i.f = icmp eq i64 %i.a, 1
  br i1 %i.f, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.d
  %i.g = icmp eq i64 %.pre13, 1
  br i1 %i.g, label %bb.e, label %.invoke, !prof !50

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.h = load i64, ptr %3, align 8, !tbaa !22
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %.noexc8, label %.invoke, !prof !50

.invoke:                                          ; preds = %bb.e, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.j = phi ptr [ %4, %_ZN4absl12lts_202505126StatusD2Ev.exit ], [ %3, %bb.e ]
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #31
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

.noexc8:                                          ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !224
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !767, !noalias !882
  %i.o = invoke noundef ptr @_ZN6google8protobuf13json_internal10Proto3Type13MustHaveFieldERKNS1_12ResolverPool7MessageEiNS1_12JsonLocation14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %i.l, i32 noundef 1)
          to label %.noexc10 unwind label %bb.c, !inline_history !885

.noexc10:                                         ; preds = %.noexc8
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteRepeatedINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgENSA_5FieldE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef %i.o)
          to label %.noexc10..critedge_crit_edge unwind label %bb.c, !inline_history !885

.noexc10..critedge_crit_edge:                     ; preds = %.noexc10
  %.pre = load i64, ptr %4, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %.noexc10..critedge_crit_edge, %bb.d
end_hunk_1
