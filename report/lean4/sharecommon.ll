Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/sharecommon?download=true
inline.NumInlined: 630
inline.NumDeleted: 340
begin_hunk_0_@lean_sharecommon_quick:bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean20sharecommon_quick_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.aa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean20sharecommon_quick_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIP11lean_objectS1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityEN4lean20sharecommon_quick_fn6set_eqENS7_8set_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !42 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.06.i.i.i.i) #19
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIP11lean_objectS1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityEN4lean20sharecommon_quick_fn6set_eqENS7_8set_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !64

_ZNSt10_HashtableIP11lean_objectS1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityEN4lean20sharecommon_quick_fn6set_eqENS7_8set_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !62
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_setIP11lean_objectN4lean20sharecommon_quick_fn8set_hashENS3_6set_eqE16mi_stl_allocatorIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIP11lean_objectS1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityEN4lean20sharecommon_quick_fn6set_eqENS7_8set_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  tail call void @mi_free(ptr noundef %i.i) #19
  br label %_ZNSt13unordered_setIP11lean_objectN4lean20sharecommon_quick_fn8set_hashENS3_6set_eqE16mi_stl_allocatorIS1_EED2Ev.exit

_ZNSt13unordered_setIP11lean_objectN4lean20sharecommon_quick_fn8set_hashENS3_6set_eqE16mi_stl_allocatorIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIP11lean_objectS1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityEN4lean20sharecommon_quick_fn6set_eqENS7_8set_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_setIP11lean_objectN4lean20sharecommon_quick_fn8set_hashENS3_6set_eqE16mi_stl_allocatorIS1_EED2Ev.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.n, %.lr.ph.i.i.i.i2 ], [ %i.m, %_ZNSt13unordered_setIP11lean_objectN4lean20sharecommon_quick_fn8set_hashENS3_6set_eqE16mi_stl_allocatorIS1_EED2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !42 ; 2 uses
  tail call void @mi_free(ptr noundef nonnull %.06.i.i.i.i3) #19
  %.not.i.i.i.i4 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !66

_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_setIP11lean_objectN4lean20sharecommon_quick_fn8set_hashENS3_6set_eqE16mi_stl_allocatorIS1_EED2Ev.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !44
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @mi_free(ptr noundef %i.s) #19
  br label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEED2Ev.exit

_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIP11lean_objectSt4pairIKS1_S1_E16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4lean25sharecommon_persistent_fnclEP11lean_object(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.lean::object_ref", align 8  ; 5 uses
  %3 = alloca %"class.lean::object_ref", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !8
  %.val.i = load i32, ptr %1, align 4, !tbaa !12
  %i.b = icmp eq i32 %.val.i, 1
  br i1 %i.b, label %_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35
  %.not.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.e, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !42 ; 4 uses
  %i.f = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.f, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit.i, label %bb.d, !llvm.loop !43

bb.f:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = icmp eq ptr %1, %i.s
  br i1 %i.t, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = icmp eq ptr %1, %i.x
  br i1 %i.u, label %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !47

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %i.q, %bb.g ]
  %i.v = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !42 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8    ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = urem i64 %i.y, %i.l
  %.not19.i.i.i.i.i = icmp eq i64 %i.z, %i.m
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !47

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit.i, !llvm.loop !47

_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.q, %bb.g ], [ %i.v, %bb.h ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  br label %_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !48, !range !54, !noundef !55
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit.thread

bb.j:                                             ; preds = %.loopexit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = call ptr @_ZNSt10_HashtableIP11lean_objectS1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityEN4lean20sharecommon_quick_fn6set_eqENS7_8set_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit

_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit.thread: ; preds = %.loopexit.i, %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %1, ptr %2, align 8, !tbaa !67
  %.val.i.i.i.i = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.aj, label %bb.l, label %bb.m, !prof !14

_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit: ; preds = %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit.i, %bb.k
  %.sink.in.i = phi ptr [ %i.ah, %bb.k ], [ %i.aa, %_ZNSt13unordered_mapIP11lean_objectS1_St4hashIS1_ESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_S1_EEE4findERS8_.exit.i ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !8 ; 3 uses
  %i.ak = load i32, ptr %.sink.i, align 4, !tbaa !12
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %.sink.i, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.l:                                             ; preds = %_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit.thread
  %i.am = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.am, ptr %1, align 4, !tbaa !12
  br label %_ZN4lean10object_refC2EP11lean_objectb.exit

bb.m:                                             ; preds = %_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit.thread
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4lean10object_refC2EP11lean_objectb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean10object_refC2EP11lean_objectb.exit

_ZN4lean10object_refC2EP11lean_objectb.exit:      ; preds = %bb.l, %bb.m, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4lean10object_refC2EP11lean_objectb.exit
  store ptr %1, ptr %i.ap, align 8, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !69
  br label %_ZN4lean10object_refD2Ev.exit

bb.p:                                             ; preds = %_ZN4lean10object_refC2EP11lean_objectb.exit
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 10 uses
  %i.au = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.q, label %_ZNKSt6vectorIN4lean10object_refESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
          to label %.noexc28 unwind label %bb.aa

.noexc28:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN4lean10object_refESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i26 = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i26)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #23
          to label %.noexc29 unwind label %bb.aa  ; 10 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIN4lean10object_refESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  store ptr %1, ptr %i.bf, align 8, !tbaa !67
  %.not10.i.i.i.i = icmp eq ptr %i.at, %i.ap
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc29
  %i.bg = add i64 %i.au, -8
  %i.bh = sub i64 %i.bg, %i.av                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader124, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bk = add i64 %i.au, -8
  %i.bl = sub i64 %i.bk, %i.av
  %i.bm = and i64 %i.bl, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.bn
  %scevgep98 = getelementptr i8, ptr %i.at, i64 %i.bn
  %bound0 = icmp ult ptr %i.be, %scevgep98
  %bound1 = icmp ult ptr %i.at, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.be, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.at, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.br ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.at, i64 %i.br ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.bs = getelementptr i8, ptr %next.gep99, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep99, align 8, !tbaa !67, !alias.scope !79, !noalias !74
  %wide.load100 = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !67, !alias.scope !79, !noalias !74
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !67, !alias.scope !82, !noalias !79
  store <2 x ptr> %wide.load100, ptr %i.bt, align 8, !tbaa !67, !alias.scope !82, !noalias !79
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %next.gep99, align 8, !tbaa !67, !alias.scope !79, !noalias !74
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.bs, align 8, !tbaa !67, !alias.scope !79, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader124

.lr.ph.i.i.i.i.preheader124:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader124, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader124 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader124 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.bv = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !67, !alias.scope !77, !noalias !74
  store ptr %i.bv, ptr %.012.i.i.i.i, align 8, !tbaa !67, !alias.scope !74, !noalias !77
  store ptr inttoptr (i64 1 to ptr), ptr %.0911.i.i.i.i, align 8, !tbaa !67, !alias.scope !77, !noalias !74
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bw, %i.ap
  br i1 %.not.i.i.i.i27, label %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !87

_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc29
  %.0.lcssa.i.i.i.i = phi ptr [ %i.be, %.noexc29 ], [ %i.bp, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i, label %.noexc, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #20
  br label %.noexc

.noexc:                                           ; preds = %bb.r, %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.be, ptr %i.ai, align 8, !tbaa !73
  store ptr %i.by, ptr %i.ao, align 8, !tbaa !69
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bz, ptr %i.aq, align 8, !tbaa !72
  br label %_ZN4lean10object_refD2Ev.exit

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.o, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ca = call noundef ptr @_ZN4lean20sharecommon_quick_fn5visitEP11lean_object(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull %1) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ca, ptr %3, align 8, !tbaa !67
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i.i.i16 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i16, label %bb.s, label %_ZN4lean10object_refC2EP11lean_objectb.exit19

bb.s:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %.val.i.i.i.i17 = load i32, ptr %i.ca, align 4, !tbaa !12 ; 3 uses
  %i.cd = icmp sgt i32 %.val.i.i.i.i17, 0
  br i1 %i.cd, label %bb.t, label %bb.u, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.ce = add nuw i32 %.val.i.i.i.i17, 1
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !12
  br label %_ZN4lean10object_refC2EP11lean_objectb.exit19

bb.u:                                             ; preds = %bb.s
  %.not.i.i.i.i18 = icmp eq i32 %.val.i.i.i.i17, 0
  br i1 %.not.i.i.i.i18, label %_ZN4lean10object_refC2EP11lean_objectb.exit19, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = atomicrmw sub ptr %i.ca, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean10object_refC2EP11lean_objectb.exit19

_ZN4lean10object_refC2EP11lean_objectb.exit19:    ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.t, %bb.u, %bb.v
  %i.cg = load ptr, ptr %i.ao, align 8, !tbaa !69 ; 6 uses
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !72
  %.not.i.i20 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i.i20, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4lean10object_refC2EP11lean_objectb.exit19
  store ptr %i.ca, ptr %i.cg, align 8, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ci, ptr %i.ao, align 8, !tbaa !69
  br label %_ZN4lean10object_refD2Ev.exit25

bb.x:                                             ; preds = %_ZN4lean10object_refC2EP11lean_objectb.exit19
  %i.cj = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 10 uses
  %i.ck = ptrtoint ptr %i.cg to i64               ; 3 uses
  %i.cl = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 4 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.y, label %_ZNKSt6vectorIN4lean10object_refESaIS1_EE12_M_check_lenEmPKc.exit.i30

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
          to label %.noexc48 unwind label %bb.ab

.noexc48:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN4lean10object_refESaIS1_EE12_M_check_lenEmPKc.exit.i30: ; preds = %bb.x
  %i.co = ashr exact i64 %i.cm, 3                 ; 3 uses
  %.sroa.speculated.i.i31 = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i31, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i32 = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %.not.i.i32)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #23
          to label %.noexc49 unwind label %bb.ab  ; 10 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorIN4lean10object_refESaIS1_EE12_M_check_lenEmPKc.exit.i30
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cm
  store ptr %i.ca, ptr %i.cv, align 8, !tbaa !67
  %.not10.i.i.i.i33 = icmp eq ptr %i.cj, %i.cg
  br i1 %.not10.i.i.i.i33, label %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i45, label %.lr.ph.i.i.i.i34.preheader

.lr.ph.i.i.i.i34.preheader:                       ; preds = %.noexc49
  %i.cw = add i64 %i.ck, -8
  %i.cx = sub i64 %i.cw, %i.cl                    ; 2 uses
  %i.cy = lshr i64 %i.cx, 3
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check109 = icmp ult i64 %i.cx, 136
  br i1 %min.iters.check109, label %.lr.ph.i.i.i.i34.preheader123, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i.i.i.i34.preheader
  %i.da = add i64 %i.ck, -8
  %i.db = sub i64 %i.da, %i.cl
  %i.dc = and i64 %i.db, -8
  %i.dd = add i64 %i.dc, 8                        ; 2 uses
  %scevgep103 = getelementptr i8, ptr %i.cu, i64 %i.dd
  %scevgep104 = getelementptr i8, ptr %i.cj, i64 %i.dd
  %bound0105 = icmp ult ptr %i.cu, %scevgep104
  %bound1106 = icmp ult ptr %i.cj, %scevgep103
  %found.conflict107 = and i1 %bound0105, %bound1106
  br i1 %found.conflict107, label %.lr.ph.i.i.i.i34.preheader123, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck102
  %n.vec111 = and i64 %i.cz, 4611686018427387900  ; 3 uses
  %i.de = shl i64 %n.vec111, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cj, i64 %i.de
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next118, %vector.body112 ] ; 2 uses
  %i.dh = shl i64 %index113, 3                    ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.cu, i64 %i.dh ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.cj, i64 %i.dh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.di = getelementptr i8, ptr %next.gep115, i64 16 ; 2 uses
  %wide.load116 = load <2 x ptr>, ptr %next.gep115, align 8, !tbaa !67, !alias.scope !93, !noalias !88
  %wide.load117 = load <2 x ptr>, ptr %i.di, align 8, !tbaa !67, !alias.scope !93, !noalias !88
  %i.dj = getelementptr i8, ptr %next.gep114, i64 16
  store <2 x ptr> %wide.load116, ptr %next.gep114, align 8, !tbaa !67, !alias.scope !96, !noalias !93
  store <2 x ptr> %wide.load117, ptr %i.dj, align 8, !tbaa !67, !alias.scope !96, !noalias !93
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %next.gep115, align 8, !tbaa !67, !alias.scope !93, !noalias !88
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.di, align 8, !tbaa !67, !alias.scope !93, !noalias !88
  %index.next118 = add nuw i64 %index113, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.dk, label %middle.block119, label %vector.body112, !llvm.loop !98

