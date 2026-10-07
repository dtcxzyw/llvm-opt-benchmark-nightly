Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/descriptor?download=true
inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf10Descriptor13WellKnownTypeEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSR_PFvSR_hmmE:bb.a
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.p, label %bb.q, !prof !283

bb.p:                                             ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %i.cw = and i64 %i.ct, 15
  %i.cx = add nuw nsw i64 %i.cw, %i.cq
  %i.cy = and i64 %i.cx, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.q:                                             ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %i.cz = and i64 %i.cq, %i.b
  %.not.i = icmp ult i64 %i.cz, %i.w
  br i1 %.not.i, label %bb.r, label %bb.t, !prof !283

bb.r:                                             ; preds = %bb.q
  %i.da = and i64 %i.cq, %i.a                     ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.da
  %i.dc = load <16 x i8>, ptr %i.db, align 1, !tbaa !62
  %i.dd = icmp slt <16 x i8> %i.dc, zeroinitializer
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.de, 0
  br i1 %.not26.i, label %bb.t, label %bb.s, !prof !170

bb.s:                                             ; preds = %bb.r
  %i.df = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.de, i1 true)
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = add nuw nsw i64 %i.da, %i.dg
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.t:                                             ; preds = %bb.r, %bb.q
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cs, i64 noundef %i.w, i64 noundef %i.cq)
  br label %bb.v

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.s, %bb.p
  %.2.i = phi i64 [ %i.dh, %bb.s ], [ %i.cy, %bb.p ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.cs, ptr %i.di, align 1, !tbaa !265
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !58
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !61  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.do = load i64, ptr %i.z, align 8, !tbaa !63  ; 2 uses
  %i.dp = icmp ult i64 %i.do, 16
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf10Descriptor13WellKnownTypeEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEE8transferEPNS1_13map_slot_typeIS9_SD_EESO_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !61
  %i.dr = load i64, ptr %i.dm, align 8, !tbaa !62
  store i64 %i.dr, ptr %i.dk, align 8, !tbaa !62
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf10Descriptor13WellKnownTypeEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEE8transferEPNS1_13map_slot_typeIS9_SD_EESO_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf10Descriptor13WellKnownTypeEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEE8transferEPNS1_13map_slot_typeIS9_SD_EESO_.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ds = load i64, ptr %i.z, align 8, !tbaa !63
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !63
  store ptr %i.dm, ptr %i.x, align 8, !tbaa !61
  store i64 0, ptr %i.z, align 8, !tbaa !63
  store i8 0, ptr %i.dm, align 8, !tbaa !62
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !66
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf10Descriptor13WellKnownTypeEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SD_EEE8transferEPNS1_13map_slot_typeIS9_SD_EESO_.exit, %bb.t
  %i.dx = add i16 %.sroa.055.062, -1
  %i.dy = and i16 %i.dx, %.sroa.055.062           ; 2 uses
  %.not = icmp eq i16 %i.dy, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !89     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.283) #44
  unreachable

_ZNKSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 20                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 461168601842738790)
  %i.l = select i1 %i.j, i64 461168601842738790, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 20
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #45 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !127    ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 344
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %i.w = load <2 x ptr>, ptr %i.s, align 8, !tbaa !129 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !130 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.u, align 8, !tbaa !131 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !132 ; 2 uses
  %i.aa = shufflevector <2 x ptr> %i.w, <2 x ptr> %i.x, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ab = shufflevector <2 x ptr> %i.y, <2 x ptr> %i.z, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.ac = shufflevector <4 x ptr> %i.aa, <4 x ptr> %i.ab, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ad = ptrtoint <4 x ptr> %i.ac to <4 x i64>
  %i.ae = shufflevector <2 x ptr> %i.w, <2 x ptr> %i.x, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.af = shufflevector <2 x ptr> %i.y, <2 x ptr> %i.z, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.ag = shufflevector <4 x ptr> %i.ae, <4 x ptr> %i.af, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ah = ptrtoint <4 x ptr> %i.ag to <4 x i64>
  %i.ai = sub <4 x i64> %i.ad, %i.ah
  %i.aj = lshr exact <4 x i64> %i.ai, splat (i64 3)
  %i.ak = trunc <4 x i64> %i.aj to <4 x i32>
  store <4 x i32> %i.ak, ptr %i.q, align 4, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 392
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 400
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !133
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !76
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 4
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.al, align 4, !tbaa !135
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i, i64 20, i1 false), !tbaa.struct !2367, !alias.scope !2368
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !2363

