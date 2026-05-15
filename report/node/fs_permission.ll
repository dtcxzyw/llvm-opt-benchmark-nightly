inline.NumInlined: 1970
inline.NumDeleted: 749
begin_hunk_0_@_ZNK4node10permission12FSPermission9RadixTree4Node8NextNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.am, %i.at
  br i1 %i.au, label %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45, label %.lr.ph.i.i.i.i37

bb.l:                                             ; preds = %bb.m
  %i.av = icmp eq i8 %i.am, %i.ay
  br i1 %i.av, label %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45, label %.lr.ph.i.i.i.i37, !llvm.loop !49

.lr.ph.i.i.i.i37:                                 ; preds = %bb.k, %bb.l
  %.020.i.i.i.i38 = phi ptr [ %i.aw, %bb.l ], [ %i.ar, %bb.k ]
  %i.aw = load ptr, ptr %.020.i.i.i.i38, align 8  ; 4 uses
  %.not18.i.i.i.i39 = icmp eq ptr %i.aw, null
  br i1 %.not18.i.i.i.i39, label %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  %i.az = sext i8 %i.ay to i64
  %i.ba = urem i64 %i.az, %i.aj
  %.not19.i.i.i.i40 = icmp eq i64 %i.ba, %i.ao
  br i1 %.not19.i.i.i.i40, label %bb.l, label %..loopexit_crit_edge21.i.i.i.i41, !llvm.loop !49

..loopexit_crit_edge21.i.i.i.i41:                 ; preds = %bb.m
  br label %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45.thread, !llvm.loop !49

_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45: ; preds = %bb.i, %bb.l, %bb.k
  %i.bb = phi ptr [ %i.al, %bb.k ], [ %i.al, %bb.l ], [ %i.aa, %bb.i ]
  %.sroa.06.1.i.i42 = phi ptr [ %i.ar, %bb.k ], [ %i.aw, %bb.l ], [ %.sroa.06.0.i.i44, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i42, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %.fr = freeze i64 %i.bf                         ; 2 uses
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %.fr)
  %or.cond5766.not = icmp eq i64 %.fr, 0
  br i1 %or.cond5766.not, label %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45
  %i.bg = load ptr, ptr %i.bd, align 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.q
  %.068 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %bb.q ] ; 2 uses
  %.02667 = phi i64 [ %2, %.lr.ph ], [ %.127, %bb.q ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.068
  %i.bi = load i8, ptr %i.bh, align 1             ; 3 uses
  %i.bj = icmp eq i8 %i.bi, 42
  br i1 %i.bj, label %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not32 = icmp uge i64 %.02667, %i.b
  %i.bk = icmp eq i8 %i.bi, 47
  %or.cond = and i1 %.not32, %i.bk
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = add i64 %.02667, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.02667
  %i.bn = load i8, ptr %i.bm, align 1
  %.not33 = icmp eq i8 %i.bn, %i.bi
  br i1 %.not33, label %bb.q, label %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45.thread

bb.q:                                             ; preds = %bb.o, %bb.p
  %.127 = phi i64 [ %.02667, %bb.o ], [ %i.bl, %bb.p ]
  %i.bo = add nuw i64 %.068, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %invariant.umin
  br i1 %exitcond.not, label %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45.thread, label %bb.n, !llvm.loop !51

_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45.thread: ; preds = %bb.h, %.lr.ph.i.i.i.i37, %bb.p, %bb.n, %bb.q, %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45, %bb.j, %..loopexit_crit_edge21.i.i.i.i41, %.loopexit, %bb.a
  %.5 = phi ptr [ %i.z, %.loopexit ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i37 ], [ null, %..loopexit_crit_edge21.i.i.i.i41 ], [ %i.bd, %_ZNKSt13unordered_mapIcPN4node10permission12FSPermission9RadixTree4NodeESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit45 ], [ null, %bb.j ], [ %i.bd, %bb.q ], [ null, %bb.p ], [ %i.bd, %bb.n ], [ null, %bb.h ]
  ret ptr %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4node10permission12FSPermission9RadixTree4Node11CreateChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !26, !noundef !41
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8
  br label %bb.az

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node10permission12FSPermission9RadixTree4Node11CreateChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20error_and_abort_args) #22
  tail call void @abort() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.h = load ptr, ptr %1, align 8
  %i.i = load i8, ptr %i.h, align 1
  store i8 %i.i, ptr %i.a, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIcSt4pairIKcPN4node10permission12FSPermission9RadixTree4NodeEESaIS9_ENS_10_Select1stESt8equal_toIcESt4hashIcENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.l = load ptr, ptr %i.k, align 8              ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.n = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = load i64, ptr %i.b, align 8              ; 8 uses
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.s = icmp slt i64 %i.q, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.j:                                             ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.i
  %i.v = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 2 uses
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.q, ptr %i.o, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.f
  %i.w = phi ptr [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.o, %bb.f ] ; 3 uses
  switch i64 %i.q, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.p, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.k, %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.q, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.af, i8 0, i64 25, i1 false)
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIcSt4pairIKcPN4node10permission12FSPermission9RadixTree4NodeEESaIS9_ENS_10_Select1stESt8equal_toIcESt4hashIcENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  store ptr %i.n, ptr %i.ag, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIcSt4pairIKcPN4node10permission12FSPermission9RadixTree4NodeEESaIS9_ENS_10_Select1stESt8equal_toIcESt4hashIcENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %bb.ay

