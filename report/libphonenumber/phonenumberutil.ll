Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumberutil?download=true
inline.NumInlined: 4537
inline.NumDeleted: 1449
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4i18n12phonenumbers13LoggerHandlerlsIA33_cEERS1_RKT_:bb.a
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA33_cE6DoWorkB5cxx11ERA33_Kc.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 dereferenceable(33) %1, i64 %i.d, i1 false)
  br label %_ZN4i18n12phonenumbers15ConvertToStringIA33_cE6DoWorkB5cxx11ERA33_Kc.exit

_ZN4i18n12phonenumbers15ConvertToStringIA33_cE6DoWorkB5cxx11ERA33_Kc.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !123, !noalias !318 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !94, !alias.scope !318
  %i.l = load ptr, ptr %2, align 8, !tbaa !95, !alias.scope !318
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !318
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

.split.us:                                        ; preds = %bb.a, %4
  %.pn.i.us = phi i64 [ %6, %4 ], [ %i.r, %bb.a ]
  %.sroa.12.0.i.us = phi i64 [ %5, %4 ], [ 0, %bb.a ]
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
  %2 = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %3 = bitcast <16 x i1> %2 to i16
  %.not43.i.us = icmp eq i16 %3, 0
  br i1 %.not43.i.us, label %4, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit, !prof !168

4:                                                ; preds = %._crit_edge.i.us
  %5 = add i64 %.sroa.12.0.i.us, 16               ; 2 uses
  %6 = add i64 %5, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !322

.split:                                           ; preds = %bb.a, %bb.b
  %.pn.i = phi i64 [ %i.bo, %bb.b ], [ %i.r, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.bn, %bb.b ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.n             ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !92 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.v, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not47.i = icmp eq i16 %i.au, 0
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.av = zext i16 %i.au to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, %.lr.ph.preheader.i
  %.sroa.014.048.i = phi i32 [ %i.bk, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i ], [ %i.av, %.lr.ph.preheader.i ] ; 3 uses
  %i.aw = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.048.i, i1 true)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add i64 %.sroa.6.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.n                     ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !126 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !94
  %i.be = icmp eq i64 %i.bd, %.fr12
  br i1 %i.be, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, !prof !179

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i: ; preds = %.lr.ph.i
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !95
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bf, ptr %i.y, i64 %.fr12)
  %i.bg = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, !prof !180

.thread31.i:                                      ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.aj, %.lr.ph.i.us.us ], [ %i.az, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.us-phi
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %.us-phi
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %.lr.ph.i
  %i.bj = add nsw i32 %.sroa.014.048.i, -1
  %i.bk = and i32 %i.bj, %.sroa.014.048.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, %.split
  %i.bl = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %.not43.i = icmp eq i16 %i.bm, 0
  br i1 %.not43.i, label %bb.b, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit, !prof !168

bb.b:                                             ; preds = %._crit_edge.i
  %i.bn = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.6.0.i
  br label %.split, !llvm.loop !322

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread31.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bi, %.thread31.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.bh, %.thread31.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
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
end_hunk_0
begin_hunk_1_@_ZNK4i18n12phonenumbers15PhoneNumberUtil32FormatNsnUsingPatternWithCarrierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_12NumberFormatENS1_17PhoneNumberFormatES9_PS7_:bb.a

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.em, ptr %9, align 8, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ae, %bb.af
  %i.fd = phi ptr [ %i.ei, %bb.ae ], [ %i.em, %bb.af ], [ %i.el, %bb.aa ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.fe, align 8, !tbaa !94
  store i8 0, ptr %i.fd, align 1, !tbaa !92
  %i.ff = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

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

.split.us:                                        ; preds = %bb.a, %4
  %.pn.i.us = phi i64 [ %6, %4 ], [ %i.r, %bb.a ]
  %.sroa.12.0.i.us = phi i64 [ %5, %4 ], [ 0, %bb.a ]
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
  %2 = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %3 = bitcast <16 x i1> %2 to i16
  %.not43.i.us = icmp eq i16 %3, 0
  br i1 %.not43.i.us, label %4, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit, !prof !168

4:                                                ; preds = %._crit_edge.i.us
  %5 = add i64 %.sroa.12.0.i.us, 16               ; 2 uses
  %6 = add i64 %5, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !362

.split:                                           ; preds = %bb.a, %bb.b
  %.pn.i = phi i64 [ %i.bo, %bb.b ], [ %i.r, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.bn, %bb.b ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.n             ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !92 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.v, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not47.i = icmp eq i16 %i.au, 0
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.av = zext i16 %i.au to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.lr.ph.preheader.i
  %.sroa.014.048.i = phi i32 [ %i.bk, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i ], [ %i.av, %.lr.ph.preheader.i ] ; 3 uses
  %i.aw = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.048.i, i1 true)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add i64 %.sroa.6.0.i, %i.ax
  %i.az = and i64 %i.ay, %i.n                     ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !144 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !94
  %i.be = icmp eq i64 %i.bd, %.fr12
  br i1 %i.be, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !179

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i: ; preds = %.lr.ph.i
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !95
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bf, ptr %i.y, i64 %.fr12)
  %i.bg = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !180

.thread31.i:                                      ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.aj, %.lr.ph.i.us.us ], [ %i.az, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.us-phi
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %.us-phi
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i
  %i.bj = add nsw i32 %.sroa.014.048.i, -1
  %i.bk = and i32 %i.bj, %.sroa.014.048.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.split
  %i.bl = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %.not43.i = icmp eq i16 %i.bm, 0
  br i1 %.not43.i, label %bb.b, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit, !prof !168

bb.b:                                             ; preds = %._crit_edge.i
  %i.bn = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bo = add i64 %i.bn, %.sroa.6.0.i
  br label %.split, !llvm.loop !362

_ZN4absl7debian318container_internal12raw_hash_setINS1_17NodeHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread31.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bi, %.thread31.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %i.bh, %.thread31.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
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
end_hunk_1
