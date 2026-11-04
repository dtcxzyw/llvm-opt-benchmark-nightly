Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmPkgConfigResolver?download=true
inline.NumInlined: 1589
inline.NumDeleted: 492
begin_hunk_0_@_ZN19cmPkgConfigResolver13ResolveStrictERKSt6vectorI16cmPkgConfigEntrySaIS1_EER14cmPkgConfigEnv:bb.a
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.aw

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !71, !range !69, !noundef !70
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %._crit_edge.i.i206, label %bb.f

._crit_edge.i.i206:                               ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ay, ptr %6, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ay, ptr noundef nonnull align 1 dereferenceable(15) @.str.22, i64 15, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 15, ptr %i.az, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 31
  store i8 0, ptr %i.ba, align 1, !tbaa !24
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit211 unwind label %bb.e

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit211: ; preds = %._crit_edge.i.i206
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit213 unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit213: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit211
  %i.bc = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ay
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit213
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit211, %._crit_edge.i.i206
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ay
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.e
  %i.bj = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.aw

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %2, ptr %i.bl, align 8, !tbaa !48
  %i.bm = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !88 ; 2 uses
  %.not454 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not454, label %.critedge187, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 10 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 22
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 22
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 30
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 30
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0397.0455, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.bo
  br i1 %.not, label %.critedge187, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.0130456 = phi i1 [ false, %.lr.ph ], [ %.3133, %bb.g ] ; 4 uses
  %.sroa.0397.0455 = phi ptr [ %i.bm, %.lr.ph ], [ %i.ch, %bb.g ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0397.0455, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ci, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0397.0455, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !26 ; 3 uses
  store ptr %i.bp, ptr %7, align 8, !tbaa !22
  %i.cj = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.ck = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.ck, %i.cj
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc220 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc220:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !25
  %i.cl = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.cl, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.j
  %i.cm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc221:                                        ; preds = %.noexc.i.i.i
  store ptr %i.cm, ptr %7, align 8, !tbaa !29
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.cn, ptr %i.bp, align 8, !tbaa !24
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc221, %bb.j
  %i.co = phi ptr [ %i.cm, %.noexc221 ], [ %i.bp, %bb.j ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cp = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !24
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !24
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  store i64 %i.cq, ptr %i.bq, align 8, !tbaa !23
  %i.cr = load ptr, ptr %7, align 8, !tbaa !29
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  store i8 0, ptr %i.cs, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ct = load i8, ptr %.sroa.0397.0455, align 8, !tbaa !95, !range !69, !noundef !70
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.cv = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit unwind label %bb.aa

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit: ; preds = %bb.n
  %.not423.a = icmp eq ptr %i.cv, null
  br i1 %.not423.a, label %bb.o, label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i, %bb.i
  %lpad.loopexit.split-lp561 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

bb.o:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZN19cmPkgConfigResolver20HandleVariableStrictERK16cmPkgConfigEntryRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.20") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0397.0455, ptr noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = load i8, ptr %i.cb, align 8, !tbaa !71, !range !69, !noundef !70
  %i.cx = trunc nuw i8 %i.cw to i1                ; 2 uses
  br i1 %i.cx, label %bb.r, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit228

bb.r:                                             ; preds = %bb.p
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit unwind label %bb.t

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit: ; preds = %bb.r
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit225 unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit225: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit
  %.pre461 = load i8, ptr %i.cb, align 8, !tbaa !71, !range !69
  %i.da = trunc nuw i8 %.pre461 to i1
  store i8 0, ptr %i.cb, align 8, !tbaa !71
  br i1 %i.da, label %bb.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit225
  %i.db = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cc
  br i1 %i.dc, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.dd = load i64, ptr %i.cc, align 8, !tbaa !24
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.s, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.1131556 = phi i1 [ %.0130456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.0130456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit225 ], [ true, %bb.p ], [ %.0130456, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.al

bb.t:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit, %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dg = load i8, ptr %i.cb, align 8, !tbaa !71, !range !69, !noundef !70
  %i.dh = trunc nuw i8 %i.dg to i1
  store i8 0, ptr %i.cb, align 8, !tbaa !71
  br i1 %i.dh, label %bb.u, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit228

bb.u:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cc
  br i1 %i.dj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i226: ; preds = %bb.u
  %i.dk = load i64, ptr %i.cc, align 8, !tbaa !24
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit228

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit228: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i226, %bb.t, %bb.q
  %.pn151 = phi { ptr, i32 } [ %i.cy, %bb.q ], [ %i.df, %bb.t ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i226 ], [ %i.df, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.am

bb.v:                                             ; preds = %bb.m
  %i.dm = load i64, ptr %i.bq, align 8, !tbaa !23 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 6
  br i1 %i.dn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge167.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.v
  %i.do = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = xor i32 %i.dp, 1634494019
  %i.dr = getelementptr i8, ptr %i.do, i64 4
  %i.ds = load i16, ptr %i.dr, align 1
  %i.dt = zext i16 %i.ds to i32
  %i.du = xor i32 %i.dt, 29543
  %i.dv = or i32 %i.dq, %i.du
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.br, ptr %9, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.br, ptr noundef nonnull align 1 dereferenceable(6) @.str.14, i64 6, i1 false)
  store i64 6, ptr %i.bs, align 8, !tbaa !23
  store i8 0, ptr %i.cd, align 2, !tbaa !24
  %i.dz = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.critedge unwind label %bb.w

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.not418 = icmp eq ptr %i.dz, null
  %i.ea = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.br
  br i1 %i.eb, label %.critedge163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %.critedge
  %i.ec = load i64, ptr %i.br, align 8, !tbaa !24
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #21
  br label %.critedge163

.critedge163:                                     ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br i1 %.not418, label %.critedge163.thread, label %bb.al

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.br
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.w
  %i.eh = load i64, ptr %i.br, align 8, !tbaa !24
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.am

.critedge163.thread:                              ; preds = %.critedge163
  %.pr.pre = load i64, ptr %i.bq, align 8, !tbaa !23 ; 2 uses
  %i.ej = icmp eq i64 %.pr.pre, 6
  br i1 %i.ej, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242, label %.critedge167.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.critedge163.thread
  %i.ek = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.el = load i32, ptr %i.ek, align 1
  %i.em = xor i32 %i.el, 1634485827
  %i.en = getelementptr i8, ptr %i.ek, i64 4
  %i.eo = load i16, ptr %i.en, align 1
  %i.ep = zext i16 %i.eo to i32
  %i.eq = xor i32 %i.ep, 29543
  %i.er = or i32 %i.em, %i.eq
  %i.es = icmp ne i32 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242.thread, label %.critedge175.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr %i.bt, ptr %10, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bt, ptr noundef nonnull align 1 dereferenceable(6) @.str.12, i64 6, i1 false)
  store i64 6, ptr %i.bu, align 8, !tbaa !23
  store i8 0, ptr %i.ce, align 2, !tbaa !24
  %i.ev = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.critedge165 unwind label %bb.x

.critedge165:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242.thread
  %.not419 = icmp eq ptr %i.ev, null
  %i.ew = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.bt
  br i1 %i.ex, label %.critedge167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %.critedge165
  %i.ey = load i64, ptr %i.bt, align 8, !tbaa !24
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #21
  br label %.critedge167

.critedge167:                                     ; preds = %.critedge165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br i1 %.not419, label %.critedge167..critedge167.thread_crit_edge, label %bb.al

.critedge167..critedge167.thread_crit_edge:       ; preds = %.critedge167
  %.pre = load i64, ptr %i.bq, align 8, !tbaa !23
  br label %.critedge167.thread

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242.thread
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.bt
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.x
  %i.fd = load i64, ptr %i.bt, align 8, !tbaa !24
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.am

.critedge167.thread:                              ; preds = %bb.v, %.critedge167..critedge167.thread_crit_edge, %.critedge163.thread
  %i.ff = phi i64 [ %.pre, %.critedge167..critedge167.thread_crit_edge ], [ %.pr.pre, %.critedge163.thread ], [ %i.dm, %bb.v ]
  %i.fg = icmp eq i64 %i.ff, 14
  br i1 %i.fg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256, label %.critedge175.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256: ; preds = %.critedge167.thread
  %i.fh = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 1
  %i.fj = xor i64 %i.fi, 8083525269029938755
  %i.fk = getelementptr i8, ptr %i.fh, i64 6
  %i.fl = load i64, ptr %i.fk, align 1
  %i.fm = xor i64 %i.fl, 7310575256332300334
  %i.fn = or i64 %i.fj, %i.fm
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %i.bv, ptr %11, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bv, ptr noundef nonnull align 1 dereferenceable(14) @.str.13, i64 14, i1 false)
  store i64 14, ptr %i.bw, align 8, !tbaa !23
  store i8 0, ptr %i.cf, align 2, !tbaa !24
  %i.fr = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.critedge169 unwind label %bb.y

.critedge169:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread
  %.not420 = icmp eq ptr %i.fr, null
  %i.fs = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.bv
  br i1 %i.ft, label %.critedge171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %.critedge169
  %i.fu = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #21
  br label %.critedge171

.critedge171:                                     ; preds = %.critedge169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br i1 %.not420, label %.critedge171.thread, label %bb.al

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread
  %i.fw = landingpad { ptr, i32 }
          cleanup
  %i.fx = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.bv
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.y
  %i.fz = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.am
end_hunk_0
begin_hunk_1_@_ZN19cmPkgConfigResolver13ResolveStrictERKSt6vectorI16cmPkgConfigEntrySaIS1_EER14cmPkgConfigEnv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %.critedge181
  %i.jh = load i64, ptr %i.iq, align 8, !tbaa !24
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %.critedge181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.critedge183

.critedge183:                                     ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.jj = phi i1 [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ true, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit304 ]
  %i.jk = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.il
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %.critedge183
  %i.jm = load i64, ptr %i.il, align 8, !tbaa !24
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %.critedge183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br i1 %i.jj, label %.critedge185, label %bb.as

bb.an:                                            ; preds = %.critedge187
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %._crit_edge.i.i305
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i311
  %i.jq = landingpad { ptr, i32 }
          cleanup
  %i.jr = load ptr, ptr %16, align 8, !tbaa !29   ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.iv
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.ap
  %i.jt = load i64, ptr %i.iv, align 8, !tbaa !24
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %.pn155.pn = phi { ptr, i32 } [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ %i.jp, %bb.ao ]
  %i.jv = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.iq
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.aq
  %i.jx = load i64, ptr %i.iq, align 8, !tbaa !24
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %bb.an
  %.pn155.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ], [ %i.jo, %bb.an ]
  %i.jz = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.il
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %bb.ar
  %i.kb = load i64, ptr %i.il, align 8, !tbaa !24
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.aw

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %i.kd = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNSt8optionalI17cmPkgConfigResultEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(120) %3) #19 ; 0 uses
  br label %.critedge185

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.ke = load ptr, ptr %i.k, align 8, !tbaa !96  ; 2 uses
  %.not5.i.i.i335 = icmp eq ptr %i.ke, null
  br i1 %.not5.i.i.i335, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i343, label %.lr.ph.i.i.i336

