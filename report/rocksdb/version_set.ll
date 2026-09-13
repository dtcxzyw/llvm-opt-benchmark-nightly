Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.x = add i64 %i.m, -16
  %i.y = sub i64 %i.x, %i.e
  %i.z = and i64 %i.y, -16                        ; 2 uses
  %i.aa = or disjoint i64 %i.z, 8                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.aa
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.aa
  %scevgep36 = getelementptr i8, ptr %i.c, i64 8
  %i.ab = add i64 %i.z, 16                        ; 2 uses
  %scevgep37 = getelementptr i8, ptr %i.c, i64 %i.ab
  %scevgep38 = getelementptr i8, ptr %i.p, i64 8
  %scevgep39 = getelementptr i8, ptr %i.p, i64 %i.ab
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound040 = icmp ult ptr %scevgep36, %scevgep39
  %bound141 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx = or i1 %found.conflict, %found.conflict42
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 2305843009213693948      ; 3 uses
  %i.ac = shl i64 %n.vec, 4                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep43 = getelementptr i8, ptr %i.c, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3304)
  %wide.vec = load <8 x ptr>, ptr %next.gep43, align 8, !tbaa !511, !alias.scope !3304, !noalias !3303
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !511, !alias.scope !3303, !noalias !3304
  store <8 x ptr> splat (ptr null), ptr %next.gep43, align 8, !tbaa !511, !alias.scope !3304, !noalias !3303
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader78

.lr.ph.i.i.i.preheader78:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader78, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader78 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader78 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3304)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !511, !alias.scope !3304, !noalias !3303
  store ptr null, ptr %i.ah, align 8, !tbaa !265, !alias.scope !3304, !noalias !3303
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !tbaa !511, !alias.scope !3303, !noalias !3304
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !708, !alias.scope !3304, !noalias !3303
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3297

_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 4 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.am = add i64 %i.d, -16
  %i.an = sub i64 %i.am, %i.m                     ; 2 uses
  %i.ao = lshr i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.an, 304
  br i1 %min.iters.check61, label %.lr.ph.i.i.i17.preheader77, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aq = add i64 %i.d, -16
  %i.ar = sub i64 %i.aq, %i.m
  %i.as = and i64 %i.ar, -16                      ; 4 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep47 = getelementptr i8, ptr %i.at, i64 24
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep48 = getelementptr i8, ptr %i.au, i64 8
  %scevgep49 = getelementptr i8, ptr %1, i64 8
  %i.av = getelementptr i8, ptr %1, i64 %i.as
  %scevgep50 = getelementptr i8, ptr %i.av, i64 16
  %scevgep51 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.aw = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep52 = getelementptr i8, ptr %i.aw, i64 32
  %bound053 = icmp ult ptr %i.al, %scevgep48
  %bound154 = icmp ult ptr %1, %scevgep47
  %found.conflict55 = and i1 %bound053, %bound154
  %bound056 = icmp ult ptr %scevgep49, %scevgep52
  %bound157 = icmp ult ptr %scevgep51, %scevgep50
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %found.conflict55, %found.conflict58
  br i1 %conflict.rdx59, label %.lr.ph.i.i.i17.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck46
  %n.vec63 = and i64 %i.ap, 2305843009213693948   ; 3 uses
  %i.ax = shl i64 %n.vec63, 4                     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.al, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.ax
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next72, %vector.body64 ] ; 2 uses
  %i.ba = shl i64 %index65, 4                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.al, i64 %i.ba
  %next.gep67 = getelementptr i8, ptr %1, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  %wide.vec68 = load <8 x ptr>, ptr %next.gep67, align 8, !tbaa !511, !alias.scope !3306, !noalias !3305
  store <8 x ptr> %wide.vec68, ptr %next.gep66, align 8, !tbaa !511, !alias.scope !3305, !noalias !3306
  store <8 x ptr> splat (ptr null), ptr %next.gep67, align 8, !tbaa !511, !alias.scope !3306, !noalias !3305
  %index.next72 = add nuw i64 %index65, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next72, %n.vec63
  br i1 %i.bb, label %middle.block73, label %vector.body64, !llvm.loop !3301

middle.block73:                                   ; preds = %vector.body64
  %cmp.n74 = icmp eq i64 %i.ap, %n.vec63
  br i1 %cmp.n74, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader77

.lr.ph.i.i.i17.preheader77:                       ; preds = %vector.memcheck46, %.lr.ph.i.i.i17.preheader, %middle.block73
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck46 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.ay, %middle.block73 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck46 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.az, %middle.block73 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader77, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader77 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader77 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !511, !alias.scope !3306, !noalias !3305
  store ptr null, ptr %i.bc, align 8, !tbaa !265, !alias.scope !3306, !noalias !3305
  store <2 x ptr> %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !511, !alias.scope !3305, !noalias !3306
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !708, !alias.scope !3306, !noalias !3305
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3302

