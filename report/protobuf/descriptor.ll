inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNK6google8protobuf20FileDescriptorTables38FieldsByCamelcaseNamesLazyInitInternalEv:bb.a
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !343
  %i.bb = icmp sgt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt4pairIPKvSt17basic_string_viewIcSt11char_traitsIcEEEPKN6google8protobuf15FieldDescriptorEEENS0_13hash_internal4HashISB_EESt8equal_toISB_ESaIS4_IKSB_SG_EEEixISB_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEEOSB_.exit
  store ptr %i.z, ptr %i.au, align 8, !tbaa !337
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE14const_iteratorppEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.023.031, i64 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.8.032, i64 8 ; 2 uses
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !300 ; 2 uses
  %i.bf = icmp slt i8 %i.be, -1
  br i1 %i.bf, label %.lr.ph.i.i.i19, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i19:                                   ; preds = %bb.h, %.lr.ph.i.i.i19
  %i.bg = phi ptr [ %i.bq, %.lr.ph.i.i.i19 ], [ %i.bd, %bb.h ]
  %i.bh = phi ptr [ %i.bp, %.lr.ph.i.i.i19 ], [ %i.bc, %bb.h ] ; 2 uses
  %i.bi = load <16 x i8>, ptr %i.bh, align 1, !tbaa !22
  %i.bj = icmp slt <16 x i8> %i.bi, splat (i8 -1)
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = zext i16 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bl, 1
  %i.bn = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bm, i1 true)
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo ; 2 uses
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !300 ; 2 uses
  %i.bs = icmp slt i8 %i.br, -1
  br i1 %i.bs, label %.lr.ph.i.i.i19, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !324

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i19, %bb.h
  %.sroa.023.1 = phi ptr [ %i.bc, %bb.h ], [ %i.bp, %.lr.ph.i.i.i19 ]
  %.sroa.8.1 = phi ptr [ %i.bd, %bb.h ], [ %i.bq, %.lr.ph.i.i.i19 ]
  %i.bt = phi i8 [ %i.be, %bb.h ], [ %i.br, %.lr.ph.i.i.i19 ]
  %i.bu = icmp eq i8 %i.bt, -1
  br i1 %i.bu, label %._crit_edge, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE14const_iteratorppEv.exit, !prof !163
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf14DescriptorPool6Tables9AddSymbolESt17basic_string_viewIcSt11char_traitsIcEENS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(416) %0, i64 %1, ptr nofree readnone captures(none) %2, ptr %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.google::protobuf::Symbol", align 8 ; 6 uses
  store ptr %3, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !346 ; 2 uses
  %i.b = icmp ne i64 %.val.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %.val.i.i.i.i.i.i.i, 2
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !79, !noalias !361
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.d, align 8, !tbaa !19, !noalias !361
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.g = tail call { i64, ptr } @_ZNK6google8protobuf6Symbol9full_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !361 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1
  %i.j = call { i64, ptr } @_ZNK6google8protobuf6Symbol9full_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !361 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1
  %i.m = icmp eq i64 %i.h, %i.k
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE9push_backERKS2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.i, ptr %i.l, i64 %i.h), !noalias !361
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE9push_backERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.p = call { i64, ptr } @_ZNK6google8protobuf6Symbol9full_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !361 ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.p, 1
  %i.s = call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.r, i64 noundef %i.q), !noalias !361
  %i.t = add i64 %i.q, 87
  %i.u = add i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 127
  %i.x = call { i64, ptr } @_ZNK6google8protobuf6Symbol9full_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !361 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.x, 1
  %i.aa = call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.z, i64 noundef %i.y), !noalias !361
  %i.ab = add i64 %i.y, 87
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.ac, i8 noundef signext %i.w), !noalias !361
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !22, !noalias !361
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val6.i.i.i.i.i.i.i.i, i64 %i.ad
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %.val24.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !22, !noalias !364
  tail call void @llvm.prefetch.p0(ptr readonly %.val24.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !364
  %i.ah = call { i64, ptr } @_ZNK6google8protobuf6Symbol9full_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !364 ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ah, 1
  %i.ak = call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.aj, i64 noundef %i.ai), !noalias !364
  %i.al = add i64 %i.ai, 87
  %i.am = add i64 %i.al, %i.ak                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !79, !noalias !367
  %i.ap = and i64 %i.ao, 65535
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !367 ; 3 uses
  %i.ar = lshr i64 %i.am, 7
  %i.as = xor i64 %i.ar, %i.ap
  %i.at = trunc i64 %i.am to i8
  %i.au = and i8 %i.at, 127
  %.val22.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !22, !noalias !364
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.aw = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.ax = shufflevector <16 x i8> %i.aw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %bb.g ], [ %i.bw, %bb.j ]
  %.sroa.15.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bv, %bb.j ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i, %i.aq ; 5 uses
  %.val21.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !22, !noalias !364
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.i.i.i.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1), !noalias !364
  %i.az = getelementptr inbounds nuw i8, ptr %.val22.i.i.i.i.i.i.i.i, i64 %.sroa.7.0.i.i.i.i.i.i.i.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !22, !noalias !364 ; 2 uses
  %i.bb = icmp eq <16 x i8> %i.ax, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not64.i.i.i.i.i.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not64.i.i.i.i.i.i.i.i, label %.critedge18.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %.critedge.i.i.i.i.i.i.i.i
  %.sroa.040.065.i.i.i.i.i.i.i.i = phi i16 [ %i.bs, %.critedge.i.i.i.i.i.i.i.i ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.040.065.i.i.i.i.i.i.i.i, i1 true)
  %.val.i4.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !22, !noalias !364
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = add i64 %.sroa.7.0.i.i.i.i.i.i.i.i, %i.be
  %i.bg = and i64 %i.bf, %i.aq
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.val.i4.i.i.i.i.i.i.i, i64 %i.bg
  %i.bi = call { i64, ptr } @_ZNK6google8protobuf6Symbol9full_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh), !noalias !364 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0      ; 3 uses
  %i.bk = extractvalue { i64, ptr } %i.bi, 1
  %i.bl = call { i64, ptr } @_ZNK6google8protobuf6Symbol9full_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !364 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = icmp eq i64 %i.bj, %i.bm
  br i1 %i.bo, label %bb.i, label %.critedge.i.i.i.i.i.i.i.i, !prof !162

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bp = icmp eq i64 %i.bj, 0
  br i1 %i.bp, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE9push_backERKS2_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i: ; preds = %bb.i
  %bcmp.i.i.i.i.i.i.i8.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.bk, ptr %i.bn, i64 %i.bj), !noalias !364
  %i.bq = icmp eq i32 %bcmp.i.i.i.i.i.i.i8.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE9push_backERKS2_.exit, label %.critedge.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.br = add i16 %.sroa.040.065.i.i.i.i.i.i.i.i, -1
  %i.bs = and i16 %i.br, %.sroa.040.065.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.critedge18.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.critedge18.i.i.i.i.i.i.i.i:                      ; preds = %.critedge.i.i.i.i.i.i.i.i, %bb.h
  %i.bt = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.bu = bitcast <16 x i1> %i.bt to i16          ; 2 uses
  %.not58.i.i.i.i.i.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not58.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i, !prof !163

