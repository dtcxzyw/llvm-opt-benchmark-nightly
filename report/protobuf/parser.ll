inline.NumInlined: 394
inline.NumDeleted: 218
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal11ParseDigitsERcRPKcS4_:bb.a
.lr.ph.3:                                         ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ac, ptr %1, align 8, !tbaa !15
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !11  ; 3 uses
  store i8 %i.ad, ptr %0, align 1, !tbaa !11
  %i.ae = add i8 %i.ad, -58
  %or.cond.3 = icmp ult i8 %i.ae, -10
  br i1 %or.cond.3, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.3
  %i.af = zext nneg i8 %i.ad to i32
  %i.ag = mul nsw i32 %.011.2, 10
  %i.ah = add nsw i32 %i.ag, %i.af
  %.011.3 = add nsw i32 %i.ah, -48                ; 3 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %2
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.4, !prof !71

.lr.ph.4:                                         ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %1, align 8, !tbaa !15
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !11  ; 3 uses
  store i8 %i.al, ptr %0, align 1, !tbaa !11
  %i.am = add i8 %i.al, -58
  %or.cond.4 = icmp ult i8 %i.am, -10
  br i1 %or.cond.4, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.4
  %i.an = zext nneg i8 %i.al to i32
  %i.ao = mul nsw i32 %.011.3, 10
  %i.ap = add nsw i32 %i.ao, %i.an
  %.011.4 = add nsw i32 %i.ap, -48                ; 3 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.ar = icmp eq ptr %i.aq, %2
  br i1 %i.ar, label %._crit_edge, label %.lr.ph.5, !prof !71

.lr.ph.5:                                         ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.as, ptr %1, align 8, !tbaa !15
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !11  ; 3 uses
  store i8 %i.at, ptr %0, align 1, !tbaa !11
  %i.au = add i8 %i.at, -58
  %or.cond.5 = icmp ult i8 %i.au, -10
  br i1 %or.cond.5, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.5
  %i.av = zext nneg i8 %i.at to i32
  %i.aw = mul nsw i32 %.011.4, 10
  %i.ax = add nsw i32 %i.aw, %i.av
  %.011.5 = add nsw i32 %i.ax, -48                ; 3 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.az = icmp eq ptr %i.ay, %2
  br i1 %i.az, label %._crit_edge, label %.lr.ph.6, !prof !71

.lr.ph.6:                                         ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.ba, ptr %1, align 8, !tbaa !15
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !11  ; 3 uses
  store i8 %i.bb, ptr %0, align 1, !tbaa !11
  %i.bc = add i8 %i.bb, -58
  %or.cond.6 = icmp ult i8 %i.bc, -10
  br i1 %or.cond.6, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.6
  %i.bd = zext nneg i8 %i.bb to i32
  %i.be = mul nsw i32 %.011.5, 10
  %i.bf = add nsw i32 %i.be, %i.bd
  %.011.6 = add nsw i32 %i.bf, -48                ; 3 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.bh = icmp eq ptr %i.bg, %2
  br i1 %i.bh, label %._crit_edge, label %.lr.ph.7, !prof !71

.lr.ph.7:                                         ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bi, ptr %1, align 8, !tbaa !15
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !11  ; 3 uses
  store i8 %i.bj, ptr %0, align 1, !tbaa !11
  %i.bk = add i8 %i.bj, -58
  %or.cond.7 = icmp ult i8 %i.bk, -10
  br i1 %or.cond.7, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.7
  %i.bl = zext nneg i8 %i.bj to i32
  %i.bm = mul nsw i32 %.011.6, 10
  %i.bn = add nsw i32 %i.bm, %i.bl
  %.011.7 = add nsw i32 %i.bn, -48                ; 2 uses
  %i.bo = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.bp = icmp eq ptr %i.bo, %2
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.8, !prof !71

