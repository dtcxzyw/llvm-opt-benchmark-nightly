inline.NumInlined: 1642
inline.NumDeleted: 696
begin_hunk_0_@_ZNK6duckdb13MetadataBlock8ToStringB5cxx11Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @_ZdlPv(ptr noundef %i.gd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.gf = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.w
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @_ZdlPv(ptr noundef %i.gf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.gh = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.a
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  call void @_ZdlPv(ptr noundef %i.gh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.ao:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ap:                                            ; preds = %bb.ac
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39, %bb.af
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i45, %bb.ai
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51, %bb.al
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.ey
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.go) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.ar ], [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.gn, %bb.as ] ; 2 uses
  %i.gq = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.eg
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  call void @_ZdlPv(ptr noundef %i.gq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.aq ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 2 uses
  %i.gs = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.dq
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  call void @_ZdlPv(ptr noundef %i.gs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.ap
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.ap ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ] ; 2 uses
  %i.gu = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.w
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @_ZdlPv(ptr noundef %i.gu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.ao
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.ao ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.at

bb.at:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gw = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.a
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.gw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn14.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb15MetadataManagerC2ERNS_12BlockManagerERNS_13BufferManagerE(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 56)) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.d, ptr %i.c, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.j, ptr %i.i, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 1, ptr %i.k, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb15MetadataManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !88 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #24
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !89

_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !86
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #24
  br label %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEED2Ev.exit

_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #21
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.m) #24
  br label %_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEED2Ev.exit

_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEED2Ev.exit: ; preds = %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15MetadataManager14AllocateHandleEv(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::MetadataHandle") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::MetadataPointer", align 8 ; 6 uses
  %3 = alloca %"class.std::unique_lock", align 8  ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #23
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %.sroa.032.0.in = phi ptr [ %i.f, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %.sroa.032.0, %bb.c ]
  %.sroa.032.0 = load ptr, ptr %.sroa.032.0.in, align 8, !tbaa !88 ; 5 uses
  %.not35 = icmp eq ptr %.sroa.032.0, null
  br i1 %.not35, label %.loopexit.thread, label %bb.c

.loopexit.thread:                                 ; preds = %.critedge
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  store i8 0, ptr %i.c, align 8, !tbaa !93
  br label %bb.e

bb.c:                                             ; preds = %.critedge
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !94   ; 4 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !37
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  store i8 0, ptr %i.c, align 8, !tbaa !93
  %i.p = icmp eq i64 %i.n, -1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.q = load ptr, ptr %1, align 8, !tbaa !96, !nonnull !41, !align !102 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(144) %i.q)
          to label %_ZNK6duckdb15MetadataManager15PeekNextBlockIdEv.exit unwind label %bb.g, !inline_history !103

_ZNK6duckdb15MetadataManager15PeekNextBlockIdEv.exit: ; preds = %bb.d
  %i.v = icmp sgt i64 %i.n, %i.u
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.loopexit.thread, %_ZNK6duckdb15MetadataManager15PeekNextBlockIdEv.exit, %.loopexit
  %i.w = invoke noundef i64 @_ZN6duckdb15MetadataManager16AllocateNewBlockERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store i64 %i.w, ptr %i.a, align 8, !tbaa !37
  br label %bb.j

bb.g:                                             ; preds = %bb.i, %bb.d, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.h:                                             ; preds = %_ZNK6duckdb15MetadataManager15PeekNextBlockIdEv.exit
  %i.y = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.y) #23
          to label %.noexc23 unwind label %bb.g

.noexc23:                                         ; preds = %bb.i
  unreachable

_ZNSt11unique_lockISt5mutexE4lockEv.exit:         ; preds = %bb.h
  store i8 1, ptr %i.c, align 8, !tbaa !93
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt11unique_lockISt5mutexE4lockEv.exit, %bb.f
  %i.z = phi i64 [ %i.n, %_ZNSt11unique_lockISt5mutexE4lockEv.exit ], [ %i.w, %bb.f ]
  %i.aa = and i64 %i.z, 72057594037927935         ; 2 uses
  store i64 %i.aa, ptr %2, align 8
  %i.ab = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt8__detail9_Map_baseIlSt4pairIKlN6duckdb13MetadataBlockEESaIS5_ENS_10_Select1stESt8equal_toIlESt4hashIlENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEEixERS7_.exit unwind label %bb.m ; 5 uses

