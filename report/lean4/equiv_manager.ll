Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/equiv_manager?download=true
inline.NumInlined: 322
inline.NumDeleted: 189
begin_hunk_0_@_ZN4lean13equiv_manager7to_nodeERKNS_4exprE:bb.a
_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11: ; preds = %bb.d, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit
  %.sroa.06.1.i.i13 = phi ptr [ %i.ag, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit ], [ %.sroa.06.0.i.i, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i13, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !40
  br label %bb.x

_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.h, %bb.c, %bb.e, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 4 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = ashr exact i64 %i.ap, 3                 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !14
  %.not.i.i = icmp eq ptr %i.al, %i.as
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread
  %.sroa.0.0.insert.ext.i = and i64 %i.aq, 4294967295
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.al, align 4, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.at, ptr %i.ak, align 8, !tbaa !12
  br label %_ZN4lean13equiv_manager7mk_nodeEv.exit

bb.j:                                             ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread
  %i.au = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.au, label %bb.k, label %_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.aq
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i5 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i5)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #19 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.ap ; 2 uses
  %.sroa.0.0.insert.ext3.i = and i64 %i.aq, 4294967295
  store i64 %.sroa.0.0.insert.ext3.i, ptr %i.bb, align 4, !tbaa !15
  %i.bc = icmp sgt i64 %i.ap, 0
  br i1 %i.bc, label %bb.l, label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.am, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bg) #20
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ba, ptr %0, align 8, !tbaa !13
  store ptr %i.bd, ptr %i.ak, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bh, ptr %i.ar, align 8, !tbaa !14
  br label %_ZN4lean13equiv_manager7mk_nodeEv.exit

_ZN4lean13equiv_manager7mk_nodeEv.exit:           ; preds = %bb.i, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bi = trunc i64 %i.aq to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.bj = load ptr, ptr %1, align 8, !tbaa !31, !noalias !60 ; 5 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !31, !alias.scope !60
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit

bb.n:                                             ; preds = %_ZN4lean13equiv_manager7mk_nodeEv.exit
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.bj, align 4, !tbaa !42, !noalias !60 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bm, label %bb.o, label %bb.p, !prof !43

bb.o:                                             ; preds = %bb.n
  %i.bn = add nuw i32 %.val.i.i.i.i.i.i.i.i, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !42, !noalias !60
  br label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = atomicrmw add ptr %i.bj, i32 -1 monotonic, align 4, !noalias !60 ; 0 uses
  br label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit

_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit: ; preds = %_ZN4lean13equiv_manager7mk_nodeEv.exit, %bb.o, %bb.p, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bi, ptr %i.bp, align 8, !tbaa !62, !alias.scope !60
  %i.bq = invoke { ptr, i8 } @_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_jEEEES2_INS7_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit unwind label %bb.w ; 0 uses

_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit: ; preds = %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit
  %i.br = load ptr, ptr %2, align 8, !tbaa !31    ; 4 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = and i64 %i.bs, 1
  %.not.i.i.i.i6 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i6, label %bb.r, label %_ZNSt4pairIN4lean4exprEjED2Ev.exit

bb.r:                                             ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !42 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.s, label %bb.t, !prof !43

bb.s:                                             ; preds = %bb.r
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !42
  br label %_ZNSt4pairIN4lean4exprEjED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %.not.i1.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i1.i.i.i, label %_ZNSt4pairIN4lean4exprEjED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.br)
          to label %_ZNSt4pairIN4lean4exprEjED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #22
  unreachable

_ZNSt4pairIN4lean4exprEjED2Ev.exit:               ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.x

bb.w:                                             ; preds = %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN4lean4exprEjED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.bz

bb.x:                                             ; preds = %_ZNSt4pairIN4lean4exprEjED2Ev.exit, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11
  %.0 = phi i32 [ %i.aj, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11 ], [ %i.bi, %_ZNSt4pairIN4lean4exprEjED2Ev.exit ]
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIN4lean4exprEjED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4lean10object_refD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !42   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !42
  br label %_ZN4lean10object_refD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %.not.i1.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.a)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !31     ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !31     ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i8, ptr %i.d, align 8, !tbaa !72, !range !45, !noundef !46
  %i.f = trunc nuw i8 %i.e to i1
  %3 = getelementptr i8, ptr %i.a, i64 4
  %.val.i.i = load i32, ptr %3, align 4           ; 2 uses
  br i1 %i.f, label %bb.c, label %._crit_edge.a

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i32 %.val.i.i, 13
  %i.h = and i32 %i.g, 2040
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr i8, ptr %i.b, i64 4
  %.val.i.i59 = load i32, ptr %i.n, align 4
  %i.o = lshr i32 %.val.i.i59, 13
  %i.p = and i32 %i.o, 2040
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32
  %i.u = trunc i64 %i.t to i32
  %.not = icmp eq i32 %i.m, %i.u
  br i1 %.not, label %._crit_edge.a, label %_ZN4leaneqERKNS_3natES2_.exit

