Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/text_format?download=true
inline.NumInlined: 5480
inline.NumDeleted: 2033
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetFieldLocationEPKNS0_15FieldDescriptorEj:bb.a
  %i.eu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #39
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorIN6google8protobuf10TextFormat18ParseLocationRangeEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.ac
  %i.ev = phi ptr [ null, %bb.ac ], [ %i.eu, %_ZNSt15__new_allocatorIN6google8protobuf10TextFormat18ParseLocationRangeEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.ev, ptr %i.el, align 8, !tbaa !104
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !106
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.es
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !105
  %i.ez = load ptr, ptr %i.em, align 8, !tbaa !136 ; 2 uses
  %i.fa = load ptr, ptr %i.en, align 8, !tbaa !136 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ez, %i.fa
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf10TextFormat13FieldLocationEEC2IRKS5_TnNSt9enable_ifIXsr17internal_statusor19IsConstructionValidILb0ES5_T_Lb0EEE5valueEiE4typeELi0EEEOSB_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ev, %bb.ae ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ez, %bb.ae ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !108
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fb, %i.fa
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf10TextFormat13FieldLocationEEC2IRKS5_TnNSt9enable_ifIXsr17internal_statusor19IsConstructionValidILb0ES5_T_Lb0EEE5valueEiE4typeELi0EEEOSB_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4absl12lts_202505128StatusOrIN6google8protobuf10TextFormat13FieldLocationEEC2IRKS5_TnNSt9enable_ifIXsr17internal_statusor19IsConstructionValidILb0ES5_T_Lb0EEE5valueEiE4typeELi0EEEOSB_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.ae
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ev, %bb.ae ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.ew, align 8, !tbaa !106
  store i64 1, ptr %0, align 8, !tbaa !131
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf10TextFormat13FieldLocationEEC2IRKS5_TnNSt9enable_ifIXsr17internal_statusor19IsConstructionValidILb0ES5_T_Lb0EEE5valueEiE4typeELi0EEEOSB_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %.body
  %.pn19 = phi { ptr, i32 } [ %i.d, %.body ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %.pn19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetTreeForNestedEPKNS0_15FieldDescriptorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !79
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67, !nonnull !84, !noundef !84
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !69, !noalias !382
  %i.v = and i64 %i.u, 65535
  %i.w = lshr i64 %i.s, 7
  %i.x = xor i64 %i.v, %i.w
  %i.y = trunc i64 %i.s to i8
  %i.z = and i8 %i.y, 127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6.i.i = phi i64 [ %i.x, %bb.e ], [ %i.av, %bb.h ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.e ], [ %i.au, %bb.h ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.b    ; 4 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !tbaa !67 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.017.046.i.i.i = phi i16 [ %i.ar, %bb.g ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.6.0.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.b                     ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !79
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %.thread32.i.i.i, label %bb.g, !prof !127

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.al
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = add i16 %.sroa.017.046.i.i.i, -1
  %i.ar = and i16 %i.aq, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.as = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not43.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not43.i.i.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i, !prof !128

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.au = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.av = add i64 %i.au, %.sroa.6.0.i.i.i
  br label %bb.f, !llvm.loop !381

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ap, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE10find_largeIS8_EENSR_8iteratorERKT_m.exit.i.i ], [ %.fca.1.insert.i.i.i.i, %bb.d ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %bb.b ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit
  %i.ay = extractvalue { ptr, ptr } %.pn.i.i, 1   ; 2 uses
  %i.az = icmp eq i32 %2, -1
  %spec.store.select = select i1 %i.az, i32 0, i32 %2
  %i.ba = sext i32 %spec.store.select to i64      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !120
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !124 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %.not = icmp sgt i64 %i.bi, %i.ba
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ba
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !123
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit, %bb.i, %bb.j
  %.0 = phi ptr [ %i.bk, %bb.j ], [ null, %bb.i ], [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE4findIS8_EENSR_14const_iteratorERKT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { ptr, ptr } @_ZN6google8protobuf10TextFormat6Parser19UnsetFieldsMetadata15GetUnsetFieldIdERKNS0_7MessageERKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10TextFormat7Printer19HardenedPrintStringESt17basic_string_viewIcSt11char_traitsIcEEPNS1_17BaseTextGeneratorE(i64 %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.8, i64 noundef 1), !inline_history !4
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %.thread, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.sroa.0.039 = phi i64 [ %0, %.lr.ph.i.preheader.lr.ph ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 8 uses
  %.sroa.10.038 = phi ptr [ %1, %.lr.ph.i.preheader.lr.ph ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.thread.i
  %.02561.i = phi i64 [ %i.v, %.thread.i ], [ 0, %.lr.ph.i.preheader ] ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.10.038, i64 %.02561.i ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !67    ; 3 uses
  %i.i = icmp slt i8 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i, label %bb.b

_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i: ; preds = %.lr.ph.i
  %i.j = add nuw i64 %.02561.i, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.0.039, i64 %i.j) ; 2 uses
  %.029.i53 = add nuw i64 %.02561.i, 1            ; 2 uses
  %i.k = icmp ult i64 %.029.i53, %.sroa.0.039
  br i1 %i.k, label %.lr.ph, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = add nsw i8 %i.h, -32
  %i.m = icmp ult i8 %i.l, 95
  br i1 %i.m, label %bb.c, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %bb.b
  switch i8 %i.h, label %.thread.i [
    i8 34, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 39, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i8 92, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
  ]

_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i: ; preds = %.lr.ph
  %.029.i = add nuw i64 %.029.i54, 1              ; 2 uses
  %i.n = icmp ult i64 %.029.i, %.sroa.0.039
  br i1 %i.n, label %.lr.ph, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge, !llvm.loop !383

.lr.ph:                                           ; preds = %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i
  %.029.i54 = phi i64 [ %.029.i, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i ], [ %.029.i53, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.10.038, i64 %.029.i54
  %i.p = load i8, ptr %i.o, align 1, !tbaa !67
  %i.q = icmp slt i8 %i.p, 0
  br i1 %i.q, label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i, label %._crit_edge, !llvm.loop !383

._crit_edge:                                      ; preds = %.lr.ph
  br label %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge, !llvm.loop !383

_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge: ; preds = %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i, %._crit_edge, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i
  %.029.lcssa.i = phi i64 [ %.029.i54, %._crit_edge ], [ %umax.i, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.preheader.i ], [ %umax.i, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i ]
  %i.r = sub nuw i64 %.029.lcssa.i, %.02561.i     ; 2 uses
  %i.s = call noundef i64 @utf8_range_ValidPrefix(ptr noundef nonnull %i.g, i64 noundef %i.r) ; 3 uses
  %.not.i = icmp eq i64 %i.s, %i.r
  %i.t = add i64 %.02561.i, -1
  %i.u = add i64 %i.t, %i.s
  br i1 %.not.i, label %.thread.i, label %.thread51.split.loop.exit57.i

.thread.i:                                        ; preds = %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge, %bb.c
  %.32845.i = phi i64 [ %i.u, %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge ], [ %.02561.i, %bb.c ]
  %i.v = add i64 %.32845.i, 1                     ; 2 uses
  %i.w = icmp ult i64 %i.v, %.sroa.0.039
  br i1 %i.w, label %.lr.ph.i, label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit, !llvm.loop !384

.thread51.split.loop.exit57.i:                    ; preds = %_ZN6google8protobuf12_GLOBAL__N_121DefinitelyNeedsEscapeEh.exit.i._crit_edge
  %i.x = add i64 %i.s, %.02561.i
  br label %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %bb.c, %bb.c, %bb.c, %.thread.i, %.thread51.split.loop.exit57.i
  %.5.i = phi i64 [ %i.x, %.thread51.split.loop.exit57.i ], [ %.02561.i, %bb.c ], [ %.02561.i, %bb.c ], [ %.02561.i, %bb.c ], [ %.02561.i, %bb.b ], [ %.sroa.0.039, %.thread.i ] ; 4 uses
  %.not = icmp eq i64 %.5.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.0.039, i64 %.5.i)
  %i.y = load ptr, ptr %2, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.sroa.10.038, i64 noundef %.sroa.speculated.i), !inline_history !5
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.10.038, i64 %.5.i
  %i.ac = sub i64 %.sroa.0.039, %.5.i             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.10.1 = phi ptr [ %.sroa.10.038, %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.ab, %bb.d ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.039, %_ZN6google8protobuf12_GLOBAL__N_120SkipPassthroughBytesESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 1, ptr nonnull %.sroa.10.1)
  %i.ae = load ptr, ptr %3, align 8, !tbaa !66
  %i.af = load i64, ptr %i.e, align 8, !tbaa !65
  %i.ag = load ptr, ptr %2, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ae, i64 noundef %i.af)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.f, !inline_history !5

_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.e
  %i.aj = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.al = load i64, ptr %i.f, align 8, !tbaa !67
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator11PrintStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.10.1, i64 1
  %i.ao = add i64 %.sroa.0.1, -1                  ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.thread, label %.lr.ph.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.f
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.f
  %i.at = load i64, ptr %i.f, align 8, !tbaa !67
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %i.aq

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.d, %bb.a
  %i.av = load ptr, ptr %2, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.8, i64 noundef 1), !inline_history !4
  ret void
}

declare void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6google8protobuf10TextFormat6FinderD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf10TextFormat6FinderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf10TextFormat6FinderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10TextFormat6Finder13FindExtensionEPNS0_7MessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %i.g = load ptr, ptr %2, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.j = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool28FindExtensionByPrintableNameEPKNS0_10DescriptorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull %i.b, i64 %i.i, ptr %i.g)
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10TextFormat6Finder21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.e = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull %1, i32 noundef %2)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10TextFormat6Finder11FindAnyTypeERKNS0_7MessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %i.g = load ptr, ptr %3, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65
  %i.j = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindMessageTypeByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 %i.i, ptr %i.g)
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @_ZNK6google8protobuf10TextFormat6Finder20FindExtensionFactoryEPKNS0_15FieldDescriptorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf10TextFormat6ParserC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 36), (40, 48)) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 2147483647, ptr %i.a, align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.b, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf10TextFormat6Parser5ParseEPNS0_2io19ZeroCopyInputStreamEPNS0_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::TextFormat::Parser::ParserImpl", align 16 ; 24 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.e = load i8, ptr %i.d, align 1, !tbaa !385, !range !83, !noundef !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.f = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.j = load <4 x i8>, ptr %i.i, align 1, !tbaa !173
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.l = load i8, ptr %i.k, align 1, !tbaa !174, !range !83, !noundef !84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.n = load i8, ptr %i.m, align 2, !tbaa !175, !range !83, !noundef !84
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !176, !range !83, !noundef !84
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !170  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.u = load <2 x ptr>, ptr %0, align 8, !tbaa !177
  store <2 x ptr> %i.u, ptr %3, align 16, !tbaa !177
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.h, ptr %i.v, align 16, !tbaa !188
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6google8protobuf10TextFormat6Parser10ParserImpl20ParserErrorCollectorE, i64 16), ptr %i.w, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %3, ptr %i.x, align 16, !tbaa !189
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  invoke void @_ZN6google8protobuf2io9TokenizerC1EPNS1_19ZeroCopyInputStreamEPNS1_14ErrorCollectorE(ptr noundef nonnull align 8 dereferenceable(193) %i.y, ptr noundef %1, ptr noundef nonnull %i.w)
          to label %bb.b unwind label %bb.d

end_hunk_0