_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEEixERS7_.exit: ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store atomic i8 1, ptr %i.ac seq_cst, align 8
  %i.ad = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEEixERS7_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !104
  %i.ag = icmp slt i64 %i.af, 4611686018427388000
  br i1 %i.ag, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb15MetadataManager18ConvertToTransientERSt11unique_lockISt5mutexERNS_13MetadataBlockE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(49) %i.ab)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit27, %bb.p, %bb.j, %bb.n, %bb.l, %_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEEixERS7_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aj = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN6duckdb6vectorIhLb1ESaIhEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !34
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw i64 %i.al, 56
  %i.an = or disjoint i64 %i.am, %i.aa
  store i64 %i.an, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !115
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !115
  %i.ar = load i8, ptr %i.c, align 8, !tbaa !93, !range !40, !noundef !41
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #23
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %3, align 8, !tbaa !90    ; 2 uses
  %.not.i25.not = icmp eq ptr %i.at, null
  br i1 %.not.i25.not, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit27, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.at) #21 ; 0 uses
  store i8 0, ptr %i.c, align 8, !tbaa !93
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit27

_ZNSt11unique_lockISt5mutexE6unlockEv.exit27:     ; preds = %bb.r, %bb.q
  invoke void @_ZN6duckdb15MetadataManager3PinERKNS_12QueryContextERKNS_15MetadataPointerE(ptr dead_on_unwind writable sret(%"struct.duckdb::MetadataHandle") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nonnull align 8 poison, ptr noundef nonnull readonly align 8 dereferenceable(8) %2)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.m

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.s:                                             ; preds = %bb.m, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.av = load i8, ptr %i.c, align 8, !tbaa !93, !range !40, !noundef !41
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.t, label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

bb.t:                                             ; preds = %bb.s
  %i.ax = load ptr, ptr %3, align 8, !tbaa !90    ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i30, label %_ZNSt11unique_lockISt5mutexED2Ev.exit31, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #21 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

_ZNSt11unique_lockISt5mutexED2Ev.exit31:          ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb15MetadataManager15PeekNextBlockIdEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !41, !align !102 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(144) %i.a)
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb15MetadataManager16AllocateNewBlockERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::MetadataBlock", align 16 ; 13 uses
  %3 = alloca %"class.duckdb::BufferHandle", align 16 ; 9 uses
  %4 = alloca %"struct.duckdb::MetadataBlock", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !41, !align !102 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(144) %i.a), !inline_history !116 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN6duckdb13MetadataBlockC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117, !nonnull !41, !align !102 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !41, !align !102
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext 7, ptr noundef nonnull %i.h, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.n = load <2 x ptr>, ptr %3, align 16, !tbaa !26
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 8 uses
  store <2 x ptr> %i.n, ptr %2, align 16, !tbaa !26
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.v, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !30
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !118
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21, !inline_history !118
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i5.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.k, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSERKS2_.exit, !prof !35

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #21
end_hunk_0
begin_hunk_1_@_ZN6duckdb15MetadataManager20MarkBlocksAsModifiedEv:bb.a
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(144) %i.cn, i64 noundef %i.w)
  %i.cr = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #21 ; 2 uses
  %.not.i.i36 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i36, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %.noexc39

.noexc39:                                         ; preds = %_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.cr) #23
  unreachable

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit
  store ptr %i.av, ptr %i.at, align 8, !tbaa !115
  br label %_ZN6duckdb6vectorIhLb1ESaIhEE5clearEv.exit.i.thread

_ZN6duckdb6vectorIhLb1ESaIhEE5clearEv.exit.i.thread: ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit.thread, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i
  %.0.lcssa.i147149151 = phi i64 [ %i.y, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit.thread ], [ %i.cc, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN6duckdb13MetadataBlock17BlocksFromIntegerEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %3, i64 noundef %.0.lcssa.i147149151)
          to label %.noexc41 unwind label %.body60.thread161

.noexc41:                                         ; preds = %_ZN6duckdb6vectorIhLb1ESaIhEE5clearEv.exit.i.thread
  %i.cs = load ptr, ptr %i.as, align 8, !tbaa !119 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 56
  %i.cu = load <2 x ptr>, ptr %3, align 16, !tbaa !39
  store <2 x ptr> %i.cu, ptr %i.as, align 8, !tbaa !39
  %i.cv = load ptr, ptr %i.o, align 16, !tbaa !38
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !38
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %.noexc41
  tail call void @_ZdlPv(ptr noundef nonnull %i.cs) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.o, %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt11unique_lockISt5mutexE4lockEv.exit

