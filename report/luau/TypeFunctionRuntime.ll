Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeFunctionRuntime?download=true
inline.NumInlined: 3961
inline.NumDeleted: 1804
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4LuauL16setReadTablePropEP9lua_State:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.aj

_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %_ZN4Luau6get_ifINS_21TypeFunctionTableTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeES1_NS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPT_PNS_7VariantIJDpT0_EEE.exit.i
  %i.q = load i8, ptr @_ZN5FFlag30LuauTypeFunctionSupportsFrozenE, align 8, !tbaa !215, !range !100, !noundef !101
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i, i64 144
  %i.t = load i8, ptr %i.s, align 8, !tbaa !219, !range !100, !noundef !101
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.196) #33
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.v = load i8, ptr @_ZN5FFlag30LuauUdtfTypeUseTaggedMetatableE, align 8, !tbaa !215, !range !100, !noundef !101
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = tail call noundef ptr @_Z21luaL_checkudatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 42)
  br label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53

bb.n:                                             ; preds = %bb.l
  %i.y = tail call noundef ptr @_Z20lua_touserdatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 42) ; 2 uses
  %.not.not.i50 = icmp eq ptr %i.y, null
  br i1 %.not.not.i50, label %bb.o, label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53

bb.o:                                             ; preds = %bb.n
  tail call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.84) #33
  unreachable

_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53:    ; preds = %bb.m, %bb.n
  %.1.in.i51 = phi ptr [ %i.x, %bb.m ], [ %i.y, %bb.n ]
  %.1.i52 = load ptr, ptr %.1.in.i51, align 8, !tbaa !112 ; 7 uses
  %.not.i54 = icmp eq ptr %.1.i52, null
  br i1 %.not.i54, label %bb.p, label %_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i

_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i: ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53
  %i.z = load i32, ptr %.1.i52, align 8, !tbaa !116
  %i.aa = icmp eq i32 %i.z, 4
  br i1 %i.aa, label %_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i, %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call fastcc void @_ZN4LuauL6getTagB5cxx11EP9lua_StatePKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, ptr noundef %.1.i52)
  %i.ab = load ptr, ptr %2, align 8, !tbaa !123
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.197, ptr noundef %i.ab) #33
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %2, align 8, !tbaa !123   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.r
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !124
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.aj

_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit: ; preds = %_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i52, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !233
  %.not = icmp eq i32 %i.aj, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i52, i64 16 ; 3 uses
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call fastcc void @_ZN4LuauL6getTagB5cxx11EP9lua_StatePKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.1.i52)
  %i.al = load ptr, ptr %3, align 8, !tbaa !123
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.198, ptr noundef %i.al) #33
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %3, align 8, !tbaa !123   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.u
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !124
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.aj

bb.v:                                             ; preds = %_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !244 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i52, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !186 ; 4 uses
  %i.ax = load ptr, ptr %i.ak, align 8            ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !186 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.az) ; 2 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.bd = tail call i32 @memcmp(ptr noundef %i.bc, ptr noundef %i.ax, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.w
  %i.be = sub i64 %i.az, %i.aw
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.be, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bf = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.bf, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.bf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !271 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.w, !llvm.loop !9

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bg = icmp eq ptr %.19.i.i.i, %i.au
  br i1 %i.bg, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !186 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.aw) ; 2 uses
  %i.bj = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !123
  %i.bm = tail call i32 @memcmp(ptr noundef %i.ax, ptr noundef %i.bl, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.x
  %i.bn = sub i64 %i.aw, %i.bi
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bn, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bo = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.bo, ptr %i.au, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %bb.v, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.au, %bb.v ], [ %i.au, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 6 uses
  %i.bp = icmp eq i32 %i.a, 2
  br i1 %i.bp, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.bq = tail call noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %.not83 = icmp eq ptr %.sroa.0.0.i.i, %i.au
  br i1 %.not83, label %.critedge, label %4

4:                                                ; preds = %bb.z
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72 ; 2 uses
  %6 = load i8, ptr %5, align 8, !tbaa !273, !range !100, !noundef !101
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 88
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !273, !range !100, !noundef !101
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ak) ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0
  %i.bx = extractvalue { ptr, ptr } %i.bv, 1
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_ESI_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr %i.bw, ptr %i.bx)
  br label %.critedge

