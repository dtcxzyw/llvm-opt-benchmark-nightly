Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nla_pp?download=true
inline.NumInlined: 1470
inline.NumDeleted: 612
begin_hunk_0_@_ZNK3nla4core11print_ineqsERKNS_5lemmaERSo:bb.a
  br label %.critedge.i

bb.m:                                             ; preds = %.thread35.i
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !310 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !26
  %i.by = icmp eq i32 %i.bg, %i.bx
  br i1 %i.by, label %.loopexit, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.bz = icmp eq i32 %i.bg, %i.cc
  br i1 %i.bz, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !357

.lr.ph.i.i.i:                                     ; preds = %bb.m, %bb.n
  %.020.i.i.i = phi ptr [ %i.ca, %bb.n ], [ %i.bv, %bb.m ]
  %i.ca = load ptr, ptr %.020.i.i.i, align 8, !tbaa !310 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !26 ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = urem i64 %i.cd, %i.bj
  %.not19.i.i.i = icmp eq i64 %i.ce, %i.bk
  br i1 %.not19.i.i.i, label %bb.n, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !357

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.o
  br label %.critedge.i, !llvm.loop !357

.critedge.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %bb.l, %.thread35.i
  %i.cf = phi i64 [ %i.bu, %bb.l ], [ %i.bk, %.thread35.i ], [ %i.bk, %..loopexit_crit_edge21.i.i.i ], [ %i.bk, %.lr.ph.i.i.i ]
  %i.cg = phi i64 [ %i.bs, %bb.l ], [ %i.bi, %.thread35.i ], [ %i.bi, %..loopexit_crit_edge21.i.i.i ], [ %i.bi, %.lr.ph.i.i.i ]
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %.noexc59 unwind label %bb.q   ; 4 uses

.noexc59:                                         ; preds = %.critedge.i
  store ptr null, ptr %i.ch, align 8, !tbaa !310
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.bg, ptr %i.ci, align 8, !tbaa !26
  %i.cj = invoke ptr @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIjLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %3, i64 noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull %i.ch, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ; 0 uses

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc59
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #23
  br label %.body

