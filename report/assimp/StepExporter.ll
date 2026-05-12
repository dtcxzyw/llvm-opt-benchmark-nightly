inline.NumInlined: 1077
inline.NumDeleted: 524
begin_hunk_0_@_ZN12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS2_12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S5_EEE:bb.a
  %3 = alloca %"class.std::tuple.84", align 1     ; 3 uses
  %4 = alloca %"class.std::tuple.81", align 8     ; 4 uses
  %5 = alloca %"class.std::tuple.84", align 1     ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS2_12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S5_EEE:bb.a
  %i.n = call ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pre.pre = load ptr, ptr %i.a, align 8
  br label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.pre = phi ptr [ %.pre.pre, %.critedge.i ], [ %0, %bb.c ]
  %.sroa.06.0.i = phi ptr [ %i.n, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.p = load <16 x float>, ptr %i.o, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  %6 = phi ptr [ %.pre, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.q = phi <16 x float> [ %i.p, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.a ] ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 1028
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 1044
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 1060
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1076
  %i.v = load <4 x float>, ptr %i.r, align 4      ; 4 uses
  %i.w = load <4 x float>, ptr %i.s, align 4      ; 4 uses
  %i.x = shufflevector <16 x float> %i.q, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS2_12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S5_EEE:bb.a
  %.0811.i.i.i.i9 = phi ptr [ %.19.i.i.i.i10, %.lr.ph.i.i.i.i7 ], [ %i.bh, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp ult ptr %i.bj, %6                  ; 2 uses
  %.19.i.i.i.i10 = select i1 %i.bk, ptr %.0811.i.i.i.i9, ptr %.012.i.i.i.i8 ; 6 uses
  %.1.in.v.i.i.i.i11 = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 %.1.in.v.i.i.i.i11
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS2_12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S5_EEE:bb.a
bb.e:                                             ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i10, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp ult ptr %6, %i.bn
  br i1 %i.bo, label %.critedge.i17, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19

.critedge.i17:                                    ; preds = %bb.e, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15, %bb.d
end_hunk_3