bb.ac:                                            ; preds = %4, %bb.aa
  store i8 0, ptr %5, align 8, !tbaa !273
  br label %.critedge

bb.ad:                                            ; preds = %bb.y
  %i.by = load i8, ptr @_ZN5FFlag30LuauUdtfTypeUseTaggedMetatableE, align 8, !tbaa !215, !range !100, !noundef !101
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ca = tail call noundef ptr @_Z21luaL_checkudatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 42)
  br label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65

bb.af:                                            ; preds = %bb.ad
  %i.cb = tail call noundef ptr @_Z20lua_touserdatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 42) ; 2 uses
  %.not.not.i62 = icmp eq ptr %i.cb, null
  br i1 %.not.not.i62, label %bb.ag, label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65

bb.ag:                                            ; preds = %bb.af
  tail call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.84) #33
  unreachable

_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65:    ; preds = %bb.ae, %bb.af
  %.1.in.i63 = phi ptr [ %i.ca, %bb.ae ], [ %i.cb, %bb.af ]
  %.1.i64 = load ptr, ptr %.1.in.i63, align 8, !tbaa !112 ; 2 uses
  %i.cc = icmp eq ptr %.sroa.0.0.i.i, %i.au
  br i1 %i.cc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65
  %i.cd = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ak) ; 3 uses
  store ptr %.1.i64, ptr %i.cd, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i8 1, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i8 0, ptr %.sroa.569.0..sroa_idx, align 8
  br label %.critedge

bb.ai:                                            ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  store ptr %.1.i64, ptr %i.ce, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ai, %bb.z, %bb.ab, %bb.ac
  ret i32 0

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN4LuauL17setWriteTablePropEP9lua_State(ptr noundef %0) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 3 uses
  %i.b = add i32 %i.a, -4
  %or.cond = icmp ult i32 %i.b, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.199, i32 noundef %i.a) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr @_ZN5FFlag30LuauUdtfTypeUseTaggedMetatableE, align 8, !tbaa !215, !range !100, !noundef !101
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_Z21luaL_checkudatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 1, i32 noundef 42)
  br label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noundef ptr @_Z20lua_touserdatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 1, i32 noundef 42) ; 2 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.f, label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.84) #33
  unreachable

_ZN4Luau15getTypeUserDataEP9lua_Statei.exit:      ; preds = %bb.d, %bb.e
  %.1.in.i = phi ptr [ %i.e, %bb.d ], [ %i.f, %bb.e ]
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !112 ; 7 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %bb.g, label %_ZN4Luau6get_ifINS_21TypeFunctionTableTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeES1_NS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPT_PNS_7VariantIJDpT0_EEE.exit.i

_ZN4Luau6get_ifINS_21TypeFunctionTableTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeES1_NS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPT_PNS_7VariantIJDpT0_EEE.exit.i: ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit
  %i.g = load i32, ptr %.1.i, align 8, !tbaa !116
  %i.h = icmp eq i32 %i.g, 9
  %i.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 8 ; 3 uses
  br i1 %i.h, label %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau6get_ifINS_21TypeFunctionTableTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeES1_NS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPT_PNS_7VariantIJDpT0_EEE.exit.i, %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call fastcc void @_ZN4LuauL6getTagB5cxx11EP9lua_StatePKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef %0, ptr noundef %.1.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !123
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.200, ptr noundef %i.j) #33
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !123    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !124
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.aj

_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit: ; preds = %_ZN4Luau6get_ifINS_21TypeFunctionTableTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeES1_NS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPT_PNS_7VariantIJDpT0_EEE.exit.i
  %i.q = load i8, ptr @_ZN5FFlag30LuauTypeFunctionSupportsFrozenE, align 8, !tbaa !215, !range !100, !noundef !101
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i, i64 144
  %i.t = load i8, ptr %i.s, align 8, !tbaa !219, !range !100, !noundef !101
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.201) #33
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN4Luau10getMutableINS_21TypeFunctionTableTypeEEEPT_PKNS_16TypeFunctionTypeE.exit
  %i.v = load i8, ptr @_ZN5FFlag30LuauUdtfTypeUseTaggedMetatableE, align 8, !tbaa !215, !range !100, !noundef !101
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = tail call noundef ptr @_Z21luaL_checkudatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 42)
  br label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53

