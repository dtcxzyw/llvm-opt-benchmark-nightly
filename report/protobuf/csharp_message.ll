inline.NumInlined: 2510
inline.NumDeleted: 942
begin_hunk_0_@_ZN6google8protobuf8compiler6csharp16MessageGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  %i.ps = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 7 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %53, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i416 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.pv = zext i64 xor (i64 ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), i64 7017557537933586031) to i128
  %i.pw = mul nuw i128 %i.pv, 13393509341765846924 ; 2 uses
  %i.px = lshr i128 %i.pw, 64
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler6csharp16MessageGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  %i.abd = add i64 %.sroa.7.0.i489, %i.abc
  %i.abe = and i64 %i.abd, %i.aab
  %i.abf = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.qa, i64 %i.abe, i64 %.sroa.15.0.i488)
          to label %bb.gh unwind label %bb.gt     ; 2 uses

bb.gg:                                            ; preds = %.critedge18.i498
  %i.abg = add i64 %.sroa.15.0.i488, 16           ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler6csharp16MessageGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  br label %.body472

bb.gh:                                            ; preds = %.thread.i500
  %58 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i416, align 8, !tbaa !66, !noalias !194
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 %i.abf
  %.sroa.0.0.copyload.i.i.i.i23.i501 = load ptr, ptr %i.qf, align 8, !tbaa !66, !noalias !194
  %i.abi = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i501, i64 %i.abf ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %59) ]
  store i64 15, ptr %i.abi, align 8, !tbaa !62
  %.sroa.7618.0..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  store ptr @.str.38, ptr %.sroa.7618.0..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !201
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler6csharp16MessageGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  %i.aco = add i64 %.sroa.7.0.i, %i.acn
  %i.acp = and i64 %i.aco, %i.abk
  %i.acq = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.qk, i64 %i.acp, i64 %.sroa.15.0.i)
          to label %bb.gk unwind label %bb.gt     ; 2 uses

bb.gj:                                            ; preds = %.critedge18.i
  %i.acr = add i64 %.sroa.15.0.i, 16              ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler6csharp16MessageGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  br label %bb.gi

bb.gk:                                            ; preds = %.thread.i477
  %60 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i416, align 8, !tbaa !66, !noalias !202
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 %i.acq
  %.sroa.0.0.copyload.i.i.i.i23.i = load ptr, ptr %i.qf, align 8, !tbaa !66, !noalias !202
  %i.act = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i, i64 %i.acq ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %61) ]
  store i64 5, ptr %i.act, align 8, !tbaa !62
  %.sroa.17.32..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  store ptr @.str.30, ptr %.sroa.17.32..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.1.i.sroa_idx, align 8, !tbaa !201
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8compiler6csharp16MessageGenerator19GenerateCloningCodeEPNS0_2io7PrinterE:bb.a
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase28WriteGeneratedCodeAttributesEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
          to label %bb.b unwind label %bb.o
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8compiler6csharp16MessageGenerator19GenerateCloningCodeEPNS0_2io7PrinterE:bb.a
  %i.li = icmp ne i64 %i.lh, 0
  %i.lj = zext i1 %i.li to i32
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %.noexc151, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i200
  %i.ll = add i16 %.sroa.033.059.i, -1
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8compiler6csharp16MessageGenerator19GenerateCloningCodeEPNS0_2io7PrinterE:bb.a
  %i.lr = add i64 %.sroa.7.0.i, %i.lq
  %i.ls = and i64 %i.lr, %i.kp
  %i.lt = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.dk, i64 %i.ls, i64 %.sroa.15.0.i)
          to label %bb.bk unwind label %bb.cp     ; 2 uses

bb.bj:                                            ; preds = %.critedge18.i
  %i.lu = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.lv = add i64 %i.lu, %.sroa.7.0.i
  br label %bb.bi

.noexc151:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %.pre358 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %bb.bl

