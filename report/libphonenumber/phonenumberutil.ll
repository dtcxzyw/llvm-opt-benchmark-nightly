Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumberutil?download=true
inline.NumInlined: 4537
inline.NumDeleted: 1449
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4i18n12phonenumbers12_GLOBAL__N_128GetSupportedTypesForMetadataERKNS0_13PhoneMetadataEPSt3setINS0_15PhoneNumberUtil15PhoneNumberTypeESt4lessIS7_ESaIS7_EE:bb.a

bb.b:                                             ; preds = %_ZNSt3setIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt3setIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  %.06 = phi i32 [ 0, %bb.a ], [ %i.ag, %_ZNSt3setIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeESt4lessIS3_ESaIS3_EE6insertERKS3_.exit ] ; 6 uses
  switch i32 %.06, label %bb.m [
    i32 11, label %_ZNSt3setIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
    i32 2, label %_ZNSt3setIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
    i32 4, label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit
    i32 3, label %bb.d
    i32 1, label %bb.e
    i32 0, label %bb.f
    i32 10, label %bb.l
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

bb.f:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

bb.g:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

bb.h:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

bb.i:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

bb.j:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

bb.k:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

bb.l:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

bb.m:                                             ; preds = %bb.c
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit

_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.sink.i = phi i64 [ 136, %bb.m ], [ 232, %bb.l ], [ 216, %bb.k ], [ 200, %bb.j ], [ 184, %bb.i ], [ 192, %bb.h ], [ 176, %bb.g ], [ 144, %bb.f ], [ 152, %bb.e ], [ 160, %bb.d ], [ 168, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.f, null
  %i.g = select i1 %.not.i.i21.i, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !127  ; 2 uses
  %i.j = and i32 %i.i, 2
  %.not.i = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val.i = load i32, ptr %i.k, align 8
  %.not.i.i = icmp eq i32 %.val.i, 1
  %or.cond.i = select i1 %.not.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit.thread

_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit: ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val3.i = load ptr, ptr %i.l, align 8
  %i.m = load i32, ptr %.val3.i, align 4, !tbaa !127
  %i.n = icmp ne i32 %i.m, -1
  %i.o = trunc i32 %i.i to i1
  %spec.select.i = or i1 %i.n, %i.o
  br i1 %spec.select.i, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit.thread, label %_ZNSt3setIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit.thread: ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNumberDescByTypeERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE.exit, %_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit
  %.02022.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit.thread, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit.thread ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !302  ; 2 uses
  %i.r = icmp slt i32 %.06, %i.q                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.r, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !299

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.r, label %._crit_edge.thread.i.i.i, label %bb.o

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit.thread
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.b, %_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit.thread ] ; 4 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.t = icmp eq ptr %.019.lcssa29.i.i.i, %i.s
  br i1 %i.t, label %select.unfold.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #36
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !302
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %i.v = phi i32 [ %.pre.i.i, %bb.n ], [ %i.q, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.n ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.w = icmp slt i32 %i.v, %.06
  br i1 %i.w, label %select.unfold.i.i, label %_ZNSt3setIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

select.unfold.i.i:                                ; preds = %bb.o, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.o ] ; 3 uses
  %i.x = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.b
  br i1 %i.x, label %_ZNSt8_Rb_treeIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !302
  %i.aa = icmp slt i32 %.06, %i.z
  br label %_ZNSt8_Rb_treeIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i: ; preds = %bb.p, %select.unfold.i.i
  %i.ab = phi i1 [ %i.aa, %bb.p ], [ true, %select.unfold.i.i ]
  %i.ac = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i32 %.06, ptr %i.ad, align 4, !tbaa !302
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #32
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !104
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.d, align 8, !tbaa !104
  br label %_ZNSt3setIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

_ZNSt3setIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeESt4lessIS3_ESaIS3_EE6insertERKS3_.exit: ; preds = %_ZNSt8_Rb_treeIN4i18n12phonenumbers15PhoneNumberUtil15PhoneNumberTypeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit.i.i, %bb.o, %bb.c, %bb.c, %_ZN4i18n12phonenumbers12_GLOBAL__N_111DescHasDataERKNS0_15PhoneNumberDescE.exit
  %i.ag = add nuw nsw i32 %.06, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, 12
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !300
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers15PhoneNumberUtil32GetSupportedTypesForNonGeoEntityEiPSt3setINS1_15PhoneNumberTypeESt4lessIS3_ESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.i18n::phonenumbers::LoggerHandler", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 5 uses
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 1, i32 1)
  %i.d = sext i32 %1 to i64
  %i.e = add i64 %i.d, ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 11376068507788127593  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g                      ; 2 uses
  %i.j = trunc i128 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !155  ; 2 uses
  %i.m = lshr i64 %i.j, 7
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = lshr i64 %i.n, 12
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i128 %i.i to i8
  %i.r = and i8 %i.q, 127
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn.i.i.i = phi i64 [ %i.p, %bb.a ], [ %i.ao, %bb.d ]
  %.sroa.12.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.an, %bb.d ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i.i.i, %i.l     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.6.0.i.i.i
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !92 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.t, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not43.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not43.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %i.aa = zext i16 %i.z to i32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %.sroa.014.044.i.i.i = phi i32 [ %i.ak, %bb.c ], [ %i.aa, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.044.i.i.i, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add i64 %.sroa.6.0.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.l                     ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !160 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !127
  %i.ai = icmp eq i32 %i.ah, %1
  br i1 %i.ai, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i, label %bb.c, !prof !169

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = add nsw i32 %.sroa.014.044.i.i.i, -1
  %i.ak = and i32 %i.aj, %.sroa.014.044.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.al = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.am = bitcast <16 x i1> %i.al to i16
  %.not39.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not39.i.i.i, label %bb.d, label %.loopexit, !prof !168

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.an = add i64 %.sroa.12.0.i.i.i, 16           ; 2 uses
  %i.ao = add i64 %i.an, %.sroa.6.0.i.i.i
  br label %bb.b, !llvm.loop !11

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ap = icmp eq ptr %i.c, null
  br i1 %i.ap, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !157
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.o, label %.critedge.i.i.i.i.i, !prof !169

.critedge.i.i.i.i.i:                              ; preds = %bb.e
  tail call void @llvm.trap() #33
  unreachable

.loopexit:                                        ; preds = %._crit_edge.i.i.i, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.at = load ptr, ptr @_ZN4i18n12phonenumbers6Logger5impl_E, align 8, !tbaa !48, !noalias !305 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !50, !noalias !305
  %i.aw = icmp slt i32 %i.av, 3
  br i1 %i.aw, label %_ZN4i18n12phonenumbers3LOGEi.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !47, !noalias !305
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !305
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(12) %i.at), !noalias !305, !inline_history !0
  br label %_ZN4i18n12phonenumbers3LOGEi.exit

_ZN4i18n12phonenumbers3LOGEi.exit:                ; preds = %.loopexit, %bb.f
  %storemerge.i = phi ptr [ %i.at, %bb.f ], [ null, %.loopexit ]
  store ptr %storemerge.i, ptr %5, align 8, !tbaa !89, !alias.scope !305
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA53_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(53) @.str.2)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZN4i18n12phonenumbers3LOGEi.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA18_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 1 dereferenceable(18) @.str.3)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !89 ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN4i18n12phonenumbers15ConvertToStringIiE6DoWorkB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %1)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(12) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.bg = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !92
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit

bb.k:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.k
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !92
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.body

_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.h
  %i.br = load ptr, ptr %5, align 8, !tbaa !89    ; 3 uses
  %.not.i5 = icmp eq ptr %i.br, null
  br i1 %.not.i5, label %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit, label %._crit_edge.i.i.i6

._crit_edge.i.i.i6:                               ; preds = %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !91
  store i8 10, ptr %i.bs, align 8, !tbaa !92
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.bt, align 8, !tbaa !94
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.bu, align 1, !tbaa !92
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(12) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i6
  %i.by = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bs
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.l
  %i.ca = load i64, ptr %i.bs, align 8, !tbaa !92
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i6
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #33
  unreachable

_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit:   ; preds = %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.p

bb.n:                                             ; preds = %bb.i, %bb.g, %_ZN4i18n12phonenumbers3LOGEi.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ce, %bb.n ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZN4i18n12phonenumbers13LoggerHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call fastcc void @_ZN4i18n12phonenumbers12_GLOBAL__N_128GetSupportedTypesForMetadataERKNS0_13PhoneMetadataEPSt3setINS0_15PhoneNumberUtil15PhoneNumberTypeESt4lessIS7_ESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(280) %i.cf, ptr noundef %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 5 uses
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 1, i32 1)
  %i.d = sext i32 %1 to i64
  %i.e = add i64 %i.d, ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 11376068507788127593  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g                      ; 2 uses
  %i.j = trunc i128 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !155  ; 2 uses
  %i.m = lshr i64 %i.j, 7
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = lshr i64 %i.n, 12
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i128 %i.i to i8
  %i.r = and i8 %i.q, 127
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn.i.i = phi i64 [ %i.p, %bb.a ], [ %i.ao, %bb.d ]
  %.sroa.12.0.i.i = phi i64 [ 0, %bb.a ], [ %i.an, %bb.d ]
  %.sroa.6.0.i.i = and i64 %.pn.i.i, %i.l         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.6.0.i.i
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !92 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.t, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not43.i.i = icmp eq i16 %i.z, 0
  br i1 %.not43.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.aa = zext i16 %i.z to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %.sroa.014.044.i.i = phi i32 [ %i.ak, %bb.c ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.044.i.i, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add i64 %.sroa.6.0.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.l                     ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !160 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !127
  %i.ai = icmp eq i32 %i.ah, %1
  br i1 %i.ai, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit, label %bb.c, !prof !169

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.aj = add nsw i32 %.sroa.014.044.i.i, -1
  %i.ak = and i32 %i.aj, %.sroa.014.044.i.i       ; 2 uses
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.al = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.am = bitcast <16 x i1> %i.al to i16
  %.not39.i.i = icmp eq i16 %i.am, 0
  br i1 %.not39.i.i, label %bb.d, label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorESK_.exit.thread, !prof !168

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.an = add i64 %.sroa.12.0.i.i, 16             ; 2 uses
  %i.ao = add i64 %i.an, %.sroa.6.0.i.i
  br label %bb.b, !llvm.loop !11

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit: ; preds = %.lr.ph.i.i
  %i.ap = icmp eq ptr %i.c, null
  br i1 %i.ap, label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorESK_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !157
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit, label %.critedge.i.i.i.i, !prof !169

.critedge.i.i.i.i:                                ; preds = %bb.e
  tail call void @llvm.trap() #33
  unreachable

_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit: ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorESK_.exit.thread

_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorESK_.exit.thread: ; preds = %._crit_edge.i.i, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit
  %.0 = phi ptr [ %i.at, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit ], [ null, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit ], [ null, %._crit_edge.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA53_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(53) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !91, !alias.scope !308
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(53) %1) #32, !noalias !308 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !308
  store i64 %i.d, ptr %i.a, align 8, !tbaa !123, !noalias !308
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !95, !alias.scope !308
  %i.g = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !308
  store i64 %i.g, ptr %i.c, align 8, !tbaa !92, !alias.scope !308
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4i18n12phonenumbers15ConvertToStringIA53_cE6DoWorkB5cxx11ERA53_Kc.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !92, !noalias !308
  store i8 %i.i, ptr %i.h, align 1, !tbaa !92
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA53_cE6DoWorkB5cxx11ERA53_Kc.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 dereferenceable(53) %1, i64 %i.d, i1 false)
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA53_cE6DoWorkB5cxx11ERA53_Kc.exit