bb.j:                                             ; preds = %.critedge18.i.i.i.i.i.i.i.i
  %i.bv = add i64 %.sroa.15.0.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.7.0.i.i.i.i.i.i.i.i
  br label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %.critedge18.i.i.i.i.i.i.i.i
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bu, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = add i64 %.sroa.7.0.i.i.i.i.i.i.i.i, %i.by
  %i.ca = and i64 %i.bz, %i.aq
  %i.cb = call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.am, i64 %i.ca, i64 %.sroa.15.0.i.i.i.i.i.i.i.i), !noalias !364
  %.val26.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !22, !noalias !364
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val26.i.i.i.i.i.i.i.i, i64 %i.cb
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i, %bb.f, %bb.c
  %.sink.i.i.i.i.i.i = phi ptr [ %i.cc, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_120SymbolByFullNameHashENS8_18SymbolByFullNameEqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i ], [ %i.e, %bb.c ], [ %i.af, %bb.f ]
  %.val.i.i.i.i.i.i = load i64, ptr %4, align 8, !tbaa !269, !noalias !370 ; 3 uses
  store i64 %.val.i.i.i.i.i.i, ptr %.sink.i.i.i.i.i.i, align 8, !tbaa !269, !noalias !370
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !125 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.cf, %i.ch
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %.val.i.i.i.i.i.i, ptr %i.cf, align 8, !tbaa !269
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !125
  br label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE9push_backERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !65 ; 8 uses
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 4 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.n, label %_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.283) #44
  unreachable

_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.co = ashr exact i64 %i.cm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #45 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm
  store i64 %.val.i.i.i.i.i.i, ptr %i.cv, align 8, !tbaa !269
  %.not10.i.i.i.i.i = icmp eq ptr %i.cj, %i.cf
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %5 = ptrtoaddr ptr %i.cf to i64
  %6 = ptrtoaddr ptr %i.cj to i64
  %i.cx = sub i64 %5, %6
  %i.cy = add i64 %i.cx, -8                       ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 72
  %i.db = sub i64 %i.cl, %i.cw
  %diff.check = icmp ugt i64 %i.db, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.da, 4611686018427387900     ; 3 uses
  %i.dc = shl i64 %n.vec, 3                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cu, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.cj, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cu, i64 %i.df ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.cj, i64 %i.df ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.dg = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep22, align 8, !tbaa !269, !alias.scope !374, !noalias !371
  %wide.load23 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !269, !alias.scope !374, !noalias !371
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !269, !alias.scope !371, !noalias !374
  store <2 x i64> %wide.load23, ptr %i.dh, align 8, !tbaa !269, !alias.scope !371, !noalias !374
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader25

.lr.ph.i.i.i.i.i.preheader25:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader25, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader25 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader25 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.dj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !269, !alias.scope !374, !noalias !371
  store i64 %i.dj, ptr %.012.i.i.i.i.i, align 8, !tbaa !269, !alias.scope !371, !noalias !374
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, %i.cf
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !379

_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cu, %_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dd, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cm) #41
  br label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.cu, ptr %i.cd, align 8, !tbaa !65
  store ptr %i.dm, ptr %i.ce, align 8, !tbaa !125
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.dn, ptr %i.cg, align 8, !tbaa !68
  br label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.l
  %i.do = phi i1 [ true, %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ true, %bb.l ], [ false, %bb.e ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i ], [ false, %bb.i ]
  ret i1 %i.do
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf20FileDescriptorTables19AddAliasUnderParentEPKvSt17basic_string_viewIcSt11char_traitsIcEENS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, ptr %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.150", align 8    ; 7 uses
  %6 = alloca %"struct.std::pair.150", align 8    ; 7 uses
  %7 = alloca %"struct.std::pair.150", align 8    ; 6 uses
  %8 = alloca %"struct.std::pair.150", align 8    ; 6 uses
  %9 = alloca %"struct.std::pair.150", align 8    ; 6 uses
  %10 = alloca %"struct.std::pair.150", align 8   ; 7 uses
  %11 = alloca %"struct.std::pair.150", align 8   ; 7 uses
  %12 = alloca %"class.google::protobuf::Symbol", align 8 ; 6 uses
  store ptr %4, ptr %12, align 8
  %.val.i.i.i.i.i.i.i = load i64, ptr %0, align 8, !tbaa !73, !noalias !380 ; 2 uses
  %i.a = icmp ne i64 %.val.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ult i64 %.val.i.i.i.i.i.i.i, 2
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !79, !noalias !395
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !tbaa !19, !noalias !395
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40, !noalias !395
  call void @_ZNK6google8protobuf6Symbol15parent_name_keyEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.150") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40, !noalias !395
  call void @_ZNK6google8protobuf6Symbol15parent_name_keyEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.150") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %12), !noalias !395
  %i.f = load ptr, ptr %10, align 8, !tbaa !325, !noalias !395
  %i.g = load ptr, ptr %11, align 8, !tbaa !325, !noalias !395
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !19, !noalias !395 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !270, !noalias !395
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !19, !noalias !395
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !270, !noalias !395
  %i.k = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.l, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSC_8iteratorEbERKT_.exit.thread6.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !395
  %i.m = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSC_8iteratorEbERKT_.exit.thread6.i.i.i.i.i.i, label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSC_8iteratorEbERKT_.exit.thread6.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40, !noalias !395
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE6insertIS6_Li0EEESt4pairINSC_8iteratorEbERKT_.exit

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40, !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40, !noalias !395
  call void @_ZNK6google8protobuf6Symbol15parent_name_keyEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.150") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !395
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = load ptr, ptr %9, align 8, !tbaa !323, !noalias !395
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = xor i64 %i.p, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = xor i64 %i.s, %i.p
  %i.u = mul i64 %i.t, -2543921745674291987
  %i.v = call noundef i64 @llvm.bswap.i64(i64 %i.u)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !395 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !270, !noalias !395
  %i.w = call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %i.v, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !395
  %i.x = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 87
  %i.y = add i64 %i.x, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40, !noalias !395
  %i.z = trunc i64 %i.y to i8
  %i.aa = and i8 %i.z, 127
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40, !noalias !395
  call void @_ZNK6google8protobuf6Symbol15parent_name_keyEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.150") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %12), !noalias !395
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ac = load ptr, ptr %8, align 8, !tbaa !323, !noalias !395
  %i.ad = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ae = xor i64 %i.ad, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = call noundef i64 @llvm.bswap.i64(i64 %i.af)
  %i.ah = xor i64 %i.ag, %i.ad
  %i.ai = mul i64 %i.ah, -2543921745674291987
  %i.aj = call noundef i64 @llvm.bswap.i64(i64 %i.ai)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !19, !noalias !395 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !270, !noalias !395
  %i.ak = call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %i.aj, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !395
  %i.al = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 87
  %i.am = add i64 %i.al, %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40, !noalias !395
  %i.an = call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.am, i8 noundef signext %i.aa), !noalias !395
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !22, !noalias !395
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i.i.i.i.i.i.i, i64 %i.an
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN6google8protobuf6SymbolEEENS5_12_GLOBAL__N_118SymbolByParentHashENS8_16SymbolByParentEqESaIS6_EE22find_or_prepare_insertIS6_EESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val30.i.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !22, !noalias !398
  tail call void @llvm.prefetch.p0(ptr readonly %.val30.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40, !noalias !398
  call void @_ZNK6google8protobuf6Symbol15parent_name_keyEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.150") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %12), !noalias !398
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = load ptr, ptr %7, align 8, !tbaa !323, !noalias !398
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = xor i64 %i.at, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.av = mul i64 %i.au, -2543921745674291987
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf14DescriptorPool6Tables16InternFeatureSetEONS0_10FeatureSetE:bb.a
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteISD_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SG_EEE30find_or_prepare_insert_non_sooIS9_EESK_INSO_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1094") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !525, !range !49, !alias.scope !528, !noundef !51
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !528 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16 ; 3 uses
  store ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !16
  %i.g = load ptr, ptr %3, align 8, !tbaa !20, !noalias !528 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23, !noalias !528 ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.l, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.g, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !20
  %i.m = load i64, ptr %i.e, align 8, !tbaa !22, !noalias !528
  store i64 %i.m, ptr %i.f, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23, !noalias !528
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !23
  store ptr %i.e, ptr %3, align 8, !tbaa !20, !noalias !528
  store i64 0, ptr %i.o, align 8, !tbaa !23, !noalias !528
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !529
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i24 = load ptr, ptr %.sroa.2.0..sroa_idx.i23, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %.noexc
  %.pre12 = load ptr, ptr %3, align 8, !tbaa !20  ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.r = icmp eq ptr %.pre12, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.e, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %.pre12, i64 noundef %i.t) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sroa.2.0.copyload.i.pn = phi ptr [ %.sroa.2.0.copyload.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.2.0.copyload.i24, %.thread ], [ %.sroa.2.0.copyload.i, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.pn, i64 32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !531  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.e, label %_ZNSt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #45, !noalias !532 ; 7 uses
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef null)
          to label %bb.f unwind label %bb.o, !noalias !532

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq ptr %i.w, %1
  br i1 %i.x, label %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !535, !noalias !532 ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !163

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !537, !noalias !532
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = inttoptr i64 %i.z to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !535, !noalias !532 ; 3 uses
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !163

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.ai = add nsw i64 %i.ag, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !537, !noalias !532
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.al = inttoptr i64 %i.ag to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i7.i.i.i.i = phi ptr [ %i.ak, %bb.j ], [ %i.al, %bb.k ]
  %i.am = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i7.i.i.i.i
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.n, !noalias !532

