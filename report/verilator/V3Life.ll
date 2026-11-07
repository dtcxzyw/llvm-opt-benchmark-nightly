Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Life?download=true
inline.NumInlined: 1094
inline.NumDeleted: 359
begin_hunk_0_@_ZN9LifeBlock13complexAssignEP11AstVarScope:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !23
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.o
  %.pn12 = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.bf, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.q

common.resume:                                    ; preds = %_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %.pn12.pn, %bb.q ], [ %i.ch, %_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.h
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ag, %bb.h ], [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !118 ; 2 uses
  %i.bo = urem i64 %i.bl, %i.bn                   ; 3 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !117
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !164 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !125 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !165
  %i.bv = icmp eq ptr %1, %i.bu
  br i1 %i.bv, label %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.t:                                             ; preds = %bb.u
  %i.bw = icmp eq ptr %1, %i.bz
  br i1 %i.bw, label %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %bb.t
  %.020.i.i.i.i = phi ptr [ %i.bx, %bb.t ], [ %i.bs, %bb.s ]
  %i.bx = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !125 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !165 ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = urem i64 %i.ca, %i.bn
  %.not19.i.i.i.i = icmp eq i64 %i.cb, %i.bo
  br i1 %.not19.i.i.i.i, label %bb.t, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.u
  br label %.loopexit.i.i, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.r
  %i.cc = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 6 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !125
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %1, ptr %i.cd, align 8, !tbaa !162
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.cf, align 8, !tbaa !166
  %i.cg = invoke ptr @_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bo, i64 noundef %i.bl, ptr noundef nonnull %i.cc, i64 noundef 1)
          to label %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 40) #21
  br label %common.resume

_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit: ; preds = %bb.t, %bb.s, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.cg, %.loopexit.i.i ], [ %i.bs, %bb.s ], [ %i.bx, %bb.t ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !166, !range !92, !noundef !93
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %_ZN12LifeVarEntry4initEb.exit, label %_ZN12LifeVarEntry13complexAssignEv.exit

_ZN12LifeVarEntry4initEb.exit:                    ; preds = %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit
  store i8 0, ptr %i.ci, align 8, !tbaa !166
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 33
  store i8 0, ptr %i.cl, align 1, !tbaa !167
  br label %_ZN12LifeVarEntry13complexAssignEv.exit

_ZN12LifeVarEntry13complexAssignEv.exit:          ; preds = %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit, %_ZN12LifeVarEntry4initEb.exit
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.cm, align 2, !tbaa !163
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9LifeBlock15varUsageReplaceEP11AstVarScopeP9AstVarRef(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !125  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !165
  %i.k = icmp eq ptr %1, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.l = icmp eq ptr %1, %i.o
  br i1 %i.l, label %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.020.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %i.m = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !125 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !165  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = urem i64 %i.p, %i.c
  %.not19.i.i.i.i = icmp eq i64 %i.q, %i.d
  br i1 %.not19.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.d
  br label %.loopexit.i.i, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.a
  %i.r = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 6 uses
  store ptr null, ptr %i.r, align 8, !tbaa !125
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %1, ptr %i.s, align 8, !tbaa !162
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.u, align 8, !tbaa !166
  %i.v = invoke ptr @_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.d, i64 noundef %i.a, ptr noundef nonnull %i.r, i64 noundef 1)
          to label %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

common.resume:                                    ; preds = %bb.bg, %bb.ap, %bb.y, %_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %.pn53.pn, %bb.bg ], [ %.pn44.pn, %bb.ap ], [ %.pn36.pn, %bb.y ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 40) #21
  br label %common.resume

