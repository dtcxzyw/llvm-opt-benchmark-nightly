Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_edit_handler?download=true
inline.NumInlined: 3390
inline.NumDeleted: 1650
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb29VersionEditHandlerPointInTime26AtomicUpdateVersionsDropCfEj:bb.a
bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.ap, ptr %i.av, align 8, !tbaa !553
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.al, align 8, !tbaa !164
  br label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit

bb.n:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjPN7rocksdb7VersionEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i3, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !143
  %i.az = zext i32 %i.ay to i64
  %i.ba = urem i64 %i.az, %i.ah                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %.not17.i.i.i.i, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ba
  store ptr %.0.i.i.i.i, ptr %i.bb, align 8, !tbaa !164
  br label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit

_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5eraseENSt8__detail14_Node_iteratorIS9_Lb0ELb0EEE.exit: ; preds = %bb.j, %bb.m, %bb.n, %bb.o, %bb.p
  %i.bc = load ptr, ptr %.sroa.06.1.i.i, align 8, !tbaa !152
  store ptr %i.bc, ptr %.0.i.i.i.i, align 8, !tbaa !152
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.1.i.i, i64 noundef 24) #31
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !562
  %i.be = add i64 %i.bd, -1
  store i64 %i.be, ptr %i.b, align 8, !tbaa !562
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN7rocksdb29VersionEditHandlerPointInTime29AtomicUpdateVersionsCompletedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7977) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7968
  %i.b = load i64, ptr %i.a, align 8, !tbaa !563
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29VersionEditHandlerPointInTime25AtomicUpdateVersionsApplyEv(ptr noundef nonnull align 8 dereferenceable(7977) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7928 ; 3 uses
  %.sroa.09.018 = load ptr, ptr %i.c, align 8, !tbaa !152 ; 2 uses
  %i.d = icmp eq ptr %.sroa.09.018, null
  br i1 %i.d, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7856 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7880
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7864
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7872
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !553 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i, align 8, !tbaa !152 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #31
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !8

_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7912
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !544
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7920
  %i.o = load i64, ptr %i.n, align 8, !tbaa !545
  %i.p = shl i64 %i.o, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.09.019 = phi ptr [ %.sroa.09.018, %.lr.ph ], [ %.sroa.09.0, %bb.j ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !564
  store i32 %i.r, ptr %i.a, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !552  ; 2 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !565
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !229, !nonnull !127, !align !230
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !212
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !496
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 352
  %i.z = load i8, ptr %i.y, align 8, !tbaa !540, !range !126, !noundef !127
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = xor i1 %i.aa, true
  call void @_ZN7rocksdb7Version13PrepareAppendERKNS_11ReadOptionsEb(ptr noundef nonnull align 16 dereferenceable(5369) %i.t, ptr noundef nonnull align 8 dereferenceable(192) %i.u, i1 noundef zeroext %i.ab)
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !562
  %.not.not.i.i = icmp eq i64 %i.ac, 0
  %i.ad = load i32, ptr %i.a, align 4             ; 4 uses
  br i1 %.not.not.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !152 ; 4 uses
  %i.ae = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.ae, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !143
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, label %.preheader, !llvm.loop !10

bb.d:                                             ; preds = %bb.b
  %i.ai = zext i32 %i.ad to i64
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !545 ; 2 uses
  %i.ak = urem i64 %i.ai, %i.aj                   ; 2 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !544
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !164 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !152 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !143
  %i.ar = icmp eq i32 %i.ad, %i.aq
  br i1 %i.ar, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.as = icmp eq i32 %i.ad, %i.av
  br i1 %i.as, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi ptr [ %i.at, %bb.f ], [ %i.ao, %bb.e ]
  %i.at = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !152 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !143 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = urem i64 %i.aw, %i.aj
  %.not19.i.i.i.i = icmp eq i64 %i.ax, %i.ak
  br i1 %.not19.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.g
  br label %.loopexit, !llvm.loop !9

_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit: ; preds = %bb.f, %bb.c, %bb.e
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.ao, %bb.e ], [ %i.at, %bb.f ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !552 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit
  call void @_ZN7rocksdb7VersionD1Ev(ptr noundef nonnull align 16 dead_on_return(5369) dereferenceable(5369) %i.az) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 5376) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !565
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !552
  br label %bb.j

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.d
  %i.bc = call { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjPN7rocksdb7VersionEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRjRS4_EEES0_INS7_14_Node_iteratorIS5_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.sroa.09.0 = load ptr, ptr %.sroa.09.019, align 8, !tbaa !152 ; 2 uses
  %i.bd = icmp eq ptr %.sroa.09.0, null
  br i1 %i.bd, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29VersionEditHandlerPointInTime33MaybeCreateVersionBeforeApplyEditERKNS_11VersionEditEPNS_16ColumnFamilyDataEb(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::Status") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(7977) %1, ptr noundef nonnull align 8 dereferenceable(7456) %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rocksdb::Status", align 8   ; 12 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 12 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 418
  %i.e = load i8, ptr %i.d, align 2, !tbaa !236, !range !126, !noundef !127
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 420
  %8 = load i8, ptr %i.g, align 4, !range !126
  %9 = trunc nuw i8 %8 to i1
  %or.cond100 = select i1 %i.f, i1 %9, i1 false
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 423
  %i.h = load i8, ptr %10, align 1, !range !126
  %i.i = trunc nuw i8 %i.h to i1
  %.not54.a = select i1 %or.cond100, i1 %i.i, i1 false ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr null, ptr %11, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %12 = load i32, ptr %3, align 8, !tbaa !499     ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %14 = load i64, ptr %13, align 8, !tbaa !508
  %.not.not.i.i = icmp eq i64 %14, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.j, %bb.b ], [ %.sroa.06.0.i.i, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !152, !nonnull !127, !noundef !127 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !143
  %i.m = icmp eq i32 %12, %i.l
  br i1 %i.m, label %_ZNSt13unordered_mapIjSt10unique_ptrIN7rocksdb28BaseReferencedVersionBuilderESt14default_deleteIS2_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE4findERSB_.exit, label %bb.c, !llvm.loop !6

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = zext i32 %12 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !214  ; 2 uses
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !213
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164, !nonnull !127, !noundef !127
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !152  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !143
  %i.y = icmp eq i32 %12, %i.x
  br i1 %i.y, label %_ZNSt13unordered_mapIjSt10unique_ptrIN7rocksdb28BaseReferencedVersionBuilderESt14default_deleteIS2_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.v, %bb.d ]
  %i.z = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !152, !nonnull !127, !noundef !127 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !143 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.q
  %.not19.i.i.i.i = icmp eq i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
  %i.ae = icmp eq i32 %12, %i.ab
  br i1 %i.ae, label %_ZNSt13unordered_mapIjSt10unique_ptrIN7rocksdb28BaseReferencedVersionBuilderESt14default_deleteIS2_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt13unordered_mapIjSt10unique_ptrIN7rocksdb28BaseReferencedVersionBuilderESt14default_deleteIS2_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE4findERSB_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.v, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !232
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !536 ; 10 uses
  %i.ai = invoke noundef zeroext i1 @_ZN7rocksdb14VersionBuilder21ValidVersionAvailableEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %_ZNSt13unordered_mapIjSt10unique_ptrIN7rocksdb28BaseReferencedVersionBuilderESt14default_deleteIS2_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN7rocksdb14VersionBuilder5ApplyEPKNS_11VersionEditE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %0, %5
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.f
  %i.aj = load <4 x i8>, ptr %5, align 8, !tbaa !34
  %i.ak = load i8, ptr %5, align 8, !tbaa !154
  store <4 x i8> %i.aj, ptr %0, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %5, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4, !tbaa !125, !range !126, !noundef !127
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.am, ptr %i.an, align 4, !tbaa !128
  store i8 0, ptr %i.al, align 4, !tbaa !128
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !129
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !130 ; 2 uses
  store ptr %i.as, ptr %11, align 8, !tbaa !130
  %i.at = icmp eq i8 %i.ak, 0
  %i.au = and i1 %.not54.a, %i.at
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #31
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %or.cond.not130 = phi i1 [ %i.au, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ %.not54.a, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ %.not54.a, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  %i.av = phi ptr [ %i.as, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ null, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ null, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.aw = invoke noundef zeroext i1 @_ZN7rocksdb14VersionBuilder21ValidVersionAvailableEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  br i1 %or.cond.not130, label %bb.h, label %bb.bb

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 7976
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !548, !range !126, !noundef !127
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.bb, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not2 = xor i1 %i.aw, true
  %or.cond4 = and i1 %i.ai, %.not2                ; 3 uses
  %or.cond = select i1 %i.aw, i1 %4, i1 %i.ai
  br i1 %or.cond, label %bb.j, label %bb.bb

bb.j:                                             ; preds = %bb.i
  br i1 %or.cond4, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7rocksdb14VersionBuilder17RollbackLastApplyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.bc

bb.m:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.bb, %_ZNSt13unordered_mapIjSt10unique_ptrIN7rocksdb28BaseReferencedVersionBuilderESt14default_deleteIS2_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE4findERSB_.exit, %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 1960 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.bd = invoke noalias noundef nonnull dereferenceable(5376) ptr @_Znwm(i64 noundef 5376) #34
          to label %bb.o unwind label %bb.w       ; 6 uses

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !212 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 536
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 7760
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 312 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !539 ; 2 uses
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !539
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 7796
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !226
  invoke void @_ZN7rocksdb7VersionC1EPNS_16ColumnFamilyDataEPNS_10VersionSetERKNS_11FileOptionsERKNS_16MutableCFOptionsERKSt10shared_ptrINS_8IOTracerEEmNS_22EpochNumberRequirementE(ptr noundef nonnull align 16 dereferenceable(5369) %i.bd, ptr noundef nonnull %3, ptr noundef nonnull %i.bf, ptr noundef nonnull align 8 dereferenceable(216) %i.bg, ptr noundef nonnull align 8 dereferenceable(736) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 noundef %i.bj, i32 noundef %i.bm)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !565
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 2744
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !541
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !212
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 208
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !496
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 76
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !542
  %i.bu = invoke noundef i64 @_ZN7rocksdb23MaxFileSizeForL0MetaPinERKNS_16MutableCFOptionsE(ptr noundef nonnull align 8 dereferenceable(736) %i.bc)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !229, !nonnull !127, !align !230
  invoke void @_ZN7rocksdb14VersionBuilder17LoadTableHandlersEPNS_13InternalStatsEibbRKNS_16MutableCFOptionsEmRKNS_11ReadOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.bo, i32 noundef %i.bt, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(736) %i.bc, i64 noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(192) %i.bw)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %.not.i63 = icmp eq ptr %0, %6
  br i1 %.not.i63, label %_ZN7rocksdb6StatusaSEOS0_.exit66, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load <4 x i8>, ptr %6, align 8, !tbaa !34
  %i.by = load i8, ptr %6, align 8, !tbaa !154    ; 2 uses
  store <4 x i8> %i.bx, ptr %0, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %6, align 8, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !125, !range !126, !noundef !127
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ca, ptr %i.cb, align 4, !tbaa !128
  store i8 0, ptr %i.bz, align 4, !tbaa !128
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !129
  store i8 0, ptr %i.cc, align 1, !tbaa !129
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !130 ; 3 uses
  store ptr null, ptr %i.cf, align 8, !tbaa !130
  store ptr %i.cg, ptr %11, align 8, !tbaa !130
  %.not.i.i.i.i.i64 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i64, label %_ZN7rocksdb6StatusaSEOS0_.exit66, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i65

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i65: ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.av) #31
  br label %_ZN7rocksdb6StatusaSEOS0_.exit66

_ZN7rocksdb6StatusaSEOS0_.exit66:                 ; preds = %bb.r, %bb.s, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i65
  %i.ch = phi ptr [ %i.av, %bb.r ], [ %i.cg, %bb.s ], [ %i.cg, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i65 ] ; 4 uses
  %i.ci = phi i8 [ 0, %bb.r ], [ %i.by, %bb.s ], [ %i.by, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i65 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !130 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i67, label %bb.t, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i68

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i68: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit66
  call void @_ZdaPv(ptr noundef nonnull %i.ck) #31
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i68, %_ZN7rocksdb6StatusaSEOS0_.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.cl = icmp eq i8 %i.ci, 0
  br i1 %i.cl, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN7rocksdb7VersionD1Ev(ptr noundef nonnull align 16 dead_on_return(5369) dereferenceable(5369) %i.bd) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 5376) #31
  br i1 %or.cond4, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7rocksdb14VersionBuilder13RedoLastApplyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.z unwind label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.ap, %bb.ae, %_ZN7rocksdb6StatusD2Ev.exit76, %bb.v, %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.x:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 5376) #31
  br label %bb.ba

bb.y:                                             ; preds = %bb.q, %bb.p
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ba

bb.z:                                             ; preds = %bb.u, %bb.v
  %i.cp = icmp eq i8 %i.ci, 2
  br i1 %i.cp, label %bb.aa, label %_ZN7rocksdb6StatusD2Ev.exit76

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %11, align 8, !tbaa !130
  %.not.i.i.i.i.i71 = icmp eq ptr %i.ch, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %0, i8 0, i64 6, i1 false)
  br i1 %.not.i.i.i.i.i71, label %_ZN7rocksdb6StatusD2Ev.exit76, label %_ZN7rocksdb6StatusaSEOS0_.exit73