._crit_edge.a:                                    ; preds = %bb.b, %bb.c
  %4 = icmp ult i32 %.val.i.i, 16777216
  br i1 %4, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge.a
  %i.v = getelementptr i8, ptr %i.b, i64 4
  %.val.i.i.i.i60 = load i32, ptr %i.v, align 4
  %5 = icmp ult i32 %.val.i.i.i.i60, 16777216
  br i1 %5, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !31   ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !31   ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = and i64 %i.aa, 1
  %i.ad = and i64 %i.ac, %i.ab
  %or.cond.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %or.cond.not.i.i, label %.critedge.i.i.i, label %bb.f, !prof !73

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq ptr %i.y, %i.z
  br label %_ZN4leaneqERKNS_3natES2_.exit

.critedge.i.i.i:                                  ; preds = %bb.e
  %i.af = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.y, ptr noundef %i.z)
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.g:                                             ; preds = %bb.d, %._crit_edge.a
  %i.ag = tail call noundef i32 @_ZN4lean13equiv_manager7to_nodeERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.07.i = phi i32 [ %i.ag, %bb.g ], [ %i.ak, %bb.h ] ; 4 uses
  %i.ai = zext i32 %.07.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !17 ; 2 uses
  %.not.i = icmp eq i32 %i.ak, %.07.i
  br i1 %.not.i, label %_ZN4lean13equiv_manager4findEj.exit, label %bb.h

_ZN4lean13equiv_manager4findEj.exit:              ; preds = %bb.h
  %i.al = tail call noundef i32 @_ZN4lean13equiv_manager7to_nodeERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.am = load ptr, ptr %0, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4lean13equiv_manager4findEj.exit
  %.07.i61 = phi i32 [ %i.al, %_ZN4lean13equiv_manager4findEj.exit ], [ %i.ap, %bb.i ] ; 4 uses
  %i.an = zext i32 %.07.i61 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17 ; 2 uses
  %.not.i62 = icmp eq i32 %i.ap, %.07.i61
  br i1 %.not.i62, label %_ZN4lean13equiv_manager4findEj.exit63, label %bb.i

_ZN4lean13equiv_manager4findEj.exit63:            ; preds = %bb.i
  %i.aq = icmp eq i32 %.07.i, %.07.i61
  br i1 %i.aq, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4lean13equiv_manager4findEj.exit63
  %i.ar = load ptr, ptr %1, align 8, !tbaa !31
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %.val.i.i.i = load i32, ptr %i.as, align 4
  %i.at = load ptr, ptr %2, align 8, !tbaa !31
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %.val.i.i.i64 = load i32, ptr %i.au, align 4
  %.not57.unshifted = xor i32 %.val.i.i.i64, %.val.i.i.i
  %.not57 = icmp ult i32 %.not57.unshifted, 16777216
  br i1 %.not57, label %bb.k, label %_ZN4leaneqERKNS_3natES2_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4lean12check_systemEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext false)
  %i.av = load ptr, ptr %1, align 8, !tbaa !31    ; 11 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val.i.i.i65 = load i32, ptr %i.aw, align 4
  %6 = lshr i32 %.val.i.i.i65, 24
  %trunc = trunc nuw i32 %6 to i8
  switch i8 %trunc, label %_ZN4leaneqERKNS_3natES2_.exit [
    i8 0, label %bb.l
    i8 4, label %bb.m
    i8 2, label %.split80
    i8 1, label %.split79
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.o
    i8 3, label %.split76
    i8 9, label %.split75
    i8 10, label %.split74
    i8 11, label %bb.p
    i8 8, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 0, ptr %i.ba, align 8, !tbaa !78
  store i8 0, ptr %i.az, align 8, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.ax, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #18
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = load ptr, ptr %2, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bg = tail call zeroext i8 @lean_name_eq(ptr noundef %i.be, ptr noundef %i.bf)
  %.not83 = icmp eq i8 %i.bg, 0
  br i1 %.not83, label %_ZN4leaneqERKNS_3natES2_.exit, label %.split78

.split78:                                         ; preds = %bb.m
  %i.bh = load ptr, ptr %1, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %2, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.val = load ptr, ptr %i.bi, align 8, !tbaa !31, !noalias !82
  %.val58 = load ptr, ptr %i.bk, align 8, !tbaa !31, !noalias !83
  %i.bl = tail call fastcc noundef zeroext i1 @"_ZN4lean7compareINS_5levelEZNS_13equiv_manager13is_equiv_coreERKNS_4exprES5_E3$_0EEbRKNS_8list_refIT_EESB_OT0_"(ptr %.val, ptr %.val58)
  br i1 %i.bl, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.split80:                                         ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = load ptr, ptr %2, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.br = tail call zeroext i8 @lean_name_eq(ptr noundef %i.bp, ptr noundef %i.bq)
  %.not82 = icmp eq i8 %i.br, 0
  br i1 %.not82, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.t

.split79:                                         ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bt = load ptr, ptr %2, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !31
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.bx = tail call zeroext i8 @lean_name_eq(ptr noundef %i.bv, ptr noundef %i.bw)
  %.not81 = icmp eq i8 %i.bx, 0
  br i1 %.not81, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.t

bb.n:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bz = load ptr, ptr %2, align 8, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
  br i1 %i.cb, label %.split77, label %_ZN4leaneqERKNS_3natES2_.exit

.split77:                                         ; preds = %bb.n
  %i.cc = load ptr, ptr %1, align 8, !tbaa !31
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %2, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  br i1 %i.cg, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

bb.o:                                             ; preds = %bb.k, %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ci = load ptr, ptr %2, align 8, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  br i1 %i.ck, label %.split73, label %_ZN4leaneqERKNS_3natES2_.exit

.split73:                                         ; preds = %bb.o
  %i.cl = load ptr, ptr %1, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %2, align 8, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.co)
  br i1 %i.cp, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.split76:                                         ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cr = load ptr, ptr %2, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = tail call noundef zeroext i1 @_ZN4leaneqERKNS_5levelES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
  br i1 %i.ct, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.split75:                                         ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cv = load ptr, ptr %2, align 8, !tbaa !31
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = tail call noundef zeroext i1 @_ZN4leaneqERKNS_7literalES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  br i1 %i.cx, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.split74:                                         ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.cz = load ptr, ptr %2, align 8, !tbaa !31
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.da)
  br i1 %i.db, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

