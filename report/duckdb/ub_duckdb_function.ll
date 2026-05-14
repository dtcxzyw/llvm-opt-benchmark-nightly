inline.NumInlined: 6549
inline.NumDeleted: 2624
begin_hunk_0_@_ZN6duckdb17ScalarFunctionSet22GetFunctionByArgumentsERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEE:bb.a
          to label %bb.s unwind label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.b, %bb.n, %bb.m
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.j:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %9, align 8, !tbaa !22     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.g, %bb.j ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.k ] ; 4 uses
  %.1 = phi i1 [ true, %bb.j ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.k ] ; 2 uses
  %i.l = load ptr, ptr %10, align 8, !tbaa !22    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.l) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.o = load ptr, ptr %7, align 8, !tbaa !22     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread: ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.s = load ptr, ptr %7, align 8, !tbaa !22     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread
  call void @_ZdlPv(ptr noundef %i.s) #32
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @_ZdlPv(ptr noundef %i.o) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %.1, label %bb.l, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %.1, label %bb.l, label %bb.q

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread
  %.pn.pn.pn29.ph = phi { ptr, i32 } [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn.pn.pn29 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn.pn.pn29.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.q

bb.m:                                             ; preds = %_ZN6duckdb14FunctionBinder12BindFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_17ScalarFunctionSetERKNS_6vectorINS_11LogicalTypeELb1ESaISC_EEERNS_9ErrorDataE.exit
  %i.v = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE19GetFunctionByOffsetEm(ptr dead_on_unwind writable sret(%"class.duckdb::ScalarFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.v)
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !212  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.z, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.y, %bb.o ] ; 6 uses
  %i.z = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ac) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !22 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.af) #32
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #32
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !214

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %bb.o
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !215
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !216
  %i.al = shl i64 %i.ak, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.al, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !215 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.am) #32
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.p, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.aq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN6duckdb9ErrorDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.au) #32
  br label %_ZN6duckdb9ErrorDataD2Ev.exit

_ZN6duckdb9ErrorDataD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.l, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.e, %bb.i ], [ %.pn.pn.pn29, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.q ], [ %i.d, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn18.pn

bb.s:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(360) ptr @_ZN6duckdb14ScalarFunctionaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN6duckdb14SimpleFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(236) %1) ; 0 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.e = load i8, ptr %i.d, align 8, !tbaa !217
  store i8 %i.e, ptr %i.c, align 8, !tbaa !217
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 209
  %i.g = load i8, ptr %i.f, align 1, !tbaa !218
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 %i.g, ptr %i.h, align 1, !tbaa !218
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34   ; 8 uses
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.u, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !42
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #31, !inline_history !219
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #31, !inline_history !219
  br label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.i ], [ %i.ah, %bb.j ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.k, label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit, !prof !44

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #31
  br label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit

_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit:      ; preds = %bb.a, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.al = load i32, ptr %i.ak, align 8
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !31
  %.not.i.i.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i: ; preds = %bb.l, %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <16 x i8>, ptr %2, align 16, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 16, i1 false), !tbaa.struct !32
  store <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.am, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !33
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !33 ; 2 uses
  store <2 x ptr> %i.at, ptr %i.ar, align 16, !tbaa !33
  store <2 x ptr> %i.ao, ptr %i.as, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSEOS8_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSEOS8_.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #33
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSEOS8_.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %i.az, i64 72, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bd = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !34 ; 8 uses
  store <2 x ptr> %i.bd, ptr %i.ba, align 8, !tbaa !33
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSEOS2_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSEOS8_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bf, align 8, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !42
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #31, !inline_history !220
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #31, !inline_history !220
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSEOS2_.exit

bb.q:                                             ; preds = %bb.o
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.r ], [ %i.bs, %bb.s ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.t, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSEOS2_.exit, !prof !44

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #31
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EEaSEOS2_.exit: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSEOS8_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BuiltinFunctions20AddExtensionFunctionENS_17ScalarFunctionSetE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::CreateScalarFunctionInfo", align 8 ; 13 uses
  %3 = alloca %"class.duckdb::ScalarFunctionSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !19
  %i.b = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN6duckdb17ScalarFunctionSetC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %3, align 8, !tbaa !22
  %i.i = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.i, ptr %i.a, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %_ZN6duckdb17ScalarFunctionSetC2EOS0_.exit

_ZN6duckdb17ScalarFunctionSetC2EOS0_.exit:        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !24
  store ptr %i.c, ptr %1, align 8, !tbaa !22
  store i64 0, ptr %i.k, align 8, !tbaa !24
  store i8 0, ptr %i.c, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !146
  store <2 x ptr> %i.o, ptr %i.m, align 8, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !147
  store ptr %i.r, ptr %i.p, align 8, !tbaa !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb24CreateScalarFunctionInfoC1ENS_17ScalarFunctionSetE(ptr noundef nonnull align 8 dereferenceable(464) %2, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN6duckdb17ScalarFunctionSetC2EOS0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !137  ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !140  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !26
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i.i.i) #31, !inline_history !143
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 360 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.u
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !142

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.m, align 8, !tbaa !137
  br label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.y = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.t, %bb.c ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.y) #32
  br label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.z = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.z) #32
  br label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit

_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 82
  store i8 1, ptr %i.ab, align 2, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !84, !nonnull !90, !align !91
  %i.ae = invoke ptr @_ZN6duckdb7Catalog14CreateFunctionENS_18CatalogTransactionERNS_18CreateFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(408) %2)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb24CreateScalarFunctionInfoE, i64 16), ptr %2, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 440 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !140 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !26
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i.i.i.i) #31, !inline_history !141
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 360 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !142

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !137
  br label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.an = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ah, %bb.e ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.an, null
end_hunk_0