_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit: ; preds = %bb.c, %bb.b, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.v, %.loopexit.i.i ], [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !166, !range !92, !noundef !93
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN12LifeVarEntry4initEb.exit, label %bb.e

_ZN12LifeVarEntry4initEb.exit:                    ; preds = %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit
  store i8 0, ptr %i.x, align 8, !tbaa !166
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 33
  store i8 0, ptr %i.aa, align 1, !tbaa !167
  br label %bb.bh

bb.e:                                             ; preds = %_ZNSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixERS8_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !195 ; 3 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !197
  %i.af = tail call noundef zeroext i1 @_ZNK6AstVar11isSigPublicEv(ptr noundef nonnull align 8 dereferenceable(280) %i.ae)
  br i1 %i.af, label %bb.aq, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !197 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 260
  %i.ai = load i64, ptr %i.ah, align 4
  %i.aj = and i64 %i.ai, 4503599627370496
  %.not129 = icmp eq i64 %i.aj, 0
  br i1 %.not129, label %bb.h, label %bb.aq

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !198 ; 3 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNK6AstVar11isVirtIfaceEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.am, align 8, !tbaa !144
  %i.an = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 85
  br i1 %i.an, label %_ZNK6AstVar11isVirtIfaceEv.exit, label %_ZNK6AstVar11isVirtIfaceEv.exit.thread

_ZNK6AstVar11isVirtIfaceEv.exit:                  ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 273
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !285, !range !92, !noundef !93
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.aq, label %_ZNK6AstVar11isVirtIfaceEv.exit.thread

_ZNK6AstVar11isVirtIfaceEv.exit.thread:           ; preds = %bb.i, %bb.h, %_ZNK6AstVar11isVirtIfaceEv.exit
  %i.ar = tail call noundef i32 @_ZL5debugv()
  %i.as = icmp sgt i32 %i.ar, 3
  br i1 %i.as, label %bb.j, label %bb.z, !prof !15

bb.j:                                             ; preds = %_ZNK6AstVar11isVirtIfaceEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.1, i32 noundef 195)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = load ptr, ptr %4, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !22
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.au, i64 noundef %i.aw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.r ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.k
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.537, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %2)
          to label %bb.l unwind label %bb.r       ; 0 uses

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.ba = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !23
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !22 ; 2 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bg
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !23
  %.not35 = icmp eq i8 %i.bk, 10
  %i.bl = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59: ; preds = %bb.n
  %i.bo = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bo)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.n
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bq) #21
  %.pre = load ptr, ptr %5, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.br = phi ptr [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i59 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.not35, label %bb.u, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 10)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.j, %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.r:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.r
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !23
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.q
  %.pn = phi { ptr, i32 } [ %i.by, %bb.q ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.bz, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.y

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.t:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ch = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.t
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !23
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.s
  %.pn33 = phi { ptr, i32 } [ %i.cf, %bb.s ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.cg, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.y

bb.u:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cm = load ptr, ptr %7, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@_ZN9LifeBlock15varUsageReplaceEP11AstVarScopeP9AstVarRef:bb.a
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.fx = load ptr, ptr %14, align 8, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !22
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %i.fx, i64 noundef %i.fz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103 unwind label %bb.az ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103: ; preds = %bb.as
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.539, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104 unwind label %bb.az ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef %1)
          to label %bb.at unwind label %bb.az     ; 0 uses

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  %i.gd = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.at
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !23
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.au unwind label %bb.ba

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !22 ; 2 uses
  %i.gk = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 %i.gj
  %i.gm = getelementptr i8, ptr %i.gl, i64 -1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !23
  %.not52 = icmp eq i8 %i.gn, 10
  %i.go = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109: ; preds = %bb.av
  %i.gr = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.gr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.av
  %i.gs = load i64, ptr %i.gp, align 8, !tbaa !23
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gt) #21
  %.pre135 = load ptr, ptr %15, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  %i.gu = phi ptr [ %i.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109 ], [ %.pre135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !23
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br i1 %.not52, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 10)
          to label %bb.bc unwind label %bb.ax     ; 0 uses

bb.ax:                                            ; preds = %bb.ar, %bb.aw
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.az:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103, %bb.as, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.az
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !23
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.ay
  %.pn48 = phi { ptr, i32 } [ %i.hb, %bb.ay ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.hc, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.bg

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.bb:                                            ; preds = %bb.au
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.hk = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.bb
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !23
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.ba
  %.pn50 = phi { ptr, i32 } [ %i.hi, %bb.ba ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.hj, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bg

bb.bc:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hp = load ptr, ptr %17, align 8, !tbaa !21
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !22
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.hp, i64 noundef %i.hr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit120 unwind label %bb.bf ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit120: ; preds = %bb.bd
  %i.ht = load ptr, ptr %17, align 8, !tbaa !21   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit120
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !23
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.bf:                                            ; preds = %bb.bd
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %17, align 8, !tbaa !21   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.bf
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !23
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.be
  %.pn53 = phi { ptr, i32 } [ %i.hy, %bb.be ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.hz, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %bb.ax
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.ha, %bb.ax ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %common.resume

bb.bh:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZN12LifeVarEntry4initEb.exit
  %i.if = load i8, ptr %i.x, align 8, !tbaa !166, !range !92, !noundef !93
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.bi, label %_ZN12LifeVarEntry8consumedEv.exit, !prof !15

bb.bi:                                            ; preds = %bb.bh
  %i.ih = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 111) ; 0 uses
  %i.ii = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ij = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull @.str.29)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ij) #24
  unreachable