_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block73, %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ay, %middle.block73 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !271
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #43
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb16BlobFileMetaDataEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !261
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !262
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #32 {
bb.a:
  %3 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %4 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %5 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %6 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %7 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %8 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %9 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i23 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i23, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEET_SL_SL_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph41, !llvm.loop !3307

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i26.lcssa = phi i64 [ %.fr.i23, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i26.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i26.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.at, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.u, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !347 ; 2 uses
  %i.v = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1053
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !1053
  %i.ad = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 40
  %.val2.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !1054
  %i.ae = getelementptr i8, ptr %.val3.i.i.i.i.i, i64 40
  %.val3.val.i.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !1054
  %i.af = icmp ult i64 %.val2.val.i.i.i.i.i, %.val3.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.af, i64 %i.z, i64 %i.x ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !1051
  %i.ai = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3308

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !1051
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.al = getelementptr i8, ptr %.sroa.4.0.copyload.i.i.i, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.098.i.i.i.i.i, %bb.g ] ; 3 uses
  %.098.in.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i, -1
  %.098.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i.i.i.i ; 2 uses
  %.val16.val.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !1054
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !1053
  %i.ao = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 40
  %.val2.val.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !1054
  %i.ap = icmp ult i64 %.val2.val.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.ap, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.07.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !1051
  %i.ar = icmp sgt i64 %.098.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ar, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i", !llvm.loop !3309

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.07.i.i.i.i.i, %bb.f ], [ %.098.i.i.i.i.i, %bb.g ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.as, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i, align 8, !tbaa !347
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.at = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i", label %bb.c, !llvm.loop !3310

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_T0_SM_T1_T2_.exit.i.i.i"
  %10 = icmp sgt i64 %.fr.i26.lcssa, 16
  br i1 %10, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i"
  %.sroa.0.02.i.i = phi ptr [ %i.au, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i" ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.au, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !347 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %i.az = lshr i64 %i.ay, 1
  %i.ba = icmp sgt i64 %i.ax, 2
  br i1 %i.ba, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i29.i
  %.041.i.i.i30.i = phi i64 [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bb = shl i64 %.041.i.i.i30.i, 1              ; 2 uses
  %i.bc = add i64 %i.bb, 2                        ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bc
  %i.be = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val2.i.i.i.i31.i = load ptr, ptr %i.bg, align 8, !tbaa !1053
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %.val3.i.i.i.i32.i = load ptr, ptr %i.bh, align 8, !tbaa !1053
  %i.bi = getelementptr i8, ptr %.val2.i.i.i.i31.i, i64 40
  %.val2.val.i.i.i.i33.i = load i64, ptr %i.bi, align 8, !tbaa !1054
  %i.bj = getelementptr i8, ptr %.val3.i.i.i.i32.i, i64 40
  %.val3.val.i.i.i.i34.i = load i64, ptr %i.bj, align 8, !tbaa !1054
  %i.bk = icmp ult i64 %.val2.val.i.i.i.i33.i, %.val3.val.i.i.i.i34.i
  %spec.select.i.i.i35.i = select i1 %i.bk, i64 %i.be, i64 %i.bc ; 4 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i35.i
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !1051
  %i.bn = icmp slt i64 %spec.select.i.i.i35.i, %i.az
  br i1 %i.bn, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i, !llvm.loop !3308

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ] ; 5 uses
  %i.bo = and i64 %i.aw, 16
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bq = add nsw i64 %i.ax, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.br
  br i1 %i.bs, label %.thread.i.i28.i, label %bb.i

.thread.i.i28.i:                                  ; preds = %bb.h
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i.i16.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i", label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %bb.i, %.thread.i.i28.i
  %.1.i4.i.i17.i = phi i64 [ %i.bu, %.thread.i.i28.i ], [ %.0.lcssa.i.i.i14.i, %bb.i ]
  %i.bx = getelementptr i8, ptr %.sroa.4.0.copyload.i.i12.i, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i16.i
  %.07.i.i.i.i18.i = phi i64 [ %.1.i4.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ %.098.i.i56.i.i20.i, %bb.k ] ; 3 uses
  %.098.in.i.i.i.i19.i = add nsw i64 %.07.i.i.i.i18.i, -1
  %.098.i.i56.i.i20.i = lshr i64 %.098.in.i.i.i.i19.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i56.i.i20.i ; 2 uses
  %.val16.val.i.i.i.i21.i = load i64, ptr %i.bx, align 8, !tbaa !1054
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val2.i.i.i.i.i22.i = load ptr, ptr %i.bz, align 8, !tbaa !1053
  %i.ca = getelementptr i8, ptr %.val2.i.i.i.i.i22.i, i64 40
  %.val2.val.i.i.i.i.i23.i = load i64, ptr %i.ca, align 8, !tbaa !1054
  %i.cb = icmp ult i64 %.val2.val.i.i.i.i.i23.i, %.val16.val.i.i.i.i21.i
  br i1 %i.cb, label %bb.k, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i"

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i.i.i18.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1051
  %.not7.i.i27.i = icmp eq i64 %.098.i.i56.i.i20.i, 0
  br i1 %.not7.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i", label %bb.j, !llvm.loop !3309

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i": ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i25.i = phi i64 [ 0, %bb.i ], [ %.07.i.i.i.i18.i, %bb.j ], [ 0, %bb.k ]
  %i.cd = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i25.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cd, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %.sroa.4.0.copyload.i.i12.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i, align 8, !tbaa !347
  %i.ce = icmp sgt i64 %i.aw, 16
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !3311

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2440 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02539 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.de, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02539, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2440, i64 -16 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1053
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !1053
  %i.cl = getelementptr i8, ptr %.val2.i.i.i, i64 40
  %.val2.val.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !1054 ; 3 uses
  %i.cm = getelementptr i8, ptr %.val3.i.i.i, i64 40
  %.val3.val.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !1054 ; 3 uses
  %i.cn = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i.i.i
  %i.co = getelementptr i8, ptr %storemerge2440, i64 -8
  %.val3.i27.i.i = load ptr, ptr %i.co, align 8, !tbaa !1053
  %i.cp = getelementptr i8, ptr %.val3.i27.i.i, i64 40
  %.val3.val.i29.i.i = load i64, ptr %i.cp, align 8, !tbaa !1054 ; 4 uses
  br i1 %i.cn, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph41
  %i.cq = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cr = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.q:                                             ; preds = %.lr.ph41
  %i.cs = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.ct = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader": ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader", %bb.x
  %.sroa.016.0.i.i = phi ptr [ %i.cy, %bb.x ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2440, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.val3.i.i18.i = load ptr, ptr %i.h, align 8, !tbaa !1053
  %i.cu = getelementptr i8, ptr %.val3.i.i18.i, i64 40
  %.val3.val.i.i19.i = load i64, ptr %i.cu, align 8, !tbaa !1054 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i"
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.cy, %bb.v ] ; 9 uses
  %i.cv = getelementptr i8, ptr %.sroa.016.1.i.i, i64 8
  %.val2.i.i20.i = load ptr, ptr %i.cv, align 8, !tbaa !1053
  %i.cw = getelementptr i8, ptr %.val2.i.i20.i, i64 40
  %.val2.val.i.i21.i = load i64, ptr %i.cw, align 8, !tbaa !1054
  %i.cx = icmp ult i64 %.val2.val.i.i21.i, %.val3.val.i.i19.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 16 ; 2 uses
  br i1 %i.cx, label %bb.v, label %.preheader.i.i, !llvm.loop !3312

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cz = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i12.i.i = load ptr, ptr %i.cz, align 8, !tbaa !1053
  %i.da = getelementptr i8, ptr %.val3.i12.i.i, i64 40
  %.val3.val.i14.i.i = load i64, ptr %i.da, align 8, !tbaa !1054
  %i.db = icmp ult i64 %.val3.val.i.i19.i, %.val3.val.i14.i.i
  br i1 %i.db, label %.preheader.i.i, label %bb.w, !llvm.loop !3313

bb.w:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.x, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEET_SL_SL_T0_.exit"

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1.i.i, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_SL_T0_.exit.i", !llvm.loop !3314

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEET_SL_SL_T0_.exit": ; preds = %bb.w
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_T0_T1_"(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2440, i64 noundef %i.cg)
  %i.dc = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.dd = sub i64 %i.dc, %i.a
  %.fr.i = freeze i64 %i.dd                       ; 2 uses
  %i.de = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.df = icmp sgt i64 %i.de, 16
  br i1 %i.df, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !3307

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEET_SL_SL_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_SL_RT0_.exit.i24.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_0EEEvT_SL_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #32 {
bb.a:
  %3 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %4 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %5 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %6 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %7 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %8 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %9 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i23 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i23, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEET_SL_SL_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph41, !llvm.loop !3315

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i26.lcssa = phi i64 [ %.fr.i23, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i26.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i26.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.at, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.u, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !347 ; 2 uses
  %i.v = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1053
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !1053
  %i.ad = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 32
  %.val2.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !1055
  %i.ae = getelementptr i8, ptr %.val3.i.i.i.i.i, i64 32
  %.val3.val.i.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !1055
  %i.af = icmp ult i64 %.val2.val.i.i.i.i.i, %.val3.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.af, i64 %i.z, i64 %i.x ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !1051
  %i.ai = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3316

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !1051
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.al = getelementptr i8, ptr %.sroa.4.0.copyload.i.i.i, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.098.i.i.i.i.i, %bb.g ] ; 3 uses
  %.098.in.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i, -1
  %.098.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i.i.i.i ; 2 uses
  %.val16.val.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !1055
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !1053
  %i.ao = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 32
  %.val2.val.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !1055
  %i.ap = icmp ult i64 %.val2.val.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.ap, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.07.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !1051
  %i.ar = icmp sgt i64 %.098.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ar, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i", !llvm.loop !3317

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.07.i.i.i.i.i, %bb.f ], [ %.098.i.i.i.i.i, %bb.g ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.as, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i, align 8, !tbaa !347
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.at = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_RT0_.exit.i.i", label %bb.c, !llvm.loop !3318

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_T0_SM_T1_T2_.exit.i.i.i"
  %10 = icmp sgt i64 %.fr.i26.lcssa, 16
  br i1 %10, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i"
  %.sroa.0.02.i.i = phi ptr [ %i.au, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_RT0_.exit.i.i" ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.au, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !347 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %i.az = lshr i64 %i.ay, 1
  %i.ba = icmp sgt i64 %i.ax, 2
  br i1 %i.ba, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i29.i
  %.041.i.i.i30.i = phi i64 [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bb = shl i64 %.041.i.i.i30.i, 1              ; 2 uses
  %i.bc = add i64 %i.bb, 2                        ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bc
  %i.be = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val2.i.i.i.i31.i = load ptr, ptr %i.bg, align 8, !tbaa !1053
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %.val3.i.i.i.i32.i = load ptr, ptr %i.bh, align 8, !tbaa !1053
  %i.bi = getelementptr i8, ptr %.val2.i.i.i.i31.i, i64 32
  %.val2.val.i.i.i.i33.i = load i64, ptr %i.bi, align 8, !tbaa !1055
  %i.bj = getelementptr i8, ptr %.val3.i.i.i.i32.i, i64 32
  %.val3.val.i.i.i.i34.i = load i64, ptr %i.bj, align 8, !tbaa !1055
  %i.bk = icmp ult i64 %.val2.val.i.i.i.i33.i, %.val3.val.i.i.i.i34.i
  %spec.select.i.i.i35.i = select i1 %i.bk, i64 %i.be, i64 %i.bc ; 4 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i35.i
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !1051
  %i.bn = icmp slt i64 %spec.select.i.i.i35.i, %i.az
  br i1 %i.bn, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i, !llvm.loop !3316

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ] ; 5 uses
  %i.bo = and i64 %i.aw, 16
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bq = add nsw i64 %i.ax, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.br
  br i1 %i.bs, label %.thread.i.i28.i, label %bb.i

.thread.i.i28.i:                                  ; preds = %bb.h
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i.i16.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i", label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %bb.i, %.thread.i.i28.i
  %.1.i4.i.i17.i = phi i64 [ %i.bu, %.thread.i.i28.i ], [ %.0.lcssa.i.i.i14.i, %bb.i ]
  %i.bx = getelementptr i8, ptr %.sroa.4.0.copyload.i.i12.i, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i16.i
  %.07.i.i.i.i18.i = phi i64 [ %.1.i4.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ %.098.i.i56.i.i20.i, %bb.k ] ; 3 uses
  %.098.in.i.i.i.i19.i = add nsw i64 %.07.i.i.i.i18.i, -1
  %.098.i.i56.i.i20.i = lshr i64 %.098.in.i.i.i.i19.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i56.i.i20.i ; 2 uses
  %.val16.val.i.i.i.i21.i = load i64, ptr %i.bx, align 8, !tbaa !1055
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val2.i.i.i.i.i22.i = load ptr, ptr %i.bz, align 8, !tbaa !1053
  %i.ca = getelementptr i8, ptr %.val2.i.i.i.i.i22.i, i64 32
  %.val2.val.i.i.i.i.i23.i = load i64, ptr %i.ca, align 8, !tbaa !1055
  %i.cb = icmp ult i64 %.val2.val.i.i.i.i.i23.i, %.val16.val.i.i.i.i21.i
  br i1 %i.cb, label %bb.k, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i"

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i.i.i18.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1051
  %.not7.i.i27.i = icmp eq i64 %.098.i.i56.i.i20.i, 0
  br i1 %.not7.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i", label %bb.j, !llvm.loop !3317

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i": ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i25.i = phi i64 [ 0, %bb.i ], [ %.07.i.i.i.i18.i, %bb.j ], [ 0, %bb.k ]
  %i.cd = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i25.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cd, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %.sroa.4.0.copyload.i.i12.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i, align 8, !tbaa !347
  %i.ce = icmp sgt i64 %i.aw, 16
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_T0_.exit", !llvm.loop !3319

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2440 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02539 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.de, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02539, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2440, i64 -16 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1053
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !1053
  %i.cl = getelementptr i8, ptr %.val2.i.i.i, i64 32
  %.val2.val.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !1055 ; 3 uses
  %i.cm = getelementptr i8, ptr %.val3.i.i.i, i64 32
  %.val3.val.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !1055 ; 3 uses
  %i.cn = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i.i.i
  %i.co = getelementptr i8, ptr %storemerge2440, i64 -8
  %.val3.i27.i.i = load ptr, ptr %i.co, align 8, !tbaa !1053
  %i.cp = getelementptr i8, ptr %.val3.i27.i.i, i64 32
  %.val3.val.i29.i.i = load i64, ptr %i.cp, align 8, !tbaa !1055 ; 4 uses
  br i1 %i.cn, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph41
  %i.cq = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cr = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.q:                                             ; preds = %.lr.ph41
  %i.cs = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.ct = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader": ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader", %bb.x
  %.sroa.016.0.i.i = phi ptr [ %i.cy, %bb.x ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2440, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i.preheader" ]
  %.val3.i.i18.i = load ptr, ptr %i.h, align 8, !tbaa !1053
  %i.cu = getelementptr i8, ptr %.val3.i.i18.i, i64 32
  %.val3.val.i.i19.i = load i64, ptr %i.cu, align 8, !tbaa !1055 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i"
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i" ], [ %i.cy, %bb.v ] ; 9 uses
  %i.cv = getelementptr i8, ptr %.sroa.016.1.i.i, i64 8
  %.val2.i.i20.i = load ptr, ptr %i.cv, align 8, !tbaa !1053
  %i.cw = getelementptr i8, ptr %.val2.i.i20.i, i64 32
  %.val2.val.i.i21.i = load i64, ptr %i.cw, align 8, !tbaa !1055
  %i.cx = icmp ult i64 %.val2.val.i.i21.i, %.val3.val.i.i19.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 16 ; 2 uses
  br i1 %i.cx, label %bb.v, label %.preheader.i.i, !llvm.loop !3320

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cz = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i12.i.i = load ptr, ptr %i.cz, align 8, !tbaa !1053
  %i.da = getelementptr i8, ptr %.val3.i12.i.i, i64 32
  %.val3.val.i14.i.i = load i64, ptr %i.da, align 8, !tbaa !1055
  %i.db = icmp ult i64 %.val3.val.i.i19.i, %.val3.val.i14.i.i
  br i1 %i.db, label %.preheader.i.i, label %bb.w, !llvm.loop !3321

bb.w:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.x, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEET_SL_SL_T0_.exit"

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1.i.i, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_SL_T0_.exit.i", !llvm.loop !3322

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEET_SL_SL_T0_.exit": ; preds = %bb.w
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_T0_T1_"(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2440, i64 noundef %i.cg)
  %i.dc = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.dd = sub i64 %i.dc, %i.a
  %.fr.i = freeze i64 %i.dd                       ; 2 uses
  %i.de = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.df = icmp sgt i64 %i.de, 16
  br i1 %i.df, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_T0_.exit", !llvm.loop !3315

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEET_SL_SL_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_SL_RT0_.exit.i24.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo26UpdateFilesByCompactionPriERKNS2_16ImmutableOptionsERKNS2_16MutableCFOptionsEE3$_1EEEvT_SL_RT0_.exit.i.i"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1064 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !273 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #43
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1058
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1059
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !1058   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !1059
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #43
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1077
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1059
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3323
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #42 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !1077
  invoke void @__cxa_rethrow() #44
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
  tail call void @__clang_call_terminate(ptr %i.q) #46
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !1059
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !1058   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !633  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !273
  store ptr %i.w, ptr %3, align 8, !tbaa !273
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !633
  store ptr %3, ptr %i.x, align 8, !tbaa !273
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1064
  store ptr %i.z, ptr %3, align 8, !tbaa !273
  store ptr %3, ptr %i.y, align 8, !tbaa !1064
  %i.aa = load ptr, ptr %3, align 8, !tbaa !273   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1059
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !533
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !633
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !633
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !3323
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !3323
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !270

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !3325
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !270

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #44
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #44
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #45 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1064 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !1064
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !273 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !533
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !633  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1064
  store ptr %i.o, ptr %.02530, align 8, !tbaa !273
  store ptr %.02530, ptr %i.g, align 8, !tbaa !1064
  store ptr %i.g, ptr %i.m, align 8, !tbaa !633
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !273
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@"_ZZN7rocksdb12_GLOBAL__N_126SortFileByOverlappingRatioERKNS_21InternalKeyComparatorERKSt6vectorIPNS_12FileMetaDataESaIS6_EESA_PNS_11SystemClockEiimPS4_INS0_5FsizeESaISD_EEENK3$_0clERKSD_SJ_":bb.a
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !151
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !153
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !3326 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.m, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit

bb.m:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.cn, align 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %.0.copyload.i18.i.i = load i64, ptr %i.cp, align 1 ; 2 uses
  %i.cq = icmp ugt i64 %.0.copyload.i.i.i, %.0.copyload.i18.i.i
  br i1 %i.cq, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = icmp ult i64 %.0.copyload.i.i.i, %.0.copyload.i18.i.i
  %spec.select.i.i = zext i1 %i.cr to i32
  br label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit: ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i, %bb.m, %bb.n
  %.1.i.i26 = phi i32 [ %i.ck, %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i ], [ %spec.select.i.i, %bb.n ], [ -1, %bb.m ]
  %i.cs = icmp slt i32 %.1.i.i26, 0
  br label %bb.w

bb.o:                                             ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit24
  %i.ct = load ptr, ptr %0, align 8, !tbaa !3329, !nonnull !561, !align !1326 ; 5 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !1053
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !508
  %i.cx = and i64 %i.cw, 4611686018427387903      ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1059 ; 4 uses
  %i.da = urem i64 %i.cx, %i.cz                   ; 3 uses
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !1058 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i27, label %.loopexit.i.i33, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !273 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !533
  %i.dh = icmp eq i64 %i.cx, %i.dg
  br i1 %i.dh, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37, label %.lr.ph.i.i.i.i28

bb.q:                                             ; preds = %bb.r
  %i.di = icmp eq i64 %i.cx, %i.dl
  br i1 %i.di, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37, label %.lr.ph.i.i.i.i28, !llvm.loop !36

.lr.ph.i.i.i.i28:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i29 = phi ptr [ %i.dj, %bb.q ], [ %i.de, %bb.p ]
  %i.dj = load ptr, ptr %.020.i.i.i.i29, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i30 = icmp eq ptr %i.dj, null
  br i1 %.not18.i.i.i.i30, label %.loopexit.i.i33, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i28
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !533 ; 2 uses
  %i.dm = urem i64 %i.dl, %i.cz
  %.not19.i.i.i.i31 = icmp eq i64 %i.dm, %i.da
  br i1 %.not19.i.i.i.i31, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i32, !llvm.loop !36

..loopexit_crit_edge21.i.i.i.i32:                 ; preds = %bb.r
  br label %.loopexit.i.i33, !llvm.loop !36

.loopexit.i.i33:                                  ; preds = %.lr.ph.i.i.i.i28, %..loopexit_crit_edge21.i.i.i.i32, %bb.o
  %i.dn = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45 ; 5 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !273
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.cx, ptr %i.do, align 8, !tbaa !1062
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 0, ptr %i.dp, align 8, !tbaa !1063
  %i.dq = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, i64 noundef %i.da, i64 noundef %i.cx, ptr noundef nonnull %i.dn, i64 noundef 1)
          to label %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i34

.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge: ; preds = %.loopexit.i.i33
  %.pre75 = load ptr, ptr %0, align 8, !tbaa !3329 ; 3 uses
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %.pre75, i64 8
  %.pre77 = load i64, ptr %.phi.trans.insert76, align 8, !tbaa !1059
  %.pre78 = load ptr, ptr %.pre75, align 8, !tbaa !1058
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i34: ; preds = %.loopexit.i.i33
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37: ; preds = %bb.q, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge, %bb.p
  %i.ds = phi ptr [ %.pre78, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge ], [ %i.db, %bb.p ], [ %i.db, %bb.q ]
  %i.dt = phi i64 [ %.pre77, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge ], [ %i.cz, %bb.p ], [ %i.cz, %bb.q ] ; 2 uses
  %i.du = phi ptr [ %.pre75, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge ], [ %i.ct, %bb.p ], [ %i.ct, %bb.q ]
  %.pn.i.i35 = phi ptr [ %i.dq, %.loopexit.i.i33._ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37_crit_edge ], [ %i.de, %bb.p ], [ %i.dj, %bb.q ]
  %.1.i.i36 = getelementptr inbounds nuw i8, ptr %.pn.i.i35, i64 16
  %i.dv = load i64, ptr %.1.i.i36, align 8, !tbaa !533
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !1053
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !508
  %i.dz = and i64 %i.dy, 4611686018427387903      ; 5 uses
  %i.ea = urem i64 %i.dz, %i.dt                   ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i38, label %.loopexit.i.i44, label %bb.s

bb.s:                                             ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !273 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !533
  %i.eg = icmp eq i64 %i.dz, %i.ef
  br i1 %i.eg, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48, label %.lr.ph.i.i.i.i39

bb.t:                                             ; preds = %bb.u
  %i.eh = icmp eq i64 %i.dz, %i.ek
  br i1 %i.eh, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48, label %.lr.ph.i.i.i.i39, !llvm.loop !36

.lr.ph.i.i.i.i39:                                 ; preds = %bb.s, %bb.t
  %.020.i.i.i.i40 = phi ptr [ %i.ei, %bb.t ], [ %i.ed, %bb.s ]
  %i.ei = load ptr, ptr %.020.i.i.i.i40, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i41 = icmp eq ptr %i.ei, null
  br i1 %.not18.i.i.i.i41, label %.loopexit.i.i44, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i39
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !533 ; 2 uses
  %i.el = urem i64 %i.ek, %i.dt
  %.not19.i.i.i.i42 = icmp eq i64 %i.el, %i.ea
  br i1 %.not19.i.i.i.i42, label %bb.t, label %..loopexit_crit_edge21.i.i.i.i43, !llvm.loop !36

..loopexit_crit_edge21.i.i.i.i43:                 ; preds = %bb.u
  br label %.loopexit.i.i44, !llvm.loop !36

.loopexit.i.i44:                                  ; preds = %.lr.ph.i.i.i.i39, %..loopexit_crit_edge21.i.i.i.i43, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit37
  %i.em = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45 ; 5 uses
  store ptr null, ptr %i.em, align 8, !tbaa !273
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 %i.dz, ptr %i.en, align 8, !tbaa !1062
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 0, ptr %i.eo, align 8, !tbaa !1063
  %i.ep = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.du, i64 noundef %i.ea, i64 noundef %i.dz, ptr noundef nonnull %i.em, i64 noundef 1)
          to label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48 unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i45

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i45: ; preds = %.loopexit.i.i44
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48: ; preds = %bb.t, %bb.s, %.loopexit.i.i44
  %.pn.i.i46 = phi ptr [ %i.ep, %.loopexit.i.i44 ], [ %i.ed, %bb.s ], [ %i.ei, %bb.t ]
  %.1.i.i47 = getelementptr inbounds nuw i8, ptr %.pn.i.i46, i64 16
  %i.er = load i64, ptr %.1.i.i47, align 8, !tbaa !533
  %i.es = icmp ult i64 %i.dv, %i.er
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  %i.et = icmp samesign ugt i8 %i.d, %i.h
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit
  %.0 = phi i1 [ %i.cs, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit ], [ %i.es, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixEOm.exit48 ], [ %i.et, %bb.v ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #32 {
bb.a:
  %3 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %4 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %5 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %6 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %7 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %8 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %9 = alloca %"struct.rocksdb::(anonymous namespace)::Fsize", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i23 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i23, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEET_SM_SM_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph41, !llvm.loop !3331

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i26.lcssa = phi i64 [ %.fr.i23, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i26.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i26.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.at, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.u, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !347 ; 2 uses
  %i.v = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.041.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.val2.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1053
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !1053
  %i.ad = getelementptr i8, ptr %.val2.i.i.i.i.i, i64 32
  %.val2.val.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !1055
  %i.ae = getelementptr i8, ptr %.val3.i.i.i.i.i, i64 32
  %.val3.val.i.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !1055
  %i.af = icmp ult i64 %.val2.val.i.i.i.i.i, %.val3.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.af, i64 %i.z, i64 %i.x ; 4 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ah = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !1051
  %i.ai = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3332

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !1051
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e
  %i.al = getelementptr i8, ptr %.sroa.4.0.copyload.i.i.i, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.098.i.i.i.i.i, %bb.g ] ; 3 uses
  %.098.in.i.i.i.i.i = add nsw i64 %.07.i.i.i.i.i, -1
  %.098.i.i.i.i.i = sdiv i64 %.098.in.i.i.i.i.i, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i.i.i.i ; 2 uses
  %.val16.val.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !1055
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !1053
  %i.ao = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 32
  %.val2.val.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !1055
  %i.ap = icmp ult i64 %.val2.val.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.ap, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.07.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !1051
  %i.ar = icmp sgt i64 %.098.i.i.i.i.i, %.010.i.i.i
  br i1 %i.ar, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i", !llvm.loop !3333

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i": ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.07.i.i.i.i.i, %bb.f ], [ %.098.i.i.i.i.i, %bb.g ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.as, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i, align 8, !tbaa !347
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.at = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_RT0_.exit.i.i", label %bb.c, !llvm.loop !3334

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i"
  %10 = icmp sgt i64 %.fr.i26.lcssa, 16
  br i1 %10, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i"
  %.sroa.0.02.i.i = phi ptr [ %i.au, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_RT0_.exit.i.i" ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.au, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8, !tbaa !347 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %i.az = lshr i64 %i.ay, 1
  %i.ba = icmp sgt i64 %i.ax, 2
  br i1 %i.ba, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i29.i
  %.041.i.i.i30.i = phi i64 [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bb = shl i64 %.041.i.i.i30.i, 1              ; 2 uses
  %i.bc = add i64 %i.bb, 2                        ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bc
  %i.be = or disjoint i64 %i.bb, 1                ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %0, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val2.i.i.i.i31.i = load ptr, ptr %i.bg, align 8, !tbaa !1053
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  %.val3.i.i.i.i32.i = load ptr, ptr %i.bh, align 8, !tbaa !1053
  %i.bi = getelementptr i8, ptr %.val2.i.i.i.i31.i, i64 32
  %.val2.val.i.i.i.i33.i = load i64, ptr %i.bi, align 8, !tbaa !1055
  %i.bj = getelementptr i8, ptr %.val3.i.i.i.i32.i, i64 32
  %.val3.val.i.i.i.i34.i = load i64, ptr %i.bj, align 8, !tbaa !1055
  %i.bk = icmp ult i64 %.val2.val.i.i.i.i33.i, %.val3.val.i.i.i.i34.i
  %spec.select.i.i.i35.i = select i1 %i.bk, i64 %i.be, i64 %i.bc ; 4 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i35.i
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.041.i.i.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !1051
  %i.bn = icmp slt i64 %spec.select.i.i.i35.i, %i.az
  br i1 %i.bn, label %.lr.ph.i.i.i29.i, label %._crit_edge.i.i.i13.i, !llvm.loop !3332

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i35.i, %.lr.ph.i.i.i29.i ] ; 5 uses
  %i.bo = and i64 %i.aw, 16
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bq = add nsw i64 %i.ax, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.br
  br i1 %i.bs, label %.thread.i.i28.i, label %bb.i

.thread.i.i28.i:                                  ; preds = %bb.h
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !1051
  br label %.lr.ph.i.i.i.i16.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i", label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %bb.i, %.thread.i.i28.i
  %.1.i4.i.i17.i = phi i64 [ %i.bu, %.thread.i.i28.i ], [ %.0.lcssa.i.i.i14.i, %bb.i ]
  %i.bx = getelementptr i8, ptr %.sroa.4.0.copyload.i.i12.i, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i16.i
  %.07.i.i.i.i18.i = phi i64 [ %.1.i4.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ %.098.i.i56.i.i20.i, %bb.k ] ; 3 uses
  %.098.in.i.i.i.i19.i = add nsw i64 %.07.i.i.i.i18.i, -1
  %.098.i.i56.i.i20.i = lshr i64 %.098.in.i.i.i.i19.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.098.i.i56.i.i20.i ; 2 uses
  %.val16.val.i.i.i.i21.i = load i64, ptr %i.bx, align 8, !tbaa !1055
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val2.i.i.i.i.i22.i = load ptr, ptr %i.bz, align 8, !tbaa !1053
  %i.ca = getelementptr i8, ptr %.val2.i.i.i.i.i22.i, i64 32
  %.val2.val.i.i.i.i.i23.i = load i64, ptr %i.ca, align 8, !tbaa !1055
  %i.cb = icmp ult i64 %.val2.val.i.i.i.i.i23.i, %.val16.val.i.i.i.i21.i
  br i1 %i.cb, label %bb.k, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i"

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i.i.i18.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1051
  %.not7.i.i27.i = icmp eq i64 %.098.i.i56.i.i20.i, 0
  br i1 %.not7.i.i27.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i", label %bb.j, !llvm.loop !3333

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i": ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i25.i = phi i64 [ 0, %bb.i ], [ %.07.i.i.i.i18.i, %bb.j ], [ 0, %bb.k ]
  %i.cd = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i25.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cd, align 8, !tbaa !533
  %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %.sroa.4.0.copyload.i.i12.i, ptr %.sroa.2.0..sroa.0.0..val13.sroa_idx.i.i.i.i26.i, align 8, !tbaa !347
  %i.ce = icmp sgt i64 %i.aw, 16
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_T0_.exit", !llvm.loop !3335

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2440 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02539 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.de, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02539, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2440, i64 -16 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1053
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val3.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !1053
  %i.cl = getelementptr i8, ptr %.val2.i.i.i, i64 32
  %.val2.val.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !1055 ; 3 uses
  %i.cm = getelementptr i8, ptr %.val3.i.i.i, i64 32
  %.val3.val.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !1055 ; 3 uses
  %i.cn = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i.i.i
  %i.co = getelementptr i8, ptr %storemerge2440, i64 -8
  %.val3.i27.i.i = load ptr, ptr %i.co, align 8, !tbaa !1053
  %i.cp = getelementptr i8, ptr %.val3.i27.i.i, i64 32
  %.val3.val.i29.i.i = load i64, ptr %i.cp, align 8, !tbaa !1055 ; 4 uses
  br i1 %i.cn, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph41
  %i.cq = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cr = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.q:                                             ; preds = %.lr.ph41
  %i.cs = icmp ult i64 %.val2.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.ct = icmp ult i64 %.val3.val.i.i.i, %.val3.val.i29.i.i
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader": ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader", %bb.x
  %.sroa.016.0.i.i = phi ptr [ %i.cy, %bb.x ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2440, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader" ]
  %.val3.i.i18.i = load ptr, ptr %i.h, align 8, !tbaa !1053
  %i.cu = getelementptr i8, ptr %.val3.i.i18.i, i64 32
  %.val3.val.i.i19.i = load i64, ptr %i.cu, align 8, !tbaa !1055 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i"
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i" ], [ %i.cy, %bb.v ] ; 9 uses
  %i.cv = getelementptr i8, ptr %.sroa.016.1.i.i, i64 8
  %.val2.i.i20.i = load ptr, ptr %i.cv, align 8, !tbaa !1053
  %i.cw = getelementptr i8, ptr %.val2.i.i20.i, i64 32
  %.val2.val.i.i21.i = load i64, ptr %i.cw, align 8, !tbaa !1055
  %i.cx = icmp ult i64 %.val2.val.i.i21.i, %.val3.val.i.i19.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 16 ; 2 uses
  br i1 %i.cx, label %bb.v, label %.preheader.i.i, !llvm.loop !3336

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.cz = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i12.i.i = load ptr, ptr %i.cz, align 8, !tbaa !1053
  %i.da = getelementptr i8, ptr %.val3.i12.i.i, i64 32
  %.val3.val.i14.i.i = load i64, ptr %i.da, align 8, !tbaa !1055
  %i.db = icmp ult i64 %.val3.val.i.i19.i, %.val3.val.i14.i.i
  br i1 %i.db, label %.preheader.i.i, label %bb.w, !llvm.loop !3337

bb.w:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.x, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEET_SM_SM_T0_.exit"

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1.i.i, i64 16, i1 false), !tbaa.struct !1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1051
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_SM_T0_.exit.i", !llvm.loop !3338

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEET_SM_SM_T0_.exit": ; preds = %bb.w
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_T0_T1_"(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge2440, i64 noundef %i.cg)
  %i.dc = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.dd = sub i64 %i.dc, %i.a
  %.fr.i = freeze i64 %i.dd                       ; 2 uses
  %i.de = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.df = icmp sgt i64 %i.de, 16
  br i1 %i.df, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_T0_.exit", !llvm.loop !3331

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEET_SM_SM_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_SM_RT0_.exit.i24.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb12_GLOBAL__N_15FsizeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_20SortFileByRoundRobinERKNS2_21InternalKeyComparatorEPS6_INS2_11InternalKeyESaISF_EEbiPS8_E3$_0EEEvT_SM_RT0_.exit.i.i"
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EE19_M_range_initializeIPS1_EEvT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = sdiv exact i64 %i.c, 88
  %i.e = icmp ugt i64 %i.d, 104811045873349725
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EE17_S_check_init_lenEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #44
  unreachable

_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EE17_S_check_init_lenEmRKS2_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7rocksdb14FdWithKeyRangeESaIS1_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN7rocksdb14FdWithKeyRangeESaIS1_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !1066
  %i.f = getelementptr inbounds nuw i8, ptr null, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !1069
  br label %_ZSt22__uninitialized_copy_aIPN7rocksdb14FdWithKeyRangeES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN7rocksdb14FdWithKeyRangeESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !1066
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1069
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.c
  %.016.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.01215.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.016.i.i.i.i, i8 0, i64 16, i1 false)
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb17PinnedTableReaderaSERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.01215.i.i.i.i)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 16
  %i.n = load <4 x i64>, ptr %i.l, align 8, !tbaa !533
  store <4 x i64> %i.n, ptr %i.m, align 8, !tbaa !533
  %i.o = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN7rocksdb14FdWithKeyRangeES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3339

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #42 ; 0 uses
  invoke void @__cxa_rethrow() #44
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.v

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #46
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZSt22__uninitialized_copy_aIPN7rocksdb14FdWithKeyRangeES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN7rocksdb14FdWithKeyRangeESaIS1_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7rocksdb14FdWithKeyRangeESaIS1_EE11_M_allocateEm.exit.thread ], [ %i.r, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.y, align 8, !tbaa !1067
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %4 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %10 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %17 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %20 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %25 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %26 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %27 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %28 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 7 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 1408
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 7 uses
  %i.j = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 7 uses
  %.not.i3.i.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 7 uses
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ar = icmp eq i64 %2, 0
  br i1 %i.ar, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb14FdWithKeyRangeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18VersionStorageInfo28GenerateLevel0NonOverlappingEvE3$_0EEET_SE_SE_T0_.exit"
  %i.as = icmp eq i64 %i.ca, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph42, !llvm.loop !3340

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.mh, %bb.b ]
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.024.1.i.i, %bb.b ]
  %i.at = udiv exact i64 %.lcssa, 88              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  %i.au = add nsw i64 %i.at, -2
  %i.av = lshr i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %28, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.av, %._crit_edge ], [ %i.bh, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #42
  %i.ba = getelementptr inbounds [88 x i8], ptr %0, i64 %.08.i.i.i ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %27, i8 0, i64 16, i1 false)
  %i.bb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb17PinnedTableReaderaSERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %27, ptr noundef nonnull align 8 dereferenceable(88) %i.ba) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = load <4 x i64>, ptr %i.bc, align 8, !tbaa !533
  store <4 x i64> %i.bd, ptr %i.aw, align 8, !tbaa !533
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.be, i64 40, i1 false)
end_hunk_1
begin_hunk_2_@_ZNSt11_Deque_baseIN7rocksdb10VersionSet14ManifestWriterESaIS2_EE17_M_initialize_mapEm:bb.a
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #46
  unreachable

