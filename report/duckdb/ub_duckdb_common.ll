inline.NumInlined: 29988
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 385
loop-unroll.NumUnrolled: 431
begin_hunk_0_@_ZN6duckdb6vectorImLb1ESaImEEixEm:bb.a
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIbmEN6duckdb33CaseInsensitiveStringHashFunctionENS8_29CaseInsensitiveStringEqualityESaIS6_IKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IbmEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IbmEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IbmEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #60
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IbmEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IbmEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #60
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !162

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_IbmEELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !148
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !146    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.l) #60
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IbmEESaIS9_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSD_33CaseInsensitiveStringHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19ParseColumnsOrderedERKNS_5ValueERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEERKS9_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.39") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.39", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.c = load i8, ptr %1, align 8, !tbaa !131
  switch i8 %i.c, label %.critedge.thread [
    i8 101, label %bb.p
    i8 25, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  invoke void @_ZNK6duckdb5Value8GetValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !139  ; 2 uses
  %i.f = icmp eq i64 %i.e, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !16    ; 3 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %lhsc = load i8, ptr %.pre, align 1
  %i.g = icmp eq i8 %lhsc, 42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.ph = phi i1 [ false, %bb.c ], [ %i.g, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = icmp eq ptr %.pre, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  %i.j = icmp ult i64 %i.e, 16
  call void @llvm.assume(i1 %i.j)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %.pre) #60
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br i1 %.ph, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.m = load ptr, ptr %2, align 8, !tbaa !112
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 0, ptr %i.a, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !150  ; 5 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !152    ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 3 uses
  %i.y = icmp ugt i64 %i.q, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = sub nuw nsw i64 %i.q, %i.x
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.s, i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZNSt6vectorImSaImEE6resizeEmRKm.exit_crit_edge unwind label %bb.k

._ZNSt6vectorImSaImEE6resizeEmRKm.exit_crit_edge: ; preds = %bb.g
  %.pre67 = load ptr, ptr %4, align 8, !tbaa !163
  %.pre68 = load ptr, ptr %i.r, align 8, !tbaa !163
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp ult i64 %i.q, %i.x
  br i1 %i.aa, label %bb.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.ab
  %spec.select = select i1 %.not.i.i, ptr %i.s, ptr %i.ab
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.i, %._ZNSt6vectorImSaImEE6resizeEmRKm.exit_crit_edge, %bb.h
  %i.ac = phi ptr [ %.pre68, %._ZNSt6vectorImSaImEE6resizeEmRKm.exit_crit_edge ], [ %i.s, %bb.h ], [ %spec.select, %bb.i ] ; 4 uses
  %i.ad = phi ptr [ %.pre67, %._ZNSt6vectorImSaImEE6resizeEmRKm.exit_crit_edge ], [ %i.t, %bb.h ], [ %i.t, %bb.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.not5.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not5.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %9 = add i64 %i.af, -8
  %10 = sub i64 %9, %i.ae                         ; 2 uses
  %i.ag = lshr i64 %10, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 4 uses
  %i.ai = shl i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ak = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !33
  store <2 x i64> %step.add, ptr %i.al, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader110

.lr.ph.i.preheader110:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.ad, %.lr.ph.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader110, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader110 ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader110 ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.06.i, align 8, !tbaa !33
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.an, %i.ac
  br i1 %.not.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !167

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  store ptr %i.ad, ptr %0, align 8, !tbaa !152
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ao, align 8, !tbaa !150
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !168
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !168
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.j:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.ah

bb.k:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.ah

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  %i.au = call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread

bb.l:                                             ; preds = %.critedge.thread
  invoke void @_ZN6duckdb15BinderExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.aj unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread: ; preds = %.critedge.thread
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.030 = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ax = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ax) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br i1 %.030, label %bb.o, label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br i1 %.030, label %bb.o, label %bb.ah

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn3464 = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ]
  call void @__cxa_free_exception(ptr %i.au) #58
  br label %bb.ah

bb.p:                                             ; preds = %bb.a
  %i.ba = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ListValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.q unwind label %bb.ac      ; 5 uses

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !89
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp eq i64 %i.bg, 64
  br i1 %i.bh, label %bb.r, label %.critedge39.thread