_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 20 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.az, %.lr.ph.i.i.i27 ], [ %i.ax, %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.ay, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i28, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i29, i64 20, i1 false), !tbaa.struct !2367, !alias.scope !2369
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 20 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 20 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !2363

_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.ax, %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.az, %.lr.ph.i.i.i27 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !90
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #41
  br label %_ZNSt12_Vector_baseIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf14DescriptorPool6Tables10CheckPointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !89
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !128
  %i.be = getelementptr inbounds nuw [20 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !90
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EESQ_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1060") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 4 uses
  store ptr %4, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %5, ptr %i.a, align 8
  %i.b = call noundef i64 @_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERSI_PSI_EmiENS2_IKSL_RKSI_PSQ_EE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %2, i32 %3) ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98   ; 4 uses
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5clearEv.exit, label %bb.c

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5clearEv.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE16clear_and_deleteEPSK_PSI_(ptr noundef %i.g, ptr noundef nonnull %i.h)
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.h, align 8, !tbaa !393
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %1, align 8, !tbaa !393
  store i64 0, ptr %i.d, align 8, !tbaa !98
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %6, align 8, !tbaa !324
  %i.j = icmp eq ptr %2, %i.i
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = zext i32 %3 to i64
  %i.l = load i32, ptr %i.a, align 8, !tbaa !325
  %i.m = sub nsw i32 %i.l, %3                     ; 2 uses
  %i.n = trunc i32 %i.m to i8                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !62    ; 4 uses
  %i.r = and i32 %3, 255                          ; 2 uses
  %i.s = and i32 %i.m, 255                        ; 2 uses
  %i.t = add nuw nsw i32 %i.s, %i.r               ; 2 uses
  %i.u = zext i8 %i.q to i32                      ; 2 uses
  %i.v = and i32 %i.t, 255                        ; 3 uses
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.x ; 2 uses
  %narrow.i = mul nsw i32 %i.w, 24
  %.idx.i.i = sext i32 %narrow.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i
  %.not13.i.i = icmp eq i32 %i.v, %i.u
  br i1 %.not13.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.ab = zext nneg i32 %i.r to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.ab
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.015.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.ac, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01214.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.z, %.lr.ph.preheader.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.i, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 24
  %.not.i.i = icmp eq ptr %i.ad, %i.aa
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i, label %.lr.ph.i.i, !llvm.loop !35

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !62
  %.not.i31.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i31.i, label %.preheader.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit

.preheader.i:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i
  %.not38.i = icmp eq i8 %i.n, 0
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ah = add nuw nsw i64 %i.k, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %i.aj = trunc i32 %i.t to i8
  %.033.i = add i8 %i.aj, 1                       ; 2 uses
  %.not34.i = icmp ugt i8 %.033.i, %i.q
  br i1 %.not34.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %._crit_edge.i
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.al = add nuw nsw i64 %i.ah, %indvars.iv.i
  %i.am = and i64 %i.al, 255
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !393
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE16clear_and_deleteEPSK_PSI_(ptr noundef %i.ao, ptr noundef nonnull %i.o)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !2370