bb.h:                                             ; preds = %_ZNSt11_Deque_baseIN7rocksdb10VersionSet14ManifestWriterESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  unreachable

.body:                                            ; preds = %bb.f
  %i.ab = extractvalue { ptr, i32 } %i.y, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #42 ; 0 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !1407
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !1410
  %i.af = shl i64 %i.ae, 3
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.af) #43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #44
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ag

_ZNSt11_Deque_baseIN7rocksdb10VersionSet14ManifestWriterESaIS2_EE15_M_create_nodesEPPS2_S6_.exit: ; preds = %_ZNSt11_Deque_baseIN7rocksdb10VersionSet14ManifestWriterESaIS2_EE16_M_allocate_nodeEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.ai, align 8, !tbaa !1382
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !1337 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1405
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 480
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.al, ptr %i.am, align 8, !tbaa !1383
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1382
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !1337 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !1405
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 480
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.as, ptr %i.at, align 8, !tbaa !1383
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !3431
  %i.au = getelementptr inbounds nuw [160 x i8], ptr %i.aq, i64 %i.b
  store ptr %i.au, ptr %i.an, align 8, !tbaa !1404
  ret void

bb.k:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #46
  unreachable

bb.l:                                             ; preds = %.body
  unreachable
}

declare void @_ZN7rocksdb18VersionEditHandlerC2EbSt6vectorINS_22ColumnFamilyDescriptorESaIS2_EEPNS_10VersionSetEbbRKSt10shared_ptrINS_8IOTracerEERKNS_11ReadOptionsEbbNS_22EpochNumberRequirementE(ptr noundef nonnull align 8 dereferenceable(7856), i1 noundef zeroext, ptr noundef align 8, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(192), i1 noundef zeroext, i1 noundef zeroext, i32 noundef) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb22VersionEditHandlerBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7rocksdb22VersionEditHandlerBaseE, i64 16), ptr %0, align 8, !tbaa !153
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1167 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1166 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11VersionEditES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN7rocksdb11VersionEditD2Ev(ptr noundef nonnull align 8 dead_on_return(7456) dereferenceable(7456) %.05.i.i.i.i) #42
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 7456 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb11VersionEditES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !47