bb.r:                                             ; preds = %bb.q
  %i.bi = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 0)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !131
  %i.bk = icmp eq i8 %i.bj, 25
  br i1 %i.bk, label %bb.t, label %.critedge39.thread

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  %i.bl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 0)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK6duckdb5Value8GetValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %i.bl)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !139 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 1
  %.pre69 = load ptr, ptr %8, align 8, !tbaa !16  ; 3 uses
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %lhsc89 = load i8, ptr %.pre69, align 1
  %i.bp = icmp eq i8 %lhsc89, 42
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.ph65 = phi i1 [ false, %bb.v ], [ %i.bp, %bb.w ]
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.br = icmp eq ptr %.pre69, %i.bq
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46: ; preds = %bb.x
  %i.bs = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bs)
  br label %.critedge39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %.pre69) #60
  br label %.critedge39

.critedge39:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br i1 %.ph65, label %bb.y, label %.critedge39.thread

bb.y:                                             ; preds = %.critedge39
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !109
  %i.bv = load ptr, ptr %2, align 8, !tbaa !112
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 5                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !150 ; 5 uses
  %i.cc = load ptr, ptr %4, align 8, !tbaa !152   ; 4 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 3 uses
  %i.ch = icmp ugt i64 %i.bz, %i.cg
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ci = sub nuw nsw i64 %i.bz, %i.cg
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cb, i64 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %._ZNSt6vectorImSaImEE6resizeEmRKm.exit51_crit_edge unwind label %bb.ae

._ZNSt6vectorImSaImEE6resizeEmRKm.exit51_crit_edge: ; preds = %bb.z
  %.pre70 = load ptr, ptr %4, align 8, !tbaa !163
  %.pre71 = load ptr, ptr %i.ca, align 8, !tbaa !163
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit51

bb.aa:                                            ; preds = %bb.y
  %i.cj = icmp ult i64 %i.bz, %i.cg
  br i1 %i.cj, label %bb.ab, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit51

bb.ab:                                            ; preds = %bb.aa
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bz ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.cb, %i.ck
  %spec.select91 = select i1 %.not.i.i48, ptr %i.cb, ptr %i.ck
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit51

_ZNSt6vectorImSaImEE6resizeEmRKm.exit51:          ; preds = %bb.ab, %._ZNSt6vectorImSaImEE6resizeEmRKm.exit51_crit_edge, %bb.aa
  %i.cl = phi ptr [ %.pre71, %._ZNSt6vectorImSaImEE6resizeEmRKm.exit51_crit_edge ], [ %i.cb, %bb.aa ], [ %spec.select91, %bb.ab ] ; 4 uses
  %i.cm = phi ptr [ %.pre70, %._ZNSt6vectorImSaImEE6resizeEmRKm.exit51_crit_edge ], [ %i.cc, %bb.aa ], [ %i.cc, %bb.ab ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  %.not5.i52 = icmp eq ptr %i.cm, %i.cl
  br i1 %.not5.i52, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit59, label %.lr.ph.i54.preheader

.lr.ph.i54.preheader:                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit51
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %11 = add i64 %i.co, -8
  %12 = sub i64 %11, %i.cn                        ; 2 uses
  %i.cp = lshr i64 %12, 3
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check94 = icmp ult i64 %12, 24
  br i1 %min.iters.check94, label %.lr.ph.i54.preheader109, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph.i54.preheader
  %n.vec97 = and i64 %i.cq, 4611686018427387900   ; 4 uses
  %i.cr = shl i64 %n.vec97, 3
  %i.cs = getelementptr i8, ptr %i.cm, i64 %i.cr
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph95
  %index99 = phi i64 [ 0, %vector.ph95 ], [ %index.next103, %vector.body98 ] ; 2 uses
  %vec.ind100 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph95 ], [ %vec.ind.next104, %vector.body98 ] ; 3 uses
  %step.add101 = add nuw <2 x i64> %vec.ind100, splat (i64 2)
  %i.ct = shl i64 %index99, 3
  %next.gep102 = getelementptr i8, ptr %i.cm, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep102, i64 16
  store <2 x i64> %vec.ind100, ptr %next.gep102, align 8, !tbaa !33
  store <2 x i64> %step.add101, ptr %i.cu, align 8, !tbaa !33
  %index.next103 = add nuw i64 %index99, 4        ; 2 uses
  %vec.ind.next104 = add nuw <2 x i64> %vec.ind100, splat (i64 4)
  %i.cv = icmp eq i64 %index.next103, %n.vec97
  br i1 %i.cv, label %middle.block105, label %vector.body98, !llvm.loop !169