bb.f:                                             ; preds = %bb.f, %.lr.ph37.i
  %.035.i = phi i8 [ %.033.i, %.lr.ph37.i ], [ %.0.i, %bb.f ] ; 3 uses
  %i.ap = sub i8 %.035.i, %i.n                    ; 2 uses
  %i.aq = zext i8 %.035.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !393 ; 2 uses
  %i.at = zext i8 %i.ap to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.at
  store ptr %i.as, ptr %i.au, align 8, !tbaa !393
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !62
  %.0.i = add i8 %.035.i, 1                       ; 2 uses
  %.not.i = icmp ugt i8 %.0.i, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit, label %bb.f, !llvm.loop !36

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i, %._crit_edge.i
  %i.aw = sub i8 %i.q, %i.n
  store i8 %i.aw, ptr %i.p, align 1, !tbaa !62
  %i.ax = load i64, ptr %i.d, align 8, !tbaa !98
  %i.ay = sub i64 %i.ax, %i.b
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !98
  %i.az = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %2, i32 %3) ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.az, 0
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.az, 1
  br label %._crit_edge

bb.g:                                             ; preds = %bb.c
  %i.ba = sub i64 %i.e, %i.b                      ; 2 uses
  %.not96 = icmp ult i64 %i.e, %i.b
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %i.bc = phi i64 [ %i.e, %.lr.ph ], [ %i.cw, %bb.m ]
  %.sroa.13.087 = phi i32 [ %3, %.lr.ph ], [ %.sroa.13.1, %bb.m ] ; 5 uses
  %.sroa.071.086 = phi ptr [ %2, %.lr.ph ], [ %.sroa.071.1, %bb.m ] ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.071.086, i64 11 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %.not = icmp eq i8 %i.be, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = sub nuw i64 %i.bc, %i.ba
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.071.086, i64 10 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !62  ; 4 uses
  %i.bi = zext i8 %i.bh to i32                    ; 3 uses
  %i.bj = sub nsw i32 %i.bi, %.sroa.13.087
  %i.bk = sext i32 %i.bj to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bk) ; 4 uses
  %i.bl = trunc i64 %.sroa.speculated to i8       ; 3 uses
  %i.bm = zext i32 %.sroa.13.087 to i64
  %i.bn = and i32 %.sroa.13.087, 255              ; 2 uses
  %i.bo = trunc i64 %.sroa.speculated to i32
  %i.bp = add i32 %i.bn, %i.bo                    ; 2 uses
  %i.bq = and i32 %i.bp, 255                      ; 3 uses
  %i.br = sub nsw i32 %i.bi, %i.bq
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.071.086, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  %narrow.i34 = mul nsw i32 %i.br, 24
  %.idx.i.i35 = sext i32 %narrow.i34 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i.i35
  %.not13.i.i36 = icmp eq i32 %i.bq, %i.bi
  br i1 %.not13.i.i36, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58, label %.lr.ph.preheader.i.i37