.lr.ph.i.i.i336:                                  ; preds = %bb.at, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i341
  %.06.i.i.i337 = phi ptr [ %i.kf, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i341 ], [ %i.ke, %bb.at ] ; 6 uses
  %i.kf = load ptr, ptr %.06.i.i.i337, align 8, !tbaa !97 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.06.i.i.i337, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.06.i.i.i337, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !29 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.06.i.i.i337, i64 56 ; 2 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i338: ; preds = %.lr.ph.i.i.i336
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !24
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.km) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i339: ; preds = %.lr.ph.i.i.i336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i338
  %i.kn = load ptr, ptr %i.kg, align 8, !tbaa !29 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.06.i.i.i337, i64 24 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i340: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i339
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !24
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i341

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i340
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i337, i64 noundef 80) #21
  %.not.i.i.i342 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i342, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i343, label %.lr.ph.i.i.i336, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i343: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i341, %bb.at
  %i.ks = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.kt = load i64, ptr %i.j, align 8, !tbaa !85
  %i.ku = shl i64 %i.kt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ks, i8 0, i64 %i.ku, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.kv = load ptr, ptr %i.h, align 8, !tbaa !84  ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.i
  br i1 %i.kw, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit346, label %bb.au

bb.au:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i343
  %i.kx = load i64, ptr %i.j, align 8, !tbaa !85
  %i.ky = shl i64 %i.kx, 3
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #21
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit346

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit346: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i343, %bb.au
  %i.kz = load ptr, ptr %i.e, align 8, !tbaa !96  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit346, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.la, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.kz, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit346 ] ; 6 uses
  %i.la = load ptr, ptr %.06.i.i.i, align 8, !tbaa !97 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !29 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !24
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.li = load ptr, ptr %i.lb, align 8, !tbaa !29 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  br i1 %i.lk, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !24
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.lm) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #21
  %.not.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit346
  %i.ln = load ptr, ptr %3, align 8, !tbaa !84
  %i.lo = load i64, ptr %i.d, align 8, !tbaa !85
  %i.lp = shl i64 %i.lo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ln, i8 0, i64 %i.lp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.lq = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.c
  br i1 %i.lr, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.ls = load i64, ptr %i.d, align 8, !tbaa !85
  %i.lt = shl i64 %i.ls, 3
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #21
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %.3133, label %_ZNSt14_Optional_baseI17cmPkgConfigResultLb0ELb0EED2Ev.exit, label %17

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.pn155.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ %.pn151.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #19
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(120) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt14_Optional_baseI17cmPkgConfigResultLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #19
  resume { ptr, i32 } %.pn155.pn.pn.pn.pn.pn