bb.m:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.n, !noalias !532

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #42, !noalias !532
  unreachable

bb.o:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #42, !noalias !532
  unreachable

_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.f, %bb.l, %bb.m
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !531 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !531
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6google8protobuf10FeatureSetEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN6google8protobuf10FeatureSetEEclEPS2_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.ar) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 72) #41
  %.pre13 = load ptr, ptr %i.u, align 8, !tbaa !531
  br label %_ZNSt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteIS2_EED2Ev.exit

bb.p:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.p
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !22
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.as

_ZNSt10unique_ptrIN6google8protobuf10FeatureSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %_ZNKSt14default_deleteIN6google8protobuf10FeatureSetEEclEPS2_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = phi ptr [ %i.w, %_ZSt11make_uniqueIN6google8protobuf10FeatureSetEJS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ %.pre13, %_ZNKSt14default_deleteIN6google8protobuf10FeatureSetEEclEPS2_.exit.i.i.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret ptr %i.ay
}

declare void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf14DescriptorPool6Tables13AllocateBytesEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(416) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = add nsw i64 %i.b, 8
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.g, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !90
  br label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !87   ; 11 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.283) #44
  unreachable

_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.d, ptr %i.w, align 8, !tbaa !91
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %2 = ptrtoaddr ptr %i.g to i64
  %3 = ptrtoaddr ptr %i.k to i64
  %i.x = sub i64 %2, %3
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.l, -8
  %i.ac = sub i64 %i.ab, %i.m
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ae
  %scevgep13 = getelementptr i8, ptr %i.k, i64 %i.ae
  %bound0 = icmp ult ptr %i.v, %scevgep13
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.k, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ai ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.k, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.aj = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !91, !alias.scope !545, !noalias !540
  %wide.load15 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !91, !alias.scope !545, !noalias !540
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !91, !alias.scope !548, !noalias !545
  store <2 x i64> %wide.load15, ptr %i.ak, align 8, !tbaa !91, !alias.scope !548, !noalias !545
  %i.al = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !91, !alias.scope !545, !noalias !540
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !91, !alias.scope !545, !noalias !540
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader17

.lr.ph.i.i.i.i.i.preheader17:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader17, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader17 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !91, !alias.scope !543, !noalias !540
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !91, !alias.scope !540, !noalias !543
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !91, !alias.scope !543, !noalias !540
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !551