_ZN12LifeVarEntry8consumedEv.exit:                ; preds = %bb.bh
  store ptr null, ptr %.1.i.i, align 8, !tbaa !168
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge, %_ZN12LifeVarEntry8consumedEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13AstNodeVarRef4varpEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  ret ptr %i.b
}

declare void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

declare void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI16AstIfaceRefDType12AstNodeDTypeEEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !144
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 85
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode6dtypepEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198
  ret ptr %i.b
}

declare noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7V3Stats10addStatSumEPKcd(ptr noundef %0, double noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %class.V3Statistic, align 8         ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = fcmp oeq double %1, 0.000000e+00
  br i1 %i.b, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i:    ; preds = %bb.b
  %i.e = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7V3Stats7s_mutexE) #20
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %.preheader.i.i, !prof !106

.preheader.i.i:                                   ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.c
  %.037.i.i = phi i32 [ %i.i, %bb.c ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i ]
  %i.f = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i:   ; preds = %.preheader.i.i
  %i.h = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7V3Stats7s_mutexE) #20
  %.not.i.i4.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i4.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %bb.c, !prof !201

bb.c:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !202
  %i.i = add nuw nsw i32 %.037.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.i, 50000
  br i1 %exitcond.not.i.i, label %bb.d, label %.preheader.i.i, !llvm.loop !5

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7V3Stats7s_mutexE)
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit: ; preds = %.preheader.i.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, %bb.b, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !45
  store i8 42, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.l, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !45
  %i.n = icmp eq ptr %0, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.546) #24
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.o, ptr %i.a, align 8, !tbaa !44
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i12, label %._crit_edge.i.i11

.noexc.i12:                                       ; preds = %bb.f
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc14 unwind label %bb.m   ; 2 uses

.noexc14:                                         ; preds = %.noexc.i12
  store ptr %i.q, ptr %4, align 8, !tbaa !21
  %i.r = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.r, ptr %i.m, align 8, !tbaa !23
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %.noexc14, %bb.f
  %i.s = phi ptr [ %i.q, %.noexc14 ], [ %i.m, %bb.f ] ; 2 uses
  switch i64 %i.o, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i11
  %i.t = load i8, ptr %0, align 1, !tbaa !23
  store i8 %i.t, ptr %i.s, align 1, !tbaa !23
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %0, i64 %i.o, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i11
  %i.u = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !22
  %i.w = load ptr, ptr %4, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN11V3StatisticC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_djbb(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, double noundef %1, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN7V3Stats7addStatERK11V3Statistic(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN11V3StatisticD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !23
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZN11V3StatisticD2Ev.exit

_ZN11V3StatisticD2Ev.exit:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11V3StatisticD2Ev.exit
  %i.am = load i64, ptr %i.m, align 8, !tbaa !23
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11V3StatisticD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ao = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.j
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !23
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.as = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.au = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7V3Stats7s_mutexE) #20 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.a
  ret void

bb.m:                                             ; preds = %.noexc.i12, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.n:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11V3StatisticD2Ev(ptr noundef nonnull align 8 dead_on_return(91) dereferenceable(96) %2) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.o ], [ %i.aw, %bb.n ] ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.m
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.p
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !23
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bc = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.j
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.be = load i64, ptr %i.j, align 8, !tbaa !23
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bg = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.q, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit25

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7V3Stats7s_mutexE) #20 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit25

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !286
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i:      ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit, label %.preheader.i, !prof !106

.preheader.i:                                     ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i, %bb.b
  %.037.i = phi i32 [ %i.g, %bb.b ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i ]
  %i.d = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i:     ; preds = %.preheader.i
  %i.f = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %1) #20
  %.not.i.i4.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i4.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit, label %bb.b, !prof !201

bb.b:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !202
  %i.g = add nuw nsw i32 %.037.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.g, 50000
  br i1 %exitcond.not.i, label %bb.c, label %.preheader.i, !llvm.loop !5

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE4lockEv.exit:            ; preds = %.preheader.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i, %bb.a, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i, %bb.c
  ret void
}

declare void @_ZN7V3Stats7addStatERK11V3Statistic(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11V3StatisticC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_djbb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV11V3Statistic, i64 16), ptr %0, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !45
  %i.e = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.g, ptr %i.b, align 8, !tbaa !44
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !21
  %i.j = load i64, ptr %i.b, align 8, !tbaa !44
  store i64 %i.j, ptr %i.d, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !23
  store i8 %i.l, ptr %i.k, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !22
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %3, ptr %i.q, align 8, !tbaa !288
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %4, ptr %i.r, align 8, !tbaa !289
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !45
  %i.u = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.w, ptr %i.a, align 8, !tbaa !44
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i9
  store ptr %i.y, ptr %i.s, align 8, !tbaa !21
  %i.z = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.z, ptr %i.t, align 8, !tbaa !23
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i8
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !23
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i8
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !22
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ag = zext i1 %6 to i8
  %i.ah = zext i1 %5 to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.ah, ptr %i.ai, align 8, !tbaa !290
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.ag, ptr %i.aj, align 1, !tbaa !291
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 1, ptr %i.ak, align 2, !tbaa !292
  ret void

