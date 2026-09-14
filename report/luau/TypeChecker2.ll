Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeChecker2?download=true
inline.NumInlined: 6974
inline.NumDeleted: 2658
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4Luau10NormalizerD2Ev:bb.a
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.h, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !82 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #33
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !968

_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !971
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !972
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !971  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt13unordered_mapIPKN4Luau7TypeIdsEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !972
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #33
  br label %_ZNSt13unordered_mapIPKN4Luau7TypeIdsEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit

_ZNSt13unordered_mapIPKN4Luau7TypeIdsEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !970  ; 2 uses
  %.not5.i.i.i.i2 = icmp eq ptr %i.u, null
  br i1 %.not5.i.i.i.i2, label %_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6, label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %_ZNSt13unordered_mapIPKN4Luau7TypeIdsEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit, %.lr.ph.i.i.i.i3
  %.06.i.i.i.i4 = phi ptr [ %i.v, %.lr.ph.i.i.i.i3 ], [ %i.u, %_ZNSt13unordered_mapIPKN4Luau7TypeIdsEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %.06.i.i.i.i4, align 8, !tbaa !82 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i4, i64 noundef 32) #33
  %.not.i.i.i.i5 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i5, label %_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6, label %.lr.ph.i.i.i.i3, !llvm.loop !968

_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6: ; preds = %.lr.ph.i.i.i.i3, %_ZNSt13unordered_mapIPKN4Luau7TypeIdsEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !971
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !972
  %i.z = shl i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.z, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !971 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt13unordered_mapIPKN4Luau7TypeIdsEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit7, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !972
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #33
  br label %_ZNSt13unordered_mapIPKN4Luau7TypeIdsEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit7

_ZNSt13unordered_mapIPKN4Luau7TypeIdsEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit7: ; preds = %_ZNSt10_HashtableIPKN4Luau7TypeIdsESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6, %bb.e
  tail call void @_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_St10shared_ptrINS0_14NormalizedTypeEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau12TypeChecker220allowsNoReturnValuesEPKNS_11TypePackVarE(ptr noundef %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"struct.Luau::TypePackIterator", align 8 ; 7 uses
  %2 = alloca %"struct.Luau::TypePackIterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN4Luau5beginEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %1, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::TypePackIterator") align 8 %2, ptr noundef %0)
  %i.a = call noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.a, label %.lr.ph, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread

.lr.ph:                                           ; preds = %bb.a, %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245
  %i.d = call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.c) ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr %i.d, align 8, !tbaa !247
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread

_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit: ; preds = %bb.b
  %i.g = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau16TypePackIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 0 uses
  %i.h = call noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br i1 %i.h, label %.lr.ph, label %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread

_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit.thread: ; preds = %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit, %bb.b, %.lr.ph, %bb.a
  %i.i = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %bb.b ], [ true, %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_4TypeEEEEEPKT_S5_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i1 %i.i
}

declare void @_ZN4Luau5beginEPKNS_11TypePackVarE(ptr dead_on_unwind writable sret(%"struct.Luau::TypePackIterator") align 8, ptr noundef) local_unnamed_addr #7

declare void @_ZN4Luau3endEPKNS_11TypePackVarE(ptr dead_on_unwind writable sret(%"struct.Luau::TypePackIterator") align 8, ptr noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4Luau16TypePackIteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau16TypePackIteratordeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau16TypePackIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @_ZN4Luau12TypeChecker214getEndLocationEPKNS_15AstExprFunctionE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 4 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 4 ; 4 uses
  %.sroa.4.8.extract.trunc = trunc i64 %.sroa.4.0.copyload to i32
  %.not = icmp eq i32 %.sroa.0.sroa.0.0.extract.trunc, %.sroa.4.8.extract.trunc
  %i.b = and i64 %.sroa.4.0.copyload, -4294967296
  %.sroa.5.0.insert.shift = add i64 %i.b, -12884901888
  %.sroa.011.0.insert.ext = and i64 %.sroa.4.0.copyload, 4294967295
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.011.0.insert.ext
  %.sroa.0.sroa.4.0.in.in = select i1 %.not, i64 %.sroa.0.0.copyload, i64 %.sroa.011.0.insert.insert
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.sroa.4.0.in.in, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau12TypeChecker211isErrorCallEPKNS_11AstExprCallE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(832) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !258  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !259
  %i.e = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !50
  %i.f = icmp ne i32 %i.d, %i.e
  %.not16 = icmp eq ptr %i.b, null
  %.not = or i1 %.not16, %i.f
  br i1 %.not, label %_ZNK4Luau7AstNameeqEPKc.exit14.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !261  ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK4Luau7AstNameeqEPKc.exit14.thread, label %_ZNK4Luau7AstNameeqEPKc.exit

_ZNK4Luau7AstNameeqEPKc.exit:                     ; preds = %bb.b
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(6) @.str.82) #36
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK4Luau7AstNameeqEPKc.exit14.thread, label %_ZNK4Luau7AstNameeqEPKc.exit14