bb.n:                                             ; preds = %bb.l
  %i.y = tail call noundef ptr @_Z20lua_touserdatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 42) ; 2 uses
  %.not.not.i50 = icmp eq ptr %i.y, null
  br i1 %.not.not.i50, label %bb.o, label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53

bb.o:                                             ; preds = %bb.n
  tail call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.84) #33
  unreachable

_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53:    ; preds = %bb.m, %bb.n
  %.1.in.i51 = phi ptr [ %i.x, %bb.m ], [ %i.y, %bb.n ]
  %.1.i52 = load ptr, ptr %.1.in.i51, align 8, !tbaa !112 ; 7 uses
  %.not.i54 = icmp eq ptr %.1.i52, null
  br i1 %.not.i54, label %bb.p, label %_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i

_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i: ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53
  %i.z = load i32, ptr %.1.i52, align 8, !tbaa !116
  %i.aa = icmp eq i32 %i.z, 4
  br i1 %i.aa, label %_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i, %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call fastcc void @_ZN4LuauL6getTagB5cxx11EP9lua_StatePKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, ptr noundef %.1.i52)
  %i.ab = load ptr, ptr %2, align 8, !tbaa !123
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.202, ptr noundef %i.ab) #33
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %2, align 8, !tbaa !123   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.r
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !124
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.aj

_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit: ; preds = %_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i52, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !233
  %.not = icmp eq i32 %i.aj, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.i52, i64 16 ; 3 uses
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call fastcc void @_ZN4LuauL6getTagB5cxx11EP9lua_StatePKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.1.i52)
  %i.al = load ptr, ptr %3, align 8, !tbaa !123
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.203, ptr noundef %i.al) #33
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %3, align 8, !tbaa !123   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.u
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !124
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.aj

bb.v:                                             ; preds = %_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !244 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i, i64 16 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i52, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !186 ; 4 uses
  %i.ax = load ptr, ptr %i.ak, align 8            ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !186 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.az) ; 2 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.bd = tail call i32 @memcmp(ptr noundef %i.bc, ptr noundef %i.ax, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.w
  %i.be = sub i64 %i.az, %i.aw
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.be, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bf = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.bf, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.bf, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !271 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.w, !llvm.loop !9

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bg = icmp eq ptr %.19.i.i.i, %i.au
  br i1 %i.bg, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !186 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.aw) ; 2 uses
  %i.bj = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !123
  %i.bm = tail call i32 @memcmp(ptr noundef %i.ax, ptr noundef %i.bl, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.x
  %i.bn = sub i64 %i.aw, %i.bi
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bn, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bo = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.bo, ptr %i.au, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %bb.v, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.au, %bb.v ], [ %i.au, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 6 uses
  %i.bp = icmp eq i32 %i.a, 2
  br i1 %i.bp, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.bq = tail call noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef 3)
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %.not83 = icmp eq ptr %.sroa.0.0.i.i, %i.au
  br i1 %.not83, label %.critedge, label %4

4:                                                ; preds = %bb.z
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 88 ; 2 uses
  %6 = load i8, ptr %5, align 8, !tbaa !273, !range !100, !noundef !101
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !273, !range !100, !noundef !101
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ak) ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0
  %i.bx = extractvalue { ptr, ptr } %i.bv, 1
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau20TypeFunctionPropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_ESI_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr %i.bw, ptr %i.bx)
  br label %.critedge

bb.ac:                                            ; preds = %4, %bb.aa
  store i8 0, ptr %5, align 8, !tbaa !273
  br label %.critedge

bb.ad:                                            ; preds = %bb.y
  %i.by = load i8, ptr @_ZN5FFlag30LuauUdtfTypeUseTaggedMetatableE, align 8, !tbaa !215, !range !100, !noundef !101
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ca = tail call noundef ptr @_Z21luaL_checkudatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 42)
  br label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65

bb.af:                                            ; preds = %bb.ad
  %i.cb = tail call noundef ptr @_Z20lua_touserdatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 42) ; 2 uses
  %.not.not.i62 = icmp eq ptr %i.cb, null
  br i1 %.not.not.i62, label %bb.ag, label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65

bb.ag:                                            ; preds = %bb.af
  tail call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.84) #33
  unreachable