_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_realloc_insertIJRPiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #41
  br label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_realloc_insertIJRPiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_realloc_insertIJRPiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !87
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !94
  br label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_realloc_insertIJRPiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  store i32 %1, ptr %i.d, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit
  %.0 = phi ptr [ %i.as, %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12emplace_backIJRPiEEERS6_DpOT_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf20FileDescriptorTables20BuildLocationsByPathEPSt4pairIPKS1_PKNS0_14SourceCodeInfoEE(ptr nofree noundef readonly captures(none) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.1109", align 8   ; 6 uses
  %2 = alloca %"struct.absl::lts_20250512::strings_internal::AlphaNumFormatterImpl", align 1 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !552
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !554  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !552
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !557
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = add i64 %i.l, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %.0.i.i.i.i = select i1 %i.n, ptr %i.j, ptr %i.r
  %i.s = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !323 ; 5 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !558
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !559, !noalias !561
  %i.x = and i32 %i.w, 1
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !561
  %.0.v.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.aa
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !566, !noalias !561
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !568
  call void @_ZN4absl12lts_2025051216strings_internal13JoinAlgorithmIN6google8protobuf8internal16RepeatedIteratorIKiEENS1_21AlphaNumFormatterImplEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SG_St17basic_string_viewIcSD_EOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull %.0.i.i.i.i.i.i, ptr nonnull %i.ae, i64 1, ptr nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !568
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf23SourceCodeInfo_LocationEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1109") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.af = load i8, ptr %i.f, align 8, !tbaa !577, !range !49, !alias.scope !580, !noundef !51
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !580 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16 ; 3 uses
  store ptr %i.ah, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !16
  %i.ai = load ptr, ptr %3, align 8, !tbaa !20, !noalias !580 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !580 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.am, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.ai, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !20
  %i.an = load i64, ptr %i.g, align 8, !tbaa !22, !noalias !580
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !22
  %.pre = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !580
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !23
  store ptr %i.g, ptr %3, align 8, !tbaa !20, !noalias !580
  store i64 0, ptr %i.h, align 8, !tbaa !23, !noalias !580
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32
  store ptr null, ptr %i.aq, align 8, !tbaa !581
  %.sroa.2.0.copyload.i20 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i20, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  store ptr %i.s, ptr %i.ar, align 8, !tbaa !584
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %.noexc
  %.pre15 = load ptr, ptr %3, align 8, !tbaa !20  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #42
  unreachable

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !554
  %i.d = mul i32 %i.c, 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = add i32 %i.f, %i.d                       ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !3
  %i.h = load ptr, ptr %0, align 8, !tbaa !557
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = add i64 %i.i, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = select i1 %i.k, ptr %0, ptr %i.n         ; 2 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !554  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %.idx = shl nsw i64 %i.q, 3
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %.idx
  %.not38 = icmp eq i32 %i.p, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %.not.i21 = icmp eq i64 %1, 0
  %i.t = add i64 %1, 18
  %i.u = select i1 %.not.i21, i64 17, i64 %i.t    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %.promoted = load i32, ptr %i.s, align 8
  %.promoted66 = load i32, ptr %i.v, align 4
  br label %bb.d

._crit_edge:                                      ; preds = %bb.j, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayINS0_15FieldDescriptorEEEvi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %i.w = phi i32 [ %.promoted66, %.lr.ph ], [ %i.ef, %bb.j ] ; 3 uses
  %i.x = phi i32 [ %.promoted, %.lr.ph ], [ %i.ae, %bb.j ] ; 2 uses
  %.sroa.026.039 = phi ptr [ %i.o, %.lr.ph ], [ %i.eg, %bb.j ] ; 2 uses
  %i.y = phi i32 [ %i.g, %.lr.ph ], [ %.sink, %bb.j ] ; 3 uses
  %i.z = load ptr, ptr %.sroa.026.039, align 8, !tbaa !323 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ac = and i32 %i.ab, 32
  %.not36 = icmp eq i32 %i.ac, 0
  br i1 %.not36, label %bb.e, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit: ; preds = %bb.d
  %i.ad = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.ad, ptr %i.s, align 8, !tbaa !3
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit, %bb.d
  %i.ae = phi i32 [ %i.ad, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit ], [ %i.x, %bb.d ]
  %i.af = phi i32 [ %.pre, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayISD_EEvi.exit ], [ %i.ab, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !276
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, -4
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 16 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !23 ; 13 uses
  %i.ao = and i32 %i.af, 16
  %.not37 = icmp eq i32 %i.ao, 0
  br i1 %.not37, label %.critedge.i.thread, label %.critedge.i

.critedge.i.thread:                               ; preds = %bb.e
  %.025.i30 = add i64 %i.u, %i.an
  br label %bb.f

.critedge.i:                                      ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !276
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, -4                       ; 2 uses
  %.025.i = add i64 %i.u, %i.an                   ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.f, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread

bb.f:                                             ; preds = %.critedge.i.thread, %.critedge.i
  %.025.i34 = phi i64 [ %.025.i30, %.critedge.i.thread ], [ %.025.i, %.critedge.i ] ; 4 uses
  %i.au = icmp eq i64 %i.an, 0
  br i1 %i.au, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %i.al, align 1, !tbaa !22
  %i.aw = add i8 %i.av, -97
  %i.ax = icmp ult i8 %i.aw, 26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 3 uses
  br i1 %i.ax, label %.lr.ph.i.i, label %.lr.ph.i.i.i.i35.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.0146.i.i = phi i32 [ %spec.select.i.i, %bb.h ], [ 0, %bb.g ]
  %.0185.i.i = phi ptr [ %i.bd, %bb.h ], [ %i.al, %bb.g ] ; 2 uses
  %i.az = load i8, ptr %.0185.i.i, align 1, !tbaa !22 ; 2 uses
  %i.ba = add i8 %i.az, -65
  %i.bb = icmp ult i8 %i.ba, 26
  br i1 %i.bb, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bc = icmp eq i8 %i.az, 95
  %spec.select.i.i = select i1 %i.bc, i32 1, i32 %.0146.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0185.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.ay
  br i1 %.not.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i, label %.lr.ph.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i: ; preds = %bb.h
  %i.be = icmp eq i32 %spec.select.i.i, 0
  br i1 %i.be, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i
  %min.iters.check88 = icmp ult i64 %i.an, 4
  br i1 %min.iters.check88, label %.lr.ph.i.i.i.i.i.preheader106, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec91 = and i64 %i.an, -4                    ; 3 uses
  %i.bf = getelementptr i8, ptr %i.al, i64 %n.vec91
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next99, %vector.body92 ] ; 2 uses
  %vec.phi94 = phi <2 x i64> [ zeroinitializer, %vector.ph89 ], [ %i.bl, %vector.body92 ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph89 ], [ %i.bm, %vector.body92 ]
  %next.gep96 = getelementptr i8, ptr %i.al, i64 %index93 ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep96, i64 2
  %wide.load97 = load <2 x i8>, ptr %next.gep96, align 1, !tbaa !22
  %wide.load98 = load <2 x i8>, ptr %i.bg, align 1, !tbaa !22
  %i.bh = icmp eq <2 x i8> %wide.load97, splat (i8 95)
  %i.bi = icmp eq <2 x i8> %wide.load98, splat (i8 95)
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = zext <2 x i1> %i.bi to <2 x i64>
  %i.bl = add <2 x i64> %vec.phi94, %i.bj         ; 2 uses
  %i.bm = add <2 x i64> %vec.phi95, %i.bk         ; 2 uses
  %index.next99 = add nuw i64 %index93, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next99, %n.vec91
  br i1 %i.bn, label %middle.block100, label %vector.body92, !llvm.loop !2217

middle.block100:                                  ; preds = %vector.body92
  %bin.rdx101 = add <2 x i64> %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx101) ; 2 uses
  %cmp.n102 = icmp eq i64 %i.an, %n.vec91
  br i1 %cmp.n102, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i, label %.lr.ph.i.i.i.i.i.preheader106

.lr.ph.i.i.i.i.i.preheader106:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block100
  %.08.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block100 ]
  %.057.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bf, %middle.block100 ]
  br label %.lr.ph.i.i.i.i.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.i, %bb.f
  %i.bp = trunc i64 %.025.i34 to i32
  %i.bq = add i32 %i.bp, 7
  %i.br = and i32 %i.bq, -8
  %i.bs = add i32 %i.y, %i.br
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader106, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ]
  %.057.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader106 ] ; 2 uses
  %i.bt = load i8, ptr %.057.i.i.i.i.i, align 1, !tbaa !22
  %i.bu = icmp eq i8 %i.bt, 95
  %i.bv = zext i1 %i.bu to i64
  %spec.select.i.i.i.i.i = add nuw nsw i64 %.08.i.i.i.i.i, %i.bv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.ay
  br i1 %.not.i.i.i.i.i, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2218

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block100
  %spec.select.i.i.i.i.i.lcssa = phi i64 [ %i.bo, %middle.block100 ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bx = add i64 %.025.i34, %i.an
  %i.by = sub i64 %i.bx, %spec.select.i.i.i.i.i.lcssa
  %i.bz = trunc i64 %i.by to i32
  %i.ca = and i32 %i.bz, -8
  %i.cb = add i32 %i.ca, 8
  %i.cc = add i32 %i.cb, %i.y
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i: ; preds = %.lr.ph.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  br label %.lr.ph.i.i.i.i35.preheader.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread: ; preds = %.critedge.i
  %i.ce = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %.not6.i.i.i.i34.i62 = icmp samesign eq i64 %i.an, 0
  br i1 %.not6.i.i.i.i34.i62, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64, label %.lr.ph.i.i.i.i35.preheader.i

.lr.ph.i.i.i.i35.preheader.i:                     ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread, %bb.g
  %i.cg = phi i1 [ true, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ true, %bb.g ], [ false, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %.025.i32 = phi i64 [ %.025.i34, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ %.025.i34, %bb.g ], [ %.025.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ] ; 2 uses
  %i.ch = phi ptr [ null, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ null, %bb.g ], [ %i.ce, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %i.ci = phi ptr [ %i.cd, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i ], [ %i.ay, %bb.g ], [ %i.cf, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ] ; 4 uses
  %4 = ptrtoaddr ptr %i.ci to i64
  %5 = ptrtoaddr ptr %i.al to i64
  %i.cj = sub i64 %4, %5                          ; 3 uses
  %min.iters.check70 = icmp ult i64 %i.cj, 4
  br i1 %min.iters.check70, label %.lr.ph.i.i.i.i35.i.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %.lr.ph.i.i.i.i35.preheader.i
  %n.vec73 = and i64 %i.cj, -4                    ; 3 uses
  %i.ck = getelementptr i8, ptr %i.al, i64 %n.vec73
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph71
  %index75 = phi i64 [ 0, %vector.ph71 ], [ %index.next81, %vector.body74 ] ; 2 uses
  %vec.phi76 = phi <2 x i64> [ zeroinitializer, %vector.ph71 ], [ %i.cq, %vector.body74 ]
  %vec.phi77 = phi <2 x i64> [ zeroinitializer, %vector.ph71 ], [ %i.cr, %vector.body74 ]
  %next.gep78 = getelementptr i8, ptr %i.al, i64 %index75 ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep78, i64 2
  %wide.load79 = load <2 x i8>, ptr %next.gep78, align 1, !tbaa !22
  %wide.load80 = load <2 x i8>, ptr %i.cl, align 1, !tbaa !22
  %i.cm = icmp eq <2 x i8> %wide.load79, splat (i8 95)
  %i.cn = icmp eq <2 x i8> %wide.load80, splat (i8 95)
  %i.co = zext <2 x i1> %i.cm to <2 x i64>
  %i.cp = zext <2 x i1> %i.cn to <2 x i64>
  %i.cq = add <2 x i64> %vec.phi76, %i.co         ; 2 uses
  %i.cr = add <2 x i64> %vec.phi77, %i.cp         ; 2 uses
  %index.next81 = add nuw i64 %index75, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next81, %n.vec73
  br i1 %i.cs, label %middle.block82, label %vector.body74, !llvm.loop !2219

middle.block82:                                   ; preds = %vector.body74
  %bin.rdx83 = add <2 x i64> %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx83) ; 2 uses
  %cmp.n84 = icmp eq i64 %i.cj, %n.vec73
  br i1 %cmp.n84, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread, label %.lr.ph.i.i.i.i35.i.preheader

.lr.ph.i.i.i.i35.i.preheader:                     ; preds = %.lr.ph.i.i.i.i35.preheader.i, %middle.block82
  %.08.i.i.i.i36.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i35.preheader.i ], [ %i.ct, %middle.block82 ]
  %.057.i.i.i.i37.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i35.preheader.i ], [ %i.ck, %middle.block82 ]
  br label %.lr.ph.i.i.i.i35.i

