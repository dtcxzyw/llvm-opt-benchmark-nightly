Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IDSelector?download=true
inline.NumInlined: 289
inline.NumDeleted: 170
begin_hunk_0_@_ZN5faiss15IDSelectorBatchD2Ev:bb.a
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt6vectorIhSaIhEED2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #18
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.s = load i64, ptr %i.m, align 8, !tbaa !41
  %i.t = shl i64 %i.s, 3
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #18
  br label %_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit

_ZNSt13unordered_setIlSt4hashIlESt8equal_toIlESaIlEED2Ev.exit: ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss15IDSelectorBatchD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss15IDSelectorBatchE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18, !inline_history !56
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 16) #18, !inline_history !56
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN5faiss15IDSelectorBatchD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.s = load i64, ptr %i.m, align 8, !tbaa !41
  %i.t = shl i64 %i.s, 3
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #18, !inline_history !56
  br label %_ZN5faiss15IDSelectorBatchD2Ev.exit

_ZN5faiss15IDSelectorBatchD2Ev.exit:              ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5faiss16IDSelectorBitmap9is_memberEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !49
  %.not = icmp ult i64 %i.a, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !38
  %i.h = trunc i64 %1 to i8
  %i.i = and i8 %i.h, 7
  %i.j = lshr i8 %i.g, %i.i
  %i.k = trunc i8 %i.j to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.k, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss10IDSelectorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16IDSelectorBitmapD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5faiss15IDSelectorRangeC2Ellb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(25) initializes((0, 25)) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %3 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss15IDSelectorRangeE, i64 16), ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.a, ptr %i.d, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZNK5faiss15IDSelectorRange22find_sorted_ids_boundsEmPKlPmS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !52, !range !59, !noundef !60
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !62
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss15IDSelectorRange22find_sorted_ids_boundsEmPKlPmS3_, ptr noundef nonnull @.str.2, i32 noundef 32) #19 ; 0 uses
  tail call void @abort() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51
  %i.i = load i64, ptr %2, align 8, !tbaa !20     ; 2 uses
  %.not = icmp sgt i64 %i.h, %i.i
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14   ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %2, i64 %1
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp sgt i64 %i.k, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  store i64 0, ptr %4, align 8, !tbaa !20
  store i64 0, ptr %3, align 8, !tbaa !20
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.not47 = icmp slt i64 %i.i, %i.k
  br i1 %.not47, label %.preheader51, label %.loopexit

.preheader51:                                     ; preds = %bb.g
  %.not58 = icmp eq i64 %1, 1
  br i1 %.not58, label %.loopexit.thread, label %.lr.ph

.loopexit.thread:                                 ; preds = %.preheader51
  store i64 1, ptr %3, align 8, !tbaa !20
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader51, %.lr.ph
  %.03953 = phi i64 [ %.039., %.lr.ph ], [ %1, %.preheader51 ] ; 2 uses
  %.04152 = phi i64 [ %..041, %.lr.ph ], [ 0, %.preheader51 ] ; 2 uses
  %i.p = add i64 %.03953, %.04152
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20
  %.not48 = icmp slt i64 %i.s, %i.k               ; 2 uses
  %..041 = select i1 %.not48, i64 %i.q, i64 %.04152 ; 2 uses
  %.039. = select i1 %.not48, i64 %.03953, i64 %i.q ; 3 uses
  %i.t = add nuw i64 %..041, 1
  %i.u = icmp ugt i64 %.039., %i.t
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %.lr.ph, %bb.g
  %storemerge = phi i64 [ 0, %bb.g ], [ %.039., %.lr.ph ] ; 7 uses
  store i64 %storemerge, ptr %3, align 8, !tbaa !20
  %i.v = icmp eq i64 %storemerge, %1
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %storemerge
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = load i64, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %.not49 = icmp slt i64 %i.x, %i.y
  br i1 %.not49, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.z = add nuw i64 %storemerge, 1
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %.lr.ph56, label %._crit_edge

bb.i:                                             ; preds = %.loopexit.thread, %bb.h, %.loopexit
  %storemerge63 = phi i64 [ 1, %.loopexit.thread ], [ %storemerge, %bb.h ], [ %storemerge, %.loopexit ]
  store i64 %storemerge63, ptr %4, align 8, !tbaa !20
  br label %bb.j

.lr.ph56:                                         ; preds = %.preheader, %.lr.ph56
  %.055 = phi i64 [ %.0., %.lr.ph56 ], [ %1, %.preheader ] ; 2 uses
  %.03754 = phi i64 [ %..037, %.lr.ph56 ], [ %storemerge, %.preheader ] ; 2 uses
  %i.ab = add i64 %.055, %.03754
  %i.ac = lshr i64 %i.ab, 1                       ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !20
  %.not50 = icmp slt i64 %i.ae, %i.y              ; 2 uses
  %..037 = select i1 %.not50, i64 %i.ac, i64 %.03754 ; 2 uses
  %.0. = select i1 %.not50, i64 %.055, i64 %i.ac  ; 3 uses
  %i.af = add nuw i64 %..037, 1
  %i.ag = icmp ugt i64 %.0., %i.af
  br i1 %i.ag, label %.lr.ph56, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph56, %.preheader
  %.0.lcssa = phi i64 [ %1, %.preheader ], [ %.0., %.lr.ph56 ]
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !20
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss15IDSelectorArrayE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss15IDSelectorBatchC2EmPKl(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss15IDSelectorBatchE, i64 16), ptr %0, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.j = shl nuw i64 1, %indvars.iv
  %i.k = icmp ugt i64 %1, %i.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !63

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = add nuw nsw i32 %i.m, 5                  ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !66
  %i.o = zext nneg i32 %i.n to i64
  %notmask = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask, -1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !36
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
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  store i64 %i.w, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.c, ptr %3, align 8, !tbaa !68
  %i.x = invoke { ptr, i8 } @_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKlSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIlLb0EEEEEEEESt4pairINS1_14_Node_iteratorIlLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.y = load i64, ptr %i.q, align 8, !tbaa !36
  %i.z = load i64, ptr %i.b, align 8, !tbaa !20
  %i.aa = and i64 %i.z, %i.y                      ; 3 uses
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !20
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

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
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !40 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #18
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !41
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt10_HashtableIllSaIlENSt8__detail9_IdentityESt8equal_toIlESt4hashIlENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

end_hunk_0