middle.block119:                                  ; preds = %vector.body112
  %cmp.n120 = icmp eq i64 %i.cz, %n.vec111
  br i1 %cmp.n120, label %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i45, label %.lr.ph.i.i.i.i34.preheader123

.lr.ph.i.i.i.i34.preheader123:                    ; preds = %vector.memcheck102, %.lr.ph.i.i.i.i34.preheader, %middle.block119
  %.012.i.i.i.i35.ph = phi ptr [ %i.cu, %vector.memcheck102 ], [ %i.cu, %.lr.ph.i.i.i.i34.preheader ], [ %i.df, %middle.block119 ]
  %.0911.i.i.i.i36.ph = phi ptr [ %i.cj, %vector.memcheck102 ], [ %i.cj, %.lr.ph.i.i.i.i34.preheader ], [ %i.dg, %middle.block119 ]
  br label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %.lr.ph.i.i.i.i34.preheader123, %.lr.ph.i.i.i.i34
  %.012.i.i.i.i35 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i34 ], [ %.012.i.i.i.i35.ph, %.lr.ph.i.i.i.i34.preheader123 ] ; 2 uses
  %.0911.i.i.i.i36 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i34 ], [ %.0911.i.i.i.i36.ph, %.lr.ph.i.i.i.i34.preheader123 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.dl = load ptr, ptr %.0911.i.i.i.i36, align 8, !tbaa !67, !alias.scope !91, !noalias !88
  store ptr %i.dl, ptr %.012.i.i.i.i35, align 8, !tbaa !67, !alias.scope !88, !noalias !91
  store ptr inttoptr (i64 1 to ptr), ptr %.0911.i.i.i.i36, align 8, !tbaa !67, !alias.scope !91, !noalias !88
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i36, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i35, i64 8 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.dm, %i.cg
  br i1 %.not.i.i.i.i37, label %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i45, label %.lr.ph.i.i.i.i34, !llvm.loop !99

_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i45: ; preds = %.lr.ph.i.i.i.i34, %middle.block119, %.noexc49
  %.0.lcssa.i.i.i.i39 = phi ptr [ %i.cu, %.noexc49 ], [ %i.df, %middle.block119 ], [ %i.dn, %.lr.ph.i.i.i.i34 ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i39, i64 8
  %.not.i23.i47 = icmp eq ptr %i.cj, null
  br i1 %.not.i23.i47, label %.noexc21, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i45
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cm) #20
  br label %.noexc21

.noexc21:                                         ; preds = %bb.z, %_ZNSt6vectorIN4lean10object_refESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i45
  store ptr %i.cu, ptr %i.ai, align 8, !tbaa !73
  store ptr %i.do, ptr %i.ao, align 8, !tbaa !69
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.dp, ptr %i.aq, align 8, !tbaa !72
  br label %_ZN4lean10object_refD2Ev.exit25

_ZN4lean10object_refD2Ev.exit25:                  ; preds = %bb.w, %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNKSt6vectorIN4lean10object_refESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.q
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNKSt6vectorIN4lean10object_refESaIS1_EE12_M_check_lenEmPKc.exit.i30, %bb.y
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit, %_ZN4lean10object_refD2Ev.exit25
  %.011 = phi ptr [ %i.ca, %_ZN4lean10object_refD2Ev.exit25 ], [ %.sink.i, %_ZN4lean20sharecommon_quick_fn11check_cacheEP11lean_object.exit ]
  ret ptr %.011

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.ab ], [ %i.dq, %bb.aa ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4lean3decEP11lean_object.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !12
  br label %_ZN4lean3decEP11lean_object.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN4lean3decEP11lean_object.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.a)
          to label %_ZN4lean3decEP11lean_object.exit unwind label %bb.f

