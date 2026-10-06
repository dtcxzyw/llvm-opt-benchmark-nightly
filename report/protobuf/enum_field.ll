Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/enum_field?download=true
inline.NumInlined: 3078
inline.NumDeleted: 1441
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6google8protobuf8compiler10objectivec15SubstitutionMap3SetIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSA_DpOT_:bb.a
  br i1 %i.cu, label %bb.k, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.j
  br i1 %i.cu, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.cv = load i64, ptr %i.bb, align 8, !tbaa !18 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %.not21.i.i = icmp eq ptr %5, %i.cp
  br i1 %.not21.i.i, label %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit, label %bb.l, !prof !80

bb.l:                                             ; preds = %bb.k
  switch i64 %i.cv, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !20
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.cy = load i64, ptr %i.bb, align 8, !tbaa !18 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !18
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !20
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !17
  br label %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !17
  %i.dd = load i64, ptr %i.bb, align 8, !tbaa !18
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !18
  %i.de = load i64, ptr %i.ay, align 8, !tbaa !20
  store i64 %i.de, ptr %i.cr, align 8, !tbaa !20
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.df = load i64, ptr %i.cr, align 8, !tbaa !20
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !17
  %i.dg = load i64, ptr %i.bb, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !18
  %i.di = load i64, ptr %i.ay, align 8, !tbaa !20
  store i64 %i.di, ptr %i.cr, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.cq, ptr %5, align 8, !tbaa !17
  store i64 %i.df, ptr %i.ay, align 8, !tbaa !20
  br label %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ay, ptr %5, align 8, !tbaa !17
  br label %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit

_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit:   ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.o, %bb.p
  %i.dj = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.cq, %bb.o ], [ %i.ay, %bb.p ], [ %i.ct, %bb.k ]
  store i64 0, ptr %i.bb, align 8, !tbaa !18
  store i8 0, ptr %i.dj, align 1, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.dl = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN6google8protobuf2io7Printer9ValueImplILb1EEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(73) %i.dk, ptr noundef nonnull align 8 dereferenceable(73) %i.bc) #26 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE14_M_move_assignEOS5_(ptr noundef nonnull align 8 dereferenceable(72) %i.dm, ptr noundef nonnull align 8 dereferenceable(72) %i.dn) #26
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %5) #26
  %i.do = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ac
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit
  %i.dq = load i64, ptr %i.ac, align 8, !tbaa !20
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.r

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ds = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ac
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %.body
  %i.du = load i64, ptr %i.ac, align 8, !tbaa !20
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.bx