_ZN4i18n12phonenumbers15ConvertToStringIA53_cE6DoWorkB5cxx11ERA53_Kc.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !308 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !94, !alias.scope !308
  %i.l = load ptr, ptr %2, align 8, !tbaa !95, !alias.scope !308
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !308
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA53_cE6DoWorkB5cxx11ERA53_Kc.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.f:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA53_cE6DoWorkB5cxx11ERA53_Kc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !tbaa !92
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA18_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(18) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !91, !alias.scope !311
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %1) #32, !noalias !311 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !311
  store i64 %i.d, ptr %i.a, align 8, !tbaa !123, !noalias !311
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !95, !alias.scope !311
  %i.g = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !311
  store i64 %i.g, ptr %i.c, align 8, !tbaa !92, !alias.scope !311
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4i18n12phonenumbers15ConvertToStringIA18_cE6DoWorkB5cxx11ERA18_Kc.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !92, !noalias !311
  store i8 %i.i, ptr %i.h, align 1, !tbaa !92
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA18_cE6DoWorkB5cxx11ERA18_Kc.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 dereferenceable(18) %1, i64 %i.d, i1 false)
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA18_cE6DoWorkB5cxx11ERA18_Kc.exit

_ZN4i18n12phonenumbers15ConvertToStringIA18_cE6DoWorkB5cxx11ERA18_Kc.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !311 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !94, !alias.scope !311
  %i.l = load ptr, ptr %2, align 8, !tbaa !95, !alias.scope !311
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !311
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA18_cE6DoWorkB5cxx11ERA18_Kc.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN4i18n12phonenumbers13LoggerHandlerlsIA33_cEERS1_RKT_:bb.a
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA33_cE6DoWorkB5cxx11ERA33_Kc.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.f:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA33_cE6DoWorkB5cxx11ERA33_Kc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !tbaa !92
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4i18n12phonenumbers13LoggerHandlerlsIA12_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(12) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !91, !alias.scope !321
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(12) %1) #32, !noalias !321 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !321
  store i64 %i.d, ptr %i.a, align 8, !tbaa !123, !noalias !321
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !95, !alias.scope !321
  %i.g = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !321
  store i64 %i.g, ptr %i.c, align 8, !tbaa !92, !alias.scope !321
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4i18n12phonenumbers15ConvertToStringIA12_cE6DoWorkB5cxx11ERA12_Kc.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !92, !noalias !321
  store i8 %i.i, ptr %i.h, align 1, !tbaa !92
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA12_cE6DoWorkB5cxx11ERA12_Kc.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 dereferenceable(12) %1, i64 %i.d, i1 false)
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA12_cE6DoWorkB5cxx11ERA12_Kc.exit

_ZN4i18n12phonenumbers15ConvertToStringIA12_cE6DoWorkB5cxx11ERA12_Kc.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !321 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !94, !alias.scope !321
  %i.l = load ptr, ptr %2, align 8, !tbaa !95, !alias.scope !321
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !321
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA12_cE6DoWorkB5cxx11ERA12_Kc.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.c, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.f:                                             ; preds = %_ZN4i18n12phonenumbers15ConvertToStringIA12_cE6DoWorkB5cxx11ERA12_Kc.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.x = load i64, ptr %i.c, align 8, !tbaa !92
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret ptr %0
}

declare void @_ZN4i18n12phonenumbers6strrmmEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.e = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.b, i64 noundef %i.d)
  %i.f = add i64 %i.e, %i.d
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, 11376068507788127593  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h                      ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !75     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !161  ; 4 uses
  %i.o = lshr i64 %i.k, 7
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = lshr i64 %i.p, 12
  %i.r = xor i64 %i.o, %i.q                       ; 2 uses
  %i.s = trunc i128 %i.j to i8
  %i.t = and i8 %i.s, 127
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = load ptr, ptr %1, align 8
  %i.z = load i64, ptr %i.c, align 8
  %.fr12 = freeze i64 %i.z                        ; 3 uses
  %i.aa = icmp eq i64 %.fr12, 0
  br i1 %i.aa, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.b
  %.pn.i.us = phi i64 [ %i.au, %bb.b ], [ %i.r, %bb.a ]
  %.sroa.12.0.i.us = phi i64 [ %i.at, %bb.b ], [ 0, %bb.a ]
  %.sroa.6.0.i.us = and i64 %.pn.i.us, %i.n       ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.us
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !92 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.v, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not47.i.us = icmp eq i16 %i.ae, 0
  br i1 %.not47.i.us, label %._crit_edge.i.us, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.split.us
  %i.af = zext i16 %i.ae to i32
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us, %.lr.ph.preheader.i.us
  %.sroa.014.048.i.us.us = phi i32 [ %i.aq, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us ], [ %i.af, %.lr.ph.preheader.i.us ] ; 3 uses
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.048.i.us.us, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.us, %i.ah
  %i.aj = and i64 %i.ai, %i.n                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !126
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !94
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us, !prof !179

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us: ; preds = %.lr.ph.i.us.us
  %i.ap = add nsw i32 %.sroa.014.048.i.us.us, -1
  %i.aq = and i32 %i.ap, %.sroa.014.048.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.aq, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us, %.split.us
  %i.ar = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.us = icmp eq i16 %i.as, 0
  br i1 %.not43.i.us, label %bb.b, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit, !prof !168

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.at = add i64 %.sroa.12.0.i.us, 16            ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !322

.split:                                           ; preds = %bb.a, %bb.c
  %.pn.i = phi i64 [ %i.bs, %bb.c ], [ %i.r, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.br, %bb.c ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.n             ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i
  %i.aw = load <16 x i8>, ptr %i.av, align 1, !tbaa !92 ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.v, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not47.i = icmp eq i16 %i.ay, 0
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.az = zext i16 %i.ay to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, %.lr.ph.preheader.i
  %.sroa.014.048.i = phi i32 [ %i.bo, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i ], [ %i.az, %.lr.ph.preheader.i ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.048.i, i1 true)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add i64 %.sroa.6.0.i, %i.bb
  %i.bd = and i64 %i.bc, %i.n                     ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !126 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !94
  %i.bi = icmp eq i64 %i.bh, %.fr12
  br i1 %i.bi, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, !prof !179

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i: ; preds = %.lr.ph.i
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !95
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bj, ptr %i.y, i64 %.fr12)
  %i.bk = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.bk, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, !prof !180