bb.g:                                             ; preds = %.noexc.i9
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !23
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11V3StatisticD2Ev(ptr noundef nonnull align 8 dead_on_return(91) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !23
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN10V3MutexImpISt5mutexE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !294, !nonnull !93, !align !295
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #20 ; 0 uses
  br label %_ZN10V3MutexImpISt5mutexE6unlockEv.exit

_ZN10V3MutexImpISt5mutexE6unlockEv.exit:          ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10V3MutexImpISt5mutexE4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit, label %.thread

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit:        ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %.thread, label %.preheader, !prof !106

.preheader:                                       ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit, %bb.b
  %.037 = phi i32 [ %i.g, %bb.b ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit ]
  %i.d = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5, label %.thread

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5:       ; preds = %.preheader
  %i.f = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  %.not.i.i4 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i4, label %.thread, label %bb.b, !prof !201

bb.b:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !202
  %i.g = add nuw nsw i32 %.037, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, 50000
  br i1 %exitcond.not, label %bb.c, label %.preheader, !llvm.loop !5

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %.thread

.thread:                                          ; preds = %.preheader, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(2) ptr @_ZN13V3MutexConfig1sEv() #4 comdat align 2 {
bb.a:
  ret ptr @_ZZN13V3MutexConfig1sEvE1s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13V3MutexConfig6enableEv(ptr noundef nonnull align 1 dereferenceable(2) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !200, !range !92, !noundef !93
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10V3MutexImpISt5mutexE8try_lockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  %.not.i = icmp eq i32 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i1 [ %.not.i, %bb.b ], [ true, %bb.a ]
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %0) #20 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10V3MutexImpISt5mutexE6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !200, !range !92, !noundef !93
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !46
  %i.b = load i8, ptr %2, align 1, !tbaa !94, !range !92, !noundef !93
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.h, label %bb.b, !prof !106

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.5, i64 noundef 16) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 47) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.g = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !103
  %i.m = and i32 %i.l, -75
  %i.n = or disjoint i32 %i.m, 2
  store i32 %i.n, ptr %i.k, align 8, !tbaa !104
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 187) ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.543, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.13)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.g, !inline_history !1 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !23
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.af = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !23
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!86 = !{!"_ZTSN10VTimescale2enE", !11, i64 0}
!87 = !{!"_ZTS10VTimescale", !86, i64 0}
!88 = !{!"_ZTSN10V3LangCode2enE", !11, i64 0}
!89 = !{!"_ZTS10V3LangCode", !88, i64 0}
!90 = !{!"_ZTS9V3Options", !47, i64 0, !56, i64 8, !61, i64 56, !61, i64 80, !61, i64 104, !56, i64 128, !56, i64 176, !56, i64 224, !56, i64 272, !66, i64 320, !71, i64 368, !66, i64 392, !56, i64 440, !61, i64 488, !76, i64 512, !76, i64 560, !79, i64 608, !82, i64 656, !56, i64 704, !83, i64 752, !83, i64 753, !83, i64 754, !83, i64 755, !83, i64 756, !83, i64 757, !83, i64 758, !83, i64 759, !83, i64 760, !83, i64 761, !83, i64 762, !83, i64 763, !83, i64 764, !83, i64 765, !83, i64 766, !83, i64 767, !83, i64 768, !83, i64 769, !83, i64 770, !83, i64 771, !83, i64 772, !83, i64 773, !83, i64 774, !83, i64 775, !83, i64 776, !83, i64 777, !83, i64 778, !83, i64 779, !83, i64 780, !83, i64 781, !83, i64 782, !83, i64 783, !12, i64 784, !83, i64 788, !83, i64 789, !83, i64 790, !83, i64 791, !83, i64 792, !83, i64 793, !83, i64 794, !83, i64 795, !83, i64 796, !83, i64 797, !83, i64 798, !83, i64 799, !83, i64 800, !83, i64 801, !83, i64 802, !83, i64 803, !83, i64 804, !83, i64 805, !83, i64 806, !83, i64 807, !83, i64 808, !83, i64 809, !83, i64 810, !83, i64 811, !83, i64 812, !83, i64 813, !83, i64 814, !83, i64 815, !83, i64 816, !83, i64 817, !83, i64 818, !83, i64 819, !83, i64 820, !83, i64 821, !83, i64 822, !83, i64 823, !83, i64 824, !83, i64 825, !83, i64 826, !83, i64 827, !85, i64 828, !83, i64 829, !83, i64 830, !83, i64 831, !83, i64 832, !83, i64 833, !83, i64 834, !83, i64 835, !83, i64 836, !83, i64 837, !85, i64 838, !83, i64 839, !83, i64 840, !83, i64 841, !83, i64 842, !83, i64 843, !83, i64 844, !83, i64 845, !83, i64 846, !83, i64 847, !83, i64 848, !83, i64 849, !83, i64 850, !83, i64 851, !83, i64 852, !12, i64 856, !12, i64 860, !12, i64 864, !12, i64 868, !12, i64 872, !12, i64 876, !12, i64 880, !12, i64 884, !12, i64 888, !12, i64 892, !12, i64 896, !12, i64 900, !12, i64 904, !12, i64 908, !12, i64 912, !83, i64 916, !83, i64 917, !12, i64 920, !85, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944, !12, i64 948, !12, i64 952, !12, i64 956, !12, i64 960, !12, i64 964, !12, i64 968, !12, i64 972, !85, i64 976, !83, i64 977, !12, i64 980, !12, i64 984, !87, i64 988, !87, i64 989, !87, i64 990, !87, i64 991, !12, i64 992, !12, i64 996, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !12, i64 1028, !12, i64 1032, !20, i64 1040, !20, i64 1072, !20, i64 1104, !71, i64 1136, !20, i64 1160, !20, i64 1192, !20, i64 1224, !20, i64 1256, !20, i64 1288, !20, i64 1320, !20, i64 1352, !20, i64 1384, !20, i64 1416, !20, i64 1448, !20, i64 1480, !20, i64 1512, !20, i64 1544, !20, i64 1576, !20, i64 1608, !20, i64 1640, !89, i64 1672, !83, i64 1673, !83, i64 1674, !83, i64 1675, !83, i64 1676, !83, i64 1677, !83, i64 1678, !83, i64 1679, !83, i64 1680, !83, i64 1681, !83, i64 1682, !83, i64 1683, !83, i64 1684, !83, i64 1685, !83, i64 1686, !83, i64 1687, !83, i64 1688, !83, i64 1689, !83, i64 1690, !83, i64 1691, !83, i64 1692, !83, i64 1693, !83, i64 1694, !83, i64 1695, !85, i64 1696, !83, i64 1697, !83, i64 1698, !83, i64 1699, !83, i64 1700, !83, i64 1701, !83, i64 1702, !83, i64 1703, !83, i64 1704, !83, i64 1705, !83, i64 1706, !83, i64 1707, !83, i64 1708, !83, i64 1709, !83, i64 1710, !12, i64 1712, !83, i64 1716, !83, i64 1717, !83, i64 1718, !83, i64 1719, !83, i64 1720, !83, i64 1721, !83, i64 1722}
!91 = !{!90, !83, i64 1722}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!83, !83, i64 0}
!95 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!96 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!97 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!98 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !19, i64 8}
!99 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!100 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!101 = !{!"_ZTSSt6locale", !100, i64 0}
!102 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !95, i64 24, !96, i64 28, !96, i64 32, !97, i64 40, !98, i64 48, !11, i64 64, !12, i64 192, !99, i64 200, !101, i64 208}
!103 = !{!102, !95, i64 24}
!104 = !{!95, !95, i64 0}
!105 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !101, i64 56}
!106 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!107 = !{!"p1 _ZTS9LifeBlock", !16, i64 0}
!108 = !{!"_ZTS11LifeVisitor", !34, i64 0, !35, i64 32, !83, i64 40, !83, i64 41, !83, i64 42, !83, i64 43, !107, i64 48}
!109 = !{!108, !107, i64 48}
!110 = !{!108, !35, i64 32}
!111 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !27, i64 0}
!112 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!113 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !112, i64 0}
!114 = !{!"float", !11, i64 0}
!115 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !114, i64 0, !19, i64 8}
!116 = !{!"_ZTSSt10_HashtableIP11AstVarScopeSt4pairIKS1_12LifeVarEntryESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !111, i64 0, !19, i64 8, !113, i64 16, !19, i64 24, !115, i64 32, !112, i64 48}
!117 = !{!116, !111, i64 0}
!118 = !{!116, !19, i64 8}
!119 = !{!115, !114, i64 0}
!120 = !{!"_ZTSSt13unordered_mapIP11AstVarScope12LifeVarEntrySt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE", !116, i64 0}
!121 = !{!"_ZTS9LifeBlock", !120, i64 0, !107, i64 56, !35, i64 64, !83, i64 72, !33, i64 80}
!122 = !{!121, !35, i64 64}
!123 = !{!121, !83, i64 72}
!124 = !{!116, !112, i64 16}
!125 = !{!113, !112, i64 0}
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!108, !83, i64 42}
!128 = !{!108, !83, i64 40}
!129 = !{!"p1 _ZTS7AstNode", !16, i64 0}
!130 = !{!"_ZTSN6VNType2enE", !11, i64 0}
!131 = !{!"_ZTS6VNType", !130, i64 0}
!132 = !{!"_ZTSN7AstNodeUt_E", !83, i64 0, !83, i64 0, !83, i64 0, !11, i64 0}
!133 = !{!"p1 _ZTS12AstNodeDType", !16, i64 0}
!134 = !{!"p1 _ZTS8FileLine", !16, i64 0}
!135 = !{!"_ZTS6VNUser", !11, i64 0}
!136 = !{!"_ZTS7AstNode", !129, i64 8, !129, i64 16, !129, i64 24, !129, i64 32, !129, i64 40, !129, i64 48, !28, i64 56, !131, i64 64, !132, i64 66, !11, i64 67, !12, i64 68, !133, i64 72, !129, i64 80, !134, i64 88, !129, i64 96, !135, i64 104, !12, i64 112, !12, i64 116, !135, i64 120, !135, i64 128, !12, i64 136, !12, i64 140, !135, i64 144}
!137 = !{!136, !129, i64 40}
!138 = !{!108, !83, i64 41}
!139 = !{!108, !83, i64 43}
!140 = !{!107, !107, i64 0}
!141 = !{!121, !107, i64 56}
!142 = !{!136, !129, i64 24}
!143 = !{!136, !129, i64 32}
!144 = !{!130, !130, i64 0}
!145 = !{!"_ZTS11AstNodeExpr", !136, i64 0}
!146 = !{!"p1 _ZTS6AstVar", !16, i64 0}
!147 = !{!"p1 _ZTS11AstVarScope", !16, i64 0}
!148 = !{!"p1 _ZTS13AstNodeModule", !16, i64 0}
!149 = !{!"_ZTSN7VAccess2enE", !11, i64 0}
!150 = !{!"_ZTS7VAccess", !149, i64 0}
!151 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!152 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !151, i64 0}
!153 = !{!"_ZTSSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0, !152, i64 8}
!154 = !{!"_ZTSSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !153, i64 0}
!155 = !{!"_ZTS16VSelfPointerText", !154, i64 0}
!156 = !{!"_ZTS13AstNodeVarRef", !145, i64 0, !146, i64 152, !147, i64 160, !148, i64 168, !150, i64 176, !155, i64 184}
!157 = !{!156, !147, i64 160}
!158 = !{!"p1 _ZTS11AstNodeStmt", !16, i64 0}
!159 = !{!"p1 _ZTS8AstConst", !16, i64 0}
!160 = !{!"_ZTS12LifeVarEntry", !158, i64 0, !159, i64 8, !83, i64 16, !83, i64 17, !83, i64 18}
!161 = !{!"_ZTSSt4pairIKP11AstVarScope12LifeVarEntryE", !147, i64 0, !160, i64 8}
!162 = !{!161, !147, i64 0}
!163 = !{!160, !83, i64 18}
!164 = !{!112, !112, i64 0}
!165 = !{!147, !147, i64 0}
!166 = !{!160, !83, i64 16}
!167 = !{!160, !83, i64 17}
!168 = !{!160, !158, i64 0}
!169 = !{!"branch_weights", i32 1, i32 1048575}
!170 = !{!"_ZTSN11V3ErrorCode2enE", !11, i64 0}
!171 = !{!"_ZTS11V3ErrorCode", !170, i64 0}
!172 = !{!"any p3 pointer", !27, i64 0}
!173 = !{!"p3 _ZTS8FileLine", !172, i64 0}
!174 = !{!"p2 _ZTS8FileLine", !27, i64 0}
!175 = !{!"_ZTSSt15_Deque_iteratorIPK8FileLineRS2_PS2_E", !174, i64 0, !174, i64 8, !174, i64 16, !173, i64 24}
!176 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE16_Deque_impl_dataE", !173, i64 0, !19, i64 8, !175, i64 16, !175, i64 48}
!177 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE11_Deque_implE", !176, i64 0}
!178 = !{!"_ZTSSt11_Deque_baseIPK8FileLineSaIS2_EE", !177, i64 0}
!179 = !{!"_ZTSSt5dequeIPK8FileLineSaIS2_EE", !178, i64 0}
!180 = !{!"_ZTS13VErrorMessage", !171, i64 0, !20, i64 8, !134, i64 40, !179, i64 48}
!181 = !{!53, !51, i64 8}
!182 = !{!176, !173, i64 0}
!183 = !{!176, !173, i64 40}
!184 = !{!176, !173, i64 72}
!185 = !{!174, !174, i64 0}
!186 = !{!176, !19, i64 8}
!187 = !{!175, !173, i64 24}
!188 = !{!116, !19, i64 24}
!189 = !{!17, !17, i64 0}
!190 = !{!131, !130, i64 0}
!191 = !{!"p1 _ZTS8AstScope", !16, i64 0}
!192 = !{!"_ZTS11AstVarScope", !136, i64 0, !83, i64 152, !83, i64 152, !191, i64 160, !146, i64 168}
!193 = !{!192, !146, i64 168}
!194 = !{!"p1 _ZTS8AstIface", !16, i64 0}
!195 = !{!160, !159, i64 8}
!196 = !{!136, !12, i64 112}
!197 = !{!156, !146, i64 152}
!198 = !{!136, !133, i64 72}
!199 = !{!"_ZTS13V3MutexConfig", !83, i64 0, !83, i64 1}
!200 = !{!199, !83, i64 0}
!201 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!202 = !{i64 2152501711}
!203 = !{!"p1 _ZTS10V3MutexImpISt5mutexE", !16, i64 0}
!204 = distinct !{!204, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!205 = distinct !{!205, !204, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!206 = distinct !{!206, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!207 = distinct !{!207, !206, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!208 = !{!205}
!209 = !{!207}
!210 = !{!207, !205}
!211 = !{!105, !17, i64 40}
!212 = !{!105, !17, i64 32}
!213 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!214 = !{!"p1 _ZTS8AstCFunc", !16, i64 0}
!215 = !{!"_ZTS12AstNodeCCall", !145, i64 0, !20, i64 152, !83, i64 184, !214, i64 192}
!216 = !{!215, !214, i64 192}
!217 = !{!149, !149, i64 0}
!218 = !{!"_ZTSSt12_Base_bitsetILm3EE", !11, i64 0}
!219 = !{!"_ZTSSt6bitsetILm146EE", !218, i64 0}
!220 = !{!"_ZTS12VErrorBitSet", !219, i64 0}
!221 = !{!"_ZTSSo"}
!222 = !{!"_ZTSSt13_Ios_Openmode", !11, i64 0}
!223 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !105, i64 0, !222, i64 64, !20, i64 72}
!224 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !221, i64 0, !223, i64 8}
!225 = !{!"_ZTSSt22__recursive_mutex_base", !11, i64 0}
!226 = !{!"_ZTSSt15recursive_mutex", !225, i64 0}
!227 = !{!"_ZTS10V3MutexImpISt15recursive_mutexE", !226, i64 0}
!228 = !{!"_ZTS14V3ErrorGuarded", !83, i64 0, !83, i64 1, !180, i64 8, !83, i64 136, !56, i64 144, !16, i64 192, !83, i64 200, !12, i64 204, !12, i64 208, !220, i64 216, !220, i64 240, !220, i64 264, !12, i64 288, !12, i64 292, !83, i64 296, !224, i64 304, !227, i64 680}
!229 = !{!228, !83, i64 0}
!230 = !{!228, !83, i64 1}
!231 = !{!228, !83, i64 136}
!232 = !{!53, !50, i64 0}
!233 = !{!53, !51, i64 16}
!234 = !{!53, !51, i64 24}
!235 = !{!53, !19, i64 32}
!236 = !{!228, !16, i64 192}
!237 = !{!228, !83, i64 200}
!238 = !{!228, !12, i64 204}
!239 = !{!228, !12, i64 208}
!240 = !{!228, !12, i64 288}
!241 = !{!228, !12, i64 292}
!242 = !{!228, !83, i64 296}
!243 = !{!"short", !11, i64 0}
!244 = !{!"p1 _ZTS23__pthread_internal_list", !16, i64 0}
!245 = !{!"_ZTS23__pthread_internal_list", !244, i64 0, !244, i64 8}
!246 = !{!"_ZTS17__pthread_mutex_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !243, i64 20, !243, i64 22, !245, i64 24}
!247 = !{!246, !12, i64 16}
!248 = distinct !{!248, i1 true, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv"}
!249 = distinct !{!249, !248, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv: argument 0"}
!250 = !{!171, !170, i64 0}
!251 = !{!170, !170, i64 0}
!252 = !{!180, !134, i64 40}
!253 = !{!249}
!254 = !{!27, !27, i64 0}
!255 = distinct !{!255, !126}
!256 = !{!175, !174, i64 8}
!257 = !{!175, !174, i64 16}
!258 = !{!176, !174, i64 16}
!259 = !{!176, !174, i64 48}
!260 = distinct !{!260, !126}
!261 = !{!52, !51, i64 24}
!262 = !{!52, !51, i64 16}
!263 = !{!115, !19, i64 8}
!264 = distinct !{!264, !126}
!265 = !{!116, !112, i64 48}
!266 = !{!"_ZTSN8VVarType2enE", !11, i64 0}
!267 = !{!"_ZTS8VVarType", !266, i64 0}
!268 = !{!"_ZTSN10VDirection2enE", !11, i64 0}
!269 = !{!"_ZTS10VDirection", !268, i64 0}
!270 = !{!"_ZTSN9VLifetime2enE", !11, i64 0}
!271 = !{!"_ZTS9VLifetime", !270, i64 0}
!272 = !{!"_ZTSN9VRandAttr2enE", !11, i64 0}
!273 = !{!"_ZTS9VRandAttr", !272, i64 0}
!274 = !{!"_ZTS6AstVar", !136, i64 0, !20, i64 152, !20, i64 184, !20, i64 216, !267, i64 248, !269, i64 249, !269, i64 250, !271, i64 251, !273, i64 252, !12, i64 256, !83, i64 260, !83, i64 260, !83, i64 260, !83, i64 260, !83, i64 260, !83, i64 260, !83, i64 260, !83, i64 260, !83, i64 261, !83, i64 261, !83, i64 261, !83, i64 261, !83, i64 261, !83, i64 261, !83, i64 261, !83, i64 261, !83, i64 262, !83, i64 262, !83, i64 262, !83, i64 262, !83, i64 262, !83, i64 262, !83, i64 262, !83, i64 262, !83, i64 263, !83, i64 263, !83, i64 263, !83, i64 263, !83, i64 263, !83, i64 263, !83, i64 263, !83, i64 263, !83, i64 264, !83, i64 264, !83, i64 264, !83, i64 264, !83, i64 264, !83, i64 264, !83, i64 264, !83, i64 264, !83, i64 265, !83, i64 265, !83, i64 265, !83, i64 265, !83, i64 265, !83, i64 265, !83, i64 265, !83, i64 265, !83, i64 266, !83, i64 266, !83, i64 266, !83, i64 266, !83, i64 266, !83, i64 266, !83, i64 266, !83, i64 266, !83, i64 267, !83, i64 267, !83, i64 267, !83, i64 267, !83, i64 267, !83, i64 267, !83, i64 267, !194, i64 272}
!275 = !{!274, !194, i64 272}
!276 = !{!29, !28, i64 8}
!277 = !{!129, !129, i64 0}
!278 = distinct !{!278, !126}
!279 = !{!"_ZTSN8VSigning2enE", !11, i64 0}
!280 = !{!"_ZTS8VSigning", !279, i64 0}
!281 = !{!"_ZTS12AstNodeDType", !136, i64 0, !12, i64 152, !12, i64 156, !280, i64 160, !83, i64 161}
!282 = !{!"p1 _ZTS7AstCell", !16, i64 0}
!283 = !{!"p1 _ZTS10AstModport", !16, i64 0}
!284 = !{!"_ZTS16AstIfaceRefDType", !281, i64 0, !134, i64 168, !20, i64 176, !20, i64 208, !20, i64 240, !83, i64 272, !83, i64 273, !194, i64 280, !282, i64 288, !283, i64 296}
!285 = !{!284, !83, i64 273}
!286 = !{!203, !203, i64 0}
!287 = !{!"_ZTS11V3Statistic", !20, i64 8, !41, i64 40, !12, i64 48, !20, i64 56, !83, i64 88, !83, i64 89, !83, i64 90}
!288 = !{!287, !41, i64 40}
!289 = !{!287, !12, i64 48}
!290 = !{!287, !83, i64 88}
!291 = !{!287, !83, i64 89}
!292 = !{!287, !83, i64 90}
!293 = !{!"_ZTS14V3LockGuardImpI10V3MutexImpISt5mutexEE", !203, i64 0}
!294 = !{!293, !203, i64 0}
!295 = !{i64 8}
end_hunk_2