_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65:    ; preds = %bb.ae, %bb.af
  %.1.in.i63 = phi ptr [ %i.ca, %bb.ae ], [ %i.cb, %bb.af ]
  %.1.i64 = load ptr, ptr %.1.in.i63, align 8, !tbaa !112 ; 2 uses
  %i.cc = icmp eq ptr %.sroa.0.0.i.i, %i.au
  br i1 %i.cc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65
  %i.cd = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau20TypeFunctionPropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ak) ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %.1.i64, ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i8 1, ptr %.sroa.569.0..sroa_idx, align 8
  br label %.critedge

bb.ai:                                            ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit65
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 80
  store ptr %.1.i64, ptr %i.ce, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 88
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ai, %bb.z, %bb.ab, %bb.ac
  ret i32 0

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN4LuauL13readTablePropEP9lua_State(ptr noundef %0) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.Luau::Variant.154", align 8 ; 5 uses
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.204, i32 noundef %i.a) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr @_ZN5FFlag30LuauUdtfTypeUseTaggedMetatableE, align 8, !tbaa !215, !range !100, !noundef !101
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef ptr @_Z21luaL_checkudatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 1, i32 noundef 42)
  br label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit

bb.e:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_Z20lua_touserdatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 1, i32 noundef 42) ; 2 uses
  %.not.not.i = icmp eq ptr %i.e, null
  br i1 %.not.not.i, label %bb.f, label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.84) #33
  unreachable

_ZN4Luau15getTypeUserDataEP9lua_Statei.exit:      ; preds = %bb.d, %bb.e
  %.1.in.i = phi ptr [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !112 ; 6 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %bb.g, label %_ZN4Luau6get_ifINS_21TypeFunctionTableTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeES1_NS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i

_ZN4Luau6get_ifINS_21TypeFunctionTableTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeES1_NS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i: ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit
  %i.f = load i32, ptr %.1.i, align 8, !tbaa !116
  %i.g = icmp eq i32 %i.f, 9
  %i.h = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  br i1 %i.g, label %_ZN4Luau3getINS_21TypeFunctionTableTypeEEEPKT_PKNS_16TypeFunctionTypeE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau6get_ifINS_21TypeFunctionTableTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeES1_NS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i, %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call fastcc void @_ZN4LuauL6getTagB5cxx11EP9lua_StatePKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef %0, ptr noundef %.1.i)
  %i.i = load ptr, ptr %1, align 8, !tbaa !123
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.205, ptr noundef %i.i) #33
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %1, align 8, !tbaa !123    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !124
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit57

_ZN4Luau3getINS_21TypeFunctionTableTypeEEEPKT_PKNS_16TypeFunctionTypeE.exit: ; preds = %_ZN4Luau6get_ifINS_21TypeFunctionTableTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeES1_NS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i
  %i.p = load i8, ptr @_ZN5FFlag30LuauUdtfTypeUseTaggedMetatableE, align 8, !tbaa !215, !range !100, !noundef !101
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4Luau3getINS_21TypeFunctionTableTypeEEEPKT_PKNS_16TypeFunctionTypeE.exit
  %i.r = tail call noundef ptr @_Z21luaL_checkudatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 42)
  br label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit48

bb.k:                                             ; preds = %_ZN4Luau3getINS_21TypeFunctionTableTypeEEEPKT_PKNS_16TypeFunctionTypeE.exit
  %i.s = tail call noundef ptr @_Z20lua_touserdatataggedP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 42) ; 2 uses
  %.not.not.i45 = icmp eq ptr %i.s, null
  br i1 %.not.not.i45, label %bb.l, label %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit48

bb.l:                                             ; preds = %bb.k
  tail call void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.84) #33
  unreachable

_ZN4Luau15getTypeUserDataEP9lua_Statei.exit48:    ; preds = %bb.j, %bb.k
  %.1.in.i46 = phi ptr [ %i.r, %bb.j ], [ %i.s, %bb.k ]
  %.1.i47 = load ptr, ptr %.1.in.i46, align 8, !tbaa !112 ; 7 uses
  %.not.i49 = icmp eq ptr %.1.i47, null
  br i1 %.not.i49, label %bb.m, label %_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i