middle.block105:                                  ; preds = %vector.body98
  %cmp.n106 = icmp eq i64 %i.cq, %n.vec97
  br i1 %cmp.n106, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit59, label %.lr.ph.i54.preheader109

.lr.ph.i54.preheader109:                          ; preds = %.lr.ph.i54.preheader, %middle.block105
  %indvars.iv.i55.ph = phi i64 [ 0, %.lr.ph.i54.preheader ], [ %n.vec97, %middle.block105 ]
  %.sroa.02.06.i56.ph = phi ptr [ %i.cm, %.lr.ph.i54.preheader ], [ %i.cs, %middle.block105 ]
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.lr.ph.i54.preheader109, %.lr.ph.i54
  %indvars.iv.i55 = phi i64 [ %indvars.iv.next.i57, %.lr.ph.i54 ], [ %indvars.iv.i55.ph, %.lr.ph.i54.preheader109 ] ; 2 uses
  %.sroa.02.06.i56 = phi ptr [ %i.cw, %.lr.ph.i54 ], [ %.sroa.02.06.i56.ph, %.lr.ph.i54.preheader109 ] ; 2 uses
  store i64 %indvars.iv.i55, ptr %.sroa.02.06.i56, align 8, !tbaa !33
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i55, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i56, i64 8 ; 2 uses
  %.not.i58 = icmp eq ptr %i.cw, %i.cl
  br i1 %.not.i58, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit59, label %.lr.ph.i54, !llvm.loop !170

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit59: ; preds = %.lr.ph.i54, %middle.block105, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit51
  store ptr %i.cm, ptr %0, align 8, !tbaa !152
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %i.cx, align 8, !tbaa !150
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !168
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !168
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.ac:                                            ; preds = %.critedge39.thread, %bb.r, %bb.p
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %bb.u, %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %bb.ah

bb.ae:                                            ; preds = %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.ah

.critedge39.thread:                               ; preds = %bb.s, %bb.q, %.critedge39
  invoke void @_ZN6duckdb19ParseColumnsOrderedERKNS_6vectorINS_5ValueELb1ESaIS1_EEERNS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERKSB_(ptr dead_on_unwind writable sret(%"class.duckdb::vector.39") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %.critedge39.thread
  %.pr = load ptr, ptr %4, align 8, !tbaa !152    ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef nonnull %.pr) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_T0_.exit59, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret void

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.ac, %bb.ae, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.o, %bb.j, %bb.k
  %.pn36 = phi { ptr, i32 } [ %i.at, %bb.k ], [ %.pn3464, %bb.o ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.as, %bb.j ], [ %i.dd, %bb.ae ], [ %i.db, %bb.ac ], [ %i.dc, %bb.ad ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ]
  %i.de = load ptr, ptr %4, align 8, !tbaa !152   ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorImSaImEED2Ev.exit61, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef nonnull %i.de) #60
  br label %_ZNSt6vectorImSaImEED2Ev.exit61

_ZNSt6vectorImSaImEED2Ev.exit61:                  ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  resume { ptr, i32 } %.pn36

bb.aj:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18BaseResultRendererC2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 32)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6duckdb18BaseResultRendererE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef zeroext 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %i.c, align 8, !tbaa !171
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #58
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb18BaseResultRendererD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6duckdb18BaseResultRendererE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #58
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !177

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #60
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6duckdb18BaseResultRendererD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(64) %0) unnamed_addr #20 align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb18BaseResultRendererlsEc(ptr noundef nonnull returned align 8 dereferenceable(64) %0, i8 noundef signext %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !178
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, i8 noundef signext %1)
  %i.b = load ptr, ptr %0, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.e) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret ptr %0