_ZN7rocksdb6StatusaSEOS0_.exit73:                 ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #31
  br label %_ZN7rocksdb6StatusD2Ev.exit76

_ZN7rocksdb6StatusD2Ev.exit76:                    ; preds = %bb.aa, %_ZN7rocksdb6StatusaSEOS0_.exit73, %bb.z
  invoke void @_ZN7rocksdb14VersionBuilder15CommitLastApplyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.thread97 unwind label %bb.w

.thread97:                                        ; preds = %_ZN7rocksdb6StatusD2Ev.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.critedge

bb.ab:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  invoke void @_ZNK7rocksdb14VersionBuilder6SaveToEPNS_18VersionStorageInfoE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.cq)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not.i77 = icmp eq ptr %0, %7
  br i1 %.not.i77, label %_ZN7rocksdb6StatusaSEOS0_.exit80, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load <4 x i8>, ptr %7, align 8, !tbaa !34
  store <4 x i8> %i.cr, ptr %0, align 8, !tbaa !34
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !125, !range !126, !noundef !127
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ct, ptr %i.cu, align 4, !tbaa !128
  store i8 0, ptr %i.cs, align 4, !tbaa !128
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !34
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !129
  store i8 0, ptr %i.cv, align 1, !tbaa !129
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !130
  store ptr null, ptr %i.cy, align 8, !tbaa !130
  store ptr %i.cz, ptr %11, align 8, !tbaa !130
  %.not.i.i.i.i.i78 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i78, label %_ZN7rocksdb6StatusaSEOS0_.exit80, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i79

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i79: ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #31
  br label %_ZN7rocksdb6StatusaSEOS0_.exit80

