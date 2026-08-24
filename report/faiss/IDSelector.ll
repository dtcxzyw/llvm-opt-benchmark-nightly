Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IDSelector?download=true
inline.NumInlined: 289
inline.NumDeleted: 170
begin_hunk_0_@_ZNK5faiss15IDSelectorRange22find_sorted_ids_boundsEmPKlPmS3_:bb.a
  %.0. = select i1 %.not50, i64 %.055, i64 %i.ac  ; 3 uses
  %i.af = add nuw i64 %..037, 1
  %i.ag = icmp ugt i64 %.0., %i.af
  br i1 %i.ag, label %.lr.ph56, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph56, %.preheader
  %.0.lcssa = phi i64 [ %1, %.preheader ], [ %.0., %.lr.ph56 ]
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i, %bb.f
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5faiss15IDSelectorArrayC2EmPKl(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss15IDSelectorArrayE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss15IDSelectorBatchC2EmPKl(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss15IDSelectorBatchE, i64 16), ptr %0, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.j = shl nuw i64 1, %indvars.iv
  %i.k = icmp ugt i64 %1, %i.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !64

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = add nuw nsw i32 %i.m, 5                  ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !65
  %i.o = zext nneg i32 %i.n to i64
  %notmask = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask, -1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !38
  %i.r = add nuw i64 %indvars.iv, 2
  %i.s = and i64 %i.r, 4294967295
  %i.t = shl nuw i64 1, %i.s
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr null, i64 noundef %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit unwind label %bb.d

_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit:            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit
  ret void

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.g

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit, %bb.e
  %.0914 = phi i64 [ %i.aj, %bb.e ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0914
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19
  store i64 %i.w, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.c, ptr %3, align 8, !tbaa !66
  %i.x = invoke { ptr, i8 } @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKlSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIlLb0EEEEEEEESt4pairINS1_14_Node_iteratorIlLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.y = load i64, ptr %i.q, align 8, !tbaa !22
  %i.z = load i64, ptr %i.b, align 8, !tbaa !19
  %i.aa = and i64 %i.z, %i.y                      ; 3 uses
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !19
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = and i8 %i.ab, 7
  %i.ad = shl nuw i8 1, %i.ac
  %i.ae = ashr i64 %i.aa, 3
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !38
  %i.ai = or i8 %i.ad, %i.ah
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.aj = add nuw i64 %.0914, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

bb.f:                                             ; preds = %.lr.ph
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.u, %bb.d ]
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.c) #21
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !40 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #18
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !50

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !42
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !42
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !38      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !70

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !38
  store i8 %i.q, ptr %i.d, align 1, !tbaa !38
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !69
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !70

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !38
  store i8 %i.z, ptr %i.y, align 1, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !69
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !70

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !38
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !38
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !69
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !37    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !70

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !38
  store i8 %i.az, ptr %i.au, align 1, !tbaa !38
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !70

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.be = load i8, ptr %1, align 1, !tbaa !38
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !38
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i75 = icmp eq ptr %i.ai, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %4 = load ptr, ptr %i.a, align 8, !tbaa !48
  %5 = ptrtoint ptr %4 to i64
  %i.bg = sub i64 %5, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bg) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ab, %bb.ac
  store ptr %i.au, ptr %0, align 8, !tbaa !37
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !48
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKlSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIlLb0EEEEEEEESt4pairINS1_14_Node_iteratorIlLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread35

.thread35:                                        ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !19     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = urem i64 %i.c, %i.e                      ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %1, align 8                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.j, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !40 ; 4 uses
  %i.l = icmp eq ptr %.sroa.028.0, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = icmp eq i64 %i.k, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !71

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42
  %i.r = urem i64 %i.k, %i.q
  br label %.critedge

bb.f:                                             ; preds = %.thread35
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !40   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.c, %i.z
  br i1 %i.w, label %_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !72

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.x, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.020.i.i, align 8, !tbaa !40 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = urem i64 %i.z, %i.e
  %.not19.i.i = icmp eq i64 %i.aa, %i.f
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !72

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !72

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread35
  %i.ab = phi i64 [ %i.r, %bb.e ], [ %i.f, %.thread35 ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ]
  %i.ac = phi i64 [ %i.k, %bb.e ], [ %i.c, %.thread35 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.ad = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %4 = load i64, ptr %1, align 8, !tbaa !19
  store i64 %4, ptr %i.ae, align 8, !tbaa !19
  %i.af = invoke ptr @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIlLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 16) #18
  resume { ptr, i32 } %i.ag

_ZNKSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIlEEPNS1_10_Hash_nodeIlLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.af, %.critedge ], [ %i.s, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIlLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #21 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !73
  invoke void @__cxa_rethrow() #22
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
  tail call void @__clang_call_terminate(ptr %i.q) #20
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !42
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  store ptr %i.w, ptr %3, align 8, !tbaa !40
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !44
  store ptr %3, ptr %i.x, align 8, !tbaa !40
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIlLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  store ptr %i.z, ptr %3, align 8, !tbaa !40
  store ptr %3, ptr %i.y, align 8, !tbaa !49
  %i.aa = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !42
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !44
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIlLb0EEE.exit

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIlLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !39
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !39
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !75
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIlLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIlLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIlLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIlLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !49
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !49
  store ptr %i.o, ptr %.02530, align 8, !tbaa !40
  store ptr %.02530, ptr %i.g, align 8, !tbaa !49
  store ptr %i.g, ptr %i.m, align 8, !tbaa !44
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !40
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !44
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !40
  store ptr %i.r, ptr %.02530, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !44
  store ptr %.02530, ptr %i.s, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k
end_hunk_0
