inline.NumInlined: 1277
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4bzla10preprocess4pass21PassContradictingAndsC2ERNS_3EnvEPNS_9backtrack16BacktrackManagerE:._crit_edge.i.i
  %i.cd = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.b
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !15
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.r

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.o:                                             ; preds = %bb.h
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bd
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.o
  %i.cn = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.n
  %.pn15 = phi { ptr, i32 } [ %i.cj, %bb.n ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.ck, %bb.o ] ; 2 uses
  %i.cp = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.al
  br i1 %i.cq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.e
  %.sink = phi ptr [ %i.ax, %bb.e ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ]
  %.pn15.pn.ph = phi { ptr, i32 } [ %i.aw, %bb.e ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ]
  %i.cr = load i64, ptr %i.al, align 8, !tbaa !15
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cs) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.e
  %.pn15.pn = phi { ptr, i32 } [ %i.aw, %bb.e ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn15.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %.body ], [ %i.ci, %bb.m ]
  call void @_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.z) #19
  call void @_ZN4bzla9backtrack13unordered_mapINS_4NodeES2_ED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.s) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.p ], [ %i.ch, %bb.l ]
  call void @_ZN4bzla10preprocess17PreprocessingPassD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn.pn, %bb.q ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ]
  resume { ptr, i32 } %.pn15.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4bzla10preprocess17PreprocessingPassC2ERNS_3EnvEPNS_9backtrack16BacktrackManagerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(4048), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4bzla3Env10statisticsEv(ptr noundef nonnull align 8 dereferenceable(4048)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #19
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.d) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #20
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !28
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #20
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla9backtrack13unordered_mapINS_4NodeES2_ED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4bzla9backtrack13unordered_mapINS_4NodeES2_EE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit ] ; 4 uses
  %i.k = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #19
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.l) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #20
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !41

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = shl i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.q, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !28
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #20
  br label %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEED2Ev.exit

_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  tail call void @_ZN4bzla9backtrack13BacktrackableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla10preprocess4pass21PassContradictingAnds20is_contradicting_andERKNS_4NodeERSt13unordered_setISt17reference_wrapperIS4_ESt4hashIS3_ESt8equal_toIS8_ESaIS8_EE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"class.std::vector.21", align 8    ; 17 uses
  %7 = alloca %"class.std::unordered_set.190", align 8 ; 16 uses
  %8 = alloca %"class.std::unordered_map.207", align 8 ; 13 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::reference_wrapper", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.b = tail call noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 5 uses
  %i.c = tail call noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !46
  br label %.loopexit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22
          to label %.noexc4.i unwind label %bb.c  ; 5 uses

.noexc4.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  store ptr %i.j, ptr %6, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !46
  %i.m = add i64 %i.d, -8
  %i.n = sub i64 %i.m, %i.e                       ; 2 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc4.i
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.q = shl i64 %n.vec, 3                        ; 2 uses
  %i.r = getelementptr i8, ptr %i.j, i64 %i.q     ; 2 uses
  %i.s = getelementptr i8, ptr %i.b, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.b, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 8> ; 2 uses
  %step.add67 = getelementptr i8, <2 x ptr> %vector.gep, i64 16
  %i.t = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %vector.gep, ptr %next.gep, align 8, !tbaa !47
  store <2 x ptr> %step.add67, ptr %i.u, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc4.i, %middle.block
  %.011.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.noexc4.i ], [ %i.r, %middle.block ]
  %.0810.i.i.i.i.i.i.ph = phi ptr [ %i.b, %.noexc4.i ], [ %i.s, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %.0810.i.i.i.i.i.i, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.c
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !53

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %6, align 8, !tbaa !43     ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i5.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #20
  br label %.body

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.thread.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.thread.i.i ], [ %i.r, %middle.block ], [ %i.x, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.af, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.ag, ptr %7, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 1, ptr %i.ah, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.al, ptr %8, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 1, ptr %i.am, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ao, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.x, %.loopexit
  %i.aq = phi ptr [ %i.cf, %bb.x ], [ %.0.lcssa.i.i.i.i.i.i, %.loopexit ]
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 8 uses
  %i.at = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS3_EEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EE7emplaceIJRS3_EEESt4pairINSt8__detail14_Node_iteratorIS4_Lb1ELb1EEEbEDpOT_.exit unwind label %bb.n ; 0 uses

_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EE7emplaceIJRS3_EEESt4pairINSt8__detail14_Node_iteratorIS4_Lb1ELb1EEEbEDpOT_.exit: ; preds = %bb.e
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  store ptr %i.av, ptr %i.af, align 8, !tbaa !54
  %i.aw = invoke noundef zeroext i1 @_ZNK4bzla4Node11is_invertedEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %bb.f unwind label %bb.o       ; 3 uses

bb.f:                                             ; preds = %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EE7emplaceIJRS3_EEESt4pairINSt8__detail14_Node_iteratorIS4_Lb1ELb1EEEbEDpOT_.exit
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef 0)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ay = phi ptr [ %i.ax, %bb.g ], [ %i.as, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.az = xor i1 %i.aw, true
  %i.ba = zext i1 %i.az to i8
  store i8 %i.ba, ptr %i.a, align 1, !tbaa !61
  %i.bb = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_bEEES5_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE7emplaceIJRS3_bEEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.q ; 2 uses

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE7emplaceIJRS3_bEEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.h
  %.fca.1.extract = extractvalue { ptr, i8 } %i.bb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bc = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.bc, label %bb.i, label %bb.w

bb.i:                                             ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE7emplaceIJRS3_bEEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit
  %i.bd = invoke noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.be = icmp eq i8 %i.bd, 14
  br i1 %i.be, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.bg = invoke noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bh = invoke noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %i.bl
  invoke void @_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE15_M_range_insertIPS3_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.bm, ptr noundef %i.bg, ptr noundef %i.bh)
          to label %bb.x unwind label %bb.s

