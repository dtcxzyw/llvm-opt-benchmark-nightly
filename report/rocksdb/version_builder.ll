Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_builder?download=true
inline.NumInlined: 5179
inline.NumDeleted: 2218
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br label %_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN7rocksdb11InternalKeyEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN7rocksdb11InternalKeyEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !533  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !533
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !230 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !294  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !533
  store ptr %i.p, ptr %.02530, align 8, !tbaa !230
  store ptr %.02530, ptr %i.g, align 8, !tbaa !533
  store ptr %i.g, ptr %i.n, align 8, !tbaa !294
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !230
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !294
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !230
  store ptr %i.s, ptr %.02530, align 8, !tbaa !230
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !294
  store ptr %.02530, ptr %i.t, align 8, !tbaa !230
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1047

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !206    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !207
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #28
  br label %_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiN7rocksdb11InternalKeyEESaIS4_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !207
  store ptr %.0.i, ptr %0, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb14VersionBuilder3Rep14SaveSSTFilesToEPNS_18VersionStorageInfoE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !200
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4240 ; 2 uses
  %i.d = load i32, ptr %i.c, align 16, !tbaa !609
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZNK7rocksdb18VersionStorageInfo21HasMissingEpochNumberEv(ptr noundef nonnull align 16 dereferenceable(4288) %1)
  br i1 %i.f, label %.critedge16, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.g = load i32, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %.loopexit18

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !224
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.020.0.in.i = phi ptr [ %i.l, %bb.d ], [ %.sroa.020.0.i, %bb.f ]
  %.sroa.020.0.i = load ptr, ptr %.sroa.020.0.in.i, align 8, !tbaa !230 ; 3 uses
  %i.m = icmp eq ptr %.sroa.020.0.i, null
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !290
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.q = load i64, ptr %i.p, align 8, !tbaa !628
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %.critedge16, label %bb.e

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit18, label %bb.d, !llvm.loop !1049

.loopexit18:                                      ; preds = %bb.g, %.preheader.i
  store i32 1, ptr %i.c, align 16, !tbaa !609
  br label %.critedge