_ZN7rocksdb6StatusaSEOS0_.exit80:                 ; preds = %bb.ac, %bb.ad, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i79
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !130 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.db, null
  br i1 %.not.i.i81, label %_ZN7rocksdb6StatusD2Ev.exit83, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i82

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i82: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit80
  call void @_ZdaPv(ptr noundef nonnull %i.db) #31
  br label %_ZN7rocksdb6StatusD2Ev.exit83

_ZN7rocksdb6StatusD2Ev.exit83:                    ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit80, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br i1 %or.cond4, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit83
  invoke void @_ZN7rocksdb14VersionBuilder13RedoLastApplyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.ag unwind label %bb.w

bb.af:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ba

bb.ag:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit83, %bb.ae
  %i.dd = load i8, ptr %0, align 8, !tbaa !62
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.ah, label %bb.ay

bb.ah:                                            ; preds = %bb.ag
  %i.df = load i32, ptr %3, align 8, !tbaa !499   ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 7936
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !562
  %.not.not.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.not.i.i.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 7928
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.di, %bb.ai ], [ %.sroa.06.0.i.i.i, %bb.ak ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !152 ; 3 uses
  %i.dj = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.dj, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !143
  %i.dm = icmp eq i32 %i.df, %i.dl
  br i1 %i.dm, label %.loopexit101, label %bb.aj, !llvm.loop !10

bb.al:                                            ; preds = %bb.ah
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 7912
  %i.do = zext i32 %i.df to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 7920
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !545 ; 2 uses
  %i.dr = urem i64 %i.do, %i.dq                   ; 2 uses
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !544
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !164 ; 2 uses
  %.not.i.i.i.i.i84 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i84, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !152 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !143
  %i.dy = icmp eq i32 %i.df, %i.dx
  br i1 %i.dy, label %.loopexit101, label %.lr.ph.i.i.i.i.i

bb.an:                                            ; preds = %bb.ao
  %i.dz = icmp eq i32 %i.df, %i.ec
  br i1 %i.dz, label %.loopexit101, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.am, %bb.an
  %.020.i.i.i.i.i = phi ptr [ %i.ea, %bb.an ], [ %i.dv, %bb.am ]
  %i.ea = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !152 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !143 ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = urem i64 %i.ed, %i.dq
  %.not19.i.i.i.i.i = icmp eq i64 %i.ee, %i.dr
  br i1 %.not19.i.i.i.i.i, label %bb.an, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.ao
  br label %.loopexit, !llvm.loop !9

.loopexit101:                                     ; preds = %bb.an, %bb.ak, %bb.am
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !565
  call void @_ZN7rocksdb29VersionEditHandlerPointInTime23AtomicUpdateVersionsPutEPNS_7VersionE(ptr noundef nonnull align 8 dereferenceable(7977) %1, ptr noundef %i.ef)
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 7968
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !563
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.ap, label %.sink.split

bb.ap:                                            ; preds = %.loopexit101
  invoke void @_ZN7rocksdb29VersionEditHandlerPointInTime25AtomicUpdateVersionsApplyEv(ptr noundef nonnull align 8 dereferenceable(7977) %1)
          to label %.sink.split unwind label %bb.w

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.aj, %..loopexit_crit_edge21.i.i.i.i.i, %bb.al
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !565 ; 2 uses
  %i.ek = load ptr, ptr %i.bv, align 8, !tbaa !229, !nonnull !127, !align !230
  %i.el = load ptr, ptr %i.be, align 8, !tbaa !212
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 208
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !496
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 352
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !540, !range !126, !noundef !127
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = xor i1 %i.eq, true
  invoke void @_ZN7rocksdb7Version13PrepareAppendERKNS_11ReadOptionsEb(ptr noundef nonnull align 16 dereferenceable(5369) %i.ej, ptr noundef nonnull align 8 dereferenceable(192) %i.ek, i1 noundef zeroext %i.er)
          to label %bb.aq unwind label %bb.w

bb.aq:                                            ; preds = %.loopexit
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 7856 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.et = load i32, ptr %3, align 8, !tbaa !499
  store i32 %i.et, ptr %i.b, align 4, !tbaa !143
  %i.eu = invoke ptr @_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.es, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ar unwind label %bb.av     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !552 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN7rocksdb7VersionD1Ev(ptr noundef nonnull align 16 dead_on_return(5369) dereferenceable(5369) %i.ex) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 5376) #31
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  store ptr %i.ej, ptr %i.ew, align 8, !tbaa !552
  br label %.sink.split