_ZSt8_DestroyIPN7rocksdb11VersionEditES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !1167
  br label %_ZSt8_DestroyIPN7rocksdb11VersionEditES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7rocksdb11VersionEditES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7rocksdb11VersionEditES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.f = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7rocksdb11VersionEditES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i.i, label %_ZN7rocksdb21AtomicGroupReadBufferD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb11VersionEditES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1442
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #43
  br label %_ZN7rocksdb21AtomicGroupReadBufferD2Ev.exit

_ZN7rocksdb21AtomicGroupReadBufferD2Ev.exit:      ; preds = %_ZSt8_DestroyIPN7rocksdb11VersionEditES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !536  ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb21AtomicGroupReadBufferD2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb21AtomicGroupReadBufferD2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb22VersionEditHandlerBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #46
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb22VersionEditHandlerBase10InitializeEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !601, !alias.scope !3434
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !3434
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb22VersionEditHandlerBase24OnAtomicGroupReplayBeginEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !601, !alias.scope !3437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !3437
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb22VersionEditHandlerBase22OnAtomicGroupReplayEndEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !601, !alias.scope !3440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !3440
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb22VersionEditHandlerBase20CheckIterationResultERKNS_3log6ReaderEPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 3 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 3 uses
  %i.q = alloca i32, align 4                      ; 3 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 3 uses
  %i.u = alloca i32, align 4                      ; 3 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 3 uses
  %i.y = alloca i32, align 4                      ; 3 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i32, align 4                     ; 3 uses
  %i.ac = alloca i32, align 4                     ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.ad = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ae, %i.ad                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 5                 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, 16
  br i1 %i.ah, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.aj = icmp eq i64 %2, 0
  br i1 %i.aj, label %._crit_edge, label %.lr.ph96

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit"
  %i.ak = icmp eq i64 %i.ea, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph96, !llvm.loop !3441

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa92 = phi i64 [ %i.ag, %.lr.ph ], [ %i.gv, %bb.b ] ; 2 uses
  %.lcssa90 = phi i64 [ %i.af, %.lr.ph ], [ %i.gu, %bb.b ]
  %storemerge35.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.al = add nsw i64 %.lcssa92, -2
  %i.am = lshr i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.am, %._crit_edge ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  %i.ar = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !156 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 7 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !519 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !156
  store i64 0, ptr %i.av, align 8, !tbaa !519
  store i8 0, ptr %i.at, align 8, !tbaa !157
  store ptr %i.ap, ptr %6, align 8, !tbaa !518
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.az = load i64, ptr %i.at, align 8, !tbaa !157 ; 2 uses
  store i64 %i.az, ptr %i.an, align 8, !tbaa !157
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !519 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !156
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !519
  store i8 0, ptr %i.at, align 8, !tbaa !157
  store ptr %i.ap, ptr %6, align 8, !tbaa !518
  %i.ba = icmp eq ptr %i.as, %i.an
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.bb = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.as, ptr %6, align 8, !tbaa !156
  store i64 %i.az, ptr %i.ap, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.bd = phi i64 [ %i.bb, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.bd, ptr %i.aq, align 8, !tbaa !519
  store ptr %i.an, ptr %5, align 8, !tbaa !156
  store i64 0, ptr %i.ao, align 8, !tbaa !519
  store i8 0, ptr %i.an, align 8, !tbaa !157
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_T0_SP_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa92, ptr noundef align 8 %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !156   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ap
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.bg = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bi = add nsw i64 %.010.i.i.i, -1
  %i.bj = load ptr, ptr %5, align 8, !tbaa !156   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.an
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bl = load i64, ptr %i.an, align 8, !tbaa !157
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_RT0_.exit.i.i", label %bb.c, !llvm.loop !3442

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %6, align 8, !tbaa !156   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ap
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %bb.f
  %i.bq = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i
  %i.bs = load ptr, ptr %5, align 8, !tbaa !156   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.an
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i
  %i.bu = load i64, ptr %i.an, align 8, !tbaa !157
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  br label %common.resume

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_RT0_.exit.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %7 = icmp sgt i64 %.lcssa90, 32
  br i1 %7, label %.lr.ph.i9.i.preheader, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit"

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_RT0_.exit.i.i"
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.cc, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit" ], [ %storemerge35.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  store ptr %i.bw, ptr %3, align 8, !tbaa !518
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !156 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i9.i
  %i.cg = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !519 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.cd, ptr %3, align 8, !tbaa !156
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !157
  store i64 %i.ck, ptr %i.bw, align 8, !tbaa !157
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !519
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.cl = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ch, %bb.g ]
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.cl, ptr %i.bx, align 8, !tbaa !519
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !156
  store i64 0, ptr %i.cm, align 8, !tbaa !519
  store i8 0, ptr %i.ce, align 8, !tbaa !157
  %i.cn = load ptr, ptr %0, align 8, !tbaa !156   ; 5 uses
  %i.co = icmp eq ptr %i.cn, %i.by
  br i1 %i.co, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.cp = load i64, ptr %i.bz, align 8, !tbaa !519 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  %.not21.i.i = icmp eq ptr %0, %i.cc
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.i, !prof !270