.lr.ph.8:                                         ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bq, ptr %1, align 8, !tbaa !15
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !11
  store i8 %i.br, ptr %0, align 1, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.8, %bb.b, %.lr.ph.preheader, %.lr.ph.1, %bb.c, %.lr.ph.2, %bb.d, %.lr.ph.3, %bb.e, %.lr.ph.4, %bb.f, %.lr.ph.5, %bb.g, %.lr.ph.6, %bb.h, %.lr.ph.7, %bb.i, %bb.a
  %.011.lcssa = phi i32 [ %.01114, %bb.a ], [ %.011, %bb.b ], [ %.01114, %.lr.ph.preheader ], [ %.011.5, %.lr.ph.6 ], [ %.011, %.lr.ph.1 ], [ %.011.5, %bb.g ], [ %.011.1, %bb.c ], [ %.011.1, %.lr.ph.2 ], [ %.011.7, %.lr.ph.8 ], [ %.011.2, %bb.d ], [ %.011.2, %.lr.ph.3 ], [ %.011.7, %bb.i ], [ %.011.3, %bb.e ], [ %.011.3, %.lr.ph.4 ], [ %.011.6, %bb.h ], [ %.011.4, %bb.f ], [ %.011.4, %.lr.ph.5 ], [ %.011.6, %.lr.ph.7 ]
  ret i32 %.011.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2025051219str_format_internal29FormatConversionCharToConvIntEc(i8 noundef signext %0) local_unnamed_addr #3 comdat {
bb.a:
  switch i8 %0, label %bb.t [
    i8 99, label %bb.u
    i8 115, label %bb.b
    i8 100, label %bb.c
    i8 105, label %bb.d
    i8 111, label %bb.e
    i8 117, label %bb.f
    i8 120, label %bb.g
    i8 88, label %bb.h
    i8 102, label %bb.i
    i8 70, label %bb.j
    i8 101, label %bb.k
    i8 69, label %bb.l
    i8 103, label %bb.m
    i8 71, label %bb.n
    i8 97, label %bb.o
    i8 65, label %bb.p
    i8 110, label %bb.q
    i8 112, label %bb.r
    i8 118, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  br label %bb.u

bb.f:                                             ; preds = %bb.a
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  br label %bb.u

bb.i:                                             ; preds = %bb.a
  br label %bb.u

bb.j:                                             ; preds = %bb.a
  br label %bb.u

bb.k:                                             ; preds = %bb.a
  br label %bb.u

bb.l:                                             ; preds = %bb.a
  br label %bb.u

bb.m:                                             ; preds = %bb.a
  br label %bb.u

bb.n:                                             ; preds = %bb.a
  br label %bb.u

bb.o:                                             ; preds = %bb.a
  br label %bb.u

bb.p:                                             ; preds = %bb.a
  br label %bb.u

bb.q:                                             ; preds = %bb.a
  br label %bb.u

bb.r:                                             ; preds = %bb.a
  br label %bb.u

bb.s:                                             ; preds = %bb.a
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  %i.a = icmp eq i8 %0, 42
  %i.b = zext i1 %i.a to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %i.c = phi i64 [ %i.b, %bb.t ], [ 4, %bb.b ], [ 8, %bb.c ], [ 16, %bb.d ], [ 32, %bb.e ], [ 64, %bb.f ], [ 128, %bb.g ], [ 256, %bb.h ], [ 512, %bb.i ], [ 1024, %bb.j ], [ 2048, %bb.k ], [ 4096, %bb.l ], [ 8192, %bb.m ], [ 16384, %bb.n ], [ 32768, %bb.o ], [ 65536, %bb.p ], [ 131072, %bb.q ], [ 262144, %bb.r ], [ 524288, %bb.s ], [ 2, %bb.a ]
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %1, align 4                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !67 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !73

bb.e:                                             ; preds = %bb.c
  %i.p = sext i32 %i.l to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !67   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = icmp eq i32 %i.c, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq i32 %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !74

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8, !tbaa !67 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !74

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !74

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16 ; 4 uses
  store ptr null, ptr %i.af, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %4 = load i32, ptr %1, align 4, !tbaa !3
  store i32 %4, ptr %i.ag, align 8, !tbaa !3
  %i.ah = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 16) #17
  resume { ptr, i32 } %i.ai