17:                                               ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  %18 = load i8, ptr %i.b, align 8, !tbaa !83, !range !69, !noundef !70
  %19 = trunc nuw i8 %18 to i1
  store i8 0, ptr %i.b, align 8, !tbaa !83
  br i1 %19, label %bb.ax, label %_ZNSt14_Optional_baseI17cmPkgConfigResultLb0ELb0EED2Ev.exit

bb.ax:                                            ; preds = %17
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.lu) #19
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(128) %0) #19
  br label %_ZNSt14_Optional_baseI17cmPkgConfigResultLb0ELb0EED2Ev.exit

.critedge185:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %bb.as
  %i.lv = load ptr, ptr %i.k, align 8, !tbaa !96  ; 2 uses
  %.not5.i.i.i359 = icmp eq ptr %i.lv, null
  br i1 %.not5.i.i.i359, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i367, label %.lr.ph.i.i.i360

.lr.ph.i.i.i360:                                  ; preds = %.critedge185, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i365
  %.06.i.i.i361 = phi ptr [ %i.lw, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i365 ], [ %i.lv, %.critedge185 ] ; 6 uses
  %i.lw = load ptr, ptr %.06.i.i.i361, align 8, !tbaa !97 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.06.i.i.i361, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %.06.i.i.i361, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !29 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.06.i.i.i361, i64 56 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362: ; preds = %.lr.ph.i.i.i360
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !24
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i363: ; preds = %.lr.ph.i.i.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i362
  %i.me = load ptr, ptr %i.lx, align 8, !tbaa !29 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.06.i.i.i361, i64 24 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i364: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i363
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !24
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mi) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i365

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i365: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i364
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i361, i64 noundef 80) #21
  %.not.i.i.i366 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i366, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i367, label %.lr.ph.i.i.i360, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i367: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i365, %.critedge185
  %i.mj = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.mk = load i64, ptr %i.j, align 8, !tbaa !85
  %i.ml = shl i64 %i.mk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.mj, i8 0, i64 %i.ml, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.mm = load ptr, ptr %i.h, align 8, !tbaa !84  ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.i
  br i1 %i.mn, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit370, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i367
  %i.mo = load i64, ptr %i.j, align 8, !tbaa !85
  %i.mp = shl i64 %i.mo, 3
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #21
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit370

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit370: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i367, %bb.ay
  %i.mq = load ptr, ptr %i.e, align 8, !tbaa !96  ; 2 uses
  %.not5.i.i.i347 = icmp eq ptr %i.mq, null
  br i1 %.not5.i.i.i347, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i355, label %.lr.ph.i.i.i348