_ZNK4Luau7AstNameeqEPKc.exit14:                   ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(7) @.str.83) #36
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNK4Luau7AstNameeqEPKc.exit14.thread

bb.c:                                             ; preds = %_ZNK4Luau7AstNameeqEPKc.exit14
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !262
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK4Luau7AstNameeqEPKc.exit14.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !263
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !264  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !259
  %i.u = load i32, ptr @_ZN4Luau7AstRttiINS_19AstExprConstantBoolEE5valueE, align 4, !tbaa !50
  %i.v = icmp ne i32 %i.t, %i.u
  %.not1217 = icmp eq ptr %i.r, null
  %.not12 = or i1 %.not1217, %i.v
  br i1 %.not12, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.x = load i8, ptr %i.w, align 4, !tbaa !266, !range !114, !noundef !115
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %_ZNK4Luau7AstNameeqEPKc.exit14.thread

.critedge:                                        ; preds = %bb.e, %bb.d
  br label %_ZNK4Luau7AstNameeqEPKc.exit14.thread

_ZNK4Luau7AstNameeqEPKc.exit14.thread:            ; preds = %bb.b, %_ZNK4Luau7AstNameeqEPKc.exit14, %.critedge, %bb.e, %bb.c, %_ZNK4Luau7AstNameeqEPKc.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZNK4Luau7AstNameeqEPKc.exit ], [ true, %bb.e ], [ true, %bb.c ], [ false, %.critedge ], [ false, %_ZNK4Luau7AstNameeqEPKc.exit14 ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Luau12TypeChecker28hasBreakEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !259  ; 3 uses
  %i.c = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatBlockEE5valueE, align 4, !tbaa !50
  %i.d = icmp ne i32 %i.b, %i.c
  %.not.not31 = icmp eq ptr %1, null              ; 2 uses
  %.not.not = or i1 %.not.not31, %i.d
  br i1 %.not.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !269  ; 2 uses
  %.not2433.not = icmp eq i64 %i.f, 0
  br i1 %.not2433.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !270
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.01734 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01734
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125
  %i.k = tail call noundef zeroext i1 @_ZN4Luau12TypeChecker28hasBreakEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.j) ; 2 uses
  %i.l = add nuw i64 %.01734, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.f
  %or.cond = select i1 %i.k, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %bb.b, !llvm.loop !973

.thread:                                          ; preds = %bb.a
  %i.m = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatBreakEE5valueE, align 4, !tbaa !50
  %i.n = icmp eq i32 %i.b, %i.m
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.o = load i32, ptr @_ZN4Luau7AstRttiINS_9AstStatIfEE5valueE, align 4, !tbaa !50
  %2 = icmp ne i32 %i.b, %i.o
  %.not25.not.not.not = or i1 %2, %.not.not31
  br i1 %.not25.not.not.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276
  %i.r = tail call noundef zeroext i1 @_ZN4Luau12TypeChecker28hasBreakEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.q)
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !277  ; 2 uses
  %.not26 = icmp eq ptr %i.t, null
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef zeroext i1 @_ZN4Luau12TypeChecker28hasBreakEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.t)
  br i1 %i.u, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.g, %bb.d, %bb.f, %bb.c, %.thread
  %.3 = phi i1 [ false, %bb.g ], [ true, %.thread ], [ false, %bb.c ], [ true, %bb.f ], [ true, %bb.d ], [ false, %.preheader ], [ %i.k, %bb.b ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4Luau12TypeChecker214getFallthroughEPKNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1) local_unnamed_addr #11 align 2 {
bb.a:
  br label %tailrecurse187

tailrecurse187:                                   ; preds = %.critedge, %bb.a
  %.tr188 = phi ptr [ %1, %bb.a ], [ %i.r, %.critedge ]
  %i.a = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatBlockEE5valueE, align 4, !tbaa !50
  %i.b = load i32, ptr @_ZN4Luau7AstRttiINS_9AstStatIfEE5valueE, align 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.e, %tailrecurse187
  %.tr136 = phi ptr [ %.tr188, %tailrecurse187 ], [ %i.x, %bb.e ] ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr136, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !259  ; 6 uses
  %i.e = icmp ne i32 %i.d, %i.a
  %.not.not128 = icmp eq ptr %.tr136, null        ; 5 uses
  %.not.not = or i1 %.not.not128, %i.e
  br i1 %.not.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.f = getelementptr inbounds nuw i8, ptr %.tr136, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !269  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.tr136, i64 32
  %i.j = add i64 %i.g, -1                         ; 2 uses
  %.not84142.not = icmp eq i64 %i.j, 0
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !270 ; 2 uses
  br i1 %.not84142.not, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = add nuw i64 %.0143, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %i.j
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !974

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.0143 = phi i64 [ %i.k, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.0143
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.n = tail call noundef ptr @_ZN4Luau12TypeChecker214getFallthroughEPKNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.m)
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %common.ret, label %bb.c