_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i: ; preds = %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit48
  %i.t = load i32, ptr %.1.i47, align 8, !tbaa !116
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i, %_ZN4Luau15getTypeUserDataEP9lua_Statei.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call fastcc void @_ZN4LuauL6getTagB5cxx11EP9lua_StatePKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, ptr noundef %.1.i47)
  %i.v = load ptr, ptr %2, align 8, !tbaa !123
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.206, ptr noundef %i.v) #33
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8, !tbaa !123    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.o
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !124
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZN4Luau7VariantIJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeENS_25TypeFunctionSingletonTypeENS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEED2Ev.exit57

_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit: ; preds = %_ZN4Luau6get_ifINS_25TypeFunctionSingletonTypeEJNS_25TypeFunctionPrimitiveTypeENS_19TypeFunctionAnyTypeENS_23TypeFunctionUnknownTypeENS_21TypeFunctionNeverTypeES1_NS_21TypeFunctionUnionTypeENS_28TypeFunctionIntersectionTypeENS_24TypeFunctionNegationTypeENS_24TypeFunctionFunctionTypeENS_21TypeFunctionTableTypeENS_22TypeFunctionExternTypeENS_23TypeFunctionGenericTypeEEEEPKT_PKNS_7VariantIJDpT0_EEE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i47, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !233
  %.not64 = icmp eq i32 %i.ad, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i47, i64 16 ; 2 uses
  br i1 %.not64, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN4Luau3getINS_27TypeFunctionStringSingletonEEEPKT_PKNS_25TypeFunctionSingletonTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call fastcc void @_ZN4LuauL6getTagB5cxx11EP9lua_StatePKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.1.i47)
  %i.af = load ptr, ptr %3, align 8, !tbaa !123
  invoke void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.207, ptr noundef %i.af) #33
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4Luau8areEqualERNS_13AreEqualStateERKNS_28TypeFunctionVariadicTypePackES4_:bb.a
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIPKvS2_ES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !302  ; 2 uses
  %i.q = icmp ult ptr %1, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ult ptr %i.p, %1
  br i1 %i.r, label %_ZN4Luau15seenSetContainsERNS_13AreEqualStateEPKvS3_.exit.thread8, label %_ZNKSt4lessISt4pairIPKvS2_EEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessISt4pairIPKvS2_EEclERKS3_S6_.exit.i.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !303
  %.not.i = icmp ult ptr %2, %i.t
  br i1 %.not.i, label %bb.f, label %_ZN4Luau15seenSetContainsERNS_13AreEqualStateEPKvS3_.exit.thread8

_ZN4Luau15seenSetContainsERNS_13AreEqualStateEPKvS3_.exit.thread8: ; preds = %_ZNKSt4lessISt4pairIPKvS2_EEclERKS3_S6_.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN4Luau15seenSetContainsERNS_13AreEqualStateEPKvS3_.exit.thread

bb.f:                                             ; preds = %_ZNKSt4lessISt4pairIPKvS2_EEclERKS3_S6_.exit.i.i.i, %bb.d, %_ZNSt8_Rb_treeISt4pairIPKvS2_ES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i.i, %bb.b
  %i.u = call { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIPKvS2_ES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EES0_ISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.v = load ptr, ptr %1, align 8, !tbaa !228
  %i.w = load ptr, ptr %2, align 8, !tbaa !228
  %i.x = call noundef zeroext i1 @_ZN4Luau8areEqualERNS_13AreEqualStateERKNS_16TypeFunctionTypeES4_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(145) %i.v, ptr noundef nonnull align 8 dereferenceable(145) %i.w)
  br label %_ZN4Luau15seenSetContainsERNS_13AreEqualStateEPKvS3_.exit.thread