end_hunk_0
begin_hunk_1_@_ZN6duckdb26RadixPartitionedColumnDataC2ERKS0_:bb.a
_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #64
          to label %.noexc11 unwind label %.loopexit ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = load i64, ptr %2, align 8, !tbaa !185
  store i64 %i.x, ptr %i.w, align 8, !tbaa !185
  store ptr null, ptr %2, align 8, !tbaa !185
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc11
  %i.y = sub i64 %i.l, %i.m
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.v, i64 8
  %i.ac = add i64 %i.l, -8
  %i.ad = sub i64 %i.ac, %i.m
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %scevgep17 = getelementptr i8, ptr %scevgep, i64 %i.ae
  %scevgep18 = getelementptr i8, ptr %i.k, i64 8
  %scevgep19 = getelementptr i8, ptr %scevgep18, i64 %i.ae
  %bound0 = icmp ult ptr %i.v, %scevgep19
  %bound1 = icmp ult ptr %i.k, %scevgep17
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.v, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.k, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ai ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.k, i64 %i.ai ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  call void @llvm.experimental.noalias.scope.decl(metadata !3032)
  %i.aj = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !185, !alias.scope !3034, !noalias !3029
  %wide.load21 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !185, !alias.scope !3034, !noalias !3029
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !185, !alias.scope !3037, !noalias !3034
  store <2 x i64> %wide.load21, ptr %i.ak, align 8, !tbaa !185, !alias.scope !3037, !noalias !3034
  %i.al = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !185, !alias.scope !3034, !noalias !3029
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !185, !alias.scope !3034, !noalias !3029
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !3039

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.i.preheader23:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader23 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  call void @llvm.experimental.noalias.scope.decl(metadata !3032)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !185, !alias.scope !3032, !noalias !3029
  store i64 %i.an, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !185, !alias.scope !3029, !noalias !3032
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !185, !alias.scope !3032, !noalias !3029
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3040

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %.noexc11 ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #60
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.g
  store ptr %i.v, ptr %i.d, align 8, !tbaa !2632
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !2629
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !2633
  %.pr = load ptr, ptr %2, align 8, !tbaa !185    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.pr) #58
  call void @_ZdlPv(ptr noundef nonnull %.pr) #60
  br label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %i.as = add nuw i64 %.0914, 1                   ; 2 uses
  %i.at = load i64, ptr %i.a, align 8, !tbaa !3002
  %.09.highbits = lshr i64 %i.as, %i.at
  %i.au = icmp eq i64 %.09.highbits, 0
  br i1 %i.au, label %bb.c, label %bb.b, !llvm.loop !3041

bb.h:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #58
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.i ], [ %i.av, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @_ZN6duckdb21PartitionedColumnDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #58
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb21PartitionedColumnDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb26RadixPartitionedColumnDataD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6duckdb21PartitionedColumnDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb26RadixPartitionedColumnDataD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6duckdb26RadixPartitionedColumnDataD1Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #58
  tail call void @_ZdlPv(ptr noundef nonnull %0) #60
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb26RadixPartitionedColumnData29InitializeAppendStateInternalERNS_32PartitionedColumnDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.duckdb::unique_ptr.1619", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::unique_ptr.249", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3002 ; 4 uses
  %i.c = shl nuw i64 1, %i.b                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  %i.e = icmp ugt i64 %i.b, 59
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2128) #59
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2599
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !2593 ; 10 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ult i64 %i.l, %i.c
  br i1 %i.m, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %bb.e

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2590 ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = sub i64 %i.p, %i.j
  %i.r = shl nuw nsw i64 8, %i.b
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #64 ; 9 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.o
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %8 = add i64 %i.p, -8
  %i.t = sub i64 %8, %i.j                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.p, -8
  %i.x = sub i64 %i.w, %i.j
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.z
  %scevgep102 = getelementptr i8, ptr %i.h, i64 %i.z
  %bound0 = icmp ult ptr %i.s, %scevgep102
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.h, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.h, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  %i.ae = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep103, align 8, !tbaa !2597, !alias.scope !3047, !noalias !3042
  %wide.load104 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !2597, !alias.scope !3047, !noalias !3042
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2597, !alias.scope !3050, !noalias !3047
  store <2 x i64> %wide.load104, ptr %i.af, align 8, !tbaa !2597, !alias.scope !3050, !noalias !3047
  %i.ag = getelementptr i8, ptr %next.gep103, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep103, align 8, !tbaa !2597, !alias.scope !3047, !noalias !3042
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !2597, !alias.scope !3047, !noalias !3042
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !3052

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader187