bb.i:                                             ; preds = %bb.h
  switch i64 %i.cp, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !157
  store i8 %i.cr, ptr %i.ce, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 1 %i.cn, i64 %i.cp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.cs = load i64, ptr %i.bz, align 8, !tbaa !519 ; 2 uses
  store i64 %i.cs, ptr %i.cm, align 8, !tbaa !519
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cs
  store i8 0, ptr %i.ct, align 1, !tbaa !157
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.cn, ptr %i.cc, align 8, !tbaa !156
  %i.cu = load i64, ptr %i.bz, align 8, !tbaa !519
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !519
  %i.cv = load i64, ptr %i.by, align 8, !tbaa !157
  store i64 %i.cv, ptr %i.ce, align 8, !tbaa !157
  store ptr %i.by, ptr %0, align 8, !tbaa !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h
  %i.cw = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.cn, %bb.h ], [ %i.by, %bb.l ]
  store i64 0, ptr %i.bz, align 8, !tbaa !519
  store i8 0, ptr %i.cw, align 1, !tbaa !157
  %i.cx = ptrtoint ptr %i.cc to i64
  %i.cy = sub i64 %i.cx, %i.ad                    ; 2 uses
  %i.cz = ashr exact i64 %i.cy, 5
  store ptr %i.ca, ptr %4, align 8, !tbaa !518
  %i.da = load ptr, ptr %3, align 8, !tbaa !156   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bw
  br i1 %i.db, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.dc = load i64, ptr %i.bx, align 8, !tbaa !519 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.dc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ca, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.de, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.da, ptr %4, align 8, !tbaa !156
  %i.df = load i64, ptr %i.bw, align 8, !tbaa !157
  store i64 %i.df, ptr %i.ca, align 8, !tbaa !157
  %.pre5.i = load i64, ptr %i.bx, align 8, !tbaa !519
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.m
  %i.dg = phi i64 [ %i.dc, %bb.m ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.dg, ptr %i.cb, align 8, !tbaa !519
  store ptr %i.bw, ptr %3, align 8, !tbaa !156
  store i64 0, ptr %i.bx, align 8, !tbaa !519
  store i8 0, ptr %i.bw, align 8, !tbaa !157
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_T0_SP_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.cz, ptr noundef align 8 %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.dh = load ptr, ptr %4, align 8, !tbaa !156   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ca
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.dj = load i64, ptr %i.ca, align 8, !tbaa !157
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dl = load ptr, ptr %3, align 8, !tbaa !156   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bw
  br i1 %i.dm, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dn = load i64, ptr %i.bw, align 8, !tbaa !157
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #43
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit"

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load ptr, ptr %4, align 8, !tbaa !156   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ca
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.o
  %i.ds = load i64, ptr %i.ca, align 8, !tbaa !157
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  %i.du = load ptr, ptr %3, align 8, !tbaa !156   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bw
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.dw = load i64, ptr %i.bw, align 8, !tbaa !157
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.dy = icmp sgt i64 %i.cy, 32
  br i1 %i.dy, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit", !llvm.loop !3443

.lr.ph96:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3595 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03694 = phi i64 [ %i.ea, %bb.b ], [ %2, %.lr.ph ]
  %i.dz = phi i64 [ %i.gv, %bb.b ], [ %i.ag, %.lr.ph ]
  %i.ea = add nsw i64 %.03694, -1                 ; 3 uses
  %i.eb = lshr i64 %i.dz, 1
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.eb ; 5 uses
  %i.ed = getelementptr inbounds i8, ptr %storemerge3595, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #42
  store i64 0, ptr %i.z, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #42
  store i64 0, ptr %i.aa, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #42
  %i.ee = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ab, ptr noundef null) ; 0 uses
  %i.ef = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ac, ptr noundef null) ; 0 uses
  %i.eg = load i64, ptr %i.z, align 8, !tbaa !533
  %i.eh = load i64, ptr %i.aa, align 8, !tbaa !533
  %i.ei = icmp ugt i64 %i.eg, %i.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #42