_ZNSt11unique_lockISt5mutexE4lockEv.exit:         ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZNSt13unordered_mapIlN6duckdb13MetadataBlockESt4hashIlESt8equal_toIlESaISt4pairIKlS1_EEE5eraseENSt8__detail14_Node_iteratorIS8_Lb0ELb0EEE.exit
  %.sroa.084.0 = load ptr, ptr %.sroa.084.0112, align 8, !tbaa !88 ; 2 uses
  %.not = icmp eq ptr %.sroa.084.0, null
  br i1 %.not, label %._crit_edge, label %bb.c

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit, %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE5clearEv.exit
  %i.cw = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #21 ; 0 uses
  ret void

.lr.ph116:                                        ; preds = %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE5clearEv.exit, %.loopexit
  %.sroa.077.0115 = phi ptr [ %.sroa.077.0, %.loopexit ], [ %.sroa.077.0113, %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE5clearEv.exit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.077.0115, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.077.0115, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !115 ; 2 uses
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !119 ; 5 uses
  %.not.i43 = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i43, label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %.lr.ph116
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = freeze i64 %i.dd                        ; 10 uses
  %xtraiter191 = and i64 %i.de, 1
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %.lr.ph.i44.epil.preheader, label %.lr.ph.i44.preheader.new

.lr.ph.i44.preheader.new:                         ; preds = %.lr.ph.i44.preheader
  %unroll_iter195 = and i64 %i.de, -2
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.noexc48.1, %.lr.ph.i44.preheader.new
  %.08.i45 = phi i64 [ 0, %.lr.ph.i44.preheader.new ], [ %i.ea, %.noexc48.1 ]
  %.067.i46 = phi i64 [ 0, %.lr.ph.i44.preheader.new ], [ %i.eb, %.noexc48.1 ] ; 5 uses
  %niter196 = phi i64 [ 0, %.lr.ph.i44.preheader.new ], [ %niter196.next.1, %.noexc48.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.067.i46, ptr %i.c, align 8, !tbaa !37
  store i64 %i.de, ptr %i.d, align 8, !tbaa !37
  %.not.i.i.i62 = icmp ult i64 %.067.i46, %i.de
  br i1 %.not.i.i.i62, label %.noexc48, label %.noexc.i74, !prof !155

.noexc.i74:                                       ; preds = %.lr.ph.i44.epil.preheader, %.lr.ph.i44, %.noexc48
  %i.dg = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.dh, ptr %1, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 55, ptr %i.a, align 8, !tbaa !37
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc75 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i63 ; 3 uses

.noexc75:                                         ; preds = %.noexc.i74
  store ptr %i.di, ptr %1, align 8, !tbaa !51
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !37  ; 3 uses
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.di, ptr noundef nonnull align 1 dereferenceable(55) @.str.24, i64 55, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !44
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  store i8 0, ptr %i.dl, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc75
  invoke void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.s unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i63: ; preds = %.noexc.i74
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %.noexc75
  %.0.i.i.i66 = phi i1 [ false, %bb.p ], [ true, %.noexc75 ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.do = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dh
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.do) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0.i.i.i66, label %bb.r, label %.body60.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0.i.i.i66, label %bb.r, label %.body60.thread

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i63
  %.pn8.i.i.i64 = phi { ptr, i32 } [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i63 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68 ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67 ]
  call void @__cxa_free_exception(ptr %i.dg) #21
  br label %.body60.thread

bb.s:                                             ; preds = %bb.p
  unreachable

.noexc48:                                         ; preds = %.lr.ph.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 %.067.i46
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !34
  %i.ds = or disjoint i64 %.067.i46, 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.ds, ptr %i.c, align 8, !tbaa !37
  store i64 %i.de, ptr %i.d, align 8, !tbaa !37
  %.not.i.i.i62.1 = icmp ult i64 %i.ds, %i.de
  br i1 %.not.i.i.i62.1, label %.noexc48.1, label %.noexc.i74, !prof !155

.noexc48.1:                                       ; preds = %.noexc48
  %i.dt = zext nneg i8 %i.dr to i64
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = or i64 %i.du, %.08.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ds
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !34
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = or i64 %i.dz, %i.dv                     ; 3 uses
  %i.eb = add nuw i64 %.067.i46, 2                ; 2 uses
  %niter196.next.1 = add nuw i64 %niter196, 2     ; 2 uses
  %niter196.ncmp.1.not = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1.not, label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa, label %.lr.ph.i44, !llvm.loop !156

_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa: ; preds = %.noexc48.1
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit, label %.lr.ph.i44.epil.preheader

.lr.ph.i44.epil.preheader:                        ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa, %.lr.ph.i44.preheader
  %.08.i45.epil.init = phi i64 [ 0, %.lr.ph.i44.preheader ], [ %i.ea, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa ]
  %.067.i46.epil.init = phi i64 [ 0, %.lr.ph.i44.preheader ], [ %i.eb, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod194 = trunc i64 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.067.i46.epil.init, ptr %i.c, align 8, !tbaa !37
  store i64 %i.de, ptr %i.d, align 8, !tbaa !37
  %.not.i.i.i62.epil = icmp ult i64 %.067.i46.epil.init, %i.de
  br i1 %.not.i.i.i62.epil, label %.noexc48.epil, label %.noexc.i74, !prof !155

.noexc48.epil:                                    ; preds = %.lr.ph.i44.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 %.067.i46.epil.init
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !34
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = or i64 %i.ef, %.08.i45.epil.init
  br label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit

_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit: ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa, %.noexc48.epil
  %.lcssa = phi i64 [ %i.ea, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit.unr-lcssa ], [ %i.eg, %.noexc48.epil ]
  %i.eh = xor i64 %.lcssa, -1
  br label %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49

_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49: ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit, %.lr.ph116
  %.0.lcssa.i47 = phi i64 [ -1, %.lr.ph116 ], [ %i.eh, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49.loopexit ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.077.0115, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !37 ; 5 uses
  %i.ek = load i64, ptr %i.r, align 8, !tbaa !86  ; 2 uses
  %i.el = urem i64 %i.ej, %i.ek                   ; 3 uses
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !134 ; 2 uses
  %.not.i.i.i.i50 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i50, label %.loopexit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !88 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !37
  %i.es = icmp eq i64 %i.ej, %i.er
  br i1 %i.es, label %.loopexit, label %.lr.ph.i.i.i.i51

bb.u:                                             ; preds = %bb.v
  %i.et = icmp eq i64 %i.ej, %i.ew
  br i1 %i.et, label %.loopexit, label %.lr.ph.i.i.i.i51, !llvm.loop !168

.lr.ph.i.i.i.i51:                                 ; preds = %bb.t, %bb.u
  %.020.i.i.i.i52 = phi ptr [ %i.eu, %bb.u ], [ %i.ep, %bb.t ]
  %i.eu = load ptr, ptr %.020.i.i.i.i52, align 8, !tbaa !88 ; 4 uses
  %.not18.i.i.i.i53 = icmp eq ptr %i.eu, null
  br i1 %.not18.i.i.i.i53, label %.loopexit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i51
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !37 ; 2 uses
  %i.ex = urem i64 %i.ew, %i.ek
  %.not19.i.i.i.i54 = icmp eq i64 %i.ex, %i.el
  br i1 %.not19.i.i.i.i54, label %bb.u, label %..loopexit_crit_edge21.i.i.i.i55, !llvm.loop !168

..loopexit_crit_edge21.i.i.i.i55:                 ; preds = %bb.v
  br label %.loopexit.i.i, !llvm.loop !168

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i51, %..loopexit_crit_edge21.i.i.i.i55, %_ZN6duckdb13MetadataBlock19FreeBlocksToIntegerEv.exit49
  %i.ey = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %.noexc56 unwind label %bb.w   ; 5 uses

.noexc56:                                         ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ey, align 8, !tbaa !88
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.ej, ptr %i.ez, align 8, !tbaa !164
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 0, ptr %i.fa, align 8, !tbaa !166
  %i.fb = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef %i.el, i64 noundef %i.ej, ptr noundef nonnull %i.ey, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc56
  %i.fc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ey) #24
  br label %.body60.thread

.loopexit:                                        ; preds = %bb.u, %.noexc56, %bb.t
  %.pn.i.i = phi ptr [ %i.fb, %.noexc56 ], [ %i.ep, %bb.t ], [ %i.eu, %bb.u ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i64 %.0.lcssa.i47, ptr %.1.i.i, align 8, !tbaa !37
  %.sroa.077.0 = load ptr, ptr %.sroa.077.0115, align 8, !tbaa !88 ; 2 uses
  %.not100 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not100, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph116

bb.w:                                             ; preds = %.loopexit.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body60.thread

.body60.thread161:                                ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5eraseENS6_14_Node_iteratorIS4_Lb0ELb0EEE.exit.i, %_ZN6duckdb6vectorIhLb1ESaIhEE5clearEv.exit.i.thread
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body60.thread

.body60.thread:                                   ; preds = %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.w, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68, %.body60.thread161
  %.pn26.pn.pn156 = phi { ptr, i32 } [ %lpad.thr_comm, %.body60.thread161 ], [ %i.fc, %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.fd, %bb.w ], [ %.pn8.i.i.i, %bb.k ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67 ], [ %.pn8.i.i.i64, %bb.r ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i68 ]
  %i.fe = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #21 ; 0 uses
  resume { ptr, i32 } %.pn26.pn.pn156
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15MetadataManager19ClearModifiedBlocksERKNS_6vectorINS_16MetaBlockPointerELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #23
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !169    ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %.not39 = icmp eq ptr %i.h, %i.i
  br i1 %.not39, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.d

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit
  %.sroa.023.040 = phi ptr [ %i.h, %.lr.ph ], [ %i.au, %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.p = load i64, ptr %.sroa.023.040, align 8, !tbaa !148 ; 2 uses
  %i.q = and i64 %i.p, 72057594037927935          ; 5 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !37
  %i.r = lshr i64 %i.p, 56
  %i.s = load i64, ptr %i.j, align 8, !tbaa !171
  %.not.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.n, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !88 ; 4 uses
  %.not.i.i17 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i17, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %i.v = icmp eq i64 %i.q, %i.u
  br i1 %i.v, label %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit, label %.preheader, !llvm.loop !172

bb.f:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  %i.x = urem i64 %i.q, %i.w                      ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !134  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ad = icmp eq i64 %i.q, %i.ac
  br i1 %i.ad, label %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.q, %i.ah
  br i1 %i.ae, label %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !168

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.af, %bb.h ], [ %i.aa, %bb.g ]
  %i.af = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !88 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.w
  %.not19.i.i.i.i = icmp eq i64 %i.ai, %i.x
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !168

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.f, %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %.loopexit
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.o unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.loopexit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.011 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.am) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.011, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.011, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit19

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn32 = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aj) #21
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit19

_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEE4findERS5_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.aa, %bb.g ], [ %i.af, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 2 uses
  %i.aq = shl nuw i64 1, %i.r
  %i.ar = xor i64 %i.aq, -1
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.at = and i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.023.040, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.au, %i.i
  br i1 %.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.d

_ZNSt11unique_lockISt5mutexED2Ev.exit19:          ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn.pn = phi { ptr, i32 } [ %.pn32, %bb.m ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21 ; 0 uses
  resume { ptr, i32 } %.pn.pn

bb.n:                                             ; preds = %bb.a, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void

bb.o:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15MetadataManager19BlockHasBeenClearedERKNS_16MetaBlockPointerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #23
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = load i64, ptr %1, align 8, !tbaa !148    ; 2 uses
  %i.e = and i64 %i.d, 72057594037927935          ; 5 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i64, ptr %i.f, align 8, !tbaa !171
  %.not.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !88 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.d, !llvm.loop !172

bb.f:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load i64, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  %i.o = urem i64 %i.e, %i.n                      ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %i.v = icmp eq i64 %i.e, %i.u
  br i1 %i.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.w = icmp eq i64 %i.e, %i.z
  br i1 %i.w, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !168

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.x, %bb.h ], [ %i.s, %bb.g ]
  %i.x = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !88 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37   ; 2 uses
  %i.aa = urem i64 %i.z, %i.n
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.o
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !168

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %.loopexit
  invoke void @_ZN6duckdb17InternalExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.n unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.07 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.ae) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.07, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.07, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit15

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn24 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ab) #21
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit15

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  %i.ah = lshr i64 %i.d, 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !37
  %i.ak = shl nuw i64 1, %i.ah
  %i.al = and i64 %i.aj, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.an = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  ret i1 %i.am