.lr.ph.preheader.i.i37:                           ; preds = %bb.i
  %i.bw = zext nneg i32 %i.bn to i64
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bw
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i37
  %.015.i.i39 = phi ptr [ %i.bz, %.lr.ph.i.i38 ], [ %i.bx, %.lr.ph.preheader.i.i37 ] ; 2 uses
  %.01214.i.i40 = phi ptr [ %i.by, %.lr.ph.i.i38 ], [ %i.bu, %.lr.ph.preheader.i.i37 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i39, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.i40, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.01214.i.i40, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i.i39, i64 24
  %.not.i.i41 = icmp eq ptr %i.by, %i.bv
  br i1 %.not.i.i41, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i42, label %.lr.ph.i.i38, !llvm.loop !35

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i42: ; preds = %.lr.ph.i.i38
  %.pre = load i8, ptr %i.bd, align 1, !tbaa !62
  %i.ca = icmp eq i8 %.pre, 0
  br i1 %i.ca, label %.preheader.i44, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58

.preheader.i44:                                   ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i42
  %.not38.i45 = icmp eq i8 %i.bl, 0
  br i1 %.not38.i45, label %._crit_edge.i51, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.preheader.i44
  %i.cb = add nuw nsw i64 %i.bm, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.071.086, i64 256
  %wide.trip.count.i47 = and i64 %.sroa.speculated, 255
  br label %bb.j

._crit_edge.i51:                                  ; preds = %bb.j, %.preheader.i44
  %i.cd = trunc i32 %i.bp to i8
  %.033.i52 = add i8 %i.cd, 1                     ; 2 uses
  %.not34.i53 = icmp ugt i8 %.033.i52, %i.bh
  br i1 %.not34.i53, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58, label %.lr.ph37.i54

.lr.ph37.i54:                                     ; preds = %._crit_edge.i51
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.071.086, i64 256 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i46
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.i46 ], [ %indvars.iv.next.i49, %bb.j ] ; 2 uses
  %i.cf = add nuw nsw i64 %i.cb, %indvars.iv.i48
  %i.cg = and i64 %i.cf, 255
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !393
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE16clear_and_deleteEPSK_PSI_(ptr noundef %i.ci, ptr noundef nonnull %i.bb)
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count.i47
  br i1 %exitcond.not.i50, label %._crit_edge.i51, label %bb.j, !llvm.loop !2370

bb.k:                                             ; preds = %bb.k, %.lr.ph37.i54
  %.035.i55 = phi i8 [ %.033.i52, %.lr.ph37.i54 ], [ %.0.i56, %bb.k ] ; 3 uses
  %i.cj = sub i8 %.035.i55, %i.bl                 ; 2 uses
  %i.ck = zext i8 %.035.i55 to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !393 ; 2 uses
  %i.cn = zext i8 %i.cj to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cn
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !393
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i8 %i.cj, ptr %i.cp, align 1, !tbaa !62
  %.0.i56 = add i8 %.035.i55, 1                   ; 2 uses
  %.not.i57 = icmp ugt i8 %.0.i56, %i.bh
  br i1 %.not.i57, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58, label %bb.k, !llvm.loop !36

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58: ; preds = %bb.k, %bb.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i42, %._crit_edge.i51
  %i.cq = sub i8 %i.bh, %i.bl
  store i8 %i.cq, ptr %i.bg, align 1, !tbaa !62
  %i.cr = and i64 %.sroa.speculated, 255
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !98
  %i.ct = sub i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.d, align 8, !tbaa !98
  %i.cu = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.071.086, i32 %.sroa.13.087)
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.cv = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.071.086, i32 %.sroa.13.087)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58
  %.pn = phi { ptr, i32 } [ %i.cu, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58 ], [ %i.cv, %bb.l ] ; 2 uses
  %.sroa.13.1 = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %.sroa.071.1 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %i.cw = load i64, ptr %i.d, align 8, !tbaa !98  ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, %i.ba
  br i1 %i.cx, label %bb.h, label %._crit_edge, !llvm.loop !2371

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5clearEv.exit
  %.sroa.071.0.lcssa.sink = phi ptr [ %2, %bb.a ], [ %.fca.0.extract17, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit ], [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5clearEv.exit ], [ %2, %bb.g ], [ %.sroa.071.1, %bb.m ]
  %.sroa.13.0.lcssa.sink = phi i32 [ %3, %bb.a ], [ %.fca.1.extract18, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit ], [ 0, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5clearEv.exit ], [ %3, %bb.g ], [ %.sroa.13.1, %bb.m ]
  store i64 %i.b, ptr %0, align 8, !tbaa !2373
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.071.0.lcssa.sink, ptr %i.cy, align 8
  %.sroa.13.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.13.0.lcssa.sink, ptr %.sroa.13.0..sroa_idx76, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11equal_rangeISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EESR_ERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1058") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !noalias !2376 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noalias !2376 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.0.0.in.i.i.i = phi ptr [ %1, %bb.a ], [ %i.y, %bb.e ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !393, !noalias !2376 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !62, !noalias !2376 ; 2 uses
  %.not23.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not23.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.thread17.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.025.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.thread17.i.i.i.i.i.i ] ; 3 uses
  %.01024.i.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %.thread17.i.i.i.i.i.i ] ; 3 uses
  %i.h = add i64 %.01024.i.i.i.i.i.i, %.025.i.i.i.i.i.i
  %i.i = lshr i64 %i.h, 1                         ; 5 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394, !noalias !2376 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.a
  br i1 %i.l, label %.thread.i.i.i.i.i.i, label %bb.d