end_hunk_2
begin_hunk_3_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_T0_T1_":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #42
  %i.et = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef null) ; 0 uses
  %i.eu = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q, ptr noundef null) ; 0 uses
  %i.ev = load i64, ptr %i.n, align 8, !tbaa !533
  %i.ew = load i64, ptr %i.o, align 8, !tbaa !533
  %i.ex = icmp ugt i64 %i.ev, %i.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #42
  br i1 %i.ex, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #42
  store i64 0, ptr %i.j, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #42
  store i64 0, ptr %i.k, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #42
  %i.ey = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef null) ; 0 uses
  %i.ez = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef null) ; 0 uses
  %i.fa = load i64, ptr %i.j, align 8, !tbaa !533
  %i.fb = load i64, ptr %i.k, align 8, !tbaa !533
  %i.fc = icmp ugt i64 %i.fa, %i.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #42
  %.26.i.i = select i1 %i.fc, ptr %i.ed, ptr %i.ec
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i.i = phi ptr [ %i.ec, %bb.p ], [ %i.ai, %bb.r ], [ %.26.i.i, %bb.s ], [ %..i.i, %bb.q ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i"
  %.sroa.012.0.i.i = phi ptr [ %i.ai, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i" ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3595, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_SO_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit ], [ %i.fi, %bb.t ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #42
  store i64 0, ptr %i.f, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #42
  store i64 0, ptr %i.g, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #42
  %i.fd = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef null) ; 0 uses
  %i.fe = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef null) ; 0 uses
  %i.ff = load i64, ptr %i.f, align 8, !tbaa !533
  %i.fg = load i64, ptr %i.g, align 8, !tbaa !533
  %i.fh = icmp ugt i64 %i.ff, %i.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #42
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.fh, label %bb.t, label %.preheader.i.i, !llvm.loop !3444

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 6 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  store i64 0, ptr %i.b, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #42
  store i64 0, ptr %i.c, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #42
  %i.fj = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef null) ; 0 uses
  %i.fk = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef null) ; 0 uses
  %i.fl = load i64, ptr %i.b, align 8, !tbaa !533
  %i.fm = load i64, ptr %i.c, align 8, !tbaa !533
  %i.fn = icmp ugt i64 %i.fl, %i.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  br i1 %i.fn, label %.preheader.i.i, label %bb.u, !llvm.loop !3445

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.fo = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !156 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 11 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 4 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !519 ; 5 uses
  %i.ft = icmp ult i64 %i.fs, 16
  call void @llvm.assume(i1 %i.ft)
  %i.fu = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !156 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 8 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.x, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i