_ZN4lean3decEP11lean_object.exit:                 ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  ret void

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable
}

declare noundef i32 @_ZN4lean3cmpERKNS_3mpzES2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @__gmpz_get_si(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4lean14sharecommon_fn10push_childEP11lean_object(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %.not.i8 = icmp eq ptr %i.e, %i.g
  br i1 %.not.i8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.e, align 8, !tbaa !8
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !100
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 6 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #23 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store ptr %1, ptr %i.v, align 8, !tbaa !8
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #20
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !16
  store ptr %i.x, ptr %i.d, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.y, ptr %i.f, align 8, !tbaa !19
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.z, align 4
  %i.aa = lshr i32 %.val, 24
  %i.ab = trunc nuw i32 %i.aa to i8
  switch i8 %i.ab, label %bb.p [
    i8 -1, label %bb.i
    i8 -5, label %bb.j
    i8 -4, label %bb.j
    i8 -3, label %bb.j
    i8 -2, label %bb.j
    i8 -11, label %bb.j
    i8 -12, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 40) #19 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !24
  store i8 0, ptr %i.ae, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.ac, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #22
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !100 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19
  %.not.i9 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i9, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %1, ptr %i.ai, align 8, !tbaa !8
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !100
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !16 ; 4 uses
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.m, label %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i10

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i10: ; preds = %bb.l
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i11, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i12 = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i12)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #23 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store ptr %1, ptr %i.az, align 8, !tbaa !8
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.n, label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i13

bb.n:                                             ; preds = %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i13

_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i13: ; preds = %bb.n, %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i17.i.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i14, label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i15, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #20
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i15

_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i15: ; preds = %bb.o, %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i13
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !16
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !19
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %0, align 8, !tbaa !34    ; 4 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, 1
  %.not.i5.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i5.i, label %bb.q, label %_ZL8lean_incP11lean_object.exit6.i

bb.q:                                             ; preds = %bb.p
  %.val.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !12 ; 3 uses
  %i.bg = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.bg, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.bh = add nuw i32 %.val.i.i.i, 1
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !12
  br label %_ZL8lean_incP11lean_object.exit6.i

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i18 = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i18, label %_ZL8lean_incP11lean_object.exit6.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = atomicrmw sub ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZL8lean_incP11lean_object.exit6.i

_ZL8lean_incP11lean_object.exit6.i:               ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !10 ; 4 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = and i64 %i.bl, 1
  %.not.i3.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i3.i, label %bb.u, label %_ZL8lean_incP11lean_object.exit4.i

bb.u:                                             ; preds = %_ZL8lean_incP11lean_object.exit6.i
  %.val.i.i7.i = load i32, ptr %i.bk, align 4, !tbaa !12 ; 3 uses
  %i.bn = icmp sgt i32 %.val.i.i7.i, 0
  br i1 %i.bn, label %bb.v, label %bb.w, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.bo = add nuw i32 %.val.i.i7.i, 1
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !12
  br label %_ZL8lean_incP11lean_object.exit4.i

bb.w:                                             ; preds = %bb.u
  %.not.i.i8.i = icmp eq i32 %.val.i.i7.i, 0
  br i1 %.not.i.i8.i, label %_ZL8lean_incP11lean_object.exit4.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = atomicrmw sub ptr %i.bk, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZL8lean_incP11lean_object.exit4.i

_ZL8lean_incP11lean_object.exit4.i:               ; preds = %_ZL8lean_incP11lean_object.exit6.i, %bb.v, %bb.w, %bb.x
  %.val.i.i10.i = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.bq = icmp sgt i32 %.val.i.i10.i, 0
  br i1 %i.bq, label %bb.y, label %bb.z, !prof !14

bb.y:                                             ; preds = %_ZL8lean_incP11lean_object.exit4.i
  %i.br = add nuw i32 %.val.i.i10.i, 1
  store i32 %i.br, ptr %1, align 4, !tbaa !12
  br label %_ZN4lean17sharecommon_state8map_findEP11lean_object.exit

bb.z:                                             ; preds = %_ZL8lean_incP11lean_object.exit4.i
  %.not.i.i11.i = icmp eq i32 %.val.i.i10.i, 0
  br i1 %.not.i.i11.i, label %_ZN4lean17sharecommon_state8map_findEP11lean_object.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean17sharecommon_state8map_findEP11lean_object.exit

_ZN4lean17sharecommon_state8map_findEP11lean_object.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %i.bt = load ptr, ptr %0, align 8, !tbaa !34
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !10
  %i.bv = tail call noundef ptr @lean_apply_2(ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef nonnull %1) ; 5 uses
  %.not7.not = icmp eq ptr %i.bv, inttoptr (i64 1 to ptr)
  br i1 %.not7.not, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %_ZN4lean17sharecommon_state8map_findEP11lean_object.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !8  ; 2 uses
  %i.by = load i32, ptr %i.bv, align 8, !tbaa !12 ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 1
  br i1 %i.bz, label %bb.ac, label %bb.ad, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %i.ca = add nsw i32 %i.by, -1
  store i32 %i.ca, ptr %i.bv, align 8, !tbaa !12
  br label %_ZL8lean_decP11lean_object.exit

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %_ZL8lean_decP11lean_object.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv)
  br label %_ZL8lean_decP11lean_object.exit