.thread.i.i.i.i.i.i:                              ; preds = %bb.c
  %i.m = add nuw i64 %i.i, 1
  br label %.thread17.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult ptr %i.a, %i.k
  br i1 %i.n, label %.thread17.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !395, !noalias !2376
  %i.q = icmp slt i32 %i.p, %i.c
  %cond.fr.i.i.i.i.i.i = freeze i1 %i.q           ; 2 uses
  %i.r = add nuw i64 %i.i, 1
  %spec.select.i.i.i.i.i.i = select i1 %cond.fr.i.i.i.i.i.i, i64 %.01024.i.i.i.i.i.i, i64 %i.i
  %spec.select22.i.i.i.i.i.i = select i1 %cond.fr.i.i.i.i.i.i, i64 %i.r, i64 %.025.i.i.i.i.i.i
  br label %.thread17.i.i.i.i.i.i

.thread17.i.i.i.i.i.i:                            ; preds = %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i, %bb.d, %.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.i, %bb.d ], [ %spec.select.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i ], [ %.01024.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ] ; 3 uses
  %i.t = phi i64 [ %.025.i.i.i.i.i.i, %bb.d ], [ %spec.select22.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i ], [ %i.m, %.thread.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i, label %bb.c, !llvm.loop !8

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i: ; preds = %.thread17.i.i.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.s, %.thread17.i.i.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62, !noalias !2376
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.x = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  br label %bb.b

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i
  %i.z = trunc i64 %.0.lcssa.i.i.i.i.i.i to i32   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62, !noalias !2376
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp eq i32 %i.z, %i.ac                 ; 2 uses
  br i1 %i.ad, label %.lr.ph, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i72, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !62, !noalias !2376 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !62, !noalias !2376 ; 2 uses
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge, !llvm.loop !9

.lr.ph:                                           ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i, %bb.f
  %.sroa.0.0.i8.i.i72 = phi ptr [ %i.aj, %bb.f ], [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.0.0.i8.i.i72, align 8, !tbaa !393, !noalias !2376 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !62, !noalias !2376
  %.not.i11.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i11.i.i, label %bb.f, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i, !llvm.loop !9

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i: ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !393, !noalias !2376 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !62, !noalias !2376
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge: ; preds = %bb.f
  %i.ar = zext i8 %i.ah to i32
  %i.as = zext i8 %i.af to i32
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i: ; preds = %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i
  %.sroa.7.0.i.i.i.lcssa = phi i32 [ %i.as, %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge ], [ %i.z, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i ] ; 14 uses
  %.sroa.0.0.i8.i.i.lcssa = phi ptr [ %i.aj, %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge ], [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i ] ; 16 uses
  %.lcssa = phi i32 [ %i.ar, %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge ], [ %i.ac, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !393, !noalias !2376 ; 2 uses
  %.phi.trans.insert26.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 10
  %.pre27.i = load i8, ptr %.phi.trans.insert26.i, align 1, !tbaa !62, !noalias !2376
  %.pre28.i = zext i8 %.pre27.i to i32
  %i.at = icmp ne ptr %.sroa.0.0.i8.i.i.lcssa, %.pre.i
  %i.au = icmp ne i32 %.sroa.7.0.i.i.i.lcssa, %.pre28.i
  %i.av = select i1 %i.at, i1 true, i1 %i.au
  br i1 %i.av, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i
  %i.aw = sext i32 %.sroa.7.0.i.i.i.lcssa to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa, i64 16
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !394, !noalias !2376 ; 2 uses
  %i.ba = icmp ult ptr %i.a, %i.az
  br i1 %i.ba, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp ult ptr %i.az, %i.a
  br i1 %i.bb, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit: ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !395, !noalias !2376
  %.not = icmp slt i32 %i.c, %i.bd
  br i1 %.not, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31: ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit, %bb.h
  br i1 %i.ad, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31
  %i.be = add nsw i32 %.sroa.7.0.i.i.i.lcssa, 1   ; 2 uses
  %i.bf = icmp eq i32 %i.be, %.lcssa
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.01521.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.i ] ; 2 uses
  %i.bg = load ptr, ptr %.01521.i.i.i.i, align 8, !tbaa !393 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !62
  %.not17.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not17.i.i.i.i, label %bb.j, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !62  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = icmp eq i8 %i.bk, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i.i.i, label %.critedge.loopexit23.i.i.i.i, !llvm.loop !37

.thread.i.i.i:                                    ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa, i64 256
  %i.bp = add i32 %.sroa.7.0.i.i.i.lcssa, 1
  %i.bq = and i32 %i.bp, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.br
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.thread.i.i.i
  %.116.in.i.i.i.i = phi ptr [ %i.bs, %.thread.i.i.i ], [ %i.bv, %bb.k ]
  %.116.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i, align 8, !tbaa !393 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 256
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread, !llvm.loop !38

.critedge.loopexit23.i.i.i.i:                     ; preds = %bb.j
  %i.bw = zext i8 %i.bk to i32
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.k, %bb.i, %.critedge.loopexit23.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i, %bb.g, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i
  %.sroa.0.0.i8.i.i.lcssa.sink = phi ptr [ %.sroa.0.0.i8.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i ], [ %.sroa.0.0.i8.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit ], [ %i.an, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.g ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.k ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.i ], [ %.sroa.0.0.i8.i.i.lcssa, %.critedge.loopexit23.i.i.i.i ], [ %.sroa.0.0.i8.i.i.lcssa, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i.i.lcssa.sink = phi i32 [ %.sroa.7.0.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i ], [ %.sroa.7.0.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit ], [ %i.aq, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i ], [ %.sroa.7.0.i.i.i.lcssa, %bb.g ], [ %.sroa.7.0.i.i.i.lcssa, %bb.k ], [ %.sroa.7.0.i.i.i.lcssa, %bb.i ], [ %.sroa.7.0.i.i.i.lcssa, %.critedge.loopexit23.i.i.i.i ], [ %.sroa.7.0.i.i.i.lcssa, %.lr.ph.i.i.i.i ]
  %.sroa.024.1.sink = phi ptr [ %.sroa.0.0.i8.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i ], [ %.sroa.0.0.i8.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit ], [ %i.an, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.g ], [ %.116.i.i.i.i, %bb.k ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.i ], [ %i.bg, %.critedge.loopexit23.i.i.i.i ], [ %.sroa.0.0.i8.i.i.lcssa, %.lr.ph.i.i.i.i ]
  %.sroa.625.0.sink = phi i32 [ %.sroa.7.0.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i ], [ %.sroa.7.0.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit ], [ %i.aq, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i ], [ %.sroa.7.0.i.i.i.lcssa, %bb.g ], [ 0, %bb.k ], [ %i.be, %bb.i ], [ %i.bw, %.critedge.loopexit23.i.i.i.i ], [ %.lcssa, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.0.0.i8.i.i.lcssa.sink, ptr %0, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.i.i.lcssa.sink, ptr %.sroa.7.0..sroa_idx13, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.024.1.sink, ptr %i.bx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