bb.x:                                             ; preds = %bb.w
  %i.fx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 4 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !519 ; 4 uses
  %i.fz = icmp ult i64 %i.fy, 16
  call void @llvm.assume(i1 %i.fz)
  %.not.i = icmp eq i64 %i.fs, 0
  %.not38.i = icmp eq i64 %i.fy, 0                ; 2 uses
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not38.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i:       ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ga = add nuw nsw i64 %i.fy, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.ga, i1 false)
  %i.gb = add nuw nsw i64 %i.fs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 8 dereferenceable(1) %i.fp, i64 %i.gb, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fp, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.ga, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  br i1 %.not38.i, label %bb.ab, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i:       ; preds = %bb.z
  %i.gc = add nuw nsw i64 %i.fy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fp, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.gc, i1 false)
  %.pre52.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !156
  %.pre51.i = load i64, ptr %i.fx, align 8, !tbaa !519
  store i64 %.pre51.i, ptr %i.fr, align 8, !tbaa !519
  store i64 0, ptr %i.fx, align 8, !tbaa !519
  store i8 0, ptr %.pre52.i, align 1, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, %bb.ab
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit, !llvm.loop !3446

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i:       ; preds = %bb.y
  %i.gd = add nuw nsw i64 %i.fs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 8 dereferenceable(1) %i.fp, i64 %i.gd, i1 false)
  %.pre50.i = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !156
  %.pre.i17 = load i64, ptr %i.fr, align 8, !tbaa !519
  store i64 %.pre.i17, ptr %i.fx, align 8, !tbaa !519
  store i64 0, ptr %i.fr, align 8, !tbaa !519
  store i8 0, ptr %.pre50.i, align 1, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i:       ; preds = %bb.w
  %i.ge = load i64, ptr %i.fv, align 8, !tbaa !157
  %i.gf = add nuw nsw i64 %i.fs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 8 dereferenceable(1) %i.fp, i64 %i.gf, i1 false)
  store ptr %i.fu, ptr %.sroa.012.1.i.i, align 8, !tbaa !156
  store ptr %i.fv, ptr %.sroa.0.1.i.i, align 8, !tbaa !156
  store i64 %i.ge, ptr %i.fp, align 8, !tbaa !157
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.v
  %i.gg = load i64, ptr %i.fp, align 8, !tbaa !157
  %i.gh = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !156 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 4 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !519 ; 2 uses
  %i.gm = icmp ult i64 %i.gl, 16
  call void @llvm.assume(i1 %i.gm)
  %i.gn = add nuw nsw i64 %i.gl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fp, ptr noundef nonnull align 8 dereferenceable(1) %i.gi, i64 %i.gn, i1 false)
  store ptr %i.fo, ptr %.sroa.0.1.i.i, align 8, !tbaa !156
  store ptr %i.fp, ptr %.sroa.012.1.i.i, align 8, !tbaa !156
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gh, ptr %.sroa.012.1.i.i, align 8, !tbaa !156
  store ptr %i.fo, ptr %.sroa.0.1.i.i, align 8, !tbaa !156
  %i.go = load i64, ptr %i.gi, align 8, !tbaa !157
  store i64 %i.go, ptr %i.fp, align 8, !tbaa !157
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i
  store i64 %i.gg, ptr %i.gi, align 8, !tbaa !157
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i, %bb.z, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !519
  %i.gr = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !519
  store i64 %i.gs, ptr %i.gp, align 8, !tbaa !519
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !519
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit": ; preds = %bb.u
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge3595, i64 noundef %i.ea)
  %i.gt = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.gu = sub i64 %i.gt, %i.ad                    ; 2 uses
  %i.gv = ashr exact i64 %i.gu, 5                 ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, 16
  br i1 %i.gw, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit", !llvm.loop !3441

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEET_SO_SO_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_SO_RT0_.exit", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_SO_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN7rocksdb12_GLOBAL__N_114ManifestPickerC1ERKS7_RKSB_E3$_0EEEvT_T0_SP_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.i = add nsw i64 %2, -1
  %i.j = sdiv i64 %i.i, 2                         ; 2 uses
  %i.k = icmp slt i64 %1, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.051 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.l = shl i64 %.051, 1                         ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr inbounds [32 x i8], ptr %0, i64 %i.m
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #42
  store i64 0, ptr %i.e, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #42
  store i64 0, ptr %i.f, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #42
  %i.q = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef null) ; 0 uses
  %i.r = call noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef null) ; 0 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !533
  %i.t = load i64, ptr %i.f, align 8, !tbaa !533
  %i.u = icmp ugt i64 %i.s, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #42
  %spec.select = select i1 %i.u, i64 %i.o, i64 %i.m ; 5 uses
  %i.v = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %0, i64 %.051 ; 8 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !156  ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !156 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab                ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.ac, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.ac, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !519 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %.not21.i = icmp eq i64 %spec.select, %.051
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !270

