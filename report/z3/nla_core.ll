Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nla_core?download=true
inline.NumInlined: 3701
inline.NumDeleted: 1625
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6vectorISt4pairI8rationaljELb1EjED2Ev:bb.a
_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyISt4pairI8rationaljEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !423
  br label %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorISt4pairI8rationaljELb1EjE4sizeEv.exit.i.i
  %i.j = phi ptr [ %.pre.i, %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.a, %_ZNK6vectorISt4pairI8rationaljELb1EjE4sizeEv.exit.i.i ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.k)
          to label %_ZN6vectorISt4pairI8rationaljELb1EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorISt4pairI8rationaljELb1EjE7destroyEv.exit: ; preds = %bb.a, %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.i
  ret void

bb.c:                                             ; preds = %_ZN6vectorISt4pairI8rationaljELb1EjE16destroy_elementsEv.exit.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2lp11explanation8iteratorppEv(ptr dead_on_unwind noalias writable sret(%"class.lp::explanation::iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !413, !range !317, !noundef !211 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.e, ptr %i.c, align 8, !tbaa !416
  br label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEi.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !432
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !432 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 12 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !417
  %.not1.i.i.i = icmp eq ptr %i.g, %.sroa.2.0.copyload.i
  br i1 %.not1.i.i.i, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.l, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !345
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !417
  %.not.i.i.i = icmp eq ptr %i.l, %.sroa.2.0.copyload.i
  br i1 %.not.i.i.i, label %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEi.exit, label %.lr.ph.i.i.i, !llvm.loop !355

_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEi.exit: ; preds = %bb.d, %.lr.ph.i.i.i, %bb.c, %bb.b
  store i8 %i.a, ptr %0, align 8, !tbaa !413
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !289
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4                          ; 2 uses
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !290
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 1, ptr %i.s, align 8, !tbaa !289
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, -4
  store i8 %i.v, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.w, align 8, !tbaa !290
  %i.x = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !287 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, 1
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEi.exit
  %i.ac = load i32, ptr %i.n, align 8, !tbaa !289
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !289
  store i8 %i.q, ptr %i.o, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.f:                                             ; preds = %_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE8iteratorppEi.exit
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = and i8 %i.af, 1
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.ai = load i32, ptr %i.ad, align 8, !tbaa !289
  store i32 %i.ai, ptr %i.s, align 8, !tbaa !289
  %i.aj = load i8, ptr %i.t, align 4
  %i.ak = and i8 %i.aj, -2
  store i8 %i.ak, ptr %i.t, align 4
  br label %_ZN2lp11explanation8iteratorC2ERKS1_.exit

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN2lp11explanation8iteratorC2ERKS1_.exit

_ZN2lp11explanation8iteratorC2ERKS1_.exit:        ; preds = %bb.g, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2lp11explanation8iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !287 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !436  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !263 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #27
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !437

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !405
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !407
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !405    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !407
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK3nla4core6divideERKNS_5monicERKNS_6factorERS4_(ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(9) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(9) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector, align 8             ; 8 uses
  %5 = alloca %class.svector, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK3nla4core12sorted_rvarsERKNS_6factorE(ptr dead_on_unwind nonnull writable sret(%class.svector) align 8 %4, ptr noundef nonnull align 8 dereferenceable(4857) %0, ptr noundef nonnull align 4 dereferenceable(9) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !204    ; 9 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !270
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !204  ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit17.i

_ZNK6vectorIjLb0EjE4sizeEv.exit17.i:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !270  ; 3 uses
  %i.j = icmp uge i32 %.0.i.i, %i.i
  %brmerge.i = or i1 %i.c, %i.j
  br i1 %brmerge.i, label %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit, label %.preheader.split.i

.preheader.split.i:                               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit17.i
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !270  ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx.i = shl nuw nsw i64 %i.m, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.o = icmp eq i32 %i.l, 0
  br i1 %i.o, label %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread39, label %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.lr.ph.i

_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.lr.ph.i:   ; preds = %.preheader.split.i
  %i.p = zext i32 %i.i to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p ; 2 uses
  br label %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.split.i

_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.split.i:   ; preds = %.split.i, %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.lr.ph.i
  %.0.ph56.i = phi ptr [ %i.f, %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.lr.ph.i ], [ %i.v, %.split.i ] ; 2 uses
  %.014.ph55.i = phi ptr [ %i.b, %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.lr.ph.i ], [ %i.u, %.split.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.ph56.i, %i.q
  br i1 %.not.i, label %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.split.i
  %i.r = load i32, ptr %.014.ph55.i, align 4, !tbaa !270
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit.i, %.lr.ph.i
  %.02232.i = phi ptr [ %.0.ph56.i, %.lr.ph.i ], [ %i.x, %_ZNK6vectorIjLb0EjE3endEv.exit.i ] ; 3 uses
  %i.s = load i32, ptr %.02232.i, align 4, !tbaa !270
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %.split.i, label %_ZNK6vectorIjLb0EjE3endEv.exit.i

.split.i:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.014.ph55.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02232.i, i64 4
  %i.w = icmp eq ptr %i.u, %i.n
  br i1 %i.w, label %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread39, label %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.split.i, !llvm.loop !438

_ZNK6vectorIjLb0EjE3endEv.exit.i:                 ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02232.i, i64 4 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread, label %bb.c

_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit17.i
  %not..i = icmp ult i32 %.0.i.i, %i.i
  br i1 %not..i, label %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread39, label %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread

_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread39: ; preds = %.split.i, %.preheader.split.i, %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN2lp10vector_divI7svectorIjjEEES2_RKT_S5_(ptr dead_on_unwind nonnull writable sret(%class.svector) align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread39
  %i.z = load ptr, ptr %5, align 8, !tbaa !204    ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !270
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.h, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread

bb.e:                                             ; preds = %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread39
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread:           ; preds = %bb.d, %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.ag = invoke noundef ptr @_ZNK3nla7emonics14find_canonicalERK7svectorIjjE(ptr noundef nonnull align 8 dereferenceable(216) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %.critedge, label %bb.i

bb.g:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.p

bb.h:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.ai = load i32, ptr %i.z, align 4, !tbaa !270 ; 2 uses
  store i32 %i.ai, ptr %3, align 4, !tbaa !270
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.434.0..sroa_idx, align 4, !tbaa !392
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %.sroa.535.0..sroa_idx, align 4, !tbaa !358
  %i.aj = shl i32 %i.ai, 1                        ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !204 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNK3nla4core13canonize_signEj.exit.i, label %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i

_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i: ; preds = %bb.h
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !270
  %.not.i.i.i.i = icmp ult i32 %i.aj, %i.ao
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %_ZNK3nla4core13canonize_signEj.exit.i

.preheader.i.i.i.i:                               ; preds = %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i, %.preheader.i.i.i.i
  %.07.i.i.i.i.i = phi i32 [ %i.ar, %.preheader.i.i.i.i ], [ %i.aj, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i ] ; 3 uses
  %i.ap = zext i32 %.07.i.i.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !270 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ar, %.07.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZNK3nla4core13canonize_signEj.exit.i, label %.preheader.i.i.i.i

_ZNK3nla4core13canonize_signEj.exit.i:            ; preds = %.preheader.i.i.i.i, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i, %bb.h
  %.sroa.03.0.i.i.i.i = phi i32 [ %i.aj, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i ], [ %i.aj, %bb.h ], [ %.07.i.i.i.i.i, %.preheader.i.i.i.i ]
  %i.as = trunc i32 %.sroa.03.0.i.i.i.i to i8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.at = load i32, ptr %i.ag, align 8, !tbaa !331 ; 2 uses
  store i32 %i.at, ptr %3, align 4, !tbaa !270
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !392
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !358
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !204
  %i.ax = zext i32 %i.at to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !270
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !314
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !318, !range !317, !noundef !211
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK3nla4core13canonize_signEj.exit.i
  %i.bf = phi i8 [ %i.as, %_ZNK3nla4core13canonize_signEj.exit.i ], [ %i.be, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !316, !range !317, !noundef !211
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !310
  %i.bl = icmp eq i32 %i.bk, 0
  %i.bm = load i32, ptr %2, align 4, !tbaa !313   ; 2 uses
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = shl i32 %i.bm, 1                        ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !204 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZNK3nla4core13canonize_signEj.exit.i25, label %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i23

_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i23: ; preds = %bb.k
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !270
  %.not.i.i.i.i24 = icmp ult i32 %i.bn, %i.bs
  br i1 %.not.i.i.i.i24, label %.preheader.i.i.i.i27, label %_ZNK3nla4core13canonize_signEj.exit.i25

.preheader.i.i.i.i27:                             ; preds = %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i23, %.preheader.i.i.i.i27
  %.07.i.i.i.i.i28 = phi i32 [ %i.bv, %.preheader.i.i.i.i27 ], [ %i.bn, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i23 ] ; 3 uses
  %i.bt = zext i32 %.07.i.i.i.i.i28 to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !270 ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq i32 %i.bv, %.07.i.i.i.i.i28
  br i1 %.not.i.i.i.i.i29, label %_ZNK3nla4core13canonize_signEj.exit.i25, label %.preheader.i.i.i.i27

_ZNK3nla4core13canonize_signEj.exit.i25:          ; preds = %.preheader.i.i.i.i27, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i23, %bb.k
  %.sroa.03.0.i.i.i.i26 = phi i32 [ %i.bn, %_ZNK10union_findIN3nla7var_eqsINS0_7emonicsEEEE12get_num_varsEv.exit.i.i.i.i23 ], [ %i.bn, %bb.k ], [ %.07.i.i.i.i.i28, %.preheader.i.i.i.i27 ]
  %i.bw = trunc i32 %.sroa.03.0.i.i.i.i26 to i8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !204
  %i.ca = zext i32 %i.bm to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !270
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !314
  %i.ce = zext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !318, !range !317, !noundef !211
  br label %bb.m

bb.m:                                             ; preds = %_ZNK3nla4core13canonize_signEj.exit.i25, %bb.l
  %i.ci = phi i8 [ %i.bw, %_ZNK3nla4core13canonize_signEj.exit.i25 ], [ %i.ch, %bb.l ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !318, !range !317, !noundef !211
  %i.cl = xor i8 %i.bf, %i.bi
  %i.cm = xor i8 %i.cl, %i.ci
  %.masked = and i8 %i.cm, 1
  %i.cn = xor i8 %.masked, %i.ck
  store i8 %i.cn, ptr %i.bg, align 4, !tbaa !358
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.m
  %.119 = phi i1 [ true, %bb.m ], [ false, %bb.f ]
  %i.co = load ptr, ptr %5, align 8, !tbaa !204   ; 2 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cp)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #26
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre = load ptr, ptr %4, align 8, !tbaa !204
  br label %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread

bb.p:                                             ; preds = %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn

_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread: ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.split.i, %_ZNK6vectorIjLb0EjE3endEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit, %_ZN6vectorIjLb0EjED2Ev.exit
  %i.cs = phi ptr [ %.pre, %_ZN6vectorIjLb0EjED2Ev.exit ], [ %i.b, %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit ], [ %i.b, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ], [ %i.b, %_ZNK6vectorIjLb0EjE3endEv.exit.i ], [ %i.b, %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.split.i ] ; 2 uses
  %.2 = phi i1 [ %.119, %_ZN6vectorIjLb0EjED2Ev.exit ], [ false, %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit ], [ false, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ], [ false, %_ZNK6vectorIjLb0EjE3endEv.exit.i ], [ false, %_ZNK6vectorIjLb0EjE3endEv.exit19.lr.ph.split.i ]
  %.not.i.i31 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i31, label %_ZN6vectorIjLb0EjED2Ev.exit32, label %bb.q

bb.q:                                             ; preds = %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ct)
          to label %_ZN6vectorIjLb0EjED2Ev.exit32 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #26
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit32:                    ; preds = %_ZN2lp16is_proper_factorI7svectorIjjEEEbRKT_S5_.exit.thread, %bb.q
end_hunk_0