.critedge16:                                      ; preds = %bb.f, %bb.c
  tail call void @_ZNK7rocksdb14VersionBuilder3Rep14SaveSSTFilesToINS1_18NewestFirstBySeqNoEEEvPNS_18VersionStorageInfoEiT_(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.h

.critedge:                                        ; preds = %.loopexit18, %bb.b
  tail call void @_ZNK7rocksdb14VersionBuilder3Rep14SaveSSTFilesToINS1_24NewestFirstByEpochNumberEEEvPNS_18VersionStorageInfoEiT_(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %.critedge16
  %i.r = load i32, ptr %i.a, align 8, !tbaa !200
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.01219 = phi i32 [ 1, %.lr.ph ], [ %i.u, %bb.i ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !610
  tail call void @_ZNK7rocksdb14VersionBuilder3Rep14SaveSSTFilesToINS1_13BySmallestKeyEEEvPNS_18VersionStorageInfoEiT_(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull %1, i32 noundef %.01219, ptr %.sroa.0.0.copyload)
  %i.u = add nuw nsw i32 %.01219, 1               ; 2 uses
  %i.v = load i32, ptr %i.a, align 8, !tbaa !200
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %.loopexit, !llvm.loop !1050

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb14VersionBuilder3Rep15SaveBlobFilesToEPNS_18VersionStorageInfoE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %2 = alloca %class.anon.890, align 8            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2776
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2784
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1056
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1057
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.m = load i64, ptr %i.l, align 8, !tbaa !213
  %i.n = add i64 %i.k, %i.m                       ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2776 ; 3 uses
  %i.p = icmp ugt i64 %i.n, 576460752303423487
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2792 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1058
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !1057
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  %i.x = icmp ult i64 %i.w, %i.n
  br i1 %i.x, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_M_allocateEm.exit.i.i, label %_ZN7rocksdb18VersionStorageInfo11ReserveBlobEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2784 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1056
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.u
  %i.ac = shl nuw nsw i64 %i.n, 4
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29 ; 12 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !1057 ; 14 uses
  %i.af = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !1056 ; 3 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.ai = add i64 %i.ah, -16
  %i.aj = sub i64 %i.ai, %i.af                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 272
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.am = add i64 %i.ah, -16
  %i.an = sub i64 %i.am, %i.af
  %i.ao = and i64 %i.an, -16                      ; 2 uses
  %i.ap = or disjoint i64 %i.ao, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.ap
  %scevgep16 = getelementptr i8, ptr %i.ae, i64 %i.ap
  %scevgep17 = getelementptr i8, ptr %i.ae, i64 8
  %i.aq = add i64 %i.ao, 16                       ; 2 uses
  %scevgep18 = getelementptr i8, ptr %i.ae, i64 %i.aq
  %scevgep19 = getelementptr i8, ptr %i.ad, i64 8
  %scevgep20 = getelementptr i8, ptr %i.ad, i64 %i.aq
  %bound0 = icmp ult ptr %i.ad, %scevgep16
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %scevgep17, %scevgep20
  %bound122 = icmp ult ptr %scevgep19, %scevgep18
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 2305843009213693948     ; 3 uses
  %i.ar = shl i64 %n.vec, 4                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ad, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.ae, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 4                       ; 3 uses
  %3 = or disjoint i64 %i.au, 32                  ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.au
  %next.gep24 = getelementptr i8, ptr %i.ad, i64 %3
  %next.gep25 = getelementptr i8, ptr %i.ae, i64 %i.au ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.ae, i64 %3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %wide.vec = load <4 x ptr>, ptr %next.gep25, align 8, !tbaa !56, !alias.scope !1060, !noalias !1059
  %wide.vec28 = load <4 x ptr>, ptr %next.gep26, align 8, !tbaa !56, !alias.scope !1060, !noalias !1059
  store <4 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !56, !alias.scope !1059, !noalias !1060
  store <4 x ptr> %wide.vec28, ptr %next.gep24, align 8, !tbaa !56, !alias.scope !1059, !noalias !1060
  store <4 x ptr> splat (ptr null), ptr %next.gep25, align 8, !tbaa !56, !alias.scope !1060, !noalias !1059
  store <4 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !56, !alias.scope !1060, !noalias !1059
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1054

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.preheader33:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader33 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  %i.ax = load <2 x ptr>, ptr %.0911.i.i.i.i.i, align 8, !tbaa !56, !alias.scope !1060, !noalias !1059
  store ptr null, ptr %i.aw, align 8, !tbaa !55, !alias.scope !1060, !noalias !1059
  store <2 x ptr> %i.ax, ptr %.012.i.i.i.i.i, align 8, !tbaa !56, !alias.scope !1059, !noalias !1060
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !614, !alias.scope !1060, !noalias !1059
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.ag
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1055

_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !1058
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ae to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.bd) #28
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i.i
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !1057
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store ptr %i.be, ptr %i.y, align 8, !tbaa !1056
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.n
  store ptr %i.bf, ptr %i.q, align 8, !tbaa !1058
  br label %_ZN7rocksdb18VersionStorageInfo11ReserveBlobEm.exit

_ZN7rocksdb18VersionStorageInfo11ReserveBlobEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 0, ptr %i.a, align 8, !tbaa !293
  call void @_ZNK7rocksdb14VersionBuilder3Rep18MergeBlobFileMetasIZNKS1_26GetMinOldestBlobFileNumberEvEUlRKSt10shared_ptrINS_16BlobFileMetaDataEEE_ZNKS1_26GetMinOldestBlobFileNumberEvEUlRKNS1_23MutableBlobFileMetaDataEE_ZNKS1_26GetMinOldestBlobFileNumberEvEUlS7_SB_E_EEvmT_T0_T1_(ptr noundef nonnull align 8 dereferenceable(608) %0, i64 noundef 0, ptr nonnull %i.a, ptr nonnull %i.a, ptr nonnull %i.a)
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !293 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb18VersionStorageInfo11ReserveBlobEm.exit
  store ptr %0, ptr %2, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !684
  call void @_ZNK7rocksdb14VersionBuilder3Rep18MergeBlobFileMetasIZNKS1_15SaveBlobFilesToEPNS_18VersionStorageInfoEEUlRKSt10shared_ptrINS_16BlobFileMetaDataEEE_ZNKS1_15SaveBlobFilesToES4_EUlRKNS1_23MutableBlobFileMetaDataEE_ZNKS1_15SaveBlobFilesToES4_EUlS9_SD_E_EEvmT_T0_T1_(ptr noundef nonnull align 8 dereferenceable(608) %0, i64 noundef %i.bg, ptr nonnull %0, ptr nonnull %1, ptr nonnull %0, ptr nonnull %1, ptr noundef nonnull byval(%class.anon.890) align 8 %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb18VersionStorageInfo11ReserveBlobEm.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb14VersionBuilder3Rep14SaveSSTFilesToINS1_18NewestFirstBySeqNoEEEvPNS_18VersionStorageInfoEiT_(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %3 = alloca %class.anon.879, align 8            ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !684
  store i32 %2, ptr %i.b, align 4, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !625
  %i.g = sext i32 %2 to i64                       ; 3 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !224
  %i.k = getelementptr inbounds [112 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !596
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !536
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.t = load i64, ptr %i.s, align 8, !tbaa !595
  %i.u = add i64 %i.r, %i.t                       ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !625
  %i.x = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.g ; 5 uses
  %i.y = icmp ugt i64 %i.u, 1152921504606846975
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !537
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !536
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = icmp ult i64 %i.af, %i.u
  br i1 %i.ag, label %_ZNSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE11_M_allocateEm.exit.i.i, label %_ZN7rocksdb18VersionStorageInfo7ReserveEim.exit

_ZNSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !596
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.ad
  %i.al = shl nuw nsw i64 %i.u, 3
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #29 ; 4 uses
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !536 ; 4 uses
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !596
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %bb.d, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.an, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !537
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.av) #28
  br label %_ZNSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i

_ZNSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  store ptr %i.am, ptr %i.x, align 8, !tbaa !536
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store ptr %i.aw, ptr %i.ah, align 8, !tbaa !596
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.u
  store ptr %i.ax, ptr %i.z, align 8, !tbaa !537
  br label %_ZN7rocksdb18VersionStorageInfo7ReserveEim.exit

_ZN7rocksdb18VersionStorageInfo7ReserveEim.exit:  ; preds = %bb.c, %_ZNSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE13_M_deallocateEPS2_m.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %0, ptr %3, align 8, !tbaa !1064
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.az, align 8, !tbaa !686
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.ba, align 8, !tbaa !687
  call void @_ZNK7rocksdb14VersionBuilder3Rep31MergeUnorderdAddedFilesWithBaseINS1_18NewestFirstBySeqNoEZNKS1_14SaveSSTFilesToIS3_EEvPNS_18VersionStorageInfoEiT_EUlPNS_12FileMetaDataEE_EEvRKSt6vectorIS9_SaIS9_EERKSt13unordered_mapImS9_St4hashImESt8equal_toImESaISt4pairIKmS9_EEES7_T0_(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull byval(%class.anon.879) align 8 %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb14VersionBuilder3Rep14SaveSSTFilesToINS1_24NewestFirstByEpochNumberEEEvPNS_18VersionStorageInfoEiT_(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %3 = alloca %class.anon.880, align 8            ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !684
  store i32 %2, ptr %i.b, align 4, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !625
  %i.g = sext i32 %2 to i64                       ; 3 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !224
  %i.k = getelementptr inbounds [112 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !596
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !536
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.t = load i64, ptr %i.s, align 8, !tbaa !595
  %i.u = add i64 %i.r, %i.t                       ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !625
  %i.x = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.g ; 5 uses
  %i.y = icmp ugt i64 %i.u, 1152921504606846975
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #32
end_hunk_0