_ZL8lean_decP11lean_object.exit:                  ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !100 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19
  %.not.i19 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i19, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZL8lean_decP11lean_object.exit
  store ptr %i.bx, ptr %i.cd, align 8, !tbaa !8
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !100
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !100
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.ag:                                            ; preds = %_ZL8lean_decP11lean_object.exit
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !16 ; 4 uses
  %i.cj = ptrtoint ptr %i.cd to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 6 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %bb.ah, label %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i20

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i20: ; preds = %bb.ag
  %i.cn = ashr exact i64 %i.cl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i21 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i21, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i22)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #23 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cl ; 2 uses
  store ptr %i.bx, ptr %i.cu, align 8, !tbaa !8
  %i.cv = icmp sgt i64 %i.cl, 0
  br i1 %i.cv, label %bb.ai, label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i23

bb.ai:                                            ; preds = %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr align 8 %i.ci, i64 %i.cl, i1 false)
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i23

_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i23: ; preds = %bb.ai, %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.not.i17.i.i24 = icmp eq ptr %i.ci, null
  br i1 %.not.i17.i.i24, label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i25, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cl) #20
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i25

_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i25: ; preds = %bb.aj, %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i23
  store ptr %i.ct, ptr %i.cb, align 8, !tbaa !16
  store ptr %i.cw, ptr %i.cc, align 8, !tbaa !100
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.cx, ptr %i.ce, align 8, !tbaa !19
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.ak:                                            ; preds = %_ZN4lean17sharecommon_state8map_findEP11lean_object.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !100 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !19
  %.not.i27 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i27, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %1, ptr %i.da, align 8, !tbaa !8
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !100
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.de, ptr %i.cz, align 8, !tbaa !100
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