_ZNSt11unique_lockISt5mutexED2Ev.exit15:          ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn.pn = phi { ptr, i32 } [ %.pn24, %bb.m ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21 ; 0 uses
  resume { ptr, i32 } %.pn.pn

bb.n:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15MetadataManager15GetMetadataInfoEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.55") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::MetadataBlockInfo", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.039.050 = load ptr, ptr %i.c, align 8, !tbaa !88 ; 2 uses
  %.not51 = icmp eq ptr %.sroa.039.050, null
  br i1 %.not51, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph53

.lr.ph53:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

._crit_edge54:                                    ; preds = %_ZN6duckdb17MetadataBlockInfoD2Ev.exit
  %.pre55 = load ptr, ptr %0, align 8, !tbaa !173 ; 6 uses
  %.pre56 = load ptr, ptr %i.h, align 8, !tbaa !173 ; 6 uses
  %.not.i.i = icmp eq ptr %.pre55, %.pre56
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge54
  %i.j = ptrtoint ptr %.pre56 to i64
  %i.k = ptrtoint ptr %.pre55 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = xor i64 %i.o, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_"(ptr %.pre55, ptr %.pre56, i64 noundef %i.p)
  %i.q = icmp sgt i64 %i.l, 640
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.pre55, i64 640 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_"(ptr %.pre55, ptr nonnull %i.r)
  %.not6.i.i.i.i = icmp eq ptr %i.r, %.pre56
  br i1 %.not6.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ak, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.r, %bb.d ] ; 8 uses
  %i.s = load <2 x i64>, ptr %.sroa.0.07.i.i.i.i, align 8
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i, align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !175  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !178  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !179  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.sroa.0.014.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -40 ; 2 uses
  %.val2.i15.i.i.i.i.i = load i64, ptr %.sroa.0.014.i.i.i.i.i, align 8, !tbaa !180
  %i.z = icmp slt i64 %.sroa.05.0.copyload.i.i.i.i.i, %.val2.i15.i.i.i.i.i
  br i1 %i.z, label %.lr.ph.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  store ptr %i.u, ptr %i.t, align 8, !tbaa !175
  store ptr %i.w, ptr %i.v, align 8, !tbaa !178
  store ptr %i.y, ptr %i.x, align 8, !tbaa !179
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i
  %.sroa.0.017.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.014.i.i.i.i.i, %.lr.ph.i.i.i.i ] ; 7 uses
  %.sroa.011.016.i.i.i.i.i = phi ptr [ %.sroa.0.017.i.i.i.i.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.017.i.i.i.i.i, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.011.016.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !175 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i.i.i.i, i64 32
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !186
  store <2 x ptr> %i.ae, ptr %i.aa, align 8, !tbaa !186
  %i.af = getelementptr inbounds i8, ptr %.sroa.011.016.i.i.i.i.i, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !179
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #24
  br label %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i

_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.017.i.i.i.i.i, i64 -40 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !180
  %i.ah = icmp slt i64 %.sroa.05.0.copyload.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !187

._crit_edge.i.i.i.i.i:                            ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i.i.i, i64 16 ; 2 uses
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !175 ; 2 uses
  store <2 x i64> %i.s, ptr %.sroa.0.017.i.i.i.i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i.i.i, i64 32
  store ptr %i.u, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !175
  store ptr %i.w, ptr %i.ai, align 8, !tbaa !178
  store ptr %i.y, ptr %i.aj, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i1.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i1.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.pre.i.i.i.i.i) #24
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %bb.f, %._crit_edge.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %.pre56
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !188