bb.p:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.dd = load ptr, ptr %2, align 8, !tbaa !31
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.de)
  br i1 %i.df, label %bb.q, label %_ZN4leaneqERKNS_3natES2_.exit

bb.q:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr %1, align 8, !tbaa !31
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %2, align 8, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !31 ; 3 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !31 ; 3 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = and i64 %i.dm, 1
  %i.dp = and i64 %i.do, %i.dn
  %or.cond.not.i.i66 = icmp eq i64 %i.dp, 0
  br i1 %or.cond.not.i.i66, label %.critedge.i.i.i68, label %.split, !prof !73

.split:                                           ; preds = %bb.q
  %i.dq = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dq, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.critedge.i.i.i68:                                ; preds = %bb.q
  %i.dr = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.dk, ptr noundef %i.dl)
  br i1 %i.dr, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

bb.r:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dt = load ptr, ptr %2, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.du)
  br i1 %i.dv, label %bb.s, label %_ZN4leaneqERKNS_3natES2_.exit

bb.s:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %1, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %2, align 8, !tbaa !31
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %i.dz)
  br i1 %i.ea, label %_ZN4leaneqERKNS_3natES2_.exit69, label %_ZN4leaneqERKNS_3natES2_.exit

_ZN4leaneqERKNS_3natES2_.exit69:                  ; preds = %bb.s
  %i.eb = load ptr, ptr %1, align 8, !tbaa !31
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %2, align 8, !tbaa !31
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
  br i1 %i.ef, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

bb.t:                                             ; preds = %.split80, %.split79, %.split78, %.split77, %.split76, %.split75, %.split74, %.split73, %.split, %.critedge.i.i.i68, %_ZN4leaneqERKNS_3natES2_.exit69
  %i.eg = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.07.i.i = phi i32 [ %.07.i, %bb.t ], [ %i.ej, %bb.u ] ; 4 uses
  %i.eh = zext i32 %.07.i.i to i64                ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ej, %.07.i.i
  br i1 %.not.i.i, label %_ZN4lean13equiv_manager4findEj.exit.i.preheader, label %bb.u

_ZN4lean13equiv_manager4findEj.exit.i.preheader:  ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh ; 2 uses
  br label %_ZN4lean13equiv_manager4findEj.exit.i

_ZN4lean13equiv_manager4findEj.exit.i:            ; preds = %_ZN4lean13equiv_manager4findEj.exit.i.preheader, %_ZN4lean13equiv_manager4findEj.exit.i
  %.07.i20.i = phi i32 [ %i.en, %_ZN4lean13equiv_manager4findEj.exit.i ], [ %.07.i61, %_ZN4lean13equiv_manager4findEj.exit.i.preheader ] ; 4 uses
  %i.el = zext i32 %.07.i20.i to i64              ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !17 ; 2 uses
  %.not.i21.i = icmp eq i32 %i.en, %.07.i20.i
  br i1 %.not.i21.i, label %_ZN4lean13equiv_manager4findEj.exit22.i, label %_ZN4lean13equiv_manager4findEj.exit.i

_ZN4lean13equiv_manager4findEj.exit22.i:          ; preds = %_ZN4lean13equiv_manager4findEj.exit.i
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.el ; 2 uses
  %.not.i70 = icmp eq i32 %.07.i.i, %.07.i20.i
  br i1 %.not.i70, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4lean13equiv_manager4findEj.exit22.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 2 uses
end_hunk_0