.lr.ph.i.i.i.i35.i:                               ; preds = %.lr.ph.i.i.i.i35.i.preheader, %.lr.ph.i.i.i.i35.i
  %.08.i.i.i.i36.i = phi i64 [ %spec.select.i.i.i.i38.i, %.lr.ph.i.i.i.i35.i ], [ %.08.i.i.i.i36.i.ph, %.lr.ph.i.i.i.i35.i.preheader ]
  %.057.i.i.i.i37.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i35.i ], [ %.057.i.i.i.i37.i.ph, %.lr.ph.i.i.i.i35.i.preheader ] ; 2 uses
  %i.cu = load i8, ptr %.057.i.i.i.i37.i, align 1, !tbaa !22
  %i.cv = icmp eq i8 %i.cu, 95
  %i.cw = zext i1 %i.cv to i64
  %spec.select.i.i.i.i38.i = add nuw nsw i64 %.08.i.i.i.i36.i, %i.cw ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i37.i, i64 1 ; 2 uses
  %.not.i.i.i.i39.i = icmp eq ptr %i.cx, %i.ci
  br i1 %.not.i.i.i.i39.i, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread, label %.lr.ph.i.i.i.i35.i, !llvm.loop !2220

_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread: ; preds = %.lr.ph.i.i.i.i35.i, %middle.block82
  %spec.select.i.i.i.i38.i.lcssa = phi i64 [ %i.ct, %middle.block82 ], [ %spec.select.i.i.i.i38.i, %.lr.ph.i.i.i.i35.i ] ; 2 uses
  br i1 %i.cg, label %.lr.ph.i.i.i.i43.i.preheader, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64

.lr.ph.i.i.i.i43.i.preheader:                     ; preds = %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread
  %6 = ptrtoaddr ptr %i.ci to i64
  %7 = ptrtoaddr ptr %i.al to i64
  %i.cy = sub i64 %6, %7                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i43.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i43.i.preheader
  %n.vec = and i64 %i.cy, -4                      ; 3 uses
  %i.cz = getelementptr i8, ptr %i.al, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi67 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.al, i64 %index ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !22
  %wide.load68 = load <2 x i8>, ptr %i.da, align 1, !tbaa !22
  %i.db = icmp eq <2 x i8> %wide.load, splat (i8 95)
  %i.dc = icmp eq <2 x i8> %wide.load68, splat (i8 95)
  %i.dd = zext <2 x i1> %i.db to <2 x i64>
  %i.de = zext <2 x i1> %i.dc to <2 x i64>
  %i.df = add <2 x i64> %vec.phi, %i.dd           ; 2 uses
  %i.dg = add <2 x i64> %vec.phi67, %i.de         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !2221

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dg, %i.df
  %i.di = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.i43.i.preheader105

.lr.ph.i.i.i.i43.i.preheader105:                  ; preds = %.lr.ph.i.i.i.i43.i.preheader, %middle.block
  %.08.i.i.i.i44.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i43.i.preheader ], [ %i.di, %middle.block ]
  %.057.i.i.i.i45.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i43.i.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph.i.i.i.i43.i