bb.n:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.o:                                             ; preds = %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EE7emplaceIJRS3_EEESt4pairINSt8__detail14_Node_iteratorIS4_Lb1ELb1EEEbEDpOT_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.p:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.af

bb.r:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.t:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.as, ptr %9, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %7, ptr %5, align 8, !tbaa !64
  %i.bt = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb1EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.u unwind label %bb.v       ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.af

bb.w:                                             ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE7emplaceIJRS3_bEEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit
  %.fca.0.extract = extractvalue { ptr, i8 } %i.bb, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !66, !range !68, !noundef !69
  %i.bx = zext i1 %i.aw to i8
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %bb.x

_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bz, align 8, !tbaa !57, !alias.scope !70
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  store i32 1065353216, ptr %i.cb, align 8
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %.sroa_idx, align 4
  %.sroa.5.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <8 x i8> zeroinitializer, ptr %.sroa.5.32..sroa_idx, align 8, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !55, !alias.scope !70
  store ptr null, ptr %i.cc, align 8, !tbaa !73, !alias.scope !70
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.cd, align 8, !tbaa !74, !alias.scope !70
  br label %bb.ab

bb.x:                                             ; preds = %bb.m, %bb.u, %bb.w
  %i.ce = load ptr, ptr %6, align 8, !tbaa !63
  %i.cf = load ptr, ptr %i.af, align 8, !tbaa !63 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.y, label %bb.e, !llvm.loop !77

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  store ptr null, ptr %0, align 8, !tbaa !55, !alias.scope !78
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load i64, ptr %i.ah, align 8, !tbaa !57, !noalias !78
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !57, !alias.scope !78
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.cj, align 8, !tbaa !40, !alias.scope !78
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !81, !noalias !78
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !81, !alias.scope !78
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !82
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.co, align 8, !tbaa !73, !alias.scope !78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !78
  store ptr %0, ptr %4, align 8, !tbaa !64, !noalias !78
  invoke void @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSH_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !78
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.cp, align 8, !tbaa !74, !alias.scope !78
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ab:                                            ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.z
  %i.cr = load ptr, ptr %i.an, align 8, !tbaa !84 ; 2 uses
  %.not5.i.i.i.i37 = icmp eq ptr %i.cr, null
  br i1 %.not5.i.i.i.i37, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i38

.lr.ph.i.i.i.i38:                                 ; preds = %bb.ab, %.lr.ph.i.i.i.i38
  %.06.i.i.i.i39 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i38 ], [ %i.cr, %bb.ab ] ; 2 uses
  %i.cs = load ptr, ptr %.06.i.i.i.i39, align 8, !tbaa !40 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i39, i64 noundef 32) #20
  %.not.i.i.i.i40 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i40, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i38, !llvm.loop !85

_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i38, %bb.ab
  %i.ct = load ptr, ptr %8, align 8, !tbaa !58
  %i.cu = load i64, ptr %i.am, align 8, !tbaa !60
  %i.cv = shl i64 %i.cu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %i.cv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.cw = load ptr, ptr %8, align 8, !tbaa !58    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.al
  br i1 %i.cx, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.cy = load i64, ptr %i.am, align 8, !tbaa !60
  %i.cz = shl i64 %i.cy, 3
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #20
  br label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEED2Ev.exit

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.da = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 2 uses
  %.not5.i.i.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not5.i.i.i.i41, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i45, label %.lr.ph.i.i.i.i42

.lr.ph.i.i.i.i42:                                 ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEED2Ev.exit, %.lr.ph.i.i.i.i42
  %.06.i.i.i.i43 = phi ptr [ %i.db, %.lr.ph.i.i.i.i42 ], [ %i.da, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEED2Ev.exit ] ; 2 uses
  %i.db = load ptr, ptr %.06.i.i.i.i43, align 8, !tbaa !40 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i43, i64 noundef 24) #20
  %.not.i.i.i.i44 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i44, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i45, label %.lr.ph.i.i.i.i42, !llvm.loop !87

_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i45: ; preds = %.lr.ph.i.i.i.i42, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEED2Ev.exit
  %i.dc = load ptr, ptr %7, align 8, !tbaa !55
  %i.dd = load i64, ptr %i.ah, align 8, !tbaa !57
  %i.de = shl i64 %i.dd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dc, i8 0, i64 %i.de, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.df = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ag
  br i1 %i.dg, label %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit46, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i45
  %i.dh = load i64, ptr %i.ah, align 8, !tbaa !57
  %i.di = shl i64 %i.dh, 3
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #20
  br label %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit46

_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit46: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i45, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.dj = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit46
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #20
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit: ; preds = %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit46, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.af:                                            ; preds = %bb.p, %bb.q, %bb.v, %bb.s, %bb.r, %bb.n, %bb.o, %bb.aa
  %.pn33 = phi { ptr, i32 } [ %i.cq, %bb.aa ], [ %i.bn, %bb.n ], [ %i.bo, %bb.o ], [ %i.bp, %bb.p ], [ %i.bq, %bb.q ], [ %i.bs, %bb.s ], [ %i.bu, %bb.v ], [ %i.br, %bb.r ] ; 2 uses
  call void @_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.dp = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i49, label %.body, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !46
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #20
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.af, %bb.d, %bb.c
  %.pn33.pn = phi { ptr, i32 } [ %i.y, %bb.c ], [ %.pn33, %bb.ag ], [ %i.y, %bb.d ], [ %.pn33, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn33.pn
}

declare noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4bzla4Node11is_invertedEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !40 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #20
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !87

_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !57
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
end_hunk_0