_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ah, %.critedge ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #18 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !75
  invoke void @__cxa_rethrow() #20
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
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !54
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67
  store ptr %i.w, ptr %3, align 8, !tbaa !67
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !72
  store ptr %3, ptr %i.x, align 8, !tbaa !67
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66
  store ptr %i.z, ptr %3, align 8, !tbaa !67
  store ptr %3, ptr %i.y, align 8, !tbaa !66
  %i.aa = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !54
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !72
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !76
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !66
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !67  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !3
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !66
  store ptr %i.p, ptr %.031, align 8, !tbaa !67
  store ptr %.031, ptr %i.g, align 8, !tbaa !66
  store ptr %i.g, ptr %i.n, align 8, !tbaa !72
  %i.q = load ptr, ptr %.031, align 8, !tbaa !67
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8, !tbaa !72
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !67
  store ptr %i.s, ptr %.031, align 8, !tbaa !67
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !72
  store ptr %.031, ptr %i.t, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !54
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #17
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !54
  store ptr %.0.i, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE9push_backEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %2, i64 %1, i1 false)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %1 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !78
  %i.f = load ptr, ptr %0, align 8, !tbaa !81     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 14 uses
  %i.p = icmp eq ptr %i.m, %i.o                   ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !57, !range !59, !noundef !60
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 -24
  store i64 %i.k, ptr %i.t, align 8, !tbaa !82
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.o, align 8, !tbaa !83
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.k, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !84
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 -1, ptr %.sroa.611.0..sroa_idx, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 -1, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !3
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !85
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 29
  store i8 9, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !86
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 30
  store i8 19, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.w, ptr %i.n, align 8, !tbaa !88
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE9push_backEOS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775776
  br i1 %i.aa, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ab = ashr exact i64 %i.z, 5                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 288230376151711743)
  %i.af = select i1 %i.ad, i64 288230376151711743, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #16 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z ; 7 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !83
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.k, ptr %.sroa.56.0..sroa_idx7, align 8, !tbaa !84
  %.sroa.611.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 -1, ptr %.sroa.611.0..sroa_idx12, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 -1, ptr %.sroa.7.0..sroa_idx14, align 8, !tbaa !3
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i8 0, ptr %.sroa.8.0..sroa_idx16, align 4, !tbaa !85
  %.sroa.9.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ai, i64 29
  store i8 9, ptr %.sroa.9.0..sroa_idx18, align 1, !tbaa !86
  %.sroa.10.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ai, i64 30
  store i8 19, ptr %.sroa.10.0..sroa_idx20, align 2, !tbaa !87
  br i1 %i.p, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !89, !alias.scope !90
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !94

_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %3 = load ptr, ptr %i.u, align 8, !tbaa !31
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %5) #17
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ah, ptr %i.l, align 8, !tbaa !30
  store ptr %i.al, ptr %i.n, align 8, !tbaa !88
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.am, ptr %i.u, align 8, !tbaa !31
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.f, %bb.d, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(15) %1, i64 %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca <{ i32, %"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue", %"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue", i8, i8, i8 }>, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %3, i64 %2, i1 false)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %2 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !78
  %i.e = load ptr, ptr %0, align 8, !tbaa !81     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(15) %1, i64 15, i1 false), !tbaa.struct !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.m, align 8, !tbaa !83
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.j, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !84
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(15) %.sroa.6, i64 15, i1 false), !tbaa.struct !95
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.q, ptr %i.l, align 8, !tbaa !88
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !30   ; 5 uses
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775776
  br i1 %i.v, label %bb.d, label %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #20
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.w = ashr exact i64 %i.u, 5                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 288230376151711743)
  %i.aa = select i1 %i.y, i64 288230376151711743, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 5
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 3 uses
  store i8 1, ptr %i.ad, align 8, !tbaa !83
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.j, ptr %.sroa.56.0..sroa_idx7, align 8, !tbaa !84
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.6.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(15) %.sroa.6, i64 15, i1 false), !tbaa.struct !95
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !89, !alias.scope !96
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !94