.critedge:                                        ; preds = %bb.c, %.preheader
  %i.p = getelementptr [8 x i8], ptr %.pre, i64 %i.g
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !125
  br label %tailrecurse187

.thread:                                          ; preds = %tailrecurse
  %i.s = icmp ne i32 %i.d, %i.b
  %.not85.not = or i1 %.not.not128, %i.s
  br i1 %.not85.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %.tr136, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !276
  %i.v = tail call noundef ptr @_ZN4Luau12TypeChecker214getFallthroughEPKNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.u) ; 2 uses
  %.not86 = icmp eq ptr %i.v, null
  br i1 %.not86, label %bb.e, label %common.ret

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.tr136, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !277  ; 2 uses
  %.not87 = icmp eq ptr %i.x, null
  br i1 %.not87, label %common.ret, label %tailrecurse

bb.f:                                             ; preds = %.thread
  %i.y = load i32, ptr @_ZN4Luau7AstRttiINS_13AstStatReturnEE5valueE, align 4, !tbaa !50
  %i.z = icmp eq i32 %i.d, %i.y
  br i1 %i.z, label %common.ret, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr @_ZN4Luau7AstRttiINS_11AstStatExprEE5valueE, align 4, !tbaa !50
  %i.ab = icmp ne i32 %i.d, %i.aa
  %.not89.not = or i1 %.not.not128, %i.ab
  br i1 %.not89.not, label %_ZN4Luau12TypeChecker211isErrorCallEPKNS_11AstExprCallE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr136, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !279 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !259
  %i.ag = load i32, ptr @_ZN4Luau7AstRttiINS_11AstExprCallEE5valueE, align 4, !tbaa !50
  %i.ah = icmp ne i32 %i.af, %i.ag
  %.not90135 = icmp eq ptr %i.ad, null
  %.not90 = or i1 %.not90135, %i.ah
  br i1 %.not90, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !258 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !259
  %i.am = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !50
  %i.an = icmp ne i32 %i.al, %i.am
  %.not16.i = icmp eq ptr %i.aj, null
  %.not.i = or i1 %.not16.i, %i.an
  br i1 %.not.i, label %common.ret, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !261 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %common.ret, label %_ZNK4Luau7AstNameeqEPKc.exit.i

_ZNK4Luau7AstNameeqEPKc.exit.i:                   ; preds = %bb.j
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(6) @.str.82) #36
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN4Luau12TypeChecker211isErrorCallEPKNS_11AstExprCallE.exit.thread113, label %_ZNK4Luau7AstNameeqEPKc.exit14.i

_ZNK4Luau7AstNameeqEPKc.exit14.i:                 ; preds = %_ZNK4Luau7AstNameeqEPKc.exit.i
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(7) @.str.83) #36
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %common.ret

bb.k:                                             ; preds = %_ZNK4Luau7AstNameeqEPKc.exit14.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.av = load i64, ptr %i.au, align 8, !tbaa !262
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN4Luau12TypeChecker211isErrorCallEPKNS_11AstExprCallE.exit.thread113, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !263
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !264 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !259
  %i.bc = load i32, ptr @_ZN4Luau7AstRttiINS_19AstExprConstantBoolEE5valueE, align 4, !tbaa !50
  %i.bd = icmp ne i32 %i.bb, %i.bc
  %.not1217.i = icmp eq ptr %i.az, null
  %.not12.i = or i1 %.not1217.i, %i.bd
  br i1 %.not12.i, label %common.ret, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !266, !range !114, !noundef !115
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %common.ret, label %_ZN4Luau12TypeChecker211isErrorCallEPKNS_11AstExprCallE.exit.thread113

_ZN4Luau12TypeChecker211isErrorCallEPKNS_11AstExprCallE.exit.thread113: ; preds = %bb.m, %_ZNK4Luau7AstNameeqEPKc.exit.i, %bb.k
  br label %common.ret

_ZN4Luau12TypeChecker211isErrorCallEPKNS_11AstExprCallE.exit: ; preds = %bb.g
  %i.bh = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatWhileEE5valueE, align 4, !tbaa !50
  %i.bi = icmp ne i32 %i.d, %i.bh
  %.not91.not = or i1 %.not.not128, %i.bi
  br i1 %.not91.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZN4Luau12TypeChecker211isErrorCallEPKNS_11AstExprCallE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr136, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !281 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !259
  %i.bn = load i32, ptr @_ZN4Luau7AstRttiINS_19AstExprConstantBoolEE5valueE, align 4, !tbaa !50
  %i.bo = icmp ne i32 %i.bm, %i.bn
  %.not92134 = icmp eq ptr %i.bk, null
  %.not92 = or i1 %.not92134, %i.bo
  br i1 %.not92, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !266, !range !114, !noundef !115
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr136, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !282
  %i.bu = tail call noundef zeroext i1 @_ZN4Luau12TypeChecker28hasBreakEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.bt)
  br i1 %i.bu, label %bb.q, label %common.ret

end_hunk_0