.lr.ph.i.i.i348:                                  ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit370, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i353
  %.06.i.i.i349 = phi ptr [ %i.mr, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i353 ], [ %i.mq, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit370 ] ; 6 uses
  %i.mr = load ptr, ptr %.06.i.i.i349, align 8, !tbaa !97 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.06.i.i.i349, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.06.i.i.i349, i64 40
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !29 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.06.i.i.i349, i64 56 ; 2 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i350: ; preds = %.lr.ph.i.i.i348
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !24
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.my) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i351: ; preds = %.lr.ph.i.i.i348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i350
  %i.mz = load ptr, ptr %i.ms, align 8, !tbaa !29 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.06.i.i.i349, i64 24 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i351
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !24
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i353

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i353: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i352
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i349, i64 noundef 80) #21
  %.not.i.i.i354 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i354, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i355, label %.lr.ph.i.i.i348, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i355: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i353, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit370
  %i.ne = load ptr, ptr %3, align 8, !tbaa !84
  %i.nf = load i64, ptr %i.d, align 8, !tbaa !85
  %i.ng = shl i64 %i.nf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ne, i8 0, i64 %i.ng, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.nh = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.c
  br i1 %i.ni, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit358, label %bb.az

bb.az:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i355
  %i.nj = load i64, ptr %i.d, align 8, !tbaa !85
  %i.nk = shl i64 %i.nj, 3
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #21
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit358

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit358: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i355, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNSt14_Optional_baseI17cmPkgConfigResultLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI17cmPkgConfigResultLb0ELb0EED2Ev.exit: ; preds = %bb.ax, %17, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit358, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19cmPkgConfigResolver20HandleVariableStrictERK16cmPkgConfigEntryRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.20") align 8 initializes((32, 33)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.d, align 8, !tbaa !23
  store i8 0, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %.not83 = icmp eq ptr %i.f, %i.h
  br i1 %.not83, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %.sroa.061.084 = phi ptr [ %i.f, %.lr.ph ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ] ; 6 uses
  %i.l = load i8, ptr %.sroa.061.084, align 8, !tbaa !100, !range !69, !noundef !70
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 8, !tbaa !25 ; 2 uses
  %i.o = load i64, ptr %i.d, align 8, !tbaa !23
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %.sroa.0.0.copyload.i.i
  br i1 %i.q, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %bb.c
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %.in = phi ptr [ %.sroa.4.0..sroa_idx.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ]
  %i.r = phi i64 [ %.sroa.0.0.copyload.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ]
  %i.s = load ptr, ptr %.in, align 8, !tbaa !26
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.s, i64 noundef %i.r)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %bb.b
  %.sroa.03.0.copyload = load i64, ptr %i.i, align 8, !tbaa !25 ; 3 uses
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.u, align 8, !tbaa !25 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26 ; 4 uses
  %i.v = icmp eq i64 %.sroa.03.0.copyload, %.sroa.0.0.copyload
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %.sroa.03.0.copyload, 0
  br i1 %i.w, label %bb.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.e
  %bcmp.i = call i32 @bcmp(ptr %.sroa.24.0.copyload, ptr %.sroa.2.0.copyload, i64 %.sroa.03.0.copyload)
  %i.x = icmp eq i32 %bcmp.i, 0
  br i1 %i.x, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.j, ptr %4, align 8, !tbaa !22
  %i.y = icmp eq ptr %.sroa.2.0.copyload, null
  %i.z = icmp ne i64 %.sroa.0.0.copyload, 0
  %or.cond.i.i.i = and i1 %i.z, %i.y
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc39 unwind label %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !25
  %i.aa = icmp ugt i64 %.sroa.0.0.copyload, 15
  br i1 %i.aa, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc40 unwind label %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc40:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ab, ptr %4, align 8, !tbaa !29
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !24
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc40, %bb.h
  %i.ad = phi ptr [ %i.ab, %.noexc40 ], [ %i.j, %bb.h ] ; 2 uses
  switch i64 %.sroa.0.0.copyload, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load i8, ptr %.sroa.2.0.copyload, align 1, !tbaa !24
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  store i64 %i.af, ptr %i.k, align 8, !tbaa !23
  %i.ag = load ptr, ptr %4, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ai = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit unwind label %bb.m ; 3 uses

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit: ; preds = %bb.k
  %i.aj = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.j
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit
  %i.al = load i64, ptr %i.j, align 8, !tbaa !24
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not67 = icmp eq ptr %i.ai, null
  br i1 %.not67, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !23
  %i.aq = sub i64 4611686018427387903, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.invoke:                                          ; preds = %bb.l, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke

.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i, %bb.g
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.m:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.j
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.m
  %i.aw = load i64, ptr %i.j, align 8, !tbaa !24
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.m, %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %.pn = phi { ptr, i32 } [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp72.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.at, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.h
  br i1 %.not, label %.critedge37, label %bb.b

.critedge37:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %.pre = load i64, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.az = icmp eq i64 %.pre, 0
  br i1 %i.az, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.critedge37
  %i.ba = load ptr, ptr %3, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.pre
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.pn.i = phi ptr [ %i.bb, %bb.n ], [ %.sroa.010.0.i, %bb.p ] ; 2 uses
  %.sroa.010.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -1 ; 3 uses
  %i.bc = load i8, ptr %.sroa.010.0.i, align 1, !tbaa !24
  %i.bd = invoke i32 @cmsysString_isspace(i8 noundef signext %i.bc)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.o
  %.not.i = icmp eq i32 %i.bd, 0
  %i.be = load ptr, ptr %3, align 8, !tbaa !29    ; 4 uses
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %bb.p

bb.p:                                             ; preds = %.noexc47
  %i.bf = icmp eq ptr %.sroa.010.0.i, %i.be
  br i1 %i.bf, label %bb.q, label %bb.o, !llvm.loop !3

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %i.d, align 8, !tbaa !23
  store i8 0, ptr %i.be, align 1, !tbaa !24
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i: ; preds = %.noexc47
  %i.bg = ptrtoint ptr %.pn.i to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  store i64 %i.bi, ptr %i.d, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi
  store i8 0, ptr %i.bj, align 1, !tbaa !24
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, %bb.q, %.critedge37
  %i.bk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #19 ; 0 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.c
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke, %.invoke
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.bn = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.c
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn34 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bp = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.c
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.br = load i64, ptr %i.c, align 8, !tbaa !24
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #19
  resume { ptr, i32 } %.pn34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split: ; preds = %bb.r, %.critedge
  %.sink = phi ptr [ %i.bl, %.critedge ], [ %i.bn, %bb.r ]
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split, %bb.r, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !71
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !24
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19cmPkgConfigResolver13HandleKeywordERK16cmPkgConfigEntryRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !23
  store i8 0, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %.not55 = icmp eq ptr %i.e, %i.g
  br i1 %.not55, label %_ZN12_GLOBAL__N_18TrimBackERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %.pre = load i64, ptr %i.c, align 8, !tbaa !23  ; 2 uses
  %i.j = icmp eq i64 %.pre, 0
  br i1 %i.j, label %_ZN12_GLOBAL__N_18TrimBackERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.pre
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn.i = phi ptr [ %i.l, %bb.b ], [ %.sroa.010.0.i, %bb.d ] ; 2 uses
  %.sroa.010.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -1 ; 3 uses
  %i.m = load i8, ptr %.sroa.010.0.i, align 1, !tbaa !24
  %i.n = invoke i32 @cmsysString_isspace(i8 noundef signext %i.m)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.p = icmp eq ptr %.sroa.010.0.i, %i.o
  br i1 %i.p, label %bb.e, label %bb.c, !llvm.loop !3

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.c, align 8, !tbaa !23
  store i8 0, ptr %i.o, align 1, !tbaa !24
  br label %_ZN12_GLOBAL__N_18TrimBackERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i: ; preds = %.noexc
  %i.q = ptrtoint ptr %.pn.i to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !24
  br label %_ZN12_GLOBAL__N_18TrimBackERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %.sroa.036.056 = phi ptr [ %i.e, %.lr.ph ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ] ; 6 uses
  %i.u = load i8, ptr %.sroa.036.056, align 8, !tbaa !100, !range !69, !noundef !70
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.036.056, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.w, align 8, !tbaa !25 ; 2 uses
  %i.x = load i64, ptr %i.c, align 8, !tbaa !23
  %i.y = sub i64 4611686018427387903, %i.x
  %i.z = icmp ult i64 %i.y, %.sroa.0.0.copyload.i.i
  br i1 %i.z, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.036.056, i64 16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %.in = phi ptr [ %.sroa.4.0..sroa_idx.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ]
  %i.aa = phi i64 [ %.sroa.0.0.copyload.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ]
  %i.ab = load ptr, ptr %.in, align 8, !tbaa !26
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ab, i64 noundef %i.aa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.036.056, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.036.056, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !26 ; 3 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !22
  %i.ae = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.af = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.26) #20
          to label %.noexc21 unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !25
  %i.ag = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ag, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.j
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc22:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !29
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !24
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc22, %bb.j
  %i.aj = phi ptr [ %i.ah, %.noexc22 ], [ %i.h, %bb.j ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !24
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !24
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  store i64 %i.al, ptr %i.i, align 8, !tbaa !23
  %i.am = load ptr, ptr %3, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ao = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit unwind label %bb.o ; 3 uses

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit: ; preds = %bb.m
  %i.ap = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !24
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not39 = icmp eq ptr %i.ao, null
  br i1 %.not39, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !23 ; 2 uses
  %i.av = load i64, ptr %i.c, align 8, !tbaa !23
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.au
  br i1 %i.ax, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.invoke:                                          ; preds = %bb.n, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke

.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i, %bb.i
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN19cmPkgConfigResolver13HandleKeywordERK16cmPkgConfigEntryRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.o
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !24
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.o, %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %.pn = phi { ptr, i32 } [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %lpad.loopexit.split-lp91, %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.az, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.036.056, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.g
  br i1 %.not, label %._crit_edge, label %bb.f

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.invoke, %.invoke
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

_ZN12_GLOBAL__N_18TrimBackERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, %bb.e, %._crit_edge
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.b
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !24
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  resume { ptr, i32 } %.pn15.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(128) ptr @_ZNSt8optionalI17cmPkgConfigResultEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !83, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #23
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_ZN17cmPkgConfigResultaSEOS_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZN17cmPkgConfigResultaSEOS_.exit:                ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.l, align 8, !tbaa !48
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !84     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !85   ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96   ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !101
  store i64 %i.v, ptr %i.t, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !103
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr null, ptr %i.y, align 8, !tbaa !104
  %i.z = load ptr, ptr %1, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %0, align 8, !tbaa !84
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !104
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !104
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = phi ptr [ %i.y, %bb.f ], [ %i.m, %bb.e ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !106
  %i.ag = urem i64 %i.af, %i.p
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag
  store ptr %i.q, ptr %i.ah, align 8, !tbaa !107
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i.i.i.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ai, align 8, !tbaa !108
  store i64 1, ptr %i.o, align 8, !tbaa !85
  store ptr null, ptr %i.aa, align 8, !tbaa !104
  store ptr %i.aa, ptr %1, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !84 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !85 ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !96 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !97
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = load i64, ptr %i.at, align 8, !tbaa !101
  store i64 %i.au, ptr %i.as, align 8, !tbaa !101
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !103
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !104
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !84
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i.i.i.i
  store ptr %i.ax, ptr %i.aj, align 8, !tbaa !84
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !104
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !104
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i.i.i.i
  %i.bc = phi ptr [ %i.ax, %bb.i ], [ %i.al, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2EOSE_.exit.i.i.i.i ]
  %.not.i.i.i.i4.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i4.i.i.i.i, label %_ZNSt19_Optional_base_implI17cmPkgConfigResultSt14_Optional_baseIS0_Lb0ELb0EEE12_M_constructIJS0_EEEvDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !106
  %i.bf = urem i64 %i.be, %i.ao
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  store ptr %i.ap, ptr %i.bg, align 8, !tbaa !107
  br label %_ZNSt19_Optional_base_implI17cmPkgConfigResultSt14_Optional_baseIS0_Lb0ELb0EEE12_M_constructIJS0_EEEvDpOT_.exit

_ZNSt19_Optional_base_implI17cmPkgConfigResultSt14_Optional_baseIS0_Lb0ELb0EEE12_M_constructIJS0_EEEvDpOT_.exit: ; preds = %bb.j, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 0, ptr %i.bh, align 8, !tbaa !108
  store i64 1, ptr %i.an, align 8, !tbaa !85
  store ptr null, ptr %i.az, align 8, !tbaa !104
  store ptr %i.az, ptr %i.ak, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !48
  store i8 1, ptr %i.a, align 8, !tbaa !83
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt19_Optional_base_implI17cmPkgConfigResultSt14_Optional_baseIS0_Lb0ELb0EEE12_M_constructIJS0_EEEvDpOT_.exit, %_ZN17cmPkgConfigResultaSEOS_.exit
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseI17cmPkgConfigResultLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !83, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !83
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadI17cmPkgConfigResultLb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #19
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(121) %0) #19
  br label %_ZNSt17_Optional_payloadI17cmPkgConfigResultLb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadI17cmPkgConfigResultLb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19cmPkgConfigResolver17ResolvePermissiveERKSt6vectorI16cmPkgConfigEntrySaIS1_EER14cmPkgConfigEnv(ptr dead_on_unwind noalias writable sret(%"class.std::optional.36") align 8 initializes((120, 121)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(236) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.cmPkgConfigResult, align 8   ; 19 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.a, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN19cmPkgConfigResolver17ResolveBestEffortERKSt6vectorI16cmPkgConfigEntrySaIS1_EER14cmPkgConfigEnv(ptr dead_on_unwind nonnull writable sret(%class.cmPkgConfigResult) align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(236) %2)
          to label %._crit_edge.i.i unwind label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !22
  store i32 1701667150, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !24
  %i.e = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit unwind label %bb.c

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit: ; preds = %._crit_edge.i.i
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge52, label %._crit_edge.i.i54

._crit_edge.i.i54:                                ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.g, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 11, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 27
  store i8 0, ptr %i.i, align 1, !tbaa !24
  %i.j = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit59 unwind label %bb.d

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit59: ; preds = %._crit_edge.i.i54
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge50, label %._crit_edge.i.i60

._crit_edge.i.i60:                                ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.l, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, i64 7, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.m, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 23
  store i8 0, ptr %i.n, align 1, !tbaa !24
  %i.o = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %._crit_edge.i.i60
  %i.p = icmp eq ptr %i.o, null
  %i.q = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.l
  br i1 %i.r, label %.critedge48.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.s = load i64, ptr %i.l, align 8, !tbaa !24
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #21
  br label %.critedge48.thread

.critedge48.thread:                               ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.critedge50

.critedge50:                                      ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit59, %.critedge48.thread
  %i.u = phi i1 [ %i.p, %.critedge48.thread ], [ true, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit59 ]
  %i.v = load ptr, ptr %5, align 8, !tbaa !29     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %.critedge50
  %i.x = load i64, ptr %i.g, align 8, !tbaa !24
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %.critedge50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.critedge52

.critedge52:                                      ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.z = phi i1 [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ true, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE4findERSB_.exit ]
  %i.aa = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %.critedge52
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %.critedge52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.z, label %bb.i, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge.i.i54
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i60
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.l
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.e
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !24
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.ag, %bb.d ]
  %i.am = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.f
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !24
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %i.af, %bb.c ]
  %i.aq = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.b
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.g
  %i.as = load i64, ptr %i.b, align 8, !tbaa !24
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.au) #19
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(120) %3) #19
  br label %bb.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.av = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNSt8optionalI17cmPkgConfigResultEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(120) %3) #19 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !96 ; 2 uses
  %.not5.i.i.i81 = icmp eq ptr %i.ay, null
  br i1 %.not5.i.i.i81, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i89, label %.lr.ph.i.i.i82

.lr.ph.i.i.i82:                                   ; preds = %bb.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i87
  %.06.i.i.i83 = phi ptr [ %i.az, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i87 ], [ %i.ay, %bb.i ] ; 6 uses
  %i.az = load ptr, ptr %.06.i.i.i83, align 8, !tbaa !97 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i83, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i83, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i83, i64 56 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
end_hunk_2