.thread31.i:                                      ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.aj, %.lr.ph.i.us.us ], [ %i.bd, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.us-phi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.us-phi
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %.lr.ph.i
  %i.bn = add nsw i32 %.sroa.014.048.i, -1
  %i.bo = and i32 %i.bn, %.sroa.014.048.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, %.split
  %i.bp = icmp eq <16 x i8> %i.aw, splat (i8 -128)
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %.not43.i = icmp eq i16 %i.bq, 0
  br i1 %.not43.i, label %bb.c, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit, !prof !168

bb.c:                                             ; preds = %._crit_edge.i
  %i.br = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bs = add i64 %i.br, %.sroa.6.0.i
  br label %.split, !llvm.loop !322

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread31.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bm, %.thread31.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.bl, %.thread31.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil26HasValidCountryCallingCodeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !181
  %i.n = icmp slt i32 %i.m, %1                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = xor i64 %i.k, -1
  %i.q = add nsw i64 %.016.i.i, %i.p
  %.sroa.011.1.i.i = select i1 %i.n, ptr %i.o, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.n, i64 %i.q, i64 %i.k    ; 2 uses
  %i.r = icmp sgt i64 %.1.i.i, 0
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i, !llvm.loop !15

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.e
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEEbT_SN_RKT0_T1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i
  %i.s = load i32, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !181
  %i.t = icmp sge i32 %1, %i.s
  br label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEEbT_SN_RKT0_T1_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEEbT_SN_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i, %bb.b
  %i.u = phi i1 [ false, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i ], [ %i.t, %bb.b ]
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers15PhoneNumberUtil6FormatERKNS0_11PhoneNumberENS1_17PhoneNumberFormatEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !94
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %bb.o

.thread:                                          ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !92   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !94
  store i8 0, ptr %i.n, align 8, !tbaa !92
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil28GetNationalSignificantNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.thread
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_.exit unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_.exit: ; preds = %bb.e
  invoke fastcc void @_ZN4i18n12phonenumbers12_GLOBAL__N_134PrefixNumberWithCountryCallingCodeEiNS0_15PhoneNumberUtil17PhoneNumberFormatEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.m, i32 noundef 0, ptr noundef nonnull %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_.exit35 unwind label %bb.f

bb.f:                                             ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil26HasValidCountryCallingCodeEi.exit.thread, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_.exit, %.thread
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !111  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.t, %bb.g ] ; 2 uses
  %i.ab = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !181
  %i.ae = icmp slt i32 %i.ad, %i.m                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = xor i64 %i.ab, -1
  %i.ah = add nsw i64 %.016.i.i.i, %i.ag
  %.sroa.011.1.i.i.i = select i1 %i.ae, ptr %i.af, ptr %.sroa.011.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.ae, i64 %i.ah, i64 %i.ab ; 2 uses
  %i.ai = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i, !llvm.loop !15

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.g
  %.sroa.011.0.lcssa.i.i.i = phi ptr [ %i.t, %bb.g ], [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i, %i.v
  br i1 %.not.i.i, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil26HasValidCountryCallingCodeEi.exit.thread, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil26HasValidCountryCallingCodeEi.exit

_ZNK4i18n12phonenumbers15PhoneNumberUtil26HasValidCountryCallingCodeEi.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i
  %i.aj = load i32, ptr %.sroa.011.0.lcssa.i.i.i, align 8, !tbaa !181
  %.not = icmp slt i32 %i.m, %i.aj
  br i1 %.not, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil26HasValidCountryCallingCodeEi.exit.thread, label %bb.h

_ZNK4i18n12phonenumbers15PhoneNumberUtil26HasValidCountryCallingCodeEi.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i, %_ZNK4i18n12phonenumbers15PhoneNumberUtil26HasValidCountryCallingCodeEi.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignERKS4_.exit35 unwind label %bb.f

bb.h:                                             ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil26HasValidCountryCallingCodeEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !94
  store i8 0, ptr %i.ak, align 8, !tbaa !92
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil27GetRegionCodeForCountryCodeEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.m, ptr noundef nonnull %6)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.am = invoke noundef ptr @_ZNK4i18n12phonenumbers15PhoneNumberUtil33GetMetadataForRegionOrCallingCodeEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !91
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !94
  store i8 0, ptr %i.an, align 8, !tbaa !92
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil20FormatNsnWithCarrierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_13PhoneMetadataENS1_17PhoneNumberFormatES9_PS7_(ptr noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(280) %i.am, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.an
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !92
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

end_hunk_1
begin_hunk_2_@_ZNK4i18n12phonenumbers15PhoneNumberUtil27GetRegionCodeForCountryCodeEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !94 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %.not21.i = icmp eq ptr %4, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !168

bb.h:                                             ; preds = %bb.g
  switch i64 %i.ad, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = load i8, ptr %i.z, align 1, !tbaa !92
  store i8 %i.af, ptr %i.w, align 1, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.z, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !94
  %i.ai = load ptr, ptr %2, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !92
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.z, ptr %2, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load <2 x i64>, ptr %i.al, align 8, !tbaa !92
  store <2 x i64> %i.am, ptr %i.ak, align 8, !tbaa !92
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.an = load i64, ptr %i.x, align 8, !tbaa !92
  store ptr %i.z, ptr %2, align 8, !tbaa !95
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !tbaa !92
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.w, ptr %4, align 8, !tbaa !95
  store i64 %i.an, ptr %i.aa, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aa, ptr %4, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ar = phi ptr [ %i.w, %bb.k ], [ %i.aa, %bb.l ], [ %i.z, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !94
  store i8 0, ptr %i.ar, align 1, !tbaa !92
  %i.at = load ptr, ptr %4, align 8, !tbaa !95    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !92
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #35
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ay = load ptr, ptr %3, align 8, !tbaa !137   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ay, %3
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ay, %.critedge ] ; 4 uses
  %i.az = load ptr, ptr %.09.i.i, align 8, !tbaa !137 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !95 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !92
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 48) #35
  %.not.i.i = icmp eq ptr %i.az, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.m:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.bg, %bb.m ]
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4i18n12phonenumbers15PhoneNumberUtil33GetMetadataForRegionOrCallingCodeEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread5

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.e = load i16, ptr %i.d, align 1
  %i.f = xor i16 %i.e, 12336
  %i.g = getelementptr i8, ptr %i.d, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = xor i16 %i.i, 49
  %i.k = or i16 %i.f, %i.j
  %i.l = icmp ne i16 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread5

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86   ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 5 uses
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 1, i32 1)
  %i.r = sext i32 %1 to i64
  %i.s = add i64 %i.r, ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64)
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw i128 %i.t, 11376068507788127593  ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = xor i128 %i.v, %i.u                      ; 2 uses
  %i.x = trunc i128 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !155  ; 2 uses
  %i.aa = lshr i64 %i.x, 7
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = xor i64 %i.ac, %i.aa
  %i.ae = trunc i128 %i.w to i8
  %i.af = and i8 %i.ae, 127
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %.pn.i.i.i = phi i64 [ %i.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread ], [ %i.bc, %bb.d ]
  %.sroa.12.0.i.i.i = phi i64 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread ], [ %i.bb, %bb.d ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i.i.i, %i.z     ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.6.0.i.i.i
  %i.al = load <16 x i8>, ptr %i.ak, align 1, !tbaa !92 ; 2 uses
  %i.am = icmp eq <16 x i8> %i.ah, %i.al
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not43.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not43.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %i.ao = zext i16 %i.an to i32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %.sroa.014.044.i.i.i = phi i32 [ %i.ay, %bb.c ], [ %i.ao, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ap = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.044.i.i.i, i1 true)
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add i64 %.sroa.6.0.i.i.i, %i.aq
  %i.as = and i64 %i.ar, %i.z                     ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !160 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !127
  %i.aw = icmp eq i32 %i.av, %1
  br i1 %i.aw, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i, label %bb.c, !prof !169

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = add nsw i32 %.sroa.014.044.i.i.i, -1
  %i.ay = and i32 %i.ax, %.sroa.014.044.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.az = icmp eq <16 x i8> %i.al, splat (i8 -128)
  %i.ba = bitcast <16 x i1> %i.az to i16
  %.not39.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not39.i.i.i, label %bb.d, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit, !prof !168

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = add i64 %.sroa.12.0.i.i.i, 16           ; 2 uses
  %i.bc = add i64 %i.bb, %.sroa.6.0.i.i.i
  br label %bb.b, !llvm.loop !11

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bd = icmp eq ptr %i.q, null
  br i1 %i.bd, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.as
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !157
  %i.bg = icmp sgt i8 %i.bf, -1
  br i1 %i.bg, label %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit.i, label %.critedge.i.i.i.i.i, !prof !169

.critedge.i.i.i.i.i:                              ; preds = %bb.e
  tail call void @llvm.trap() #33
  unreachable

_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  br label %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread5: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !78
  %i.bk = tail call { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  %i.bn = icmp eq ptr %i.bl, null
  br i1 %i.bn, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit, label %bb.f

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread5
  %i.bo = load i8, ptr %i.bl, align 1, !tbaa !157
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i, label %.critedge.i.i.i.i.i3, !prof !169

.critedge.i.i.i.i.i3:                             ; preds = %bb.f
  tail call void @llvm.trap() #33
  unreachable

_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i: ; preds = %bb.f
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !126
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  br label %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit

_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit: ; preds = %._crit_edge.i.i.i, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread5, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit.i, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i
  %i.bs = phi ptr [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread5 ], [ %i.bh, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit.i ], [ null, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i ], [ %i.br, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14const_iteratorptEv.exit.i ], [ null, %._crit_edge.i.i.i ]
  ret ptr %i.bs
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers15PhoneNumberUtil9FormatNsnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_13PhoneMetadataENS1_17PhoneNumberFormatEPS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !94
  store i8 0, ptr %i.a, align 8, !tbaa !92
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil20FormatNsnWithCarrierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_13PhoneMetadataENS1_17PhoneNumberFormatES9_PS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(280) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.c = load ptr, ptr %5, align 8, !tbaa !95     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !92
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %5, align 8, !tbaa !95     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !tbaa !92
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers15PhoneNumberUtil29MaybeAppendFormattedExtensionERKNS0_11PhoneNumberERKNS0_13PhoneMetadataENS1_17PhoneNumberFormatEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.i18n::phonenumbers::StringHolder", align 8 ; 7 uses
  %6 = alloca %"class.i18n::phonenumbers::StringHolder", align 8 ; 7 uses
  %7 = alloca %"class.i18n::phonenumbers::StringHolder", align 8 ; 7 uses
  %8 = alloca %"class.i18n::phonenumbers::StringHolder", align 8 ; 7 uses
  %9 = alloca %"class.i18n::phonenumbers::StringHolder", align 8 ; 7 uses
  %10 = alloca %"class.i18n::phonenumbers::StringHolder", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !127
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !94
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %3, 3
  br i1 %i.k, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @_ZN4i18n12phonenumbers12_GLOBAL__N_118kRfc3966ExtnPrefixE)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -4
  %i.o = inttoptr i64 %i.n to ptr
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4i18n12phonenumbers9StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_12StringHolderESA_(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.w

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn19 = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.x

bb.j:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !127
  %i.t = and i32 %i.s, 8
  %.not22 = icmp eq i32 %i.t, 0
  br i1 %.not22, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -4
  %i.y = inttoptr i64 %i.x to ptr
  call void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, -4
  %i.ac = inttoptr i64 %i.ab to ptr
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
end_hunk_2
begin_hunk_3_@_ZNK4i18n12phonenumbers15PhoneNumberUtil32FormatNsnUsingPatternWithCarrierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_12NumberFormatENS1_17PhoneNumberFormatES9_PS7_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !92
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %._crit_edge.i.i66

bb.ag:                                            ; preds = %bb.v, %bb.u
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit77

bb.ah:                                            ; preds = %bb.w
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit77

bb.ai:                                            ; preds = %bb.x
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.thread:                                          ; preds = %bb.y
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.am

._crit_edge.i.i66:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNK4i18n12phonenumbers6RegExp7ConsumeEPNS0_11RegExpInputE.exit
  %i.fo = load ptr, ptr %i.dc, align 8, !tbaa !56
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 648
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !153 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fr, ptr %10, align 8, !tbaa !91
  store i8 45, ptr %i.fr, align 8, !tbaa !92
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.fs, align 8, !tbaa !94
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.ft, align 1, !tbaa !92
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !47
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = invoke noundef zeroext i1 %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull %5, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNK4i18n12phonenumbers6RegExp13GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_.exit70 unwind label %bb.ak, !inline_history !18 ; 0 uses

_ZNK4i18n12phonenumbers6RegExp13GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_.exit70: ; preds = %._crit_edge.i.i66
  %i.fy = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.fr
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNK4i18n12phonenumbers6RegExp13GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_.exit70
  %i.ga = load i64, ptr %i.fr, align 8, !tbaa !92
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNK4i18n12phonenumbers6RegExp13GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.gc = icmp eq ptr %i.dx, null
  br i1 %i.gc, label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.gd = load ptr, ptr %i.dx, align 8, !tbaa !47
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %i.dx) #32, !inline_history !13
  br label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit

bb.ak:                                            ; preds = %._crit_edge.i.i66
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = load ptr, ptr %10, align 8, !tbaa !95   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.fr
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ak
  %i.gj = load i64, ptr %i.fr, align 8, !tbaa !92
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.ai
  %.pn31.pn = phi { ptr, i32 } [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.fm, %bb.ai ] ; 2 uses
  %i.gl = icmp eq ptr %i.dx, null
  br i1 %i.gl, label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit77, label %bb.am

bb.am:                                            ; preds = %.thread, %bb.al
  %.pn31.pn89 = phi { ptr, i32 } [ %i.fn, %.thread ], [ %.pn31.pn, %bb.al ]
  %i.gm = load ptr, ptr %i.dx, align 8, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.dx) #32, !inline_history !13
  br label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit77

_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit: ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNK4i18n12phonenumbers6RegExp13GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_.exit
  %i.gp = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.i
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit
  %i.gr = load i64, ptr %i.i, align 8, !tbaa !92
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void

_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit77: ; preds = %bb.ah, %bb.al, %bb.am, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.j
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.bk, %bb.j ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.fk, %bb.ag ], [ %i.fl, %bb.ah ], [ %.pn31.pn, %bb.al ], [ %.pn31.pn89, %bb.am ]
  %i.gt = load ptr, ptr %6, align 8, !tbaa !95    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.i
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit77
  %i.gv = load i64, ptr %i.i, align 8, !tbaa !92
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpInputEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %.pn31.pn.pn.pn.pn
}

declare void @_ZN4i18n12phonenumbers9StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_12StringHolderESA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.e = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.b, i64 noundef %i.d)
  %i.f = add i64 %i.e, %i.d
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, 11376068507788127593  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h                      ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !67     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !162  ; 4 uses
  %i.o = lshr i64 %i.k, 7
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = lshr i64 %i.p, 12
  %i.r = xor i64 %i.o, %i.q                       ; 2 uses
  %i.s = trunc i128 %i.j to i8
  %i.t = and i8 %i.s, 127
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.y = load ptr, ptr %1, align 8
  %i.z = load i64, ptr %i.c, align 8
  %.fr12 = freeze i64 %i.z                        ; 3 uses
  %i.aa = icmp eq i64 %.fr12, 0
  br i1 %i.aa, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.b
  %.pn.i.us = phi i64 [ %i.au, %bb.b ], [ %i.r, %bb.a ]
  %.sroa.12.0.i.us = phi i64 [ %i.at, %bb.b ], [ 0, %bb.a ]
  %.sroa.6.0.i.us = and i64 %.pn.i.us, %i.n       ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.us
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !92 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.v, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not47.i.us = icmp eq i16 %i.ae, 0
  br i1 %.not47.i.us, label %._crit_edge.i.us, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.split.us
  %i.af = zext i16 %i.ae to i32
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us, %.lr.ph.preheader.i.us
  %.sroa.014.048.i.us.us = phi i32 [ %i.aq, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us ], [ %i.af, %.lr.ph.preheader.i.us ] ; 3 uses
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.048.i.us.us, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.us, %i.ah
  %i.aj = and i64 %i.ai, %i.n                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !94
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us, !prof !179

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us: ; preds = %.lr.ph.i.us.us
  %i.ap = add nsw i32 %.sroa.014.048.i.us.us, -1
  %i.aq = and i32 %i.ap, %.sroa.014.048.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.aq, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us, %.split.us
  %i.ar = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.us = icmp eq i16 %i.as, 0
  br i1 %.not43.i.us, label %bb.b, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit, !prof !168

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.at = add i64 %.sroa.12.0.i.us, 16            ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !362