_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread
  %.0.lcssa.i.i.i.i40.i52 = phi i64 [ %spec.select.i.i.i.i38.i.lcssa, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread ], [ 0, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %i.dj = phi ptr [ %i.ch, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread ], [ %i.ce, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %.025.i3148 = phi i64 [ %.025.i32, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread ], [ %.025.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !23
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i

.lr.ph.i.i.i.i43.i:                               ; preds = %.lr.ph.i.i.i.i43.i.preheader105, %.lr.ph.i.i.i.i43.i
  %.08.i.i.i.i44.i = phi i64 [ %spec.select.i.i.i.i46.i, %.lr.ph.i.i.i.i43.i ], [ %.08.i.i.i.i44.i.ph, %.lr.ph.i.i.i.i43.i.preheader105 ]
  %.057.i.i.i.i45.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i43.i ], [ %.057.i.i.i.i45.i.ph, %.lr.ph.i.i.i.i43.i.preheader105 ] ; 2 uses
  %i.dm = load i8, ptr %.057.i.i.i.i45.i, align 1, !tbaa !22
  %i.dn = icmp eq i8 %i.dm, 95
  %i.do = zext i1 %i.dn to i64
  %spec.select.i.i.i.i46.i = add nuw nsw i64 %.08.i.i.i.i44.i, %i.do ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i45.i, i64 1 ; 2 uses
  %.not.i.i.i.i47.i = icmp eq ptr %i.dp, %i.ci
  br i1 %.not.i.i.i.i47.i, label %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.i43.i, !llvm.loop !2222

_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %.lr.ph.i.i.i.i43.i, %middle.block
  %spec.select.i.i.i.i46.i.lcssa = phi i64 [ %i.di, %middle.block ], [ %spec.select.i.i.i.i46.i, %.lr.ph.i.i.i.i43.i ]
  %i.dq = sub i64 %i.an, %spec.select.i.i.i.i46.i.lcssa
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64
  %.0.lcssa.i.i.i.i40.i51 = phi i64 [ %.0.lcssa.i.i.i.i40.i52, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64 ], [ %spec.select.i.i.i.i38.i.lcssa, %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %.025.i3147 = phi i64 [ %.025.i3148, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64 ], [ %.025.i32, %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %i.dr = phi i64 [ %i.dl, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64 ], [ %i.dq, %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %factor.i = shl i64 %i.an, 1
  %i.ds = add i64 %factor.i, 3
  %i.dt = add i64 %i.ds, %.025.i3147
  %i.du = sub i64 %i.dt, %.0.lcssa.i.i.i.i40.i51
  %i.dv = add i64 %i.du, %i.dr
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = add i32 %i.dw, 7
  %i.dy = and i32 %i.dx, -8
  %i.dz = add i32 %i.dy, %i.y
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i
  %.sink = phi i32 [ %i.bs, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i ], [ %i.cc, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i ], [ %i.dz, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i ] ; 2 uses
  store i32 %.sink, ptr %i.e, align 8, !tbaa !3
  %i.ea = load i32, ptr %i.aa, align 8, !tbaa !3
  %i.eb = and i32 %i.ea, 1032
  %or.cond = icmp eq i32 %i.eb, 1032
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !22
  switch i32 %i.ed, label %bb.j [
    i32 9, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit
    i32 12, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit
  ]

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit: ; preds = %bb.i, %bb.i
  %i.ee = add nsw i32 %i.w, 1                     ; 2 uses
  store i32 %i.ee, ptr %i.v, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit
  %i.ef = phi i32 [ %i.w, %bb.i ], [ %i.ee, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit ], [ %i.w, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.026.039, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.r
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SF_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSQ_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SE_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSV_DpOSW_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #41
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SE_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSV_DpOSW_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SE_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSV_DpOSW_.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef zeroext i1 @_ZN4absl12lts_202505129CUnescapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !22
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #41
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2IPKPKcEET_SI_mRKS9_RKSA_RKSB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::pair.377", align 8    ; 6 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread, label %bb.c

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread: ; preds = %bb.b
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i13, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = lshr i64 -2305843009213693952, %i.f
  %i.h = icmp ugt i64 %i.e, %i.g
  %.neg.i.i = sext i1 %i.h to i64
  %i.i = add nsw i64 %i.f, %.neg.i.i
  %i.j = and i64 %i.i, 4294967295
  %i.k = lshr i64 -1, %i.j
  br label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit: ; preds = %bb.a, %bb.c
  %.0.i = phi i64 [ %3, %bb.a ], [ %i.k, %bb.c ]  ; 2 uses
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.l = icmp ugt i64 %.0.i, 1
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5mergeEPSK_PSI_:bb.a
  %i.r = udiv i64 %i.q, 24
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.pn.prol = phi ptr [ %.015.i.prol, %.lr.ph.i.prol ], [ %i.k, %.lr.ph.i.preheader ]
  %.01214.i.prol = phi ptr [ %i.t, %.lr.ph.i.prol ], [ %i.o, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.prol, i64 24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.prol, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2379

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i.prol ]
  %i.u = icmp ult i64 %i.q, 72
  br i1 %i.u, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i.3, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.01214.i, i64 24
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.1, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48
  %.015.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.2, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 72
  %.015.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.3, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i, i64 96 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.y, %i.p
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, label %.lr.ph.i, !llvm.loop !2353

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre25.pre = load i8, ptr %i.a, align 2, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit, %bb.a
  %.pre25 = phi i8 [ %.pre25.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %.not.i20 = icmp eq i8 %i.aa, 0
  br i1 %.not.i20, label %bb.b, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit
  %.pre26 = load i8, ptr %i.l, align 1, !tbaa !22
  br label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0.in24 = phi i8 [ %.pre25, %bb.b ], [ %.0, %bb.c ]
  %.01923 = phi i8 [ 0, %bb.b ], [ %i.aj, %bb.c ] ; 2 uses
  %.0 = add i8 %.0.in24, 1                        ; 3 uses
  %i.ad = zext i8 %.01923 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !684 ; 3 uses
  %i.ag = zext i8 %.0 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !684
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 %.0, ptr %i.ai, align 1, !tbaa !22
  store ptr %0, ptr %i.af, align 8, !tbaa !684
  %i.aj = add i8 %.01923, 1                       ; 2 uses
  %i.ak = load i8, ptr %i.l, align 1, !tbaa !22   ; 2 uses
  %.not = icmp ugt i8 %i.aj, %i.ak
  br i1 %.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !2380

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load i8, ptr %i.a, align 2, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge, %.loopexit.loopexit
  %i.al = phi i8 [ %i.ak, %.loopexit.loopexit ], [ %.pre26, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge ]
  %i.am = phi i8 [ %.pre, %.loopexit.loopexit ], [ %.pre25, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit..loopexit_crit_edge ]
  %i.an = add i8 %i.am, 1
  %i.ao = add i8 %i.an, %i.al
  store i8 %i.ao, ptr %i.a, align 2, !tbaa !22
  store i8 0, ptr %i.l, align 1, !tbaa !22
  %i.ap = load ptr, ptr %0, align 8, !tbaa !684   ; 4 uses
  %i.aq = load i8, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22  ; 4 uses
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.at, 1                ; 2 uses
  %i.av = zext i8 %i.as to i32                    ; 2 uses
  %i.aw = and i32 %i.au, 255                      ; 3 uses
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ay ; 3 uses
  %narrow.i = mul nsw i32 %i.ax, 24
  %.idx.i.i = sext i32 %narrow.i to i64           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i
  %.not13.i.i = icmp eq i32 %i.aw, %i.av
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit
  %i.bc = zext i8 %i.aq to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = add nsw i64 %.idx.i.i, -24              ; 2 uses
  %i.bf = udiv i64 %i.be, 24
  %i.bg = add nuw nsw i64 %i.bf, 1
  %xtraiter30 = and i64 %i.bg, 3                  ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.015.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.prol ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01214.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.prol ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.i.prol, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.01214.i.i.prol, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.015.i.i.prol, i64 24 ; 2 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2381

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.015.i.i.unr = phi ptr [ %i.bd, %.lr.ph.preheader.i.i ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.01214.i.i.unr = phi ptr [ %i.ba, %.lr.ph.preheader.i.i ], [ %i.bh, %.lr.ph.i.i.prol ]
  %i.bj = icmp ult i64 %i.be, 72
  br i1 %i.bj, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.01214.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.01214.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.i, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 96
  %.not.i.i.3 = icmp eq ptr %i.bq, %i.bb
  br i1 %.not.i.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i, label %.lr.ph.i.i, !llvm.loop !2353

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 11
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !22
  %.not.i31.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i31.i, label %.preheader.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i
  %i.bu = add i8 %i.aq, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ap, i64 256 ; 3 uses
  %i.bw = zext i8 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !684
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE16clear_and_deleteEPSK_PSI_(ptr noundef %i.by, ptr noundef %2)
  %i.bz = trunc i32 %i.au to i8
  %.033.i = add i8 %i.bz, 1                       ; 2 uses
  %.not34.i = icmp ugt i8 %.033.i, %i.as
  br i1 %.not34.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %.lr.ph37.i
  %.035.i = phi i8 [ %.0.i, %.lr.ph37.i ], [ %.033.i, %.preheader.i ] ; 3 uses
  %i.ca = add i8 %.035.i, -1                      ; 2 uses
  %i.cb = zext i8 %.035.i to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !684 ; 2 uses
  %i.ce = zext i8 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ce
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !684
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i8 %i.ca, ptr %i.cg, align 1, !tbaa !22
  %.0.i = add i8 %.035.i, 1                       ; 2 uses
  %.not.i22 = icmp ugt i8 %.0.i, %i.as
  br i1 %.not.i22, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit, label %.lr.ph37.i, !llvm.loop !2355

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit: ; preds = %.lr.ph37.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i, %.preheader.i
  %i.ch = add i8 %i.as, -1
  store i8 %i.ch, ptr %i.ar, align 1, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !65     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %i.b, i64 %i.p     ; 2 uses
  %i.r = and i64 %1, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> <ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol>, ptr %next.gep, align 8, !tbaa !132
  store <2 x ptr> <ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol>, ptr %i.t, align 8, !tbaa !132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !2382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf6SymbolEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.013.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.01012.i.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.013.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %.01012.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %.01012.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ]
  store ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, ptr %.013.i.i.i, align 8, !tbaa !132
  %i.v = add i64 %.01012.i.i.i, -1                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf6SymbolEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !2383

_ZSt27__uninitialized_default_n_aIPN6google8protobuf6SymbolEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.q, %middle.block ], [ %i.w, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !125
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %i.n, %1
  br i1 %i.x, label %bb.d, label %_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #44
  unreachable

_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.y = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975) ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #45 ; 7 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.f ; 4 uses
  %min.iters.check46 = icmp ult i64 %1, 4
  br i1 %min.iters.check46, label %.lr.ph.i.i.i30.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit
  %n.vec49 = and i64 %1, -4                       ; 3 uses
  %i.ae = shl i64 %n.vec49, 3
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = and i64 %1, 3
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next53, %vector.body50 ] ; 2 uses
  %i.ah = shl i64 %index51, 3
  %next.gep52 = getelementptr i8, ptr %i.ad, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> <ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol>, ptr %next.gep52, align 8, !tbaa !132
  store <2 x ptr> <ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol>, ptr %i.ai, align 8, !tbaa !132
  %index.next53 = add nuw i64 %index51, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next53, %n.vec49
  br i1 %i.aj, label %middle.block54, label %vector.body50, !llvm.loop !2384

middle.block54:                                   ; preds = %vector.body50
  %cmp.n55 = icmp eq i64 %1, %n.vec49
  br i1 %cmp.n55, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf6SymbolEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit, %middle.block54
  %.013.i.i.i31.ph = phi ptr [ %i.ad, %_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.af, %middle.block54 ]
  %.01012.i.i.i32.ph = phi i64 [ %1, %_ZNKSt6vectorIN6google8protobuf6SymbolESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ag, %middle.block54 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.al, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.ph, %.lr.ph.i.i.i30.preheader ] ; 2 uses
  %.01012.i.i.i32 = phi i64 [ %i.ak, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.ph, %.lr.ph.i.i.i30.preheader ]
  store ptr @_ZZN6google8protobuf6SymbolC1EvE11null_symbol, ptr %.013.i.i.i31, align 8, !tbaa !132
  %i.ak = add i64 %.01012.i.i.i32, -1             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  %.not.i.i.i33 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf6SymbolEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !2385

_ZSt27__uninitialized_default_n_aIPN6google8protobuf6SymbolEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block54
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %_ZSt27__uninitialized_default_n_aIPN6google8protobuf6SymbolEmS2_ET_S4_T0_RSaIT1_E.exit35
  %2 = ptrtoaddr ptr %i.b to i64
  %3 = ptrtoaddr ptr %i.c to i64
  %i.am = sub i64 %2, %3
  %i.an = add i64 %i.am, -8                       ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.an, 72
  %i.aq = sub i64 %i.e, %i.ac
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check59, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i37.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.i.i37.preheader
  %n.vec62 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec62, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ab, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.c, i64 %i.ar
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph60
  %index64 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body63 ] ; 2 uses
  %i.au = shl i64 %index64, 3                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.ab, i64 %i.au ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.c, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.av = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !269, !alias.scope !2389, !noalias !2386
  %wide.load67 = load <2 x i64>, ptr %i.av, align 8, !tbaa !269, !alias.scope !2389, !noalias !2386
  %i.aw = getelementptr i8, ptr %next.gep65, i64 16
  store <2 x i64> %wide.load, ptr %next.gep65, align 8, !tbaa !269, !alias.scope !2386, !noalias !2389
  store <2 x i64> %wide.load67, ptr %i.aw, align 8, !tbaa !269, !alias.scope !2386, !noalias !2389
  %index.next68 = add nuw i64 %index64, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.ax, label %middle.block69, label %vector.body63, !llvm.loop !2391

middle.block69:                                   ; preds = %vector.body63
  %cmp.n70 = icmp eq i64 %i.ap, %n.vec62
  br i1 %cmp.n70, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37.preheader73

.lr.ph.i.i.i37.preheader73:                       ; preds = %.lr.ph.i.i.i37.preheader, %middle.block69
  %.012.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i37.preheader ], [ %i.as, %middle.block69 ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i37.preheader ], [ %i.at, %middle.block69 ]
  br label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader73, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i37 ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i37.preheader73 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i37 ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i37.preheader73 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.ay = load i64, ptr %.0911.i.i.i, align 8, !tbaa !269, !alias.scope !2389, !noalias !2386
  store i64 %i.ay, ptr %.012.i.i.i, align 8, !tbaa !269, !alias.scope !2386, !noalias !2389
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i38 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !2392

_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %middle.block69, %_ZSt27__uninitialized_default_n_aIPN6google8protobuf6SymbolEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6google8protobuf6SymbolESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.bb = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #41
  br label %_ZNSt12_Vector_baseIN6google8protobuf6SymbolESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN6google8protobuf6SymbolESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN6google8protobuf6SymbolESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ab, ptr %0, align 8, !tbaa !65
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %1
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !125
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6google8protobuf6SymbolEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6google8protobuf6SymbolESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !166
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !166
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !126
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #44
  unreachable

_ZNKSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #45 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !166
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !166
  br label %_ZSt27__uninitialized_default_n_aIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #41
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit36

_ZNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit36: ; preds = %_ZNSt6vectorIPKN6google8protobuf14FileDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !126
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPKN6google8protobuf14FileDescriptorEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !56     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store ptr null, ptr %.013.i.i.i.prol, align 8, !tbaa !685
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !686
  %i.q = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2393

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i, align 8, !tbaa !685
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !686
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !685
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !686
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  store ptr null, ptr %i.w, align 8, !tbaa !685
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  store i32 0, ptr %i.x, align 8, !tbaa !686
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store ptr null, ptr %i.y, align 8, !tbaa !685
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store i32 0, ptr %i.z, align 8, !tbaa !686
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  store ptr null, ptr %i.aa, align 8, !tbaa !685
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store i32 0, ptr %i.ab, align 8, !tbaa !686
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store ptr null, ptr %i.ac, align 8, !tbaa !685
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  store i32 0, ptr %i.ad, align 8, !tbaa !686
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  store ptr null, ptr %i.ae, align 8, !tbaa !685
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i32 0, ptr %i.af, align 8, !tbaa !686
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112
  store ptr null, ptr %i.ag, align 8, !tbaa !685
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  store i32 0, ptr %i.ah, align 8, !tbaa !686
  %i.ai = add i64 %.01012.i.i.i, -8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !2394

_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !121
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #44
  unreachable

_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 576460752303423487) ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #45 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit ]
  store ptr null, ptr %.013.i.i.i31.prol, align 8, !tbaa !685
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  store i32 0, ptr %i.aq, align 8, !tbaa !686
  %i.ar = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !2395

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i31, align 8, !tbaa !685
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  store i32 0, ptr %i.au, align 8, !tbaa !686
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  store ptr null, ptr %i.av, align 8, !tbaa !685
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  store i32 0, ptr %i.aw, align 8, !tbaa !686
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  store ptr null, ptr %i.ax, align 8, !tbaa !685
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  store i32 0, ptr %i.ay, align 8, !tbaa !686
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store ptr null, ptr %i.az, align 8, !tbaa !685
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  store i32 0, ptr %i.ba, align 8, !tbaa !686
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  store ptr null, ptr %i.bb, align 8, !tbaa !685
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store i32 0, ptr %i.bc, align 8, !tbaa !686
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store ptr null, ptr %i.bd, align 8, !tbaa !685
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 88
  store i32 0, ptr %i.be, align 8, !tbaa !686
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  store ptr null, ptr %i.bf, align 8, !tbaa !685
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  store i32 0, ptr %i.bg, align 8, !tbaa !686
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  store ptr null, ptr %i.bh, align 8, !tbaa !685
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  store i32 0, ptr %i.bi, align 8, !tbaa !686
  %i.bj = add i64 %.01012.i.i.i32, -8             ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !2394

_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i64 16, i1 false), !alias.scope !2396
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i38 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i37, !llvm.loop !518

_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE13_M_deallocateEPS6_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.bn = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bn) #41
  br label %_ZNSt12_Vector_baseISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE13_M_deallocateEPS6_m.exit41