_ZN4Luau15seenSetContainsERNS_13AreEqualStateEPKvS3_.exit.thread: ; preds = %bb.a, %_ZN4Luau15seenSetContainsERNS_13AreEqualStateEPKvS3_.exit.thread8, %bb.f
  %.0 = phi i1 [ %i.x, %bb.f ], [ true, %_ZN4Luau15seenSetContainsERNS_13AreEqualStateEPKvS3_.exit.thread8 ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau16TypeFunctionTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(145) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::AreEqualState", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !244
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !241
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !242
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !243
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !286
  %i.g = invoke noundef zeroext i1 @_ZN4Luau8areEqualERNS_13AreEqualStateERKNS_16TypeFunctionTypeES4_(ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(145) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !244
  invoke void @_ZNSt8_Rb_treeISt4pairIPKvS2_ES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef %i.h)
          to label %_ZN4Luau13AreEqualStateD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZN4Luau13AreEqualStateD2Ev.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.g

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau13AreEqualStateD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau13AreEqualStateD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244
  invoke void @_ZNSt8_Rb_treeISt4pairIPKvS2_ES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3setISt4pairIPKvS2_ESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZNSt3setISt4pairIPKvS2_ESt4lessIS3_ESaIS3_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau23TypeFunctionTypePackVareqERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::AreEqualState", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !244
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !241
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !242
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !243
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !286
  %i.g = invoke noundef zeroext i1 @_ZN4Luau8areEqualERNS_13AreEqualStateERKNS_23TypeFunctionTypePackVarES4_(ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !244
  invoke void @_ZNSt8_Rb_treeISt4pairIPKvS2_ES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef %i.h)
          to label %_ZN4Luau13AreEqualStateD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZN4Luau13AreEqualStateD2Ev.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.g

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau13AreEqualStateD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau20TypeFunctionProperty8readonlyEPKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::TypeFunctionProperty") align 8 captures(none) initializes((0, 9), (24, 25)) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.b, align 8, !tbaa !273
  store ptr %1, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau20TypeFunctionProperty9writeonlyEPKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::TypeFunctionProperty") align 8 captures(none) initializes((8, 9), (16, 25)) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !273
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8
  store i8 1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau20TypeFunctionProperty2rwEPKNS_16TypeFunctionTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::TypeFunctionProperty") align 8 captures(none) initializes((0, 9), (16, 25)) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %0, align 8, !alias.scope !525
  store i8 1, ptr %i.a, align 8, !alias.scope !525
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !alias.scope !525
  store i8 1, ptr %i.b, align 8, !alias.scope !525
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Luau20TypeFunctionProperty2rwEPKNS_16TypeFunctionTypeES3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::TypeFunctionProperty") align 8 captures(none) initializes((0, 9), (16, 25)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8
  store i8 1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau20TypeFunctionProperty8isSharedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !273, !range !100, !noundef !101
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !100
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %1, label %6

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr %3, %4
  br label %6

6:                                                ; preds = %1, %bb.a
  %7 = phi i1 [ %5, %1 ], [ false, %bb.a ]
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau20TypeFunctionProperty10isReadOnlyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #20 align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i8, ptr %2, align 8, !tbaa !273, !range !100, !noundef !101
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.a, label %5

bb.a:                                             ; preds = %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !273, !range !100, !noundef !101
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  br label %5

5:                                                ; preds = %bb.a, %1
  %6 = phi i1 [ false, %1 ], [ %i.d, %bb.a ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau20TypeFunctionProperty11isWriteOnlyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #20 align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load i8, ptr %2, align 8, !tbaa !273, !range !100, !noundef !101
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.a, label %5

bb.a:                                             ; preds = %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !273, !range !100, !noundef !101
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  br label %5

5:                                                ; preds = %bb.a, %1
  %6 = phi i1 [ false, %1 ], [ %i.d, %bb.a ]
  ret i1 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau9deepCloneENS_7NotNullINS_19TypeFunctionRuntimeEEEPKNS_16TypeFunctionTypeE(ptr %0, ptr noundef %1) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::TypeFunctionCloner", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %0, ptr %2, align 8, !tbaa !307
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !322
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.d = invoke noundef ptr @_ZN4Luau18TypeFunctionCloner12shallowCloneEPKNS_16TypeFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(116) %2, ptr noundef %1)
          to label %.noexc unwind label %bb.m     ; 0 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN4Luau18TypeFunctionCloner3runEv(ptr noundef nonnull align 8 dereferenceable(116) %2)
          to label %.noexc2 unwind label %bb.m

.noexc2:                                          ; preds = %.noexc
  %i.e = load i32, ptr %i.c, align 8, !tbaa !322
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !323
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !324
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 5
  %i.n = add nsw i64 %i.m, %i.f
  %i.o = load i32, ptr @_ZN5DFInt35LuauTypeFunctionSerdeIterationLimitE, align 8, !tbaa !327
  %i.p = sext i32 %i.o to i64
  %.not.i = icmp ult i64 %i.n, %i.p
  br i1 %.not.i, label %bb.b, label %_ZN4Luau18TypeFunctionCloner5cloneEPKNS_16TypeFunctionTypeE.exit

bb.b:                                             ; preds = %.noexc2
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !328
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN4Luau18TypeFunctionCloner5cloneEPKNS_16TypeFunctionTypeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112  ; 2 uses
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %_ZN4Luau18TypeFunctionCloner5cloneEPKNS_16TypeFunctionTypeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !329
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !330
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i.i.i = phi i64 [ %i.ad, %bb.d ], [ %i.ak, %bb.g ]
  %.01828.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aj, %bb.g ]
  %.01929.i.i.i.i = and i64 %.pn.i.i.i.i, %i.z    ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.01929.i.i.i.i ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !112 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZNK4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq ptr %i.ag, %i.v
  br i1 %i.ai, label %_ZN4Luau18TypeFunctionCloner5cloneEPKNS_16TypeFunctionTypeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add i64 %.01828.i.i.i.i, 1              ; 3 uses
  %i.ak = add i64 %i.aj, %.01929.i.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %i.aj, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4Luau18TypeFunctionCloner5cloneEPKNS_16TypeFunctionTypeE.exit, label %bb.e, !llvm.loop !13