.split:                                           ; preds = %bb.a, %bb.c
  %.pn.i = phi i64 [ %i.bs, %bb.c ], [ %i.r, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.br, %bb.c ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.n             ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i
  %i.aw = load <16 x i8>, ptr %i.av, align 1, !tbaa !92 ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.v, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not47.i = icmp eq i16 %i.ay, 0
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.az = zext i16 %i.ay to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.lr.ph.preheader.i
  %.sroa.014.048.i = phi i32 [ %i.bo, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i ], [ %i.az, %.lr.ph.preheader.i ] ; 3 uses
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.048.i, i1 true)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add i64 %.sroa.6.0.i, %i.bb
  %i.bd = and i64 %i.bc, %i.n                     ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !144 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !94
  %i.bi = icmp eq i64 %i.bh, %.fr12
  br i1 %i.bi, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !179

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i: ; preds = %.lr.ph.i
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !95
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bj, ptr %i.y, i64 %.fr12)
  %i.bk = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bk, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !180

.thread31.i:                                      ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.aj, %.lr.ph.i.us.us ], [ %i.bd, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.us-phi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.us-phi
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i
  %i.bn = add nsw i32 %.sroa.014.048.i, -1
  %i.bo = and i32 %i.bn, %.sroa.014.048.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.split
  %i.bp = icmp eq <16 x i8> %i.aw, splat (i8 -128)
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %.not43.i = icmp eq i16 %i.bq, 0
  br i1 %.not43.i, label %bb.c, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit, !prof !168

bb.c:                                             ; preds = %._crit_edge.i
  %i.br = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bs = add i64 %i.br, %.sroa.6.0.i
  br label %.split, !llvm.loop !362

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread31.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bm, %.thread31.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.bl, %.thread31.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetRegionCodesForCountryCallingCodeEiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %bb.d
  %.02153.i.i = phi i64 [ %.2.i.i, %bb.d ], [ %i.i, %bb.a ] ; 3 uses
  %.sroa.038.052.i.i = phi ptr [ %.sroa.038.1.i.i, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %i.k = lshr i64 %.02153.i.i, 1                  ; 5 uses
  %.idx38 = shl nuw nsw i64 %i.k, 4               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.038.052.i.i, i64 %.idx38 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !181  ; 2 uses
  %i.n = icmp slt i32 %i.m, %1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = xor i64 %i.k, -1
  %i.q = add nsw i64 %.02153.i.i, %i.p
  br label %bb.d

bb.c:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.r = icmp slt i32 %1, %i.m
  br i1 %i.r, label %bb.d, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.c
  %.not37 = icmp eq i64 %i.k, 0
  br i1 %.not37, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.critedge.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.k, %.critedge.i.i ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.sroa.038.052.i.i, %.critedge.i.i ] ; 2 uses
  %i.s = lshr i64 %.016.i.i.i, 1                  ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i.i, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !181
  %i.v = icmp slt i32 %i.u, %1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = xor i64 %i.s, -1
  %i.y = add nsw i64 %.016.i.i.i, %i.x
  %.sroa.011.1.i.i.i = select i1 %i.v, ptr %i.w, ptr %.sroa.011.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.v, i64 %i.y, i64 %i.s  ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i, !llvm.loop !15

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %.critedge.i.i
  %.sroa.011.0.lcssa.i.i.i = phi ptr [ %.sroa.038.052.i.i, %.critedge.i.i ], [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.02153.i.i, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ab = add nuw nsw i64 %.idx38, 16
  %gepdiff = sub nsw i64 %.idx, %i.ab
  %i.ac = ashr exact i64 %gepdiff, 4              ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i
  %.016.i28.i.i = phi i64 [ %.1.i33.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i ], [ %i.ac, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i ] ; 2 uses
  %.sroa.011.015.i29.i.i = phi ptr [ %.sroa.011.1.i32.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i ], [ %i.aa, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i ] ; 2 uses
  %i.ae = lshr i64 %.016.i28.i.i, 1               ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i29.i.i, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !181
  %i.ah = icmp slt i32 %1, %i.ag                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = xor i64 %i.ae, -1
  %i.ak = add nsw i64 %.016.i28.i.i, %i.aj
  %.sroa.011.1.i32.i.i = select i1 %i.ah, ptr %.sroa.011.015.i29.i.i, ptr %i.ai ; 2 uses
  %.1.i33.i.i = select i1 %i.ah, i64 %i.ae, i64 %i.ak ; 2 uses
  %i.al = icmp sgt i64 %.1.i33.i.i, 0
  br i1 %i.al, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit, !llvm.loop !363

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.038.1.i.i = phi ptr [ %i.o, %bb.b ], [ %.sroa.038.052.i.i, %bb.c ]
  %.2.i.i = phi i64 [ %i.q, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.am = icmp sgt i64 %.2.i.i, 0
  br i1 %i.am, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread, !llvm.loop !364

_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i
  %.sroa.3.0.i.i = phi ptr [ %i.aa, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIN4i18n12phonenumbers3gtl12OrderByFirstEEEET_SQ_SQ_RKT0_T1_.exit.i.i ], [ %.sroa.011.1.i32.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i27.i.i ]
  %.not = icmp eq ptr %.sroa.011.0.lcssa.i.i.i, %.sroa.3.0.i.i
  br i1 %.not, label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit
  %i.an = load ptr, ptr %2, align 8, !tbaa !137
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !167 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !137
  %i.ar = tail call ptr @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertISt14_List_iteratorIS5_EvEESA_St20_List_const_iteratorIS5_ET_SD_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.an, ptr %i.aq, ptr nonnull %i.ap) ; 0 uses
  br label %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread

_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit.thread: ; preds = %bb.d, %bb.a, %bb.e, %_ZSt11equal_rangeIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPNSt7__cxx114listINS3_12basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEESt6vectorISD_SaISD_EEEESD_N4i18n12phonenumbers3gtl12OrderByFirstEES2_IT_SN_ESN_SN_RKT0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6insertISt14_List_iteratorIS5_EvEESA_St20_List_const_iteratorIS5_ET_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !138
  store ptr %4, ptr %4, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !140
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.d, %.noexc.i ], [ %2, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  invoke void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc.i unwind label %.body

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.d = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit, label %.lr.ph.i.i, !llvm.loop !365

.body:                                            ; preds = %.lr.ph.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.e

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !137   ; 4 uses
  %i.f = icmp eq ptr %.pre, %4
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit: ; preds = %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %.pre, ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  %i.g = load i64, ptr %i.b, align 8, !tbaa !184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !184
  %i.j = add i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !184
  store i64 0, ptr %i.b, align 8, !tbaa !184
  %.pre10 = load ptr, ptr %4, align 8, !tbaa !137
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit
  %i.k = phi ptr [ %.pre10, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit ], [ %.pre, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit ] ; 2 uses
  %.sroa.06.0 = phi ptr [ %.pre, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6spliceESt20_List_const_iteratorIS5_ERS7_.exit ], [ %1, %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ISt14_List_iteratorIS5_EvEET_SB_RKS6_.exit ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.k, %4
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.k, %bb.b ] ; 4 uses
  %i.l = load ptr, ptr %.09.i.i, align 8, !tbaa !137 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i7
  %i.q = load i64, ptr %i.o, align 8, !tbaa !92
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 48) #35
  %.not.i.i8 = icmp eq ptr %i.l, %4
  br i1 %.not.i.i8, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i7, !llvm.loop !7

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.a, %bb.b
  %.sroa.06.022 = phi ptr [ %1, %bb.a ], [ %.sroa.06.0, %bb.b ], [ %.sroa.06.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
end_hunk_3
begin_hunk_4_@_ZNK4i18n12phonenumbers15PhoneNumberUtil23GetExampleNumberForTypeENS1_15PhoneNumberTypeEPNS0_11PhoneNumberE:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !95
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !95
  %i.bi = call i32 @memcmp(ptr noundef %i.bh, ptr noundef %i.bg, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.bj = sub i64 %i.bb, %i.bd
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bj, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bk = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %select.unfold
  %i.bl = phi i1 [ %i.bk, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %select.unfold ]
  %i.bm = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc96 unwind label %bb.g   ; 2 uses

.noexc96:                                         ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %.noexc97 unwind label %bb.g

.noexc97:                                         ; preds = %.noexc96
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bl, ptr noundef nonnull %i.bm, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #32
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !104
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.e, align 8, !tbaa !104
  %.pre172 = load i8, ptr %.sroa.08.018.i, align 1, !tbaa !157
  br label %.noexc

.noexc:                                           ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %.noexc97
  %i.bp = phi i8 [ %i.aa, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i ], [ %.pre172, %.noexc97 ]
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %bb.f, label %.critedge.i.i7.i, !prof !169

.critedge.i.i7.i:                                 ; preds = %.noexc
  call void @llvm.trap() #33
  unreachable

bb.f:                                             ; preds = %.noexc
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.018.i, i64 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.9.017.i, i64 8 ; 2 uses
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !157 ; 2 uses
  %i.bu = icmp slt i8 %i.bt, -1
  br i1 %i.bu, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.bv = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.bs, %bb.f ]
  %i.bw = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %i.br, %bb.f ] ; 2 uses
  %i.bx = load <16 x i8>, ptr %i.bw, align 1, !tbaa !92
  %i.by = icmp slt <16 x i8> %i.bx, splat (i8 -1)
  %i.bz = bitcast <16 x i1> %i.by to i16
  %i.ca = zext i16 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.ca, 1
  %i.cc = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cb, i1 true)
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cd ; 2 uses
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !157 ; 2 uses
  %i.ch = icmp slt i8 %i.cg, -1
  br i1 %i.ch, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.f
  %i.ci = phi i8 [ %i.bt, %bb.f ], [ %i.cg, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.9.1.i = phi ptr [ %i.bs, %bb.f ], [ %i.cf, %.lr.ph.i.i.i.i ]
  %.sroa.08.1.i = phi ptr [ %i.br, %bb.f ], [ %i.ce, %.lr.ph.i.i.i.i ]
  %i.cj = icmp eq i8 %i.ci, -1
  br i1 %i.cj, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil19GetSupportedRegionsEPSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EE.exit, label %.lr.ph.i.preheader, !prof !168, !llvm.loop !9

_ZNK4i18n12phonenumbers15PhoneNumberUtil19GetSupportedRegionsEPSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EE.exit: ; preds = %._crit_edge.i.i.i.i
  %.pre173 = load ptr, ptr %i.c, align 8, !tbaa !102 ; 2 uses
  %.not117153 = icmp eq ptr %.pre173, %i.a
  br i1 %.not117153, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %.noexc96, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.lr.ph:                                           ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil19GetSupportedRegionsEPSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EE.exit, %bb.j
  %.sroa.0107.0154 = phi ptr [ %i.co, %bb.j ], [ %.pre173, %_ZNK4i18n12phonenumbers15PhoneNumberUtil19GetSupportedRegionsEPSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EE.exit ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0107.0154, i64 32
  %i.cm = invoke noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil23GetExampleNumberForTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_15PhoneNumberTypeEPNS0_11PhoneNumberE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i32 noundef %1, ptr noundef %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.cm, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0107.0154) #36 ; 2 uses
  %.not117 = icmp eq ptr %i.co, %i.a
  br i1 %.not117, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.j, %._crit_edge.i.i.i, %_ZNK4i18n12phonenumbers15PhoneNumberUtil19GetSupportedRegionsEPSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.cp, align 8, !tbaa !100
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.cq, align 8, !tbaa !101
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !102
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !103
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ct, align 8, !tbaa !104
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil37GetSupportedGlobalNetworkCallingCodesEPSt3setIiSt4lessIiESaIiEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.critedge
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !102 ; 2 uses
  %.not158 = icmp eq ptr %i.cu, %i.cp
  br i1 %.not158, label %.critedge70, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 18
  %i.de = icmp ult i32 %1, 11
  %i.df = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4i18n12phonenumbers12_GLOBAL__N_116TestNumberLengthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_13PhoneMetadataENS0_15PhoneNumberUtil15PhoneNumberTypeE, i64 %i.df
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.m:                                             ; preds = %.lr.ph156, %.critedge71
  %.sroa.0103.0155 = phi ptr [ %i.cu, %.lr.ph156 ], [ %i.hs, %.critedge71 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0103.0155, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !127 ; 2 uses
  %i.dj = load ptr, ptr %i.cv, align 8, !tbaa !86 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !83 ; 5 uses
  call void @llvm.prefetch.p0(ptr %i.dk, i32 0, i32 1, i32 1)
  %i.dl = sext i32 %i.di to i64                   ; 2 uses
  %i.dm = add i64 %i.dl, ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64)
  %i.dn = zext i64 %i.dm to i128
  %i.do = mul nuw i128 %i.dn, 11376068507788127593 ; 2 uses
  %i.dp = lshr i128 %i.do, 64
  %i.dq = xor i128 %i.dp, %i.do                   ; 2 uses
  %i.dr = trunc i128 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !155 ; 2 uses
  %i.du = lshr i64 %i.dr, 7
  %i.dv = ptrtoint ptr %i.dk to i64
  %i.dw = lshr i64 %i.dv, 12
  %i.dx = xor i64 %i.du, %i.dw
  %i.dy = trunc i128 %i.dq to i8
  %i.dz = and i8 %i.dy, 127
  %i.ea = insertelement <16 x i8> poison, i8 %i.dz, i64 0
  %i.eb = shufflevector <16 x i8> %i.ea, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.pn.i.i.i = phi i64 [ %i.dx, %bb.m ], [ %i.ew, %bb.p ]
  %.sroa.12.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.ev, %bb.p ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i.i.i, %i.dt    ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sroa.6.0.i.i.i
  %i.ef = load <16 x i8>, ptr %i.ee, align 1, !tbaa !92 ; 2 uses
  %i.eg = icmp eq <16 x i8> %i.eb, %i.ef
  %i.eh = bitcast <16 x i1> %i.eg to i16          ; 2 uses
  %.not43.i.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not43.i.i.i, label %._crit_edge.i.i.i74, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.n
  %i.ei = zext i16 %i.eh to i32
  br label %.lr.ph.i.i.i73

.lr.ph.i.i.i73:                                   ; preds = %bb.o, %.lr.ph.preheader.i.i.i
  %.sroa.014.044.i.i.i = phi i32 [ %i.es, %bb.o ], [ %i.ei, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ej = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.044.i.i.i, i1 true)
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = add i64 %.sroa.6.0.i.i.i, %i.ek
  %i.em = and i64 %i.el, %i.dt                    ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !160 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !127
  %i.eq = icmp eq i32 %i.ep, %i.di
  br i1 %i.eq, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i, label %bb.o, !prof !169

bb.o:                                             ; preds = %.lr.ph.i.i.i73
  %i.er = add nsw i32 %.sroa.014.044.i.i.i, -1
  %i.es = and i32 %i.er, %.sroa.014.044.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i74, label %.lr.ph.i.i.i73

._crit_edge.i.i.i74:                              ; preds = %bb.o, %bb.n
  %i.et = icmp eq <16 x i8> %i.ef, splat (i8 -128)
  %i.eu = bitcast <16 x i1> %i.et to i16
  %.not39.i.i.i = icmp eq i16 %i.eu, 0
  br i1 %.not39.i.i.i, label %bb.p, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit, !prof !168

bb.p:                                             ; preds = %._crit_edge.i.i.i74
  %i.ev = add i64 %.sroa.12.0.i.i.i, 16           ; 2 uses
  %i.ew = add i64 %i.ev, %.sroa.6.0.i.i.i
  br label %bb.n, !llvm.loop !11

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i: ; preds = %.lr.ph.i.i.i73
  %i.ex = icmp eq ptr %i.dk, null
  br i1 %i.ex, label %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.em
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !157
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit.i, label %.critedge.i.i.i.i.i75, !prof !169

.critedge.i.i.i.i.i75:                            ; preds = %bb.q
  call void @llvm.trap() #33
  unreachable

_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit.i: ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  br label %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit

_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit: ; preds = %._crit_edge.i.i.i74, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit.i, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i
  %.0.i = phi ptr [ %i.fb, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14const_iteratorptEv.exit.i ], [ null, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i ], [ null, %._crit_edge.i.i.i74 ]
  br i1 %i.de, label %switch.lookup, label %bb.r

switch.lookup:                                    ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.r

bb.r:                                             ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit, %switch.lookup
  %.sink.i = phi i64 [ %switch.ext, %switch.lookup ], [ 136, %_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetMetadataForNonGeographicalRegionEi.exit ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.sink.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !92 ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.fd, null
  %i.fe = select i1 %.not.i.i21.i, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !127
  %i.fh = and i32 %i.fg, 2
  %.not118 = icmp eq i32 %i.fh, 0
  br i1 %.not118, label %.critedge71, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @_ZN4i18n12phonenumbers12_GLOBAL__N_19kPlusSignE)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1Em(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 noundef %i.dl)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !114
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = and i64 %i.fk, -4
  %i.fm = inttoptr i64 %i.fl to ptr
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.fm)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4i18n12phonenumbers6StrCatB5cxx11ERKNS0_12StringHolderES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %._crit_edge.i.i unwind label %bb.z