bb.m:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 6 uses
  %.not64 = icmp eq i64 %i.al, 0
  br i1 %.not64, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i8 1, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.an = load i64, ptr %i.b, align 8, !noalias !52
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i53

.lr.ph:                                           ; preds = %bb.m
  %i.ao = load ptr, ptr %1, align 8
  %i.ap = add nuw i64 %i.aj, 1
  %.pre.pre = load ptr, ptr %i.l, align 8, !noalias !55 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.aq
  %.03163 = phi i64 [ 0, %.lr.ph ], [ %i.dt, %bb.aq ] ; 5 uses
  %i.aq = icmp ugt i64 %.03163, %i.aj
  br i1 %i.aq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.03163
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.03163
  %i.au = load i8, ptr %i.at, align 1
  %.not = icmp eq i8 %i.as, %i.au
  br i1 %.not, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.03163.lcssa = phi i64 [ %.03163, %bb.o ], [ %i.ap, %bb.n ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.av, ptr %2, align 8, !alias.scope !55
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.03163.lcssa, i64 %i.al) ; 8 uses
  %i.aw = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.aw, label %bb.q, label %._crit_edge.i.i.i33

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ay = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i34, !prof !5

bb.t:                                             ; preds = %bb.s
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i34: ; preds = %bb.s
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #24 ; 2 uses
  store ptr %i.ba, ptr %2, align 8, !alias.scope !55
  store i64 %spec.select.i.i.i, ptr %i.av, align 8, !alias.scope !55
  br label %._crit_edge.i.i.i33

._crit_edge.i.i.i33:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i34, %bb.p
  %i.bb = phi ptr [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i34 ], [ %i.av, %bb.p ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i33
  %i.bc = load i8, ptr %.pre.pre, align 1
  store i8 %i.bc, ptr %i.bb, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.v:                                             ; preds = %._crit_edge.i.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr align 1 %.pre.pre, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i33, %bb.u, %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %spec.select.i.i.i, ptr %i.bd, align 8, !alias.scope !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %spec.select.i.i.i
  store i8 0, ptr %i.be, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.bf = load i64, ptr %i.ak, align 8, !noalias !58 ; 3 uses
  %i.bg = icmp ugt i64 %.03163.lcssa, %i.bf
  br i1 %i.bg, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.45, i64 noundef %.03163.lcssa, i64 noundef %i.bf) #23, !noalias !58
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.bh, ptr %3, align 8, !alias.scope !58
  %i.bi = load ptr, ptr %i.l, align 8, !noalias !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.03163.lcssa ; 2 uses
  %i.bk = sub nuw i64 %i.bf, %.03163.lcssa        ; 8 uses
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %bb.x, label %._crit_edge.i.i.i36

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bm = icmp slt i64 %i.bk, 0
  br i1 %i.bm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bn = add nuw i64 %i.bk, 1                    ; 2 uses
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i37, !prof !5

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i37: ; preds = %bb.z
  %i.bp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #24 ; 2 uses
  store ptr %i.bp, ptr %3, align 8, !alias.scope !58
  store i64 %i.bk, ptr %i.bh, align 8, !alias.scope !58
  br label %._crit_edge.i.i.i36