_ZNK4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.i.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !112
  br label %_ZN4Luau18TypeFunctionCloner5cloneEPKNS_16TypeFunctionTypeE.exit

_ZN4Luau18TypeFunctionCloner5cloneEPKNS_16TypeFunctionTypeE.exit: ; preds = %bb.g, %bb.f, %_ZNK4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.i.i, %bb.c, %bb.b, %.noexc2
  %.0.i = phi ptr [ null, %.noexc2 ], [ %i.am, %_ZNK4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.i.i ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.g ]
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !331 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau18TypeFunctionCloner5cloneEPKNS_16TypeFunctionTypeE.exit
  call void @_ZdlPv(ptr noundef nonnull %i.an) #30
  br label %_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i

_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i: ; preds = %bb.h, %_ZN4Luau18TypeFunctionCloner5cloneEPKNS_16TypeFunctionTypeE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !330 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZN4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #30
  br label %_ZN4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i

_ZN4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i: ; preds = %bb.i, %_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !324 ; 3 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !323 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i, %_ZSt8_DestroyISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bh, %_ZSt8_DestroyISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EEEvPT_.exit.i.i.i.i ], [ %i.aq, %_ZN4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !333
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_16TypeFunctionTypeEPKNS_23TypeFunctionTypePackVarEEE9tableDtorE, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  invoke void %i.aw(ptr noundef nonnull %i.ax)
          to label %_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #31
  unreachable

_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ba = load i32, ptr %.05.i.i.i.i, align 8, !tbaa !333
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_16TypeFunctionTypeEPKNS_23TypeFunctionTypePackVarEEE9tableDtorE, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  invoke void %i.bd(ptr noundef nonnull %i.be)
          to label %_ZSt8_DestroyISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EEEvPT_.exit.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #31
  unreachable

_ZSt8_DestroyISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN4Luau7VariantIJPKNS0_16TypeFunctionTypeEPKNS0_23TypeFunctionTypePackVarEEEELb0EED2Ev.exit.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.bh, %i.ar
  br i1 %.not.i.i.i.i3, label %_ZSt8_DestroyIPSt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPSt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !324
  br label %_ZSt8_DestroyIPSt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESA_EvT_SC_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  %i.bi = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.aq, %_ZN4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau18TypeFunctionClonerD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !334
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #32
  br label %_ZN4Luau18TypeFunctionClonerD2Ev.exit

_ZN4Luau18TypeFunctionClonerD2Ev.exit:            ; preds = %_ZSt8_DestroyIPSt5tupleIJN4Luau7VariantIJPKNS1_16TypeFunctionTypeEPKNS1_23TypeFunctionTypePackVarEEEES9_EESA_EvT_SC_RSaIT0_E.exit.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.0.i

bb.m:                                             ; preds = %.noexc, %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau18TypeFunctionClonerD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.bo
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau18TypeFunctionClonerD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #30
  br label %_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !330  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %_ZN4Luau12DenseHashMapIPKNS_16TypeFunctionTypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau12DenseHashMapIPKNS_23TypeFunctionTypePackVarES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #30
end_hunk_1