bb.q:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit
  %i.dw = call noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSD_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler10objectivec15SubstitutionMap3SetIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSA_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::pair.46", align 8     ; 6 uses
  %4 = alloca %"class.google::protobuf::io::Printer::Sub", align 8 ; 23 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = load ptr, ptr %0, align 8, !tbaa !60
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE30find_or_prepare_insert_non_sooIS9_EESD_INSH_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.46") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !85, !range !22, !alias.scope !255, !noundef !23
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !255 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 16 ; 3 uses
  store ptr %i.m, ptr %.sroa.2.0.copyload.i.i, align 8, !tbaa !19
  %i.n = load ptr, ptr %1, align 8, !tbaa !17, !noalias !255 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !255 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !255
  store i64 %i.p, ptr %i.a, align 8, !tbaa !41, !noalias !255
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %.sroa.2.0.copyload.i.i, align 8, !tbaa !17
  %i.s = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !255
  store i64 %i.s, ptr %i.m, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.t = phi ptr [ %i.r, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !20
  store i8 %i.u, ptr %i.t, align 1, !tbaa !20
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.d
  %i.v = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !255 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !18
  %i.x = load ptr, ptr %.sroa.2.0.copyload.i.i, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !255
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 32
  store i64 %i.i, ptr %i.z, align 8, !tbaa !87
  %.pre = load i8, ptr %i.j, align 8, !tbaa !88, !range !22
  %i.aa = trunc nuw i8 %.pre to i1
  br i1 %i.aa, label %bb.m, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit.thread

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit.thread: ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !19
  %i.ac = load ptr, ptr %1, align 8, !tbaa !17    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ad, ptr %1, align 8, !tbaa !17
  store i64 0, ptr %i.aj, align 8, !tbaa !18
  store i8 0, ptr %i.ad, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !19
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ao = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !20
  %.pre15 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18 ; 2 uses
  store <2 x i64> %i.ao, ptr %i.an, align 8, !tbaa !20
  store ptr %i.ad, ptr %1, align 8, !tbaa !17
  store i64 0, ptr %i.am, align 8, !tbaa !18
  store i8 0, ptr %i.ad, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !19
  %i.aq = icmp eq ptr %i.ac, %i.ab
  br i1 %i.aq, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ar = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.as = phi ptr [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.at = phi i64 [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.ac, ptr %4, align 8, !tbaa !17
  %i.aw = load i64, ptr %i.ab, align 8, !tbaa !20
  store i64 %i.aw, ptr %i.ap, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ax = phi ptr [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ar, %bb.e ] ; 6 uses
  %i.ay = phi ptr [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.as, %bb.e ]
  %i.az = phi i64 [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.at, %bb.e ] ; 6 uses
  %i.ba = phi ptr [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ar, %bb.e ] ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !18
  store ptr %i.ab, ptr %5, align 8, !tbaa !17
  store i64 0, ptr %i.ay, align 8, !tbaa !18
  store i8 0, ptr %i.ab, align 8, !tbaa !20
  %i.bc = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !18 ; 3 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store ptr %i.bd, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %i.bg, align 8, !tbaa !18
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false)
  br label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bk = load i64, ptr %i.bd, align 8, !tbaa !20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  store ptr %i.bd, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  store i64 %i.bk, ptr %i.bf, align 8, !tbaa !20, !alias.scope !256
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %.sink.i = phi ptr [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.bl = phi i64 [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store i8 0, ptr %i.bd, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %.sink.i, ptr %i.bm, align 8, !tbaa !19, !alias.scope !257
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !18, !alias.scope !256
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i8 0, ptr %i.bo, align 8, !tbaa !90, !alias.scope !256
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 0, ptr %i.br, align 8, !tbaa !18
  store i8 0, ptr %i.bq, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i8 0, ptr %i.bs, align 8, !tbaa !98
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i8 0, ptr %i.bt, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !102
  %i.by = load ptr, ptr %0, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw [184 x i8], ptr %i.by, i64 %i.bx ; 11 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !17 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 4 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  %i.cd = icmp eq ptr %i.ba, %i.ax                ; 2 uses
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  br i1 %i.cd, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  br i1 %i.cd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.ce = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ce)
  %.not21.i.i = icmp eq ptr %4, %i.bz
  br i1 %.not21.i.i, label %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit, label %bb.h, !prof !80

bb.h:                                             ; preds = %bb.g
  switch i64 %i.az, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.cf = load i8, ptr %i.ba, align 1, !tbaa !20
  store i8 %i.cf, ptr %i.ca, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.ba, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.cg = load i64, ptr %i.bb, align 8, !tbaa !18 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !18
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !20
  %.pre.i.i8 = load ptr, ptr %4, align 8, !tbaa !17
  br label %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.ba, ptr %i.bz, align 8, !tbaa !17
  store i64 %i.az, ptr %i.ck, align 8, !tbaa !18
  %i.cl = load i64, ptr %i.ax, align 8, !tbaa !20
  store i64 %i.cl, ptr %i.cb, align 8, !tbaa !20
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cm = load i64, ptr %i.cb, align 8, !tbaa !20
  store ptr %i.ba, ptr %i.bz, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.az, ptr %i.cn, align 8, !tbaa !18
  %i.co = load i64, ptr %i.ax, align 8, !tbaa !20
  store i64 %i.co, ptr %i.cb, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ca, ptr %4, align 8, !tbaa !17
  store i64 %i.cm, ptr %i.ax, align 8, !tbaa !20
  br label %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ax, ptr %4, align 8, !tbaa !17
  br label %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit

_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit:   ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.k, %bb.l
  %i.cp = phi ptr [ %.pre.i.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ca, %bb.k ], [ %i.ax, %bb.l ], [ %i.ba, %bb.g ]
  store i64 0, ptr %i.bb, align 8, !tbaa !18
  store i8 0, ptr %i.cp, align 1, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cr = call noundef nonnull align 8 dereferenceable(73) ptr @_ZN6google8protobuf2io7Printer9ValueImplILb1EEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(73) %i.cq, ptr noundef nonnull align 8 dereferenceable(73) %i.bm) #26 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bz, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE14_M_move_assignEOS5_(ptr noundef nonnull align 8 dereferenceable(72) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %i.ct) #26
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #26
  %i.cu = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ab
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit
  %i.cw = load i64, ptr %i.ab, align 8, !tbaa !20
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io7Printer3SubaSEOS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.n

bb.m:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_.exit
  %i.cy = call noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io7Printer3SubC2EOS3_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !18
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !17
  store i64 0, ptr %i.ax, align 8, !tbaa !18
  store i8 0, ptr %i.aq, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !98, !range !22, !noundef !23
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !100
  %i.bf = load i8, ptr %i.bd, align 8, !tbaa !100, !range !22, !noundef !23
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.h, label %_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit

bb.h:                                             ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !118
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !tbaa !118
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !106
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !19
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !18 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !17
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !20
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !20
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !18
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !17
  store i64 0, ptr %i.by, align 8, !tbaa !18
  store i8 0, ptr %i.br, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cd = load i64, ptr %i.cc, align 8
  store i64 %i.cd, ptr %i.cb, align 8
  store i8 1, ptr %i.be, align 8, !tbaa !100
  br label %_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit

_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit, %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i = alloca %union.anon, align 8        ; 4 uses
  %.sroa.4 = alloca %union.anon, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.e = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !17
  store i64 0, ptr %i.l, align 8, !tbaa !18
  store i8 0, ptr %i.f, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !19
  %i.n = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8, !tbaa !20
  store i64 %i.o, ptr %.sroa.4, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !17
  store i64 0, ptr %i.p, align 8, !tbaa !18
  store i8 0, ptr %i.f, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.b, align 8, !tbaa !17
  %.sroa.4.0..sroa.4.16. = load i64, ptr %.sroa.4, align 8, !tbaa !20
  store i64 %.sroa.4.0..sroa.4.16., ptr %i.q, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread
  %i.r = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.t = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.y, i1 false)
  store ptr %i.u, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %i.w, align 8, !tbaa !18
  store i8 0, ptr %i.u, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aa = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  store ptr %i.u, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  store i8 0, ptr %i.u, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !20, !alias.scope !276
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i = phi ptr [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ad = phi i64 [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sink.i, ptr %i.ae, align 8, !tbaa !19, !alias.scope !277
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !18, !alias.scope !276
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.ag, align 8, !tbaa !90, !alias.scope !276
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %i.aj, align 8, !tbaa !18
  store i8 0, ptr %i.ai, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 0, ptr %i.ak, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i8 0, ptr %i.al, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 184 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !61
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !107
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.ao = phi ptr [ %.pre9, %bb.c ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -184
  ret ptr %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3 = alloca { i64, %union.anon }, align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #29
  unreachable

_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129)
  %i.l = select i1 %i.j, i64 50127021939428129, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 184
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  %i.s = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %4 = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18   ; 4 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  %.sroa.3.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.3.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.t, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %i.z, align 8, !tbaa !18
  store i8 0, ptr %i.t, align 8, !tbaa !20
  store ptr %4, ptr %i.r, align 8, !tbaa !19
  %i.aa = add nuw nsw i64 %i.w, 1
  %.sroa.3.8..sroa_idx65 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.3.8..sroa_idx65, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !20
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  store <2 x i64> %i.ac, ptr %.sroa.3, align 16, !tbaa !20
  store ptr %i.t, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %i.ab, align 8, !tbaa !18
  store i8 0, ptr %i.t, align 8, !tbaa !20
  store ptr %i.s, ptr %i.r, align 8, !tbaa !17
  %.sroa.3.8..sroa_idx66 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  %.sroa.3.8..sroa.3.16. = load i64, ptr %.sroa.3.8..sroa_idx66, align 8, !tbaa !20
  store i64 %.sroa.3.8..sroa.3.16., ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread
  %i.ad = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !18
  store i64 0, ptr %.sroa.3, align 16, !tbaa !18
  %i.af = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18 ; 3 uses
  %i.al = add nuw nsw i64 %i.ak, 1
  store ptr %i.ag, ptr %3, align 8, !tbaa !17
  store i64 0, ptr %i.aj, align 8, !tbaa !18
  %i.am = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  store ptr %i.ag, ptr %3, align 8, !tbaa !17
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !18
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !20, !alias.scope !281
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ao = phi i64 [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store i8 0, ptr %i.ag, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %.sink.i, ptr %i.ap, align 8, !tbaa !19, !alias.scope !282
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !18, !alias.scope !281
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i8 0, ptr %i.ar, align 8, !tbaa !90, !alias.scope !281
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store i64 0, ptr %i.au, align 8, !tbaa !18
  store i8 0, ptr %i.at, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store i8 0, ptr %i.av, align 8, !tbaa !98
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  store i8 0, ptr %i.aw, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %i.c, %bb.d ] ; 3 uses
  tail call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i) #26
  tail call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.ay, %.lr.ph.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 184 ; 2 uses
  %.not10.i.i.i31 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i31, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i32
  %.012.i.i.i33 = phi ptr [ %i.bb, %.lr.ph.i.i.i32 ], [ %i.az, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i34 = phi ptr [ %i.ba, %.lr.ph.i.i.i32 ], [ %1, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  tail call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i33, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i34) #26
  tail call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i34) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 184 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 184 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37, label %.lr.ph.i.i.i32, !llvm.loop !0

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37: ; preds = %.lr.ph.i.i.i32, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.az, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bb, %.lr.ph.i.i.i32 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #27
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37, %bb.e
  store ptr %i.q, ptr %0, align 8, !tbaa !60
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw [184 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer3SubC2IRA13_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(13) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !19
  %i.c = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.j = load i64, ptr %i.d, align 8, !tbaa !20
  store i64 %i.j, ptr %i.b, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18
  store ptr %i.d, ptr %1, align 8, !tbaa !17
  store i64 0, ptr %i.k, align 8, !tbaa !18
  store i8 0, ptr %i.d, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !19
  %i.p = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %2) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.p, ptr %i.a, align 8, !tbaa !41
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !17
  %i.s = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.s, ptr %i.o, align 8, !tbaa !20
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %2, align 1, !tbaa !20
  store i8 %i.u, ptr %i.t, align 1, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 dereferenceable(13) %2, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !18
  %i.x = load ptr, ptr %3, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !19, !alias.scope !285
  %i.aa = load ptr, ptr %3, align 8, !tbaa !17, !noalias !285 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !18, !noalias !285 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ae, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.n, align 8, !tbaa !17, !alias.scope !285
end_hunk_1