bb.am:                                            ; preds = %bb.ak
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !16 ; 4 uses
  %i.dg = ptrtoint ptr %i.da to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.an, label %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i28

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i28: ; preds = %bb.am
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i29, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i30 = icmp ne i64 %i.do, 0
  tail call void @llvm.assume(i1 %.not.i.i.i30)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #23 ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store ptr %1, ptr %i.dr, align 8, !tbaa !8
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.ao, label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i31

bb.ao:                                            ; preds = %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %i.df, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i31

_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i31: ; preds = %bb.ao, %_ZNKSt6vectorIP11lean_objectSaIS1_EE12_M_check_lenEmPKc.exit.i.i28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i17.i.i32 = icmp eq ptr %i.df, null
  br i1 %.not.i17.i.i32, label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i33, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.di) #20
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i33

_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i33: ; preds = %bb.ap, %_ZNSt6vectorIP11lean_objectSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i31
  store ptr %i.dq, ptr %i.cy, align 8, !tbaa !16
  store ptr %i.dt, ptr %i.cz, align 8, !tbaa !100
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.du, ptr %i.db, align 8, !tbaa !19
  br label %_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP11lean_objectSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i33, %bb.al, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i25, %bb.af, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i15, %bb.k, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c
  %.1 = phi i1 [ true, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i15 ], [ true, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ true, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i25 ], [ true, %bb.c ], [ true, %bb.k ], [ true, %bb.af ], [ false, %bb.al ], [ false, %_ZNSt6vectorIP11lean_objectSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i33 ]
  ret i1 %.1
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean14sharecommon_fn11visit_arrayEP11lean_object(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZN4lean14sharecommon_fn14clear_childrenEv.exit, label %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !100
  br label %_ZN4lean14sharecommon_fn14clear_childrenEv.exit

_ZN4lean14sharecommon_fn14clear_childrenEv.exit:  ; preds = %bb.a, %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !30 ; 7 uses
  %.not = icmp eq i64 %.val.i, 0                  ; 2 uses
  br i1 %.not, label %_ZL22lean_usize_mul_checkedmm.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4lean14sharecommon_fn14clear_childrenEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  br i1 %spec.select, label %bb.j, label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01822 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.01921 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01822
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = tail call noundef zeroext i1 @_ZN4lean14sharecommon_fn10push_childEP11lean_object(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.h)
  %not. = xor i1 %i.i, true
  %spec.select = select i1 %not., i1 true, i1 %.01921 ; 2 uses
  %i.j = add nuw i64 %.01822, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %.val.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !101

.critedge:                                        ; preds = %._crit_edge
  %i.k = icmp ugt i64 %.val.i, 2305843009213693951
  br i1 %i.k, label %bb.c, label %_ZL22lean_usize_mul_checkedmm.exit.i, !prof !102

bb.c:                                             ; preds = %.critedge
  tail call void @lean_internal_panic_overflow() #22
  unreachable

_ZL22lean_usize_mul_checkedmm.exit.i:             ; preds = %_ZN4lean14sharecommon_fn14clear_childrenEv.exit, %.critedge
  %i.l = shl nuw i64 %.val.i, 3
  %i.m = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.l, i64 24) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.d, label %_ZL16lean_alloc_arraymm.exit, !prof !31