_ZNSt12_Vector_baseISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE13_M_deallocateEPS6_m.exit41: ; preds = %_ZNSt6vectorISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %1
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !121
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bp, ptr %i.h, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairIPKN6google8protobuf10DescriptorEiEmS6_ET_S8_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt4pairIPKN6google8protobuf10DescriptorEiESaIS6_EE13_M_deallocateEPS6_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !87     ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEEmS6_ET_S8_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEEmS6_ET_S8_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !2400
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !90
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #44
  unreachable

_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #45 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !2400
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit
  %2 = ptrtoaddr ptr %i.b to i64
  %3 = ptrtoaddr ptr %i.c to i64
  %i.x = sub i64 %2, %3
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep40 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.u, %scevgep40
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  %i.aj = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !91, !alias.scope !2407, !noalias !2402
  %wide.load42 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !91, !alias.scope !2407, !noalias !2402
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !91, !alias.scope !2410, !noalias !2407
  store <2 x i64> %wide.load42, ptr %i.ak, align 8, !tbaa !91, !alias.scope !2410, !noalias !2407
  %i.al = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !91, !alias.scope !2407, !noalias !2402
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !91, !alias.scope !2407, !noalias !2402
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2412

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader44

.lr.ph.i.i.i.preheader44:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader44, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  %i.an = load i64, ptr %.0911.i.i.i, align 8, !tbaa !91, !alias.scope !2405, !noalias !2402
  store i64 %i.an, ptr %.012.i.i.i, align 8, !tbaa !91, !alias.scope !2402, !noalias !2405
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !91, !alias.scope !2405, !noalias !2402
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2413