.loopexit:                                        ; preds = %bb.n, %bb.k, %bb.m, %.noexc59
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.069.079, i64 48 ; 3 uses
  %.not1.i.i.i.i = icmp eq ptr %i.cl, %i.az
  br i1 %.not1.i.i.i.i, label %_ZN2lp8lar_term14const_iteratorppEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %bb.p
  %.sroa.069.1 = phi ptr [ %i.cp, %bb.p ], [ %i.cl, %.loopexit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.069.1, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !306
  %i.co = icmp eq i32 %i.cn, 2
  br i1 %i.co, label %_ZN2lp8lar_term14const_iteratorppEv.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.069.1, i64 48 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.az
  br i1 %.not.i.i.i.i, label %_ZN2lp8lar_term14const_iteratorppEv.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZN2lp8lar_term14const_iteratorppEv.exit:         ; preds = %.lr.ph.i.i.i.i, %bb.p, %.loopexit
  %.sroa.069.2 = phi ptr [ %i.cl, %.loopexit ], [ %i.cp, %bb.p ], [ %.sroa.069.1, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.069.2, %i.be
  br i1 %.not, label %.loopexit75, label %.lr.ph

bb.q:                                             ; preds = %.critedge.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc54
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !311 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %._crit_edge.invoke, label %.lr.ph82

._crit_edge.invoke:                               ; preds = %bb.r, %_ZNK6vectorIN3nla4ineqELb1EjE4sizeEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEPFRSoS_E.exit
  %i.ct = phi ptr [ @.str.5, %_ZNSolsEPFRSoS_E.exit ], [ @.str.27, %_ZNK6vectorIN3nla4ineqELb1EjE4sizeEv.exit ], [ @.str.27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ @.str.5, %bb.r ]
  %i.cu = phi i64 [ 1, %_ZNSolsEPFRSoS_E.exit ], [ 9, %_ZNK6vectorIN3nla4ineqELb1EjE4sizeEv.exit ], [ 9, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ 1, %bb.r ]
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.ct, i64 noundef %i.cu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.b ; 0 uses

.lr.ph82:                                         ; preds = %_ZNSolsEPFRSoS_E.exit, %bb.r
  %.sroa.060.081 = phi ptr [ %i.cz, %bb.r ], [ %i.cr, %_ZNSolsEPFRSoS_E.exit ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.060.081, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !26
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core9print_varEjRSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, i32 noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %.lr.ph82
  %i.cz = load ptr, ptr %.sroa.060.081, align 8, !tbaa !310 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %._crit_edge.invoke, label %.lr.ph82

bb.s:                                             ; preds = %.lr.ph82
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %._crit_edge.invoke
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !311 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i50

.lr.ph.i.i.i.i50:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40, %.lr.ph.i.i.i.i50
  %.06.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i50 ], [ %i.dc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 ] ; 2 uses
  %i.dd = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !310 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #23
  %.not.i.i.i.i51 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i51, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i50, !llvm.loop !3

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i50, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.de = load ptr, ptr %3, align 8, !tbaa !281
  %i.df = load i64, ptr %i.b, align 8, !tbaa !282
  %i.dg = shl i64 %i.df, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.de, i8 0, i64 %i.dg, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.dh = load ptr, ptr %3, align 8, !tbaa !281   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.a
  br i1 %i.di, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !282
  %i.dk = shl i64 %i.dj, 3
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #23
  br label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %2

.body:                                            ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i, %bb.q, %bb.i, %bb.s, %bb.b
  %.pn38 = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.db, %bb.s ], [ %i.at, %bb.i ], [ %i.ck, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ], [ %i.cq, %bb.q ]
  call void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn38
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !311  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !310 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #23
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !281
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !282
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !281    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !282
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core19print_factorizationERKNS_13factorizationERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull returned align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !363
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !242    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK3nla13factorization4sizeEv.exit.thread, label %_ZNK3nla13factorization4sizeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.29, i64 noundef 7) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !363
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core11print_monicERKNS_5monicERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(34) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  br label %_ZNK3nla13factorization4sizeEv.exit.thread

_ZNK3nla13factorization4sizeEv.exit:              ; preds = %.preheader, %bb.d
  %3 = phi ptr [ %i.x, %bb.d ], [ %i.c, %.preheader ]
  %i.h = phi i64 [ %6, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %.019 = phi i32 [ %5, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %3, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26
  %4 = icmp ugt i32 %i.j, %.019
  br i1 %4, label %bb.c, label %_ZNK3nla13factorization4sizeEv.exit.thread

bb.c:                                             ; preds = %_ZNK3nla13factorization4sizeEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.21, i64 noundef 1) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !242
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.h
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core12print_factorERKNS_6factorERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !242    ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.critedge, label %_ZNK3nla13factorization4sizeEv.exit15

_ZNK3nla13factorization4sizeEv.exit15:            ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = zext i32 %i.s to i64
  %i.u = add nsw i64 %i.t, -1
  %i.v = icmp ugt i64 %i.u, %i.h
  br i1 %i.v, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c, %_ZNK3nla13factorization4sizeEv.exit15
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.30, i64 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !242
  br label %bb.d

bb.d:                                             ; preds = %_ZNK3nla13factorization4sizeEv.exit15, %.critedge
  %i.x = phi ptr [ %i.p, %_ZNK3nla13factorization4sizeEv.exit15 ], [ %.pre, %.critedge ] ; 2 uses
  %5 = add nuw i32 %.019, 1                       ; 2 uses
  %6 = zext i32 %5 to i64
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK3nla13factorization4sizeEv.exit.thread, label %_ZNK3nla13factorization4sizeEv.exit, !llvm.loop !360

_ZNK3nla13factorization4sizeEv.exit.thread:       ; preds = %_ZNK3nla13factorization4sizeEv.exit, %bb.d, %.preheader, %bb.b
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3nla4core35trace_print_monic_and_factorizationERKNS_5monicERKNS_13factorizationERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.31, i64 noundef 13) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core13print_productI7svectorIjjEEERSoRKT_S4_(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.32, i64 noundef 7) ; 0 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.n
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core11print_monicERKNS_5monicERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(34) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.33, i64 noundef 7) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !230, !nonnull !19, !align !231
  %i.u = load i32, ptr %1, align 8, !tbaa !32
  %i.v = tail call noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.t)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !314
  %i.y = zext i32 %i.u to i64
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aa = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252
  call void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(728) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.ab = load ptr, ptr %4, align 8, !tbaa !236
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !237
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.a
  %i.af = load ptr, ptr %4, align 8, !tbaa !236   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZlsRSoRK8rational.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !238
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #23
  br label %_ZlsRSoRK8rational.exit