._crit_edge.i.i:                                  ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store ptr %i.cw, ptr %11, align 8, !tbaa !91
  store i16 23130, ptr %i.cw, align 8
  store i64 2, ptr %i.cx, align 8, !tbaa !94
  store i8 0, ptr %i.dd, align 2, !tbaa !92
  %i.fn = invoke noundef range(i32 0, 6) i32 @_ZNK4i18n12phonenumbers15PhoneNumberUtil11ParseHelperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_bbPNS0_11PhoneNumberE(ptr noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %2)
          to label %_ZNK4i18n12phonenumbers15PhoneNumberUtil5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PNS0_11PhoneNumberE.exit unwind label %bb.aa ; 2 uses

_ZNK4i18n12phonenumbers15PhoneNumberUtil5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PNS0_11PhoneNumberE.exit: ; preds = %._crit_edge.i.i
  %i.fo = load ptr, ptr %11, align 8, !tbaa !95   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.cw
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PNS0_11PhoneNumberE.exit
  %i.fq = load i64, ptr %i.cw, align 8, !tbaa !92
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PNS0_11PhoneNumberE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.fs = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.cy
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fu = load i64, ptr %i.cy, align 8, !tbaa !92
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %.not = icmp eq i32 %i.fn, 0
  br i1 %.not, label %.critedge70, label %bb.ae

bb.w:                                             ; preds = %bb.s
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.u
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %11, align 8, !tbaa !95   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.cw
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.aa
  %i.gd = load i64, ptr %i.cw, align 8, !tbaa !92
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.gf = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.cy
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.gh = load i64, ptr %i.cy, align 8, !tbaa !92
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.z ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #32
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.y
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.fy, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ab ], [ %i.fx, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ac ], [ %i.fw, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.at

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.gj = load ptr, ptr @_ZN4i18n12phonenumbers6Logger5impl_E, align 8, !tbaa !48, !noalias !501 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !50, !noalias !501
  %i.gm = icmp slt i32 %i.gl, 2
  br i1 %i.gm, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
end_hunk_4
begin_hunk_5_@_ZNK4i18n12phonenumbers15PhoneNumberUtil23GetExampleNumberForTypeENS1_15PhoneNumberTypeEPNS0_11PhoneNumberE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit

bb.an:                                            ; preds = %._crit_edge.i.i.i90
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #33
  unreachable

_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit:   ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %.critedge71

bb.ao:                                            ; preds = %bb.af
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ag
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.ai, %_ZN4i18n12phonenumbers13LoggerHandlerlsIiEERS1_RKT_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.ap
  %.pn61 = phi { ptr, i32 } [ %i.hq, %bb.ap ], [ %i.hr, %bb.aq ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZN4i18n12phonenumbers13LoggerHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #32
  br label %bb.ar

bb.ar:                                            ; preds = %.body, %bb.ao
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %.body ], [ %i.hp, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.at

.critedge71:                                      ; preds = %_ZN4i18n12phonenumbers13LoggerHandlerD2Ev.exit, %bb.r
  %i.hs = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0103.0155) #36 ; 2 uses
  %.not159 = icmp eq ptr %i.hs, %i.cp
  br i1 %.not159, label %.critedge70, label %bb.m, !llvm.loop !500

.critedge70:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %.critedge71, %bb.k
  %.lcssa122 = phi i1 [ false, %bb.k ], [ false, %.critedge71 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ]
  %i.ht = load ptr, ptr %i.cq, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ht)
          to label %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit unwind label %bb.as

bb.as:                                            ; preds = %.critedge70
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #33
  unreachable

_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit:             ; preds = %.critedge70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %.loopexit

bb.at:                                            ; preds = %bb.ad, %bb.ar, %bb.l
  %.pn61.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.l ], [ %.pn.pn.pn.pn.pn.pn, %bb.ad ], [ %.pn61.pn, %bb.ar ]
  call void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.av

.loopexit:                                        ; preds = %bb.i, %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit
  %.953 = phi i1 [ %.lcssa122, %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit ], [ true, %bb.i ]
  %i.hw = load ptr, ptr %i.b, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.hw)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %.loopexit
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #33
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret i1 %.953

bb.av:                                            ; preds = %bb.at, %bb.h, %bb.g
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn.pn.pn.pn, %bb.at ], [ %i.cn, %bb.h ], [ %i.ck, %bb.g ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn61.pn.pn.pn.pn.pn.pn
}