_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %4 = load ptr, ptr %i.n, align 8, !tbaa !31
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %6) #17
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !30
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !31
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i1 true
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !14, i64 8, !5, i64 16}
!14 = !{!"long", !5, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSN4absl12lts_2025051219str_format_internal16ParsedFormatBaseE", !18, i64 0, !19, i64 8, !25, i64 16}
!18 = !{!"bool", !5, i64 0}
!19 = !{!"_ZTSSt10unique_ptrIA_cSt14default_deleteIS0_EE", !20, i64 0}
!20 = !{!"_ZTSSt15__uniq_ptr_dataIcSt14default_deleteIA_cELb1ELb1EE", !21, i64 0}
!21 = !{!"_ZTSSt15__uniq_ptr_implIcSt14default_deleteIA_cEE", !22, i64 0}
!22 = !{!"_ZTSSt5tupleIJPcSt14default_deleteIA_cEEE", !23, i64 0}
!23 = !{!"_ZTSSt11_Tuple_implILm0EJPcSt14default_deleteIA_cEEE", !24, i64 0}
!24 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !9, i64 0}
!25 = !{!"_ZTSSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemE", !10, i64 0}
!30 = !{!28, !29, i64 0}
!31 = !{!28, !29, i64 16}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = !{!35, !4, i64 0}
!35 = !{!"_ZTSN4absl12lts_2025051219str_format_internal17UnboundConversion10InputValueE", !4, i64 0}
!36 = !{!37, !38, i64 12}
!37 = !{!"_ZTSN4absl12lts_2025051219str_format_internal17UnboundConversionE", !4, i64 0, !35, i64 4, !35, i64 8, !38, i64 12, !39, i64 13, !40, i64 14}
!38 = !{!"_ZTSN4absl12lts_2025051219str_format_internal5FlagsE", !5, i64 0}
!39 = !{!"_ZTSN4absl12lts_202505129LengthModE", !5, i64 0}
!40 = !{!"_ZTSN4absl12lts_2025051220FormatConversionCharE", !5, i64 0}
!41 = !{!37, !39, i64 13}
!42 = !{!37, !40, i64 14}
!43 = !{!37, !4, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !48, i64 0, !14, i64 8, !50, i64 16, !14, i64 24, !52, i64 32, !51, i64 48}
!48 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !49, i64 0}
!49 = !{!"any p2 pointer", !10, i64 0}
!50 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !51, i64 0}
!51 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!52 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !53, i64 0, !14, i64 8}
!53 = !{!"float", !5, i64 0}
!54 = !{!47, !14, i64 8}
!55 = !{!52, !53, i64 0}
!56 = !{!29, !29, i64 0}
!57 = !{!58, !18, i64 0}
!58 = !{!"_ZTSN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemE", !18, i64 0, !14, i64 8, !37, i64 16}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!62, !62, i64 0}
!62 = !{!"_ZTSN4absl12lts_2025051223FormatConversionCharSetE", !5, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEEE", !10, i64 0}
!65 = !{!47, !14, i64 24}
!66 = !{!47, !51, i64 16}
!67 = !{!50, !51, i64 0}
!68 = distinct !{!68, !45}
!69 = !{!"branch_weights", i32 4000000, i32 4001}
!70 = !{!"branch_weights", i32 1, i32 127}
!71 = !{!"branch_weights", i32 0, i32 -2147483648}
!72 = !{!51, !51, i64 0}
!73 = distinct !{!73, !45}
!74 = distinct !{!74, !45}
!75 = !{!52, !14, i64 8}
!76 = !{!47, !51, i64 48}
!77 = distinct !{!77, !45}
!78 = !{!79, !9, i64 8}
!79 = !{!"_ZTSN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumerE", !80, i64 0, !9, i64 8}
!80 = !{!"p1 _ZTSN4absl12lts_2025051219str_format_internal16ParsedFormatBaseE", !10, i64 0}
!81 = !{!79, !80, i64 0}
!82 = !{!58, !14, i64 8}
!83 = !{!18, !18, i64 0}
!84 = !{!14, !14, i64 0}
!85 = !{!38, !38, i64 0}
!86 = !{!39, !39, i64 0}
!87 = !{!40, !40, i64 0}
!88 = !{!28, !29, i64 8}
!89 = !{i64 0, i64 1, !83, i64 8, i64 8, !84, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !3, i64 28, i64 1, !85, i64 29, i64 1, !86, i64 30, i64 1, !87}
!90 = !{!91, !93}
!91 = distinct !{!91, !92, !"_ZSt19__relocate_object_aIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!92 = distinct !{!92, !"_ZSt19__relocate_object_aIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemES4_SaIS4_EEvPT_PT0_RT1_"}
!93 = distinct !{!93, !92, !"_ZSt19__relocate_object_aIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!94 = distinct !{!94, !45}
!95 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 1, !85, i64 13, i64 1, !86, i64 14, i64 1, !87}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_ZSt19__relocate_object_aIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !"_ZSt19__relocate_object_aIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemES4_SaIS4_EEvPT_PT0_RT1_"}
!99 = distinct !{!99, !98, !"_ZSt19__relocate_object_aIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
end_hunk_0