bb.b:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %4, align 8, !tbaa !236   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.b
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !238
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.ak

_ZlsRSoRK8rational.exit:                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.34, i64 noundef 6) ; 0 uses
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3nla4core19print_factorizationERKNS_13factorizationERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3nla4core17print_monic_statsERKNS_5monicERSo(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nla::monic_coeff", align 8  ; 12 uses
  %4 = alloca %class.rational, align 8            ; 17 uses
  %5 = alloca %class.rational, align 8            ; 13 uses
  %6 = alloca %class.svector, align 8             ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK3nla6mon_eq4sizeEv.exit.thread, label %_ZNK3nla6mon_eq4sizeEv.exit

_ZNK3nla6mon_eq4sizeEv.exit:                      ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.am, label %_ZNK3nla6mon_eq4sizeEv.exit.thread

_ZNK3nla6mon_eq4sizeEv.exit.thread:               ; preds = %bb.a, %_ZNK3nla6mon_eq4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK3nla4core14canonize_monicERKNS_5monicE(ptr dead_on_unwind nonnull writable sret(%"class.nla::monic_coeff") align 8 %3, ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(34) %1)
  %i.g = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph:            ; preds = %_ZNK3nla6mon_eq4sizeEv.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4464
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph, %bb.ak
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.ak ] ; 5 uses
  %i.u = phi ptr [ %i.g, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %i.ez, %bb.ak ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv, %i.x
  br i1 %i.y, label %bb.e, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit, %bb.ak, %_ZNK3nla6mon_eq4sizeEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %.critedge
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %.critedge
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #24
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.ae = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN3nla11monic_coeffD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8rationalD2Ev.exit.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.af)
          to label %_ZN3nla11monic_coeffD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #24
  unreachable

_ZN3nla11monic_coeffD2Ev.exit:                    ; preds = %_ZN8rationalD2Ev.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.am

bb.e:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !230, !nonnull !19, !align !231
  %i.al = invoke noundef nonnull align 8 dereferenceable(688) ptr @_ZNK2lp10lar_solver15get_core_solverEv(ptr noundef nonnull align 8 dereferenceable(152) %i.ak)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !314
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %i.ao ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  store i32 0, ptr %4, align 8, !tbaa !269, !alias.scope !367
  %i.aq = load i8, ptr %i.j, align 4, !alias.scope !367
  %i.ar = and i8 %i.aq, -4                        ; 2 uses
  store i8 %i.ar, ptr %i.j, align 4, !alias.scope !367
  store ptr null, ptr %i.k, align 8, !tbaa !270, !alias.scope !367
  store i32 1, ptr %i.l, align 8, !tbaa !269, !alias.scope !367
  %i.as = load i8, ptr %i.m, align 4, !alias.scope !367
  %i.at = and i8 %i.as, -4
  store i8 %i.at, ptr %i.m, align 4, !alias.scope !367
  store ptr null, ptr %i.n, align 8, !tbaa !270, !alias.scope !367
  %i.au = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !252, !noalias !367 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aw = load i8, ptr %i.av, align 4, !noalias !367
end_hunk_0