declare void @_ZN4i18n12phonenumbers6StrCatB5cxx11ERKNS0_12StringHolderES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setIiSt4lessIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #33
  unreachable

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #33
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil31GetExampleNumberForNonGeoEntityEiPNS0_11PhoneNumberE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca [7 x %"class.i18n::phonenumbers::PhoneNumberDesc"], align 16 ; 26 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.i18n::phonenumbers::StringHolder", align 8 ; 7 uses
  %10 = alloca %"class.i18n::phonenumbers::StringHolder", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.i18n::phonenumbers::StringHolder", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.i18n::phonenumbers::LoggerHandler", align 8 ; 7 uses
  %15 = alloca %"class.i18n::phonenumbers::LoggerHandler", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 5 uses
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 1, i32 1)
  %i.d = sext i32 %1 to i64
  %i.e = add i64 %i.d, ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 11376068507788127593  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g                      ; 2 uses
  %i.j = trunc i128 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !155  ; 2 uses
  %i.m = lshr i64 %i.j, 7
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = lshr i64 %i.n, 12
  %i.p = xor i64 %i.o, %i.m
  %i.q = trunc i128 %i.i to i8
  %i.r = and i8 %i.q, 127
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn.i.i.i = phi i64 [ %i.p, %bb.a ], [ %i.ao, %bb.d ]
  %.sroa.12.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.an, %bb.d ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i.i.i, %i.l     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.6.0.i.i.i
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !92 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.t, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not43.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not43.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  %i.aa = zext i16 %i.z to i32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %.sroa.014.044.i.i.i = phi i32 [ %i.ak, %bb.c ], [ %i.aa, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.044.i.i.i, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add i64 %.sroa.6.0.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.l                     ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !160 ; 8 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !127
  %i.ai = icmp eq i32 %i.ah, %1
  br i1 %i.ai, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i, label %bb.c, !prof !169

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = add nsw i32 %.sroa.014.044.i.i.i, -1
  %i.ak = and i32 %i.aj, %.sroa.014.044.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.al = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.am = bitcast <16 x i1> %i.al to i16
  %.not39.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not39.i.i.i, label %bb.d, label %.loopexit117, !prof !168

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.an = add i64 %.sroa.12.0.i.i.i, 16           ; 2 uses
  %i.ao = add i64 %i.an, %.sroa.6.0.i.i.i
  br label %bb.b, !llvm.loop !11

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ap = icmp eq ptr %i.c, null
  br i1 %i.ap, label %.loopexit117, label %bb.e

bb.e:                                             ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE4findIiEENSH_8iteratorERSE_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !157
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.f, label %.critedge.i.i.i.i.i, !prof !169

.critedge.i.i.i.i.i:                              ; preds = %bb.e
  tail call void @llvm.trap() #33
  unreachable

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  %i.av = select i1 %.not.i.i, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.au
  invoke void @_ZN4i18n12phonenumbers15PhoneNumberDescC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %i.av)
          to label %bb.g unwind label %.thread

.thread:                                          ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !92 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.az, null
  %i.ba = select i1 %.not.i.i63, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.az
  invoke void @_ZN4i18n12phonenumbers15PhoneNumberDescC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %i.ba)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 184
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !92 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.bd, null
  %i.be = select i1 %.not.i.i64, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.bd
  invoke void @_ZN4i18n12phonenumbers15PhoneNumberDescC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noundef nonnull align 8 dereferenceable(72) %i.be)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 216 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !92 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.bh, null
  %i.bi = select i1 %.not.i.i65, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.bh
  invoke void @_ZN4i18n12phonenumbers15PhoneNumberDescC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %i.bi)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !92 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.bl, null
  %i.bm = select i1 %.not.i.i66, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.bl
  invoke void @_ZN4i18n12phonenumbers15PhoneNumberDescC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bm)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 360 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !92 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.bp, null
  %i.bq = select i1 %.not.i.i67, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.bp
  invoke void @_ZN4i18n12phonenumbers15PhoneNumberDescC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bn, ptr noundef nonnull align 8 dereferenceable(72) %i.bq)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 432 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !92 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.bt, null
  %i.bu = select i1 %.not.i.i68, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.bt
  invoke void @_ZN4i18n12phonenumbers15PhoneNumberDescC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull align 8 dereferenceable(72) %i.bu)
          to label %.preheader unwind label %bb.m

.preheader:                                       ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 18
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.040 = phi ptr [ %i.br, %bb.l ], [ %i.ax, %bb.g ], [ %i.bn, %bb.k ], [ %i.bb, %bb.h ], [ %i.bj, %bb.j ], [ %i.bf, %bb.i ]
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %i.cf = phi ptr [ %.040, %bb.m ], [ %i.cg, %bb.n ]
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -72 ; 3 uses
  call void @_ZN4i18n12phonenumbers15PhoneNumberDescD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.cg) #32
  %i.ch = icmp eq ptr %i.cg, %7
  br i1 %i.ch, label %.loopexit, label %bb.n

bb.o:                                             ; preds = %.preheader, %bb.ar
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ar ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [72 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !127
  %i.cl = and i32 %i.ck, 2
  %.not = icmp eq i32 %i.cl, 0
  br i1 %.not, label %bb.ar, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @_ZN4i18n12phonenumbers12_GLOBAL__N_19kPlusSignE)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i32 noundef %1)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !114
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = and i64 %i.co, -4
  %i.cq = inttoptr i64 %i.cp to ptr
  invoke void @_ZN4i18n12phonenumbers12StringHolderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4i18n12phonenumbers6StrCatB5cxx11ERKNS0_12StringHolderES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %._crit_edge.i.i unwind label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store ptr %i.bv, ptr %13, align 8, !tbaa !91
  store i16 23130, ptr %i.bv, align 8
  store i64 2, ptr %i.bw, align 8, !tbaa !94
  store i8 0, ptr %i.cd, align 2, !tbaa !92
  %i.cr = invoke noundef range(i32 0, 6) i32 @_ZNK4i18n12phonenumbers15PhoneNumberUtil11ParseHelperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_bbPNS0_11PhoneNumberE(ptr noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %13, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %2)
          to label %_ZNK4i18n12phonenumbers15PhoneNumberUtil5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PNS0_11PhoneNumberE.exit unwind label %bb.z ; 2 uses

_ZNK4i18n12phonenumbers15PhoneNumberUtil5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PNS0_11PhoneNumberE.exit: ; preds = %._crit_edge.i.i
  %i.cs = load ptr, ptr %13, align 8, !tbaa !95   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bv
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PNS0_11PhoneNumberE.exit
  %i.cu = load i64, ptr %i.bv, align 8, !tbaa !92
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4i18n12phonenumbers15PhoneNumberUtil5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_PNS0_11PhoneNumberE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.cw = load ptr, ptr %8, align 8, !tbaa !95    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bx
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cy = load i64, ptr %i.bx, align 8, !tbaa !92
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN4i18n12phonenumbers12StringHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #32
  %i.da = load ptr, ptr %11, align 8, !tbaa !95   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.by
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
end_hunk_5
begin_hunk_6_@_ZN4i18n12phonenumbers29PhoneNumberRegExpsAndMappingsD2Ev:bb.a

bb.u:                                             ; preds = %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit19
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #33
  unreachable

_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit20: ; preds = %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit19
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKicESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef %i.ec)
          to label %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit21 unwind label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit20
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  tail call void @__clang_call_terminate(ptr %i.ee) #33
  unreachable

_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit21: ; preds = %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit20
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKicESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, ptr noundef %i.eh)
          to label %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit22 unwind label %bb.w

bb.w:                                             ; preds = %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit21
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  tail call void @__clang_call_terminate(ptr %i.ej) #33
  unreachable

_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit22: ; preds = %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit21
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !150 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpCacheEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit22
  tail call void @_ZN4i18n12phonenumbers11RegExpCacheD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.el) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 56) #35
  br label %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpCacheEED2Ev.exit

_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpCacheEED2Ev.exit: ; preds = %_ZNSt3mapIicSt4lessIiESaISt4pairIKicEEED2Ev.exit22, %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !147 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %_ZN5boost10scoped_ptrIKN4i18n12phonenumbers21AbstractRegExpFactoryEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpCacheEED2Ev.exit
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !47
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.eo) #32, !inline_history !5
  br label %_ZN5boost10scoped_ptrIKN4i18n12phonenumbers21AbstractRegExpFactoryEED2Ev.exit

_ZN5boost10scoped_ptrIKN4i18n12phonenumbers21AbstractRegExpFactoryEED2Ev.exit: ; preds = %_ZN5boost10scoped_ptrIN4i18n12phonenumbers11RegExpCacheEED2Ev.exit, %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !95 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN5boost10scoped_ptrIKN4i18n12phonenumbers21AbstractRegExpFactoryEED2Ev.exit
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !92
  %i.ey = add i64 %i.ex, 1
  tail call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZN5boost10scoped_ptrIKN4i18n12phonenumbers21AbstractRegExpFactoryEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !95 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !92
  %i.fe = add i64 %i.fd, 1
  tail call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !95 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !92
  %i.fk = add i64 %i.fj, 1
  tail call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !95 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !92
  %i.fq = add i64 %i.fp, 1
  tail call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !95 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !92
  %i.fw = add i64 %i.fv, 1
  tail call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.fx = load ptr, ptr %0, align 8, !tbaa !95    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !92
  %i.gb = add i64 %i.ga, 1
  tail call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE19EmplaceDecomposableclIiJRKSt21piecewise_construct_tSt5tupleIJOiEESN_IJOS6_EEEEESD_INSH_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !682, !nonnull !131, !align !683 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load i32, ptr %2, align 4, !tbaa !127    ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = add i64 %i.d, ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 11376068507788127593  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g                      ; 2 uses
  %i.j = trunc i128 %i.i to i64                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !155  ; 2 uses
  %i.m = lshr i64 %i.j, 7
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = lshr i64 %i.n, 12
  %i.p = xor i64 %i.m, %i.o
  %i.q = trunc i128 %i.i to i8
  %i.r = and i8 %i.q, 127
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn.i = phi i64 [ %i.p, %bb.a ], [ %i.ao, %bb.c ]
  %.sroa.12.0.i = phi i64 [ 0, %bb.a ], [ %i.an, %bb.c ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.l             ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.6.0.i
  %i.x = load <16 x i8>, ptr %i.w, align 1, !tbaa !92 ; 2 uses
  %i.y = icmp eq <16 x i8> %i.t, %i.x
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not49.i = icmp eq i16 %i.z, 0
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.aa = zext i16 %i.z to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %.sroa.018.050.i = phi i32 [ %i.ak, %.critedge.i ], [ %i.aa, %.lr.ph.preheader.i ] ; 3 uses
  %i.ab = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.018.050.i, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add i64 %.sroa.6.0.i, %i.ac
  %i.ae = and i64 %i.ad, %i.l                     ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !160
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !127
  %i.ai = icmp eq i32 %i.ah, %i.c
  br i1 %i.ai, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE22find_or_prepare_insertIiEESD_ImbERKT_.exit, label %.critedge.i, !prof !169

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %.sroa.018.050.i, -1
  %i.ak = and i32 %i.aj, %.sroa.018.050.i         ; 2 uses
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.b
  %i.al = icmp eq <16 x i8> %i.x, splat (i8 -128)
  %i.am = bitcast <16 x i1> %i.al to i16
  %.not48.i = icmp eq i16 %i.am, 0
  br i1 %.not48.i, label %bb.c, label %bb.d, !prof !168

bb.c:                                             ; preds = %._crit_edge.i
  %i.an = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.ao = add i64 %i.an, %.sroa.6.0.i
  br label %bb.b

bb.d:                                             ; preds = %._crit_edge.i
  %i.ap = tail call noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %i.j) ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !682, !nonnull !131, !align !683
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !158
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ap
  %i.au = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #34 ; 3 uses
  %i.av = load i64, ptr %4, align 8, !tbaa !120
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %5, align 8, !tbaa !122
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !127
  store i32 %i.az, ptr %i.au, align 8, !tbaa !685
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  tail call void @_ZN4i18n12phonenumbers13PhoneMetadataC2EOS1_(ptr noundef nonnull align 8 dereferenceable(280) %i.ba, ptr noundef nonnull align 8 dereferenceable(280) %i.ay) #32
  store ptr %i.au, ptr %i.at, align 8, !tbaa !160
  %.pre = load ptr, ptr %1, align 8, !tbaa !682   ; 2 uses
  %.pre19 = load ptr, ptr %.pre, align 8, !tbaa !83
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre20 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !158
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE22find_or_prepare_insertIiEESD_ImbERKT_.exit

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE22find_or_prepare_insertIiEESD_ImbERKT_.exit: ; preds = %.lr.ph.i, %bb.d
  %i.bb = phi ptr [ %.pre20, %bb.d ], [ %i.v, %.lr.ph.i ]
  %i.bc = phi ptr [ %.pre19, %bb.d ], [ %i.b, %.lr.ph.i ]
  %.sroa.3.2.i15 = phi i8 [ 1, %bb.d ], [ 0, %.lr.ph.i ]
  %.sroa.030.2.i13 = phi i64 [ %i.ap, %bb.d ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.030.2.i13
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.030.2.i13
  store ptr %i.bd, ptr %0, align 8, !tbaa !112
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.3.2.i15, ptr %i.bf, align 8, !tbaa !688
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !155  ; 5 uses
  %i.d = lshr i64 %1, 7
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = and i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !92
  %i.k = icmp slt <16 x i8> %i.j, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.l, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.5.019.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.a ]
  %.sroa.10.018.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %i.m = add i64 %.sroa.10.018.i, 16              ; 2 uses
  %i.n = add i64 %i.m, %.sroa.5.019.i
  %i.o = and i64 %i.n, %i.c                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !92
  %i.r = icmp slt <16 x i8> %i.q, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, !llvm.loop !29