bb.d:                                             ; preds = %_ZL22lean_usize_mul_checkedmm.exit.i
  tail call void @lean_internal_panic_overflow() #22
  unreachable

_ZL16lean_alloc_arraymm.exit:                     ; preds = %_ZL22lean_usize_mul_checkedmm.exit.i
  %i.o = extractvalue { i64, i1 } %i.m, 0
  %i.p = tail call ptr @lean_alloc_object(i64 noundef %i.o) ; 6 uses
  store i32 1, ptr %i.p, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 65535
  %i.t = or disjoint i32 %i.s, -167772160
  store i32 %i.t, ptr %i.q, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.val.i, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.val.i, ptr %i.v, align 8, !tbaa !30
  br i1 %.not, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %_ZL16lean_alloc_arraymm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  br label %bb.e

._crit_edge25:                                    ; preds = %_ZL8lean_incP11lean_object.exit, %_ZL16lean_alloc_arraymm.exit
  tail call void @_ZN4lean14sharecommon_fn4saveEP11lean_objectS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull %i.p)
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph24, %_ZL8lean_incP11lean_object.exit
  %.023 = phi i64 [ 0, %.lr.ph24 ], [ %i.ah, %_ZL8lean_incP11lean_object.exit ] ; 4 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.023
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 7 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.f, label %_ZL8lean_incP11lean_object.exit

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.z, align 4, !tbaa !12 ; 3 uses
  %i.ac = icmp sgt i32 %.val.i.i, 0
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.ad = add nuw i32 %.val.i.i, 1
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !12
  br label %_ZL8lean_incP11lean_object.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %_ZL8lean_incP11lean_object.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = atomicrmw sub ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.023
  %.pre28 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %_ZL8lean_incP11lean_object.exit