_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE13_M_deallocateEPS6_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.aq = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #41
  br label %_ZNSt12_Vector_baseISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE13_M_deallocateEPS6_m.exit37

_ZNSt12_Vector_baseISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE13_M_deallocateEPS6_m.exit37: ; preds = %_ZNSt6vectorISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !90
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.as, ptr %i.h, align 8, !tbaa !94
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEEmS6_ET_S8_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrIiN6google8protobuf14DescriptorPool6Tables11MiscDeleterEESaIS6_EE13_M_deallocateEPS6_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvSt17basic_string_viewIcSt11char_traitsIcEEEPKN6google8protobuf15FieldDescriptorEEENS0_13hash_internal4HashISB_EESt8equal_toISB_ESaIS4_IKSB_SG_EEE30find_or_prepare_insert_non_sooISB_EES4_INSQ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1062") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !323
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = xor i64 %i.e, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = xor i64 %i.h, %i.e
  %i.j = mul i64 %i.i, -2543921745674291987
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !270
  %i.l = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %i.k, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i)
  %i.m = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 87
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !79, !noalias !2414
  %i.q = and i64 %i.p, 65535
  %i.r = load i64, ptr %1, align 8, !tbaa !73, !noalias !2414 ; 3 uses
  %i.s = lshr i64 %i.n, 7
  %i.t = xor i64 %i.q, %i.s
  %i.u = trunc i64 %i.n to i8
  %i.v = and i8 %i.u, 127
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !22 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.t, %bb.a ], [ %i.be, %bb.f ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.bd, %bb.f ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.r                 ; 5 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.7.0
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !22 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ae, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.af = load ptr, ptr %2, align 8, !tbaa !325
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.033.059 = phi i16 [ %i.ae, %.lr.ph ], [ %i.as, %.critedge ] ; 3 uses
  %i.ag = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = add i64 %.sroa.7.0, %i.ah
  %i.aj = and i64 %i.ai, %i.r                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !325
  %i.am = icmp eq ptr %i.al, %i.af
  br i1 %i.am, label %bb.d, label %.critedge, !prof !162

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !19 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !270
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !19
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !270
  %i.ao = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  br i1 %i.ao, label %bb.e, label %.critedge, !prof !162

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i)
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %i.ar = add i16 %.sroa.033.059, -1
  %i.as = and i16 %i.ar, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %.critedge18, label %bb.c

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.at = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.au, 0
  br i1 %.not51, label %bb.f, label %.thread, !prof !163

.thread:                                          ; preds = %.critedge18
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0, %i.aw
  %i.ay = and i64 %i.ax, %i.r
  %i.az = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvSt17basic_string_viewIcSt11char_traitsIcEEEPKN6google8protobuf15FieldDescriptorEEENS0_13hash_internal4HashISB_EESt8equal_toISB_ESaIS4_IKSB_SG_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.n, i64 %i.ay, i64 %.sroa.15.0) ; 2 uses
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !22, !nonnull !51, !noundef !51
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.az
  br label %bb.g

bb.f:                                             ; preds = %.critedge18
  %i.bd = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.be = add i64 %i.bd, %.sroa.7.0
  br label %bb.b

end_hunk_3