_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.5.0.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.l, %bb.a ], [ %i.s, %.lr.ph.i ]
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.5.0.lcssa.i, %i.u
  %i.w = and i64 %i.v, %i.c                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !123  ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !157
  %.not = icmp eq i8 %i.ab, -2
  br i1 %.not, label %.critedge, label %bb.c, !prof !169

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !83
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !155
  %i.ae = tail call { i64, i64 } @_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm(ptr noundef %i.ac, i64 noundef %1, i64 noundef %i.ad)
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !83
  %.pre10 = load i64, ptr %i.x, align 8, !tbaa !123
  %.pre11 = load i64, ptr %i.b, align 8, !tbaa !155
  br label %.critedge

.critedge:                                        ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, %bb.c, %bb.b
  %i.ag = phi i64 [ %.pre11, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %i.ah = phi i64 [ %.pre10, %bb.c ], [ 0, %bb.b ], [ %i.y, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ]
  %i.ai = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ], [ %i.a, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %.sroa.01.0 = phi i64 [ %i.af, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !201
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !201
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.01.0 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !157
  %i.ao = icmp eq i8 %i.an, -128
  %.neg = sext i1 %i.ao to i64
  %i.ap = add i64 %i.ah, %.neg
  store i64 %i.ap, ptr %i.x, align 8, !tbaa !123
  %i.aq = trunc i64 %1 to i8
  %i.ar = and i8 %i.aq, 127                       ; 2 uses
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !157
  %i.as = add i64 %.sroa.01.0, -15
  %i.at = and i64 %i.ag, %i.as
  %i.au = and i64 %i.ag, 15
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.au
  store i8 %i.ar, ptr %i.aw, align 1, !tbaa !157
  ret i64 %.sroa.01.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

; Function Attrs: inlinehint mustprogress uwtable
declare { i64, i64 } @_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, 16
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !201
  %i.g = shl i64 %i.f, 5
  %i.h = mul i64 %i.b, 25
  %.not = icmp ugt i64 %i.g, %i.h
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE27drop_deletes_without_resizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = shl i64 %i.b, 1
  %i.j = or disjoint i64 %i.i, 1
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !155  ; 4 uses
  store i64 %1, ptr %i.d, align 8, !tbaa !155
  %i.f = add i64 %1, 23                           ; 2 uses
  %i.g = shl i64 %1, 3
end_hunk_6
begin_hunk_7_@_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiN4i18n12phonenumbers13PhoneMetadataEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS6_EEE27drop_deletes_without_resizeEv:bb.a
bb.e:                                             ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !157
  %i.bf = icmp eq i8 %i.be, -128
  %i.bg = trunc i128 %i.ab to i8
  %i.bh = and i8 %i.bg, 127                       ; 2 uses
  store i8 %i.bh, ptr %i.bd, align 1, !tbaa !157
  %i.bi = add i64 %i.au, -15
  %i.bj = and i64 %i.bi, %i.d
  %gep45 = getelementptr i8, ptr %invariant.gep, i64 %i.bj
  store i8 %i.bh, ptr %gep45, align 1, !tbaa !157
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.au ; 3 uses
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.u, ptr %i.bk, align 8, !tbaa !160
  store i8 -128, ptr %i.p, align 1, !tbaa !157
  %i.bl = add i64 %.043, -15
  %i.bm = and i64 %i.d, %i.bl
  %gep47 = getelementptr i8, ptr %invariant.gep, i64 %i.bm
  store i8 -128, ptr %gep47, align 1, !tbaa !157
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !160
  store ptr %i.bn, ptr %i.t, align 8, !tbaa !160
  store ptr %i.u, ptr %i.bk, align 8, !tbaa !160
  %i.bo = add i64 %.043, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.3 = phi i64 [ %.043, %bb.b ], [ %.043, %bb.f ], [ %i.bo, %bb.g ], [ %.043, %bb.d ]
  %i.bp = add i64 %.3, 1                          ; 2 uses
  %.not = icmp eq i64 %i.bp, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !690
}

declare void @_ZN4absl7debian318container_internal37ConvertDeletedToEmptyAndFullToDeletedEPNS1_6ctrl_tEm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4i18n12phonenumbers13PhoneMetadataC2EOS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN4i18n12phonenumbers13PhoneMetadataC2EPN6google8protobuf5ArenaEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef null, i1 noundef zeroext false)
          to label %_ZN4i18n12phonenumbers13PhoneMetadataC2Ev.exit unwind label %bb.l

_ZN4i18n12phonenumbers13PhoneMetadataC2Ev.exit:   ; preds = %bb.a
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN4i18n12phonenumbers13PhoneMetadataaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4i18n12phonenumbers13PhoneMetadataC2Ev.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !185  ; 4 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !168

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %i.c, -4
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !187
  br label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.c to ptr
  br label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i

_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.j = phi ptr [ null, %bb.b ], [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !185  ; 4 uses
  %i.m = and i64 %i.l, 2
  %.not.i7.i = icmp eq i64 %i.m, 0
  br i1 %.not.i7.i, label %bb.f, label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i
  %i.n = trunc i64 %i.l to i1
  br i1 %i.n, label %bb.g, label %bb.h, !prof !168

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, -4
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !187
  br label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i

bb.h:                                             ; preds = %bb.f
  %i.r = inttoptr i64 %i.l to ptr
  br label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i: ; preds = %bb.h, %bb.g, %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i
  %i.s = phi ptr [ null, %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i ], [ %i.q, %bb.g ], [ %i.r, %bb.h ]
  %i.t = icmp eq ptr %i.j, %i.s
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i
  invoke void @_ZN4i18n12phonenumbers13PhoneMetadata12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1)
          to label %_ZN4i18n12phonenumbers13PhoneMetadataaSEOS1_.exit unwind label %bb.k

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i
  invoke void @_ZN4i18n12phonenumbers13PhoneMetadata8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1)
          to label %_ZN4i18n12phonenumbers13PhoneMetadataaSEOS1_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

_ZN4i18n12phonenumbers13PhoneMetadataaSEOS1_.exit: ; preds = %_ZN4i18n12phonenumbers13PhoneMetadataC2Ev.exit, %bb.i, %bb.j
  ret void

bb.l:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #33
  unreachable
}

declare void @_ZN4i18n12phonenumbers13PhoneMetadataC2EPN6google8protobuf5ArenaEb(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef, i1 noundef zeroext) unnamed_addr #8

declare void @_ZN4i18n12phonenumbers13PhoneMetadata12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef) local_unnamed_addr #8

declare void @_ZN4i18n12phonenumbers13PhoneMetadata8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i8 } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE22find_or_prepare_insertIS9_EESG_ImbERKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.e = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.b, i64 noundef %i.d)
  %i.f = add i64 %i.e, %i.d
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, 11376068507788127593  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h                      ; 2 uses
  %i.k = trunc i128 %i.j to i64                   ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !161  ; 2 uses
  %i.o = lshr i64 %i.k, 7
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = lshr i64 %i.p, 12
  %i.r = xor i64 %i.o, %i.q
  %i.s = trunc i128 %i.j to i8
  %i.t = and i8 %i.s, 127
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.r, %bb.a ], [ %i.aw, %bb.e ]
  %.sroa.12.0 = phi i64 [ 0, %bb.a ], [ %i.av, %bb.e ]
  %.sroa.6.0 = and i64 %.pn, %i.n                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0
  %i.y = load <16 x i8>, ptr %i.x, align 1, !tbaa !92 ; 2 uses
  %i.z = icmp eq <16 x i8> %i.v, %i.y
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not51 = icmp eq i16 %i.aa, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ab = zext i16 %i.aa to i32
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !124
  %i.ad = load ptr, ptr %1, align 8, !tbaa !95
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !94  ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.018.052 = phi i32 [ %i.ab, %.lr.ph ], [ %i.as, %.critedge ] ; 3 uses
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.018.052, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0, %i.ah
  %i.aj = and i64 %i.ai, %i.n                     ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !126 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !94
  %i.ap = icmp eq i64 %i.ao, %i.ae
  br i1 %i.ap, label %bb.d, label %.critedge, !prof !179

bb.d:                                             ; preds = %bb.c
  br i1 %i.af, label %.thread38, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.am, ptr %i.ad, i64 %i.ae)
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %.thread38, label %.critedge, !prof !180

.critedge:                                        ; preds = %bb.c, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit
  %i.ar = add nsw i32 %.sroa.018.052, -1
  %i.as = and i32 %i.ar, %.sroa.018.052           ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.at = icmp eq <16 x i8> %i.y, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16
  %.not50 = icmp eq i16 %i.au, 0
  br i1 %.not50, label %bb.e, label %bb.f, !prof !168

bb.e:                                             ; preds = %._crit_edge
  %i.av = add i64 %.sroa.12.0, 16                 ; 2 uses
  %i.aw = add i64 %i.av, %.sroa.6.0
  br label %bb.b

bb.f:                                             ; preds = %._crit_edge
  %i.ax = tail call noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.k)
  br label %.thread38