bb.c:                                             ; preds = %bb.b
  switch i64 %i.ae, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !157
  store i8 %i.ag, ptr %i.x, align 1, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !519 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !519
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !156
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !157
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !157
  store <2 x i64> %i.an, ptr %i.al, align 8, !tbaa !157
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !157
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !156
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !157
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !157
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %i.v, align 8, !tbaa !156
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.as = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.x, %bb.f ], [ %i.ab, %bb.g ], [ %i.aa, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !519
  store i8 0, ptr %i.as, align 1, !tbaa !157
  %i.au = icmp slt i64 %spec.select, %i.j
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !3447

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %i.av = and i64 %2, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.ax = add nsw i64 %2, -2
  %i.ay = ashr exact i64 %i.ax, 1
  %i.az = icmp eq i64 %.0.lcssa, %i.ay
  br i1 %i.az, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ba = shl nsw i64 %.0.lcssa, 1
  %i.bb = or disjoint i64 %i.ba, 1                ; 3 uses
  %i.bc = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bb ; 9 uses
  %i.bd = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !156 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !156 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 4 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi                ; 2 uses
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.i
  br i1 %i.bj, label %bb.j, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.i
  br i1 %i.bj, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !519 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  %.not21.i28 = icmp eq i64 %i.bb, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.k, !prof !270

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bl, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !157
  store i8 %i.bn, ptr %i.be, align 1, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bh, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !519 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !519
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !156
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !157
  %.pre.i30 = load ptr, ptr %i.bc, align 8, !tbaa !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

.thread.i32:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !156
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bu = load <2 x i64>, ptr %i.bt, align 8, !tbaa !157
  store <2 x i64> %i.bu, ptr %i.bs, align 8, !tbaa !157
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25
end_hunk_3