._crit_edge.i.i.i36:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bq = phi ptr [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i37 ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.bk, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit38
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i36
  %i.br = load i8, ptr %i.bj, align 1
  store i8 %i.br, ptr %i.bq, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit38

bb.ac:                                            ; preds = %._crit_edge.i.i.i36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bj, i64 %i.bk, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit38: ; preds = %._crit_edge.i.i.i36, %bb.ab, %bb.ac
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bk, ptr %i.bs, align 8, !alias.scope !58
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk
  store i8 0, ptr %i.bt, align 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bu = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  store ptr %i.bv, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %2, align 8               ; 2 uses
  %i.bx = load i64, ptr %i.bd, align 8            ; 8 uses
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %bb.ad, label %._crit_edge.i.i.i39

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit38
  %i.bz = icmp slt i64 %i.bx, 0
  br i1 %i.bz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ca = add nuw i64 %i.bx, 1                    ; 2 uses
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i40, !prof !5

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i40: ; preds = %bb.af
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24 ; 2 uses
  store ptr %i.cc, ptr %i.bu, align 8
  store i64 %i.bx, ptr %i.bv, align 8
  br label %._crit_edge.i.i.i39

._crit_edge.i.i.i39:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit38
  %i.cd = phi ptr [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i40 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit38 ] ; 3 uses
  switch i64 %i.bx, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit41
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i39
  %i.ce = load i8, ptr %i.bw, align 1
  store i8 %i.ce, ptr %i.cd, align 1
  br label %_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit41

bb.ai:                                            ; preds = %._crit_edge.i.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %i.bw, i64 %i.bx, i1 false)
  br label %_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit41

_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit41: ; preds = %._crit_edge.i.i.i39, %bb.ah, %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.bx, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx
  store i8 0, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  store ptr %i.ci, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i64 1, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cm, i8 0, i64 25, i1 false)
  %i.cn = load ptr, ptr %3, align 8
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIcSt4pairIKcPN4node10permission12FSPermission9RadixTree4NodeEESaIS9_ENS_10_Select1stESt8equal_toIcESt4hashIcENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef nonnull align 1 dereferenceable(1) %i.cn)
  store ptr %i.l, ptr %i.co, align 8
  %i.cp = load ptr, ptr %2, align 8
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIcSt4pairIKcPN4node10permission12FSPermission9RadixTree4NodeEESaIS9_ENS_10_Select1stESt8equal_toIcESt4hashIcENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.cp)
  store ptr %i.bu, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.cr = load i64, ptr %i.b, align 8, !noalias !61 ; 3 uses
  %i.cs = icmp ugt i64 %.03163.lcssa, %i.cr
  br i1 %i.cs, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i42

bb.aj:                                            ; preds = %_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit41
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.45, i64 noundef %.03163.lcssa, i64 noundef %i.cr) #23, !noalias !61
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i42: ; preds = %_ZN4node10permission12FSPermission9RadixTree4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit41
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ct, ptr %4, align 8, !alias.scope !61
  %i.cu = load ptr, ptr %1, align 8, !noalias !61
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.03163.lcssa ; 2 uses
  %i.cw = sub nuw i64 %i.cr, %.03163.lcssa        ; 8 uses
  %i.cx = icmp ugt i64 %i.cw, 15
end_hunk_0