.thread38:                                        ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit, %bb.d, %bb.f
  %.sroa.031.2 = phi i64 [ %i.ax, %bb.f ], [ %i.aj, %bb.d ], [ %i.aj, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit ]
  %.sroa.3.2 = phi i8 [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.031.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !161  ; 5 uses
  %i.d = lshr i64 %1, 7
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = and i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !92
  %i.k = icmp slt <16 x i8> %i.j, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.l, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.5.019.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.a ]
  %.sroa.10.018.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %i.m = add i64 %.sroa.10.018.i, 16              ; 2 uses
  %i.n = add i64 %i.m, %.sroa.5.019.i
  %i.o = and i64 %i.n, %i.c                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !92
  %i.r = icmp slt <16 x i8> %i.q, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, !llvm.loop !29

_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.5.0.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.l, %bb.a ], [ %i.s, %.lr.ph.i ]
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.5.0.lcssa.i, %i.u
  %i.w = and i64 %i.v, %i.c                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !123  ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !157
  %.not = icmp eq i8 %i.ab, -2
  br i1 %.not, label %.critedge, label %bb.c, !prof !169

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !75
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !161
  %i.ae = tail call { i64, i64 } @_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm(ptr noundef %i.ac, i64 noundef %1, i64 noundef %i.ad)
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !75
  %.pre10 = load i64, ptr %i.x, align 8, !tbaa !123
  %.pre11 = load i64, ptr %i.b, align 8, !tbaa !161
  br label %.critedge

.critedge:                                        ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, %bb.c, %bb.b
  %i.ag = phi i64 [ %.pre11, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %i.ah = phi i64 [ %.pre10, %bb.c ], [ 0, %bb.b ], [ %i.y, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ]
  %i.ai = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ], [ %i.a, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %.sroa.01.0 = phi i64 [ %i.af, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !202
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !202
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.01.0 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !157
  %i.ao = icmp eq i8 %i.an, -128
  %.neg = sext i1 %i.ao to i64
  %i.ap = add i64 %i.ah, %.neg
  store i64 %i.ap, ptr %i.x, align 8, !tbaa !123
  %i.aq = trunc i64 %1 to i8
  %i.ar = and i8 %i.aq, 127                       ; 2 uses
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !157
  %i.as = add i64 %.sroa.01.0, -15
  %i.at = and i64 %i.ag, %i.as
  %i.au = and i64 %i.ag, 15
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.au
  store i8 %i.ar, ptr %i.aw, align 1, !tbaa !157
  ret i64 %.sroa.01.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 1024
  br i1 %i.b, label %bb.c, label %bb.d, !prof !168

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @_ZN4absl7debian313hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl7debian313hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZN4absl7debian313hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %2, 8
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.0.copyload.i6.i.i = load i64, ptr %i.g, align 1
  %i.h = shl nuw nsw i64 %2, 3
  %i.i = sub nuw nsw i64 128, %i.h
  %i.j = lshr i64 %.0.copyload.i6.i.i, %i.i
  %i.k = add i64 %.0.copyload.i.i.i, %0
  %i.l = zext i64 %i.k to i128
  %i.m = mul nuw i128 %i.l, 11376068507788127593  ; 2 uses
  %i.n = lshr i128 %i.m, 64
  %i.o = xor i128 %i.n, %i.m
  %i.p = trunc i128 %i.o to i64
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.q = icmp samesign ugt i64 %2, 3
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i23.i = load i32, ptr %1, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  %.0.copyload.i7.i.i = load i32, ptr %i.s, align 1
  %i.t = zext i32 %.0.copyload.i7.i.i to i64
  %i.u = shl nuw nsw i64 %2, 3
  %i.v = add nsw i64 %i.u, -32
  %i.w = shl nuw i64 %i.t, %i.v
  %i.x = zext i32 %.0.copyload.i.i23.i to i64
  %i.y = or i64 %i.w, %i.x
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl7debian313hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i8, ptr %1, align 1, !tbaa !92
  %i.aa = lshr i64 %2, 1                          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !92
  %i.ad = add nsw i64 %2, -1                      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !92
  %i.ag = zext i8 %i.z to i32
  %i.ah = zext i8 %i.ac to i32
  %i.ai = shl nuw nsw i64 %i.aa, 3
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.ah, %i.aj
  %i.al = or i32 %i.ak, %i.ag
  %i.am = zext i8 %i.af to i32
  %.tr.i.i = trunc nuw nsw i64 %i.ad to i32
  %i.an = shl nuw nsw i32 %.tr.i.i, 3
  %i.ao = shl nuw nsw i32 %i.am, %i.an
  %i.ap = or i32 %i.al, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %.021.i = phi i64 [ %i.d, %bb.d ], [ %i.j, %bb.f ], [ %i.y, %bb.h ], [ %i.aq, %bb.j ]
  %.020.i = phi i64 [ %0, %bb.d ], [ %i.p, %bb.f ], [ %0, %bb.h ], [ %0, %bb.j ]
  %i.ar = add i64 %.020.i, %.021.i
  %i.as = zext i64 %i.ar to i128
end_hunk_7
begin_hunk_8_@_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS1_:bb.a
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #36 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !127
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !199
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !128 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !127 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !128 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !693

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #36 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !127
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #36 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !127
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !199
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !128 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !127 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !128 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !693

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !102
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #36 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !127
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEESt10_Select1stISC_ESt4lessIiESaISC_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i8 } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairImbERKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.e = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.b, i64 noundef %i.d)
  %i.f = add i64 %i.e, %i.d
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, 11376068507788127593  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h                      ; 2 uses
  %i.k = trunc i128 %i.j to i64                   ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !162  ; 2 uses
  %i.o = lshr i64 %i.k, 7
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = lshr i64 %i.p, 12
  %i.r = xor i64 %i.o, %i.q
  %i.s = trunc i128 %i.j to i8
  %i.t = and i8 %i.s, 127
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.r, %bb.a ], [ %i.aw, %bb.e ]
  %.sroa.12.0 = phi i64 [ 0, %bb.a ], [ %i.av, %bb.e ]
  %.sroa.6.0 = and i64 %.pn, %i.n                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0
  %i.y = load <16 x i8>, ptr %i.x, align 1, !tbaa !92 ; 2 uses
  %i.z = icmp eq <16 x i8> %i.v, %i.y
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not51 = icmp eq i16 %i.aa, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ab = zext i16 %i.aa to i32
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !142
  %i.ad = load ptr, ptr %1, align 8, !tbaa !95
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !94  ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.018.052 = phi i32 [ %i.ab, %.lr.ph ], [ %i.as, %.critedge ] ; 3 uses
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.018.052, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0, %i.ah
  %i.aj = and i64 %i.ai, %i.n                     ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !144 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !94
  %i.ap = icmp eq i64 %i.ao, %i.ae
  br i1 %i.ap, label %bb.d, label %.critedge, !prof !179

bb.d:                                             ; preds = %bb.c
  br i1 %i.af, label %.thread38, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.am, ptr %i.ad, i64 %i.ae)
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aq, label %.thread38, label %.critedge, !prof !180

.critedge:                                        ; preds = %bb.c, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit
  %i.ar = add nsw i32 %.sroa.018.052, -1
  %i.as = and i32 %i.ar, %.sroa.018.052           ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.at = icmp eq <16 x i8> %i.y, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16
  %.not50 = icmp eq i16 %i.au, 0
  br i1 %.not50, label %bb.e, label %bb.f, !prof !168

bb.e:                                             ; preds = %._crit_edge
  %i.av = add i64 %.sroa.12.0, 16                 ; 2 uses
  %i.aw = add i64 %i.av, %.sroa.6.0
  br label %bb.b

bb.f:                                             ; preds = %._crit_edge
  %i.ax = tail call noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.k)
  br label %.thread38

.thread38:                                        ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit, %bb.d, %bb.f
  %.sroa.031.2 = phi i64 [ %i.ax, %bb.f ], [ %i.aj, %bb.d ], [ %i.aj, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit ]
  %.sroa.3.2 = phi i8 [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.031.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !162  ; 5 uses
  %i.d = lshr i64 %1, 7
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = and i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !92
  %i.k = icmp slt <16 x i8> %i.j, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.l, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.5.019.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.a ]
  %.sroa.10.018.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %i.m = add i64 %.sroa.10.018.i, 16              ; 2 uses
  %i.n = add i64 %i.m, %.sroa.5.019.i
  %i.o = and i64 %i.n, %i.c                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !92
  %i.r = icmp slt <16 x i8> %i.q, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, !llvm.loop !29

_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.5.0.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.l, %bb.a ], [ %i.s, %.lr.ph.i ]
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.5.0.lcssa.i, %i.u
  %i.w = and i64 %i.v, %i.c                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !123  ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !157
  %.not = icmp eq i8 %i.ab, -2
  br i1 %.not, label %.critedge, label %bb.c, !prof !169

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !67
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !162
  %i.ae = tail call { i64, i64 } @_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm(ptr noundef %i.ac, i64 noundef %1, i64 noundef %i.ad)
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !67
  %.pre10 = load i64, ptr %i.x, align 8, !tbaa !123
  %.pre11 = load i64, ptr %i.b, align 8, !tbaa !162
  br label %.critedge

.critedge:                                        ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, %bb.c, %bb.b
  %i.ag = phi i64 [ %.pre11, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %i.ah = phi i64 [ %.pre10, %bb.c ], [ 0, %bb.b ], [ %i.y, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ]
  %i.ai = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ], [ %i.a, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %.sroa.01.0 = phi i64 [ %i.af, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !203
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !203
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.01.0 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !157
  %i.ao = icmp eq i8 %i.an, -128
  %.neg = sext i1 %i.ao to i64
  %i.ap = add i64 %i.ah, %.neg
  store i64 %i.ap, ptr %i.x, align 8, !tbaa !123
  %i.aq = trunc i64 %1 to i8
  %i.ar = and i8 %i.aq, 127                       ; 2 uses
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !157
  %i.as = add i64 %.sroa.01.0, -15
  %i.at = and i64 %i.ag, %i.as
  %i.au = and i64 %i.ag, 15
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.au
  store i8 %i.ar, ptr %i.aw, align 1, !tbaa !157
  ret i64 %.sroa.01.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !162  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, 16
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !203
  %i.g = shl i64 %i.f, 5
  %i.h = mul i64 %i.b, 25
  %.not = icmp ugt i64 %i.g, %i.h
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE27drop_deletes_without_resizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = shl i64 %i.b, 1
  %i.j = or disjoint i64 %i.i, 1
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !162  ; 4 uses
  store i64 %1, ptr %i.d, align 8, !tbaa !162
  %i.f = add i64 %1, 23                           ; 2 uses
  %i.g = shl i64 %1, 3
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc.i.i, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit, !prof !168

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit: ; preds = %bb.a
  %i.j = and i64 %i.f, -8
  %i.k = and i64 %i.h, 9223372036854775800
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #34 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store ptr %i.m, ptr %i.b, align 8, !tbaa !142
  %i.n = add i64 %1, 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 -128, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %1
  store i8 -1, ptr %i.o, align 1, !tbaa !157
  %i.p = lshr i64 %1, 3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !203
  %i.s = add i64 %i.p, %i.r
  %i.t = sub i64 %1, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.t, ptr %i.u, align 8, !tbaa !123
  %.not28 = icmp eq i64 %i.e, 0
  br i1 %.not28, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit, %bb.c
  %.02129 = phi i64 [ %i.br, %bb.c ], [ 0, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02129
  %i.w = load i8, ptr %i.v, align 1, !tbaa !157
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
end_hunk_8