bb.bk:                                            ; preds = %.thread.i202
  %22 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !66, !noalias !304
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 %i.lt
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.dp, align 8, !tbaa !66, !noalias !304
  %i.lw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.lt ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %23) ]
  store i64 15, ptr %i.lw, align 8, !tbaa !88
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr @.str.38, ptr %i.lx, align 8, !tbaa !90
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8compiler6csharp16MessageGenerator19GenerateCloningCodeEPNS0_2io7PrinterE:bb.a
  store i8 0, ptr %i.lz, align 8, !tbaa !66
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.noexc151
  %i.mb = phi ptr [ %.pre358, %.noexc151 ], [ %i.lz, %bb.bk ] ; 6 uses
  %.sink76.i284 = phi ptr [ %i.la, %.noexc151 ], [ %i.lw, %bb.bk ] ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.sink76.i284, i64 16 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sink76.i284, i64 32 ; 2 uses
  %i.me = icmp eq ptr %i.mb, %i.md
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf8compiler6csharp16MessageGenerator22GenerateMergingMethodsEPNS0_2io7PrinterE:bb.a
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf8compiler6csharp16MessageGenerator22GenerateMergingMethodsEPNS0_2io7PrinterE:bb.a
  %i.iu = icmp ne i64 %i.it, 0
  %i.iv = zext i1 %i.iu to i32
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %.noexc149, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.ix = add i16 %.sroa.033.059.i, -1
end_hunk_10
begin_hunk_11_@_ZN6google8protobuf8compiler6csharp16MessageGenerator22GenerateMergingMethodsEPNS0_2io7PrinterE:bb.a
  %i.jd = add i64 %.sroa.7.0.i, %i.jc
  %i.je = and i64 %i.jd, %i.ib
  %i.jf = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ce, i64 %i.je, i64 %.sroa.15.0.i)
          to label %bb.ax unwind label %bb.ch     ; 2 uses

bb.aw:                                            ; preds = %.critedge18.i
  %i.jg = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.jh = add i64 %i.jg, %.sroa.7.0.i
  br label %bb.av

.noexc149:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %.pre406 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %bb.ay

bb.ax:                                            ; preds = %.thread.i239
  %31 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !66, !noalias !381
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %i.jf
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.cj, align 8, !tbaa !66, !noalias !381
  %i.ji = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.jf ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %32) ]
  store i64 15, ptr %i.ji, align 8, !tbaa !88
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr @.str.38, ptr %i.jj, align 8, !tbaa !90
end_hunk_11
begin_hunk_12_@_ZN6google8protobuf8compiler6csharp16MessageGenerator22GenerateMergingMethodsEPNS0_2io7PrinterE:bb.a
  store i8 0, ptr %i.jl, align 8, !tbaa !66
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.noexc149
  %i.jn = phi ptr [ %.pre406, %.noexc149 ], [ %i.jl, %bb.ax ] ; 6 uses
  %.sink76.i347 = phi ptr [ %i.im, %.noexc149 ], [ %i.ji, %bb.ax ] ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sink76.i347, i64 16 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sink76.i347, i64 32 ; 2 uses
  %i.jq = icmp eq ptr %i.jn, %i.jp
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA11_cEESF_INSJ_8iteratorEbERKT_:bb.a
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA11_cEESF_INSJ_8iteratorEbERKT_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA13_cEESF_INSJ_8iteratorEbERKT_:bb.a
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA13_cEESF_INSJ_8iteratorEbERKT_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_19
begin_hunk_20_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE4findIS7_EENSJ_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
end_hunk_20
begin_hunk_21_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA20_cEESF_INSJ_8iteratorEbERKT_:bb.a
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
end_hunk_21
begin_hunk_22_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA20_cEESF_INSJ_8iteratorEbERKT_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_22
begin_hunk_23_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA5_cEESF_INSJ_8iteratorEbERKT_:bb.a
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
end_hunk_23
begin_hunk_24_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA5_cEESF_INSJ_8iteratorEbERKT_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_24
begin_hunk_25_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA14_cEESF_INSJ_8iteratorEbERKT_:bb.a
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
end_hunk_25
begin_hunk_26_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA14_cEESF_INSJ_8iteratorEbERKT_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_26
begin_hunk_27_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA16_cEESF_INSJ_8iteratorEbERKT_:bb.a
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
end_hunk_27
begin_hunk_28_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA16_cEESF_INSJ_8iteratorEbERKT_:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_28
