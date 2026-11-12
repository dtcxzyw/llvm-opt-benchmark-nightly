Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkParse?download=true
inline.NumInlined: 3564
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN15VNUserInUseBase4freeEiRjRb:bb.a
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !30
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bc = phi i32 [ %0, %bb.a ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  call void @_ZN15VNUserInUseBase8clearcntEiRjRKb(i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i8 0, ptr %2, align 1, !tbaa !225
  ret void
}

declare void @_ZN9VNDeleter9doDeletesEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16LinkParseVisitor13cleanFilelineEP7AstNode(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !168
  %i.d = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !32 ; 2 uses
  %i.e = icmp ne i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4294967295
  %.not.i11 = icmp eq i64 %i.h, 0
  %.not.i = select i1 %i.e, i1 true, i1 %.not.i11
  br i1 %.not.i, label %bb.b, label %_ZN7AstNode12user2SetOnceEv.exit

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.f, align 8, !tbaa !30
  store i32 %i.d, ptr %i.b, align 4, !tbaa !168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !178  ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !274
  %.not.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !100 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !257
  %i.q = icmp eq ptr %i.k, %i.p
  br i1 %i.q, label %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %bb.d, !llvm.loop !572

bb.f:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !90   ; 2 uses
  %i.u = urem i64 %i.r, %i.t                      ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !275  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !257
  %i.ab = icmp eq ptr %i.k, %i.aa
  br i1 %i.ab, label %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ac = icmp eq ptr %i.k, %i.af
  br i1 %i.ac, label %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !573

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %i.y, %bb.g ]
  %i.ad = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !100 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !257 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = urem i64 %i.ag, %i.t
  %.not19.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !573

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread, !llvm.loop !573

_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %i.ai = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 8 uses
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !178 ; 6 uses
  %i.ak = load <2 x i16>, ptr %i.aj, align 8, !tbaa !276
  store <2 x i16> %i.ak, ptr %i.ai, align 8, !tbaa !276
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 4
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load <2 x i32>, ptr %i.ap, align 8, !tbaa !32
  store <2 x i32> %i.aq, ptr %i.ao, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.at, 72057589759737855
  store i64 %i.au, ptr %i.ar, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !277
  store i16 %i.ax, ptr %i.av, align 8, !tbaa !277
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !278
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !279 ; 2 uses
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !278
  %.not.i7 = icmp eq ptr %i.bb, null
  br i1 %.not.i7, label %_ZN8FileLineC2EPS_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = atomicrmw add ptr %i.bc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN8FileLineC2EPS_.exit

_ZN8FileLineC2EPS_.exit:                          ; preds = %bb.j, %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !178
  br label %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread

_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.d, %bb.f, %..loopexit_crit_edge21.i.i.i.i, %_ZN8FileLineC2EPS_.exit
  %i.be = phi ptr [ %i.k, %bb.d ], [ %i.ai, %_ZN8FileLineC2EPS_.exit ], [ %i.k, %bb.f ], [ %i.k, %..loopexit_crit_edge21.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.be, ptr %i.a, align 8, !tbaa !257
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.i, ptr %2, align 8, !tbaa !575
  %i.bf = call { ptr, i8 } @_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb0EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN7AstNode12user2SetOnceEv.exit

_ZN7AstNode12user2SetOnceEv.exit:                 ; preds = %bb.a, %_ZNSt13unordered_setIP8FileLineSt4hashIS1_ESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode8filelineEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178
  ret ptr %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8FileLineC2EPS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load <2 x i16>, ptr %1, align 8, !tbaa !276
  store <2 x i16> %i.a, ptr %0, align 8, !tbaa !276
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = load i32, ptr %i.b, align 4
  %i.g = and i32 %i.f, -2
  %i.h = or disjoint i32 %i.g, %i.e
  store i32 %i.h, ptr %i.b, align 4
  %i.i = load i32, ptr %i.c, align 4
  %i.j = and i32 %i.i, -2
  %i.k = or disjoint i32 %i.j, %i.e
  store i32 %i.k, ptr %i.b, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load <2 x i32>, ptr %i.m, align 8, !tbaa !32
  store <2 x i32> %i.n, ptr %i.l, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 16777215
  %i.s = load i64, ptr %i.o, align 8
  %i.t = and i64 %i.s, -16777216
  %i.u = or disjoint i64 %i.t, %i.r               ; 2 uses
  store i64 %i.u, ptr %i.o, align 8
  %2 = getelementptr i8, ptr %1, i64 20
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16777215
  %5 = zext nneg i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 32
  %i.v = and i64 %i.u, -72057589742960641
  %i.w = or disjoint i64 %6, %i.v
  store i64 %i.w, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i16, ptr %i.y, align 8, !tbaa !277
  store i16 %i.z, ptr %i.x, align 8, !tbaa !277
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !278
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !279 ; 2 uses
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !278
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = atomicrmw add ptr %i.ae, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user2uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !168
  %i.c = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !32
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb0EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !274
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !257    ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !90   ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !100 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !257
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !576

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !90
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !100  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !257
  %i.w = icmp eq ptr %i.c, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq ptr %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !577

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8, !tbaa !100 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !257 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !577

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !577

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 4 uses
  store ptr null, ptr %i.af, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !257
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !257
  %i.ai = invoke ptr @_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 16) #25
  resume { ptr, i32 } %i.aj

_ZNKSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ai, %.critedge ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !274
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #24 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !280
  invoke void @__cxa_rethrow() #28
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
  tail call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !90
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !275  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100
  store ptr %i.w, ptr %3, align 8, !tbaa !100
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !275
  store ptr %3, ptr %i.x, align 8, !tbaa !100
  br label %_ZNSt10_HashtableIP8FileLineS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb0EEE.exit
end_hunk_0
