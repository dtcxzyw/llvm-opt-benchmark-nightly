Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/interpolator?download=true
inline.NumInlined: 4672
inline.NumDeleted: 1822
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4bzla12Interpolator22post_process_bit_levelERKNS_4NodeE:bb.a
          to label %bb.q unwind label %bb.aa      ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN4bzla12Interpolator13extract_gatesERKNS_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.s unwind label %bb.ac      ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.t = load i8, ptr %i.d, align 8, !tbaa !82, !range !81, !noundef !78
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.v = invoke fastcc noundef i64 @_ZN4bzla12_GLOBAL__N_19gate_sizeERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !578, !nonnull !78, !align !79
  store i64 %i.v, ptr %i.x, align 8, !tbaa !93
  %i.y = invoke fastcc noundef i64 @_ZN4bzla12_GLOBAL__N_19node_sizeERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !579, !nonnull !78, !align !79
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !93
  br label %bb.ae

bb.w:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.x:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn13 = phi { ptr, i32 } [ %i.ad, %bb.y ], [ %i.ac, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.al

bb.aa:                                            ; preds = %bb.ae, %bb.u, %bb.t, %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ab:                                            ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn15 = phi { ptr, i32 } [ %i.ag, %bb.ac ], [ %i.af, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.al

bb.ae:                                            ; preds = %bb.v, %bb.s
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.af unwind label %bb.aa     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN4bzla12Interpolator13lift_bv1_boolERKNS_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ah unwind label %bb.aj     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN4bzla4util5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.ai:                                            ; preds = %bb.af
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn17 = phi { ptr, i32 } [ %i.ak, %bb.aj ], [ %i.aj, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ad, %bb.aa, %bb.z
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.ak ], [ %i.ae, %bb.aa ], [ %.pn15, %bb.ad ], [ %.pn13, %bb.z ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.w
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.al ], [ %i.ab, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.l, %bb.k
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn, %bb.am ], [ %i.p, %bb.l ], [ %.pn, %bb.k ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.h
  %.pn17.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn.pn, %bb.an ], [ %i.m, %bb.h ]
  call void @_ZN4bzla4util5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn17.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #23
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !110    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !109
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla12Interpolator16get_interpolantsERKSt6vectorISt13unordered_setINS_4NodeESt4hashIS3_ESt8equal_toIS3_ESaIS3_EESaIS9_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.216") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(488) initializes((305, 306)) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"class.std::unordered_set.223", align 8 ; 15 uses
  %5 = alloca %"class.bzla::Node", align 8        ; 8 uses
  %6 = alloca %"class.bzla::Node", align 8        ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !584  ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !585    ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp ugt i64 %i.k, 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 305
  %i.n = zext i1 %i.l to i8
  store i8 %i.n, ptr %i.m, align 1, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !114
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %7 = sdiv exact i64 %i.k, 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.a
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.q, %._crit_edge ] ; 3 uses
  %i.r = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #22
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge
  %i.t = load ptr, ptr %4, align 8, !tbaa !110
  %i.u = load i64, ptr %i.b, align 8, !tbaa !109
  %i.v = shl i64 %i.u, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.v, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %4, align 8, !tbaa !110    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !109
  %i.z = shl i64 %i.y, 3
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #23
  br label %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.01623 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.g ] ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !585
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %.01623 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !119 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %4, ptr %3, align 8, !tbaa !117
  %.not6.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not6.i.i.i, label %.loopexit22, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.noexc
  %.sroa.03.07.i.i.i = phi ptr [ %i.ag, %.noexc ], [ %i.ad, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 8 ; 2 uses
  %i.af = invoke { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SH_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.ag = load ptr, ptr %.sroa.03.07.i.i.i, align 8, !tbaa !85 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %.loopexit22, label %.lr.ph.i.i.i, !llvm.loop !580

.loopexit22:                                      ; preds = %.noexc, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN4bzla12Interpolator15get_interpolantERKSt13unordered_setINS_4NodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EESA_RKS2_(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %.loopexit22
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !105 ; 3 uses
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !118
  %.not.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc20 unwind label %bb.i

.noexc20:                                         ; preds = %bb.e
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !105
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !105
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN4bzla4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backEOS1_.exit unwind label %bb.i

_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc20, %bb.f
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !115
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.g unwind label %.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backEOS1_.exit
  %i.ao = add nuw i64 %.01623, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !581

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backEOS1_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %.loopexit22
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn18 = phi { ptr, i32 } [ %.pn, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %.pn18
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla12Interpolator13shared_constsERKSt13unordered_setINS_4NodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EESA_(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_set.223") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(488) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"class.std::unordered_set.223", align 8 ; 10 uses
  %6 = alloca %"class.std::unordered_set.223", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %0, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN4bzla12Interpolator10get_constsERKSt13unordered_setINS_4NodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_set.223") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN4bzla12Interpolator10get_constsERKSt13unordered_setINS_4NodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_set.223") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119  ; 2 uses
  %.not40 = icmp eq ptr %i.g, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !119  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.l, %._crit_edge ] ; 3 uses
  %i.m = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #22
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge
  %i.o = load ptr, ptr %6, align 8, !tbaa !110
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !109
  %i.r = shl i64 %i.q, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %6, align 8, !tbaa !110    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 48
end_hunk_0