_ZL8lean_incP11lean_object.exit:                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %i.af = phi ptr [ %.pre28, %bb.i ], [ %i.z, %bb.h ], [ %i.z, %bb.g ], [ %i.z, %bb.e ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.023
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !8
  %i.ah = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond27.not = icmp eq i64 %i.ah, %.val.i
  br i1 %exitcond27.not, label %._crit_edge25, label %bb.e, !llvm.loop !103

bb.j:                                             ; preds = %._crit_edge, %._crit_edge25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean14sharecommon_fn10visit_ctorEP11lean_object(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZN4lean14sharecommon_fn14clear_childrenEv.exit, label %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !100
  br label %_ZN4lean14sharecommon_fn14clear_childrenEv.exit

_ZN4lean14sharecommon_fn14clear_childrenEv.exit:  ; preds = %bb.a, %_ZSt8_DestroyIPP11lean_objectS1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.e = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val34 = load i32, ptr %i.e, align 4           ; 2 uses
  %i.f = lshr i32 %.val34, 16
  %i.g = and i32 %i.f, 255                        ; 5 uses
  %.not41 = icmp eq i32 %i.g, 0                   ; 2 uses
  br i1 %.not41, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4lean14sharecommon_fn14clear_childrenEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  br i1 %spec.select, label %bb.l, label %._crit_edge..critedge_crit_edge

._crit_edge..critedge_crit_edge:                  ; preds = %._crit_edge
  %.val.pre = load i32, ptr %i.e, align 4
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.03136 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = tail call noundef zeroext i1 @_ZN4lean14sharecommon_fn10push_childEP11lean_object(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.j)
  %not. = xor i1 %i.k, true
  %spec.select = select i1 %not., i1 true, i1 %.03136 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !104

.critedge:                                        ; preds = %._crit_edge..critedge_crit_edge, %_ZN4lean14sharecommon_fn14clear_childrenEv.exit
  %.val = phi i32 [ %.val.pre, %._crit_edge..critedge_crit_edge ], [ %.val34, %_ZN4lean14sharecommon_fn14clear_childrenEv.exit ]
  %i.l = and i32 %.val, -16777216
  %i.m = tail call i64 @lean_object_byte_size(ptr noundef nonnull %1) ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = shl nuw nsw i32 %i.g, 3
  %narrow = add nuw nsw i32 %i.o, 8               ; 3 uses
  %i.p = sub i32 %i.n, %narrow
  %i.q = and i64 %i.m, 4294967288
end_hunk_0