bb.av:                                            ; preds = %bb.aq
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.fa = load i32, ptr %3, align 8, !tbaa !499
  store i32 %i.fa, ptr %i.c, align 4, !tbaa !143
  %i.fb = invoke { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjPN7rocksdb7VersionEESaIS5_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJjRS4_EEES0_INS7_14_Node_iteratorIS5_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.es, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE7emplaceIJjRS2_EEES7_INSt8__detail14_Node_iteratorIS9_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.ax ; 0 uses

_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE7emplaceIJjRS2_EEES7_INSt8__detail14_Node_iteratorIS9_Lb0ELb0EEEbEDpOT_.exit: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.sink.split

bb.ax:                                            ; preds = %bb.aw
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ag
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !565 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7rocksdb7VersionD1Ev(ptr noundef nonnull align 16 dead_on_return(5369) dereferenceable(5369) %i.fd) #32
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 5376) #31
  br label %.sink.split

bb.ba:                                            ; preds = %bb.av, %bb.ax, %bb.af, %bb.y, %bb.x, %bb.w
  %.pn56 = phi { ptr, i32 } [ %i.cm, %bb.w ], [ %i.cn, %bb.x ], [ %i.dc, %bb.af ], [ %i.ez, %bb.av ], [ %i.co, %bb.y ], [ %i.fc, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.bc

.sink.split:                                      ; preds = %bb.ap, %.loopexit101, %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE7emplaceIJjRS2_EEES7_INSt8__detail14_Node_iteratorIS9_Lb0ELb0EEEbEDpOT_.exit, %bb.au, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  invoke void @_ZN7rocksdb14VersionBuilder15CommitLastApplyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.critedge unwind label %bb.m

bb.bc:                                            ; preds = %bb.l, %bb.m, %bb.ba
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn56, %bb.ba ], [ %i.bb, %bb.m ], [ %i.ba, %bb.l ]
  %i.ff = load ptr, ptr %11, align 8, !tbaa !130  ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i85, label %_ZN7rocksdb6StatusD2Ev.exit87, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i86

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i86: ; preds = %bb.bc
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #31
  br label %_ZN7rocksdb6StatusD2Ev.exit87