bb.g:                                             ; preds = %bb.c
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_"(ptr %.pre55, ptr %.pre56)
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.h:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.i:                                             ; preds = %.lr.ph53, %_ZN6duckdb17MetadataBlockInfoD2Ev.exit
  %.sroa.039.052 = phi ptr [ %.sroa.039.050, %.lr.ph53 ], [ %.sroa.039.0, %_ZN6duckdb17MetadataBlockInfoD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.039.052, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !189
  store i64 %i.an, ptr %2, align 8, !tbaa !180
  store i64 64, ptr %i.e, align 8, !tbaa !190
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.039.052, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.039.052, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 2 uses
  %.not4548 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4548, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !186 ; 4 uses
  %.not.i.i19 = icmp eq ptr %.pre, %i.bw
  br i1 %.not.i.i19, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.as = ptrtoint ptr %i.bw to i64
  %i.at = ptrtoint ptr %.pre to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = shl nuw nsw i64 %i.aw, 1
  %i.ay = xor i64 %i.ax, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.pre, ptr nonnull %i.bw, i64 noundef %i.ay)
          to label %.noexc20 unwind label %bb.r

.noexc20:                                         ; preds = %bb.j
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.pre, ptr nonnull %i.bw)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit unwind label %bb.r

.lr.ph:                                           ; preds = %bb.i, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.az = phi ptr [ %i.bu, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %bb.i ] ; 5 uses
  %i.ba = phi ptr [ %i.bv, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %bb.i ] ; 3 uses
  %i.bb = phi ptr [ %i.bw, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ null, %bb.i ] ; 3 uses
  %.sroa.035.049 = phi ptr [ %i.bx, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %i.bc = load i8, ptr %.sroa.035.049, align 1, !tbaa !34
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.i.i22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.f, align 8, !tbaa !178
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.l:                                             ; preds = %.lr.ph
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = ptrtoint ptr %i.az to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 5 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i.i23 = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i23)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #25
          to label %.noexc25 unwind label %.loopexit ; 5 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bh ; 2 uses
  store i64 %i.bd, ptr %i.bq, align 8, !tbaa !37
  %i.br = icmp sgt i64 %i.bh, 0
  br i1 %i.br, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %.noexc25
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr align 8 %i.az, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %.noexc25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.az) #24
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bp, ptr %i.d, align 8, !tbaa !175
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !178
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn ; 2 uses
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !179
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.k
  %i.bu = phi ptr [ %i.bp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.az, %bb.k ]
  %i.bv = phi ptr [ %i.bt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ba, %bb.k ]
  %i.bw = phi ptr [ %i.bs, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.be, %bb.k ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.035.049, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.bx, %i.ar
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %bb.i, %._crit_edge, %.noexc20
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !191 ; 5 uses
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !193
  %.not.i.i26 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i26, label %bb.p, label %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cb = load <2 x ptr>, ptr %i.d, align 8, !tbaa !186
  store <2 x ptr> %i.cb, ptr %i.ca, align 8, !tbaa !186
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !179
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !179
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !191
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr %i.cf, ptr %i.h, align 8, !tbaa !191
  br label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit

bb.p:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  invoke void @_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.by, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE9push_backEOS1_.exit unwind label %bb.r

_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.p
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i28, label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr) #24
  br label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit

_ZN6duckdb17MetadataBlockInfoD2Ev.exit:           ; preds = %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE9push_backEOS1_.exit.thread, %_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE9push_backEOS1_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.sroa.039.0 = load ptr, ptr %.sroa.039.052, align 8, !tbaa !88 ; 2 uses
  %.not = icmp eq ptr %.sroa.039.0, null
  br i1 %.not, label %._crit_edge54, label %bb.i

bb.r:                                             ; preds = %bb.p, %.noexc20, %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ch = load ptr, ptr %i.d, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i29, label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit30, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #24
  br label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit30

_ZN6duckdb17MetadataBlockInfoD2Ev.exit30:         ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ci = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  br label %bb.u

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %._crit_edge54, %bb.d, %bb.g
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  ret void

bb.u:                                             ; preds = %_ZN6duckdb17MetadataBlockInfoD2Ev.exit30, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6duckdb17MetadataBlockInfoD2Ev.exit30 ], [ %i.al, %bb.h ]
  call void @_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !194    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb17MetadataBlockInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN6duckdb17MetadataBlockInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb17MetadataBlockInfoEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #24
  br label %_ZSt8_DestroyIN6duckdb17MetadataBlockInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb17MetadataBlockInfoEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !195

_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb17MetadataBlockInfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !194
  br label %_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb17MetadataBlockInfoESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #24
  br label %_ZNSt12_Vector_baseIN6duckdb17MetadataBlockInfoESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb17MetadataBlockInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15MetadataManager9GetBlocksEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.69") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.011.017 = load ptr, ptr %i.c, align 8, !tbaa !88 ; 2 uses
  %.not18 = icmp eq ptr %.sroa.011.017, null
  br i1 %.not18, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit
  %.sroa.011.019 = phi ptr [ %.sroa.011.017, %.lr.ph ], [ %.sroa.011.0, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !196  ; 5 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !199
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.h, align 8, !tbaa !26
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !26
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !196
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.s = phi ptr [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %.pre.i, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.d, align 8, !tbaa !196
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit10

_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i, %bb.i
  %.sroa.011.0 = load ptr, ptr %.sroa.011.019, align 8, !tbaa !88 ; 2 uses
  %.not = icmp eq ptr %.sroa.011.0, null
  br i1 %.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.d

_ZNSt11unique_lockISt5mutexED2Ev.exit10:          ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit10, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %_ZNSt11unique_lockISt5mutexED2Ev.exit10 ], [ %i.g, %bb.c ]
  tail call void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !200    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !196  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !30
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21, !inline_history !201
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21, !inline_history !201
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev:bb.a

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !139    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
  unreachable

_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !42
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !44   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.u, ptr %i.r, align 8, !tbaa !51
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !34
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit

_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit:     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !44
  store ptr %i.v, ptr %i.s, align 8, !tbaa !51
  store i64 0, ptr %i.ad, align 8, !tbaa !44
  store i8 0, ptr %i.v, align 8, !tbaa !34
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 32, i1 false), !alias.scope !263
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !42, !alias.scope !258, !noalias !261
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !51, !alias.scope !261, !noalias !258 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44, !alias.scope !261, !noalias !258 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !263
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !51, !alias.scope !258, !noalias !261
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !34, !alias.scope !261, !noalias !258
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !34, !alias.scope !258, !noalias !261
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !261, !noalias !258
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !44, !alias.scope !258, !noalias !261
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !51, !alias.scope !261, !noalias !258
  store i64 0, ptr %i.ar, align 8, !tbaa !44, !alias.scope !261, !noalias !258
  store i8 0, ptr %i.aj, align 8, !tbaa !34, !alias.scope !261, !noalias !258
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !264

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19, i64 32, i1 false), !alias.scope !270
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !42, !alias.scope !265, !noalias !268
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !51, !alias.scope !268, !noalias !265 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !44, !alias.scope !268, !noalias !265 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !270
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !51, !alias.scope !265, !noalias !268
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !34, !alias.scope !268, !noalias !265
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !34, !alias.scope !265, !noalias !268
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !44, !alias.scope !268, !noalias !265
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !44, !alias.scope !265, !noalias !268
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !51, !alias.scope !268, !noalias !265
  store i64 0, ptr %i.bi, align 8, !tbaa !44, !alias.scope !268, !noalias !265
  store i8 0, ptr %i.ba, align 8, !tbaa !34, !alias.scope !268, !noalias !265
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !264

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #24
  br label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !139
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !142
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !257
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt8__detail9_Map_baseIlSt4pairIKlN6duckdb13MetadataBlockEESaIS5_ENS_10_Select1stESt8equal_toIlESt4hashIlENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<long, std::pair<const long, duckdb::MetadataBlock>, std::allocator<std::pair<const long, duckdb::MetadataBlock>>, std::__detail::_Select1st, std::equal_to<long>, std::hash<long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !37     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp eq i64 %i.a, %i.j
  br i1 %i.k, label %.loopexit28, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %i.a, %i.o
  br i1 %i.l, label %.loopexit28, label %.lr.ph.i.i, !llvm.loop !135

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %i.m = load ptr, ptr %.020.i.i, align 8, !tbaa !88 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %i.p = urem i64 %i.o, %i.c
  %.not19.i.i = icmp eq i64 %i.p, %i.d
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !135

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !135

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %0, ptr %2, align 8, !tbaa !271
  %i.q = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25 ; 6 uses
  store ptr null, ptr %i.q, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.a, ptr %i.r, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  invoke void @_ZN6duckdb13MetadataBlockC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.s)
          to label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #21 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #24
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.f, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.w, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #22
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit: ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.q, ptr %i.z, align 8, !tbaa !275
  %i.aa = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.d, i64 noundef %i.a, ptr noundef nonnull %i.q, i64 noundef 1)
          to label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.loopexit28

bb.i:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb0EEEEEEDpOT_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

.loopexit28:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.aa, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !276
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !132
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #21 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !276
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !82
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !134  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  store ptr %i.w, ptr %3, align 8, !tbaa !88
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !134
  store ptr %3, ptr %i.x, align 8, !tbaa !88
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !251
  store ptr %i.z, ptr %3, align 8, !tbaa !88
  store ptr %3, ptr %i.y, align 8, !tbaa !251
  %i.aa = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !82
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !134
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !134
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !132
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !132
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKlN6duckdb13MetadataBlockEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i:              ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 8 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !30
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21, !inline_history !277
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21, !inline_history !277
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlN6duckdb13MetadataBlockEELb0EEEEE18_M_deallocate_nodeEPS7_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
end_hunk_2