.lr.ph.i.i.i.i.i.preheader187:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader187, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader187 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader187 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !2597, !alias.scope !3045, !noalias !3042
  store i64 %i.ai, ptr %.012.i.i.i.i.i, align 8, !tbaa !2597, !alias.scope !3042, !noalias !3045
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !2597, !alias.scope !3045, !noalias !3042
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3053

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.h, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #60
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.s, ptr %i.d, align 8, !tbaa !2593
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store ptr %i.al, ptr %i.n, align 8, !tbaa !2590
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.c
  store ptr %i.am, ptr %i.f, align 8, !tbaa !2599
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !752
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !753 ; 10 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 4 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = icmp ult i64 %i.au, %i.c
  br i1 %i.av, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !750 ; 3 uses
  %i.ay = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.az = sub i64 %i.ay, %i.as
  %i.ba = shl nuw nsw i64 8, %i.b
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #64 ; 9 uses
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.aq, %i.ax
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %9 = add i64 %i.ay, -8
  %i.bc = sub i64 %9, %i.as                       ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bc, 152
  br i1 %min.iters.check113, label %.lr.ph.i.i.i.i.i19.preheader186, label %vector.memcheck106

vector.memcheck106:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %i.bf = add i64 %i.ay, -8
  %i.bg = sub i64 %i.bf, %i.as
  %i.bh = and i64 %i.bg, -8
  %i.bi = add i64 %i.bh, 8                        ; 2 uses
  %scevgep107 = getelementptr i8, ptr %i.bb, i64 %i.bi
  %scevgep108 = getelementptr i8, ptr %i.aq, i64 %i.bi
  %bound0109 = icmp ult ptr %i.bb, %scevgep108
  %bound1110 = icmp ult ptr %i.aq, %scevgep107
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph.i.i.i.i.i19.preheader186, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck106
  %n.vec116 = and i64 %i.be, 4611686018427387900  ; 3 uses
  %i.bj = shl i64 %n.vec116, 3                    ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bb, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.aq, i64 %i.bj
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph114
  %index118 = phi i64 [ 0, %vector.ph114 ], [ %index.next123, %vector.body117 ] ; 2 uses
  %i.bm = shl i64 %index118, 3                    ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.bb, i64 %i.bm ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.aq, i64 %i.bm ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load121 = load <2 x i64>, ptr %next.gep120, align 8, !tbaa !376, !alias.scope !3059, !noalias !3054
  %wide.load122 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !376, !alias.scope !3059, !noalias !3054
  %i.bo = getelementptr i8, ptr %next.gep119, i64 16
  store <2 x i64> %wide.load121, ptr %next.gep119, align 8, !tbaa !376, !alias.scope !3062, !noalias !3059
  store <2 x i64> %wide.load122, ptr %i.bo, align 8, !tbaa !376, !alias.scope !3062, !noalias !3059
  %i.bp = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep120, align 8, !tbaa !376, !alias.scope !3059, !noalias !3054
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !376, !alias.scope !3059, !noalias !3054
  %index.next123 = add nuw i64 %index118, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.bq, label %middle.block124, label %vector.body117, !llvm.loop !3064

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %i.be, %n.vec116
  br i1 %cmp.n125, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i19.preheader186