_ZN7rocksdb6StatusD2Ev.exit87:                    ; preds = %bb.bc, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i86
  resume { ptr, i32 } %.pn59.pn.pn

.critedge:                                        ; preds = %bb.bb, %.thread97
  ret void
}

declare noundef zeroext i1 @_ZN7rocksdb14VersionBuilder21ValidVersionAvailableEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN7rocksdb14VersionBuilder17RollbackLastApplyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN7rocksdb14VersionBuilder13RedoLastApplyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN7rocksdb14VersionBuilder15CommitLastApplyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb29VersionEditHandlerPointInTime23AtomicUpdateVersionsPutEPNS_7VersionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7977) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !881
  %i.c = load i32, ptr %i.b, align 8, !tbaa !499  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7936
  %i.e = load i64, ptr %i.d, align 8, !tbaa !562
  %.not.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7928
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.06.0.i.i, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !152, !nonnull !127, !noundef !127 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !143
  %i.i = icmp eq i32 %i.c, %i.h
  br i1 %i.i, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, label %bb.c, !llvm.loop !10

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7912
  %i.k = zext i32 %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7920
  %i.m = load i64, ptr %i.l, align 8, !tbaa !545  ; 2 uses
  %i.n = urem i64 %i.k, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !544
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !164, !nonnull !127, !noundef !127
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !152  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !143
  %i.u = icmp eq i32 %i.c, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.r, %bb.d ]
  %i.v = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !152, !nonnull !127, !noundef !127 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !143  ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = urem i64 %i.y, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.z, %i.n
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
  %i.aa = icmp eq i32 %i.c, %i.x
  br i1 %i.aa, label %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !552 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7968 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !563
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !563
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13unordered_mapIjPN7rocksdb7VersionESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEE4findERS8_.exit
  tail call void @_ZN7rocksdb7VersionD1Ev(ptr noundef nonnull align 16 dead_on_return(5369) dereferenceable(5369) %i.ac) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 5376) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %1, ptr %i.ab, align 8, !tbaa !552
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29VersionEditHandlerPointInTime10VerifyFileEPNS_16ColumnFamilyDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_12FileMetaDataE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7977) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(417) %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229, !nonnull !127, !align !230
  tail call void @_ZN7rocksdb10VersionSet18VerifyFileMetadataERKNS_11ReadOptionsEPNS_16ColumnFamilyDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_12FileMetaDataE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(874) %i.b, ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(417) %5)
  ret void
}

declare void @_ZN7rocksdb10VersionSet18VerifyFileMetadataERKNS_11ReadOptionsEPNS_16ColumnFamilyDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS_12FileMetaDataE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(874), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(417)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29VersionEditHandlerPointInTime14VerifyBlobFileEPNS_16ColumnFamilyDataEmRKNS_16BlobFileAdditionE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7977) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rocksdb::CacheHandleGuard", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2720
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !884
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229, !nonnull !127, !align !230
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !889, !noalias !890
  invoke void @_ZN7rocksdb13BlobFileCache17GetBlobFileReaderERKNS_11ReadOptionsEmPNS_16CacheHandleGuardINS_14BlobFileReaderEEEb(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(192) %i.d, i64 noundef %3, ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !630  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %5, align 8, !tbaa !631    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull %i.i, i1 noundef zeroext false)
          to label %_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev.exit unwind label %bb.e, !inline_history !12 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #35
  unreachable

_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !630  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEE13ReleaseHandleEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !631    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull %i.b, i1 noundef zeroext false)
          to label %_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEE13ReleaseHandleEv.exit unwind label %bb.c, !inline_history !12 ; 0 uses

_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEE13ReleaseHandleEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #35
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb29VersionEditHandlerPointInTime10LoadTablesEPNS_16ColumnFamilyDataEbb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2, i1 zeroext %3, i1 zeroext %4) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !140, !alias.scope !893
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !893
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb29VersionEditHandlerPointInTime15HasMissingFilesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7977) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
end_hunk_0