.lr.ph.i.i.i.i.i19.preheader186:                  ; preds = %vector.memcheck106, %.lr.ph.i.i.i.i.i19.preheader, %middle.block124
  %.012.i.i.i.i.i20.ph = phi ptr [ %i.bb, %vector.memcheck106 ], [ %i.bb, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bk, %middle.block124 ]
  %.0911.i.i.i.i.i21.ph = phi ptr [ %i.aq, %vector.memcheck106 ], [ %i.aq, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.bl, %middle.block124 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader186, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i19 ], [ %.012.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader186 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i19 ], [ %.0911.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader186 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  %i.br = load i64, ptr %.0911.i.i.i.i.i21, align 8, !tbaa !376, !alias.scope !3057, !noalias !3054
  store i64 %i.br, ptr %.012.i.i.i.i.i20, align 8, !tbaa !376, !alias.scope !3054, !noalias !3057
  store ptr null, ptr %.0911.i.i.i.i.i21, align 8, !tbaa !376, !alias.scope !3057, !noalias !3054
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 8
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bs, %i.ax
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i19, !llvm.loop !3065

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i19, %middle.block124, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i23 = icmp eq ptr %i.aq, null
  br i1 %.not.i8.i23, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aq) #60
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.bb, ptr %i.an, align 8, !tbaa !753
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store ptr %i.bu, ptr %i.aw, align 8, !tbaa !750
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.c
  store ptr %i.bv, ptr %i.ao, align 8, !tbaa !752
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !3002
  %i.cb = shl nuw i64 1, %i.ca
  call void @_ZN6duckdb16fixed_size_map_tINS_12list_entry_tEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.bz, i64 noundef %i.cb)
  ret void

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %.01658 = phi i64 [ 0, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.fw, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.experimental.noalias.scope.decl(metadata !3066)
  %i.cc = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #64, !noalias !3066 ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.cd, i8 0, i64 32, i1 false), !noalias !3066
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !342, !noalias !3066
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 1, ptr %i.cf, align 8, !tbaa !344, !noalias !3066
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false), !noalias !3066
  store float 1.000000e+00, ptr %i.cd, align 8, !tbaa !108, !noalias !3066
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ch, i8 0, i64 17, i1 false), !noalias !3066
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false), !noalias !3066
  store ptr %i.cc, ptr %6, align 8, !tbaa !2597, !alias.scope !3066
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !2590 ; 6 uses
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !2599
  %.not.i = icmp eq ptr %i.cj, %i.ck
  %i.cl = ptrtoint ptr %i.cc to i64               ; 2 uses
  br i1 %.not.i, label %bb.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.h
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !2597
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cm, ptr %i.bw, align 8, !tbaa !2590
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnDataAppendStateESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !2593 ; 10 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %bb.j, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2036) #59
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #64
          to label %.noexc24 unwind label %.thread ; 10 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  store i64 %i.cl, ptr %i.cz, align 8, !tbaa !2597
  store ptr null, ptr %6, align 8, !tbaa !2597
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc24
  %i.da = sub i64 %i.co, %i.cp
  %i.db = add i64 %i.da, -8                       ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.db, 56
  br i1 %min.iters.check161, label %.lr.ph.i.i.i.i.i.i.preheader177, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep153 = getelementptr i8, ptr %i.cy, i64 8
  %i.de = add i64 %i.co, -8
  %i.df = sub i64 %i.de, %i.cp
  %i.dg = and i64 %i.df, -8                       ; 2 uses
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.dg
  %scevgep155 = getelementptr i8, ptr %i.cn, i64 8
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.dg
  %bound0157 = icmp ult ptr %i.cy, %scevgep156
  %bound1158 = icmp ult ptr %i.cn, %scevgep154
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i.i.i.i.i.i.preheader177, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck152
  %n.vec164 = and i64 %i.dd, 4611686018427387900  ; 3 uses
  %i.dh = shl i64 %n.vec164, 3                    ; 2 uses
  %i.di = getelementptr i8, ptr %i.cy, i64 %i.dh  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cn, i64 %i.dh
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.dk = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cy, i64 %i.dk ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.cn, i64 %i.dk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3069)
  call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  %i.dl = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8, !tbaa !2597, !alias.scope !3074, !noalias !3069
  %wide.load170 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !2597, !alias.scope !3074, !noalias !3069
  %i.dm = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8, !tbaa !2597, !alias.scope !3077, !noalias !3074
  store <2 x i64> %wide.load170, ptr %i.dm, align 8, !tbaa !2597, !alias.scope !3077, !noalias !3074
  %i.dn = getelementptr i8, ptr %next.gep168, i64 16
end_hunk_1
