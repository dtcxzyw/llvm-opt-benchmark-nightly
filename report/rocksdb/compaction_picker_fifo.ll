inline.NumInlined: 847
inline.NumDeleted: 402
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb12FileMetaData19TryGetNewestKeyTimeEPS0_:bb.a
bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25
  br label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27

_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %.critedge.thread, label %bb.r

.critedge.thread:                                 ; preds = %bb.a, %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27, %.critedge
  %.not21 = icmp eq ptr %1, null
  br i1 %.not21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge.thread
  %i.at = call noundef i64 @_ZN7rocksdb12FileMetaData24TryGetOldestAncesterTimeEv(ptr noundef nonnull align 8 dereferenceable(417) %1) ; 2 uses
  %.not22 = icmp eq i64 %i.at, 0
  br i1 %.not22, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.critedge.thread
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27, %bb.p, %bb.q
  %.3 = phi i64 [ 0, %bb.q ], [ %i.at, %bb.p ], [ %i.ab, %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27 ]
  ret i64 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !108
  store ptr %i.e, ptr %i.b, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !273
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !275    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !108
  store ptr %i.t, ptr %i.s, align 8, !tbaa !108
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i: ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i, %bb.f
  store ptr %i.r, ptr %0, align 8, !tbaa !275
  store ptr %i.v, ptr %i.a, align 8, !tbaa !273
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !274
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN7rocksdb10CompactionC1EPNS_18VersionStorageInfoERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsESt6vectorINS_20CompactionInputFilesESaISD_EEimmjNS_15CompressionTypeENS_18CompressionOptionsENS_11TemperatureEjSC_IPNS_12FileMetaDataESaISK_EESt8optionalImEPKNS_15SnapshotCheckerENS_16CompactionReasonERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdbNS_27BlobGarbageCollectionPolicyEd(ptr noundef nonnull align 16 dereferenceable(12020), ptr noundef, ptr noundef nonnull align 8 dereferenceable(875), ptr noundef nonnull align 8 dereferenceable(736), ptr noundef nonnull align 8 dereferenceable(184), ptr noundef align 8, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i8 noundef zeroext, ptr noundef byval(%"struct.rocksdb::CompressionOptions") align 8, i8 noundef zeroext, i32 noundef, ptr noundef align 8, ptr noundef byval(%"class.std::optional") align 8, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), double noundef, i1 noundef zeroext, i32 noundef, double noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !211    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !306  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !307
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !274
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !308

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !211
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !302
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #27
  br label %_ZNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb20FIFOCompactionPicker18PickSizeCompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEPNS_18VersionStorageInfoEPNS_9LogBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(736) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.154", align 16  ; 15 uses
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %7 = alloca %"class.std::vector.154", align 16  ; 7 uses
  %8 = alloca %"class.std::vector.59", align 8    ; 6 uses
  %9 = alloca %"class.std::optional", align 8     ; 2 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i32, ptr %i.d, align 16, !tbaa !292 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 2712
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread, %bb.a
  %.064.lcssa = phi i64 [ 0, %bb.a ], [ %i.bo, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread ]
  %.062.lcssa = phi i32 [ 0, %bb.a ], [ %i.bp, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread ] ; 4 uses
  %i.i = sext i32 %.062.lcssa to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2776
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !279, !noalias !311 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 2784
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !279, !noalias !311 ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.01421.i = phi i64 [ %i.s, %.lr.ph.i ], [ 0, %._crit_edge ]
  %.sroa.016.019.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.016.019.i, align 8, !tbaa !283, !noalias !311
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !286, !noalias !311
  %i.r = tail call noundef i64 @_ZNK7rocksdb22SharedBlobFileMetaData15GetBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.q), !noalias !311
  %i.s = add i64 %i.r, %.01421.i                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.016.019.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.n
  br i1 %i.u, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit: ; preds = %.lr.ph.i, %._crit_edge
  %.014.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.s, %.lr.ph.i ]
  %i.v = load i64, ptr %i.c, align 8, !tbaa !314
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 5 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !278  ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0                   ; 2 uses
  %spec.select = select i1 %.not.i, i64 %i.v, i64 %i.x ; 4 uses
  %i.y = select i1 %.not.i, i64 0, i64 %.014.lcssa.i
  %spec.select222 = add i64 %i.y, %.064.lcssa     ; 7 uses
  %i.z = icmp ne i32 %.062.lcssa, 0               ; 2 uses
  %.not = icmp ugt i64 %spec.select222, %spec.select ; 2 uses
  %or.cond225 = select i1 %i.z, i1 true, i1 %.not
  br i1 %or.cond225, label %bb.c, label %bb.aw

bb.b:                                             ; preds = %.lr.ph, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread ] ; 3 uses
  %.062237 = phi i32 [ 0, %.lr.ph ], [ %i.bp, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread ] ; 2 uses
  %.064236 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !106 ; 7 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val91 = load ptr, ptr %i.ab, align 8, !tbaa !106 ; 3 uses
  %i.ac = icmp eq ptr %.val, %.val91
  br i1 %i.ac, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.b
  %.val91296 = ptrtoaddr ptr %.val91 to i64
  %.val297 = ptrtoaddr ptr %.val to i64
  %i.ad = add i64 %.val91296, -8
  %i.ae = sub i64 %i.ad, %.val297                 ; 3 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check, label %.lr.ph.i92.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check298 = icmp ult i64 %i.ae, 120
  br i1 %min.iters.check298, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.ag, 12
  %n.vec = and i64 %i.ag, 4611686018427387888     ; 4 uses
  %i.ai = shl i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %.val, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi299 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi300 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi301 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %i.ak = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.val, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 64
  %i.an = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !108
  %wide.load302 = load <4 x ptr>, ptr %i.al, align 8, !tbaa !108
  %wide.load303 = load <4 x ptr>, ptr %i.am, align 8, !tbaa !108
  %wide.load304 = load <4 x ptr>, ptr %i.an, align 8, !tbaa !108
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 24
  %wide.gep305 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load302, i64 24
  %wide.gep306 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load303, i64 24
  %wide.gep307 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load304, i64 24
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %wide.masked.gather308 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep305, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %wide.masked.gather309 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep306, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %wide.masked.gather310 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep307, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %i.ao = freeze <4 x i64> %wide.masked.gather
  %i.ap = freeze <4 x i64> %wide.masked.gather308
  %i.aq = freeze <4 x i64> %wide.masked.gather309
  %i.ar = freeze <4 x i64> %wide.masked.gather310
  %i.as = add <4 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.at = add <4 x i64> %i.ap, %vec.phi299        ; 2 uses
  %i.au = add <4 x i64> %i.aq, %vec.phi300        ; 2 uses
  %i.av = add <4 x i64> %i.ar, %vec.phi301        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.at, %i.as
  %bin.rdx311 = add <4 x i64> %i.au, %bin.rdx
  %bin.rdx312 = add <4 x i64> %i.av, %bin.rdx311
  %i.ax = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx312) ; 3 uses
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i92.preheader, label %vec.epilog.ph, !prof !127

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ax, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec313 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ay = shl i64 %n.vec313, 3
  %i.az = getelementptr i8, ptr %.val, i64 %i.ay
  %i.ba = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index314 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next320, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi315 = phi <4 x i64> [ %i.ba, %vec.epilog.ph ], [ %i.bd, %vec.epilog.vector.body ]
  %i.bb = shl i64 %index314, 3
  %next.gep316 = getelementptr i8, ptr %.val, i64 %i.bb
  %wide.load317 = load <4 x ptr>, ptr %next.gep316, align 8, !tbaa !108
  %wide.gep318 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load317, i64 24
  %wide.masked.gather319 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep318, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %i.bc = freeze <4 x i64> %wide.masked.gather319
  %i.bd = add <4 x i64> %i.bc, %vec.phi315        ; 2 uses
  %index.next320 = add nuw i64 %index314, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next320, %n.vec313
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !316

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bf = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bd) ; 2 uses
  %cmp.n321 = icmp eq i64 %i.ag, %n.vec313
  br i1 %cmp.n321, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %.lr.ph.i92.preheader

.lr.ph.i92.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i.ph = phi i64 [ 0, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  %.sroa.01.04.i.ph = phi ptr [ %.val, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %.lr.ph.i92.preheader, %.lr.ph.i92
  %.05.i = phi i64 [ %i.bj, %.lr.ph.i92 ], [ %.05.i.ph, %.lr.ph.i92.preheader ]
  %.sroa.01.04.i = phi ptr [ %i.bk, %.lr.ph.i92 ], [ %.sroa.01.04.i.ph, %.lr.ph.i92.preheader ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.01.04.i, align 8, !tbaa !108
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !110
  %.fr226 = freeze i64 %i.bi
  %i.bj = add i64 %.fr226, %.05.i                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 8 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %.val91
  br i1 %i.bl, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %.lr.ph.i92, !llvm.loop !317

_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit: ; preds = %.lr.ph.i92, %vec.epilog.middle.block, %middle.block
  %.lcssa293 = phi i64 [ %i.bf, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %i.bj, %.lr.ph.i92 ] ; 2 uses
  %i.bm = add i64 %.lcssa293, %.064236
  %.not90 = icmp eq i64 %.lcssa293, 0
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select223 = select i1 %.not90, i32 %.062237, i32 %i.bn
  br label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread

_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit.thread: ; preds = %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, %bb.b
  %i.bo = phi i64 [ %i.bm, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit ], [ %.064236, %bb.b ] ; 2 uses
  %i.bp = phi i32 [ %spec.select223, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit ], [ %.062237, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !318

bb.c:                                             ; preds = %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !210
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %1, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.bt)
  br label %bb.aw

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr null)
          to label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit unwind label %bb.j

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.e
  %i.bw = load ptr, ptr %6, align 16, !tbaa !211
  store i32 %.062.lcssa, ptr %i.bw, align 8, !tbaa !214
  br i1 %i.z, label %bb.v, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !273 ; 3 uses
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !275 ; 2 uses
  %i.ca = load i64, ptr %i.w, align 8, !tbaa !278
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = icmp ne ptr %i.by, %i.bz
  %or.cond = and i1 %i.cc, %i.cb
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = ptrtoint ptr %i.by to i64
  %i.cf = sub i64 %i.ce, %i.cd
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = udiv i64 %spec.select222, %i.cg
  %i.ci = icmp ugt i64 %i.cg, %spec.select222
  %.sroa.speculated152 = select i1 %i.ci, i64 1, i64 %i.ch
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cj = phi i64 [ %.sroa.speculated152, %bb.g ], [ 0, %bb.f ]
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %bb.h
  %.sroa.0149.0 = phi ptr [ %i.by, %bb.h ], [ %i.cn, %bb.t ] ; 2 uses
  %.0215 = phi i64 [ %spec.select222, %bb.h ], [ %i.cs, %bb.t ]
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !106, !noalias !319
  %i.cl = icmp eq ptr %.sroa.0149.0, %i.ck
  br i1 %i.cl, label %.loopexit, label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.k:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds i8, ptr %.sroa.0149.0, i64 -8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !108 ; 5 uses
  %i.cp = load i64, ptr %i.w, align 8, !tbaa !278
  %.not81 = icmp eq i64 %i.cp, 0
  br i1 %.not81, label %bb.l, label %bb.m

.loopexit229:                                     ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit231 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp230:                            ; preds = %bb.p
  %lpad.loopexit.split-lp232 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !209
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink = phi i64 [ %i.cr, %bb.l ], [ %i.cj, %bb.k ]
  %i.cs = call i64 @llvm.usub.sat.i64(i64 %.0215, i64 %.sink) ; 2 uses
  %i.ct = load ptr, ptr %6, align 16, !tbaa !211  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !273 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !274
  %.not.i96 = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i96, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.co, ptr %i.cw, align 8, !tbaa !108
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cz, ptr %i.cv, align 8, !tbaa !273
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %bb.m
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !275 ; 4 uses
  %i.db = ptrtoint ptr %i.cw to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.p, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
          to label %.noexc97 unwind label %.loopexit.split-lp230

.noexc97:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #26
          to label %.noexc98 unwind label %.loopexit229 ; 4 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.dd ; 2 uses
  store ptr %i.co, ptr %i.dm, align 8, !tbaa !108
  %i.dn = icmp sgt i64 %i.dd, 0
  br i1 %i.dn, label %bb.q, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.q:                                             ; preds = %.noexc98
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr align 8 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.q, %.noexc98
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.not.i17.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.dl, ptr %i.cu, align 8, !tbaa !275
  store ptr %i.do, ptr %i.cv, align 8, !tbaa !273
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.dp, ptr %i.cx, align 8, !tbaa !274
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !322
  %i.ds = invoke noundef i32 @_ZN7rocksdb16AppendHumanBytesEmPci(i64 noundef %i.dr, ptr noundef nonnull %i.a, i32 noundef 16)
          to label %bb.s unwind label %bb.u       ; 0 uses

bb.s:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit
  %i.dt = load ptr, ptr %1, align 8, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !300
  %i.dw = and i64 %i.dv, 4611686018427387903
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.44, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.dt, i64 noundef %i.dw, ptr noundef nonnull %i.a)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not85 = icmp ugt i64 %i.cs, %spec.select
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %.not85, label %bb.i, label %.loopexit, !llvm.loop !323

bb.u:                                             ; preds = %bb.s, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.av

bb.v:                                             ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  br i1 %.not, label %bb.w, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !273 ; 4 uses
  %i.ea = load ptr, ptr %i.j, align 8, !tbaa !275 ; 4 uses
  %i.eb = load i64, ptr %i.w, align 8, !tbaa !278
  %i.ec = icmp ne i64 %i.eb, 0
  %i.ed = icmp ne ptr %i.dz, %i.ea
  %or.cond4 = and i1 %i.ed, %i.ec
  br i1 %or.cond4, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = ptrtoint ptr %i.dz to i64
  %i.eg = sub i64 %i.ef, %i.ee
  %i.eh = ashr exact i64 %i.eg, 3                 ; 2 uses
  %i.ei = udiv i64 %spec.select222, %i.eh
  %i.ej = icmp ugt i64 %i.eh, %spec.select222
  %.sroa.speculated = select i1 %i.ej, i64 1, i64 %i.ei
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ek = phi i64 [ %.sroa.speculated, %bb.x ], [ 0, %bb.w ]
  %i.el = icmp eq ptr %i.ea, %i.dz
  br i1 %i.el, label %.loopexit, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.y, %select.unfold
  %.0211240 = phi i64 [ %.1212.ph, %select.unfold ], [ %spec.select222, %bb.y ] ; 2 uses
  %.sroa.0136.0239 = phi ptr [ %i.gc, %select.unfold ], [ %i.ea, %bb.y ] ; 5 uses
  %i.em = load ptr, ptr %.sroa.0136.0239, align 8, !tbaa !108 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 188
  %i.eo = load i8, ptr %i.en, align 4, !tbaa !324, !range !325, !noundef !144
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %select.unfold, label %bb.z

bb.z:                                             ; preds = %.lr.ph242
  %i.eq = load i64, ptr %i.w, align 8, !tbaa !278
  %.not78 = icmp eq i64 %i.eq, 0
  br i1 %.not78, label %bb.aa, label %bb.ab

.loopexit227:                                     ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i103
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aa:                                            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.es = load i64, ptr %i.er, align 8, !tbaa !209
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sink291 = phi i64 [ %i.es, %bb.aa ], [ %i.ek, %bb.z ]
  %i.et = call i64 @llvm.usub.sat.i64(i64 %.0211240, i64 %.sink291) ; 3 uses
  %i.eu = load ptr, ptr %6, align 16, !tbaa !211  ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !273 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !274
  %.not.i102 = icmp eq ptr %i.ex, %i.ez
  br i1 %.not.i102, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.em, ptr %i.ex, align 8, !tbaa !108
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.fa, ptr %i.ew, align 8, !tbaa !273
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit111

bb.ad:                                            ; preds = %bb.ab
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !275 ; 4 uses
  %i.fc = ptrtoint ptr %i.ex to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 6 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %bb.ae, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i103

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
          to label %.noexc109 unwind label %.loopexit.split-lp

.noexc109:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i103: ; preds = %bb.ad
  %i.fg = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i104 = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i104, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 1152921504606846975)
  %i.fk = select i1 %i.fi, i64 1152921504606846975, i64 %i.fj ; 3 uses
  %.not.i.i.i105 = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i.i105)
  %i.fl = shl nuw nsw i64 %i.fk, 3
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #26
          to label %.noexc110 unwind label %.loopexit227 ; 4 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i103
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.fe ; 2 uses
  %i.fo = load ptr, ptr %.sroa.0136.0239, align 8, !tbaa !108
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !108
  %i.fp = icmp sgt i64 %i.fe, 0
  br i1 %i.fp, label %bb.af, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i106

bb.af:                                            ; preds = %.noexc110
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fm, ptr align 8 %i.fb, i64 %i.fe, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i106

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i106: ; preds = %bb.af, %.noexc110
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.not.i17.i.i107 = icmp eq ptr %i.fb, null
  br i1 %.not.i17.i.i107, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i108, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i106
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fe) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i108

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i108: ; preds = %bb.ag, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i106
  store ptr %i.fm, ptr %i.ev, align 8, !tbaa !275
  store ptr %i.fq, ptr %i.ew, align 8, !tbaa !273
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.fr, ptr %i.ey, align 8, !tbaa !274
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit111

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit111: ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i108, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.fs = load ptr, ptr %.sroa.0136.0239, align 8, !tbaa !108
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !322
  %i.fv = invoke noundef i32 @_ZN7rocksdb16AppendHumanBytesEmPci(i64 noundef %i.fu, ptr noundef nonnull %i.b, i32 noundef 16)
          to label %bb.ah unwind label %bb.aj     ; 0 uses

bb.ah:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit111
  %i.fw = load ptr, ptr %1, align 8, !tbaa !14
  %i.fx = load ptr, ptr %.sroa.0136.0239, align 8, !tbaa !108
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !300
  %i.ga = and i64 %i.fz, 4611686018427387903
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.45, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.fw, i64 noundef %i.ga, ptr noundef nonnull %i.b, i64 noundef %i.et, i64 noundef %spec.select)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.not80 = icmp ugt i64 %i.et, %spec.select
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %.not80, label %select.unfold, label %.loopexit

bb.aj:                                            ; preds = %bb.ah, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit111
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.av

select.unfold:                                    ; preds = %bb.ai, %.lr.ph242
  %.1212.ph = phi i64 [ %.0211240, %.lr.ph242 ], [ %i.et, %bb.ai ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0136.0239, i64 8 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.dz
  br i1 %i.gd, label %.loopexit, label %.lr.ph242

.loopexit:                                        ; preds = %bb.t, %bb.i, %bb.ai, %select.unfold, %bb.y
  %i.ge = invoke noalias noundef nonnull dereferenceable(12032) ptr @_Znwm(i64 noundef 12032) #26
          to label %._crit_edge.i.i unwind label %bb.ap ; 4 uses

._crit_edge.i.i:                                  ; preds = %.loopexit
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !130, !nonnull !144, !align !145
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gi = load <2 x ptr>, ptr %6, align 16, !tbaa !301
  store <2 x ptr> %i.gi, ptr %7, align 16, !tbaa !301
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gk = load ptr, ptr %i.bv, align 16, !tbaa !302
  store ptr %i.gk, ptr %i.gj, align 16, !tbaa !302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i8 0, ptr %i.gm, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.gn, ptr %10, align 8, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.go, align 8, !tbaa !18
  store i8 0, ptr %i.gn, align 8, !tbaa !17
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 4072
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !19
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !22
  invoke void @_ZN7rocksdb10CompactionC1EPNS_18VersionStorageInfoERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsESt6vectorINS_20CompactionInputFilesESaISD_EEimmjNS_15CompressionTypeENS_18CompressionOptionsENS_11TemperatureEjSC_IPNS_12FileMetaDataESaISK_EESt8optionalImEPKNS_15SnapshotCheckerENS_16CompactionReasonERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdbNS_27BlobGarbageCollectionPolicyEd(ptr noundef nonnull align 16 dereferenceable(12020) %i.ge, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(875) %i.gg, ptr noundef nonnull align 8 dereferenceable(736) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 %7, i32 noundef %.062.lcssa, i64 noundef 0, i64 noundef 0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull byval(%"struct.rocksdb::CompressionOptions") align 8 %i.gl, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull align 8 %8, ptr noundef nonnull byval(%"class.std::optional") align 8 %9, ptr noundef null, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(32) %10, double noundef %i.gr, i1 noundef zeroext true, i32 noundef 2, double noundef -1.000000e+00)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.gs = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.gn
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.gu = load i64, ptr %i.gn, align 8, !tbaa !17
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.gw = load ptr, ptr %8, align 8, !tbaa !275   ; 3 uses
  %.not.i.i.i115 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !274
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hb) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.al
  %i.hc = load ptr, ptr %7, align 16, !tbaa !211  ; 3 uses
  %i.hd = load ptr, ptr %i.gh, align 8, !tbaa !305 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hc, %i.hd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hs, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i ], [ %i.hc, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !306 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !307
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.am, %.lr.ph.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !275 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !274
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #27
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i: ; preds = %bb.an, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.hs, %i.hd
  br i1 %.not.i.i.i116, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !308

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !211
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit
  %i.ht = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.hc, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i
  %i.hu = load ptr, ptr %i.gj, align 16, !tbaa !302
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.ht to i64
  %i.hx = sub i64 %i.hv, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hx) #27
  br label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit

bb.ap:                                            ; preds = %.loopexit
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aq:                                            ; preds = %._crit_edge.i.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %10, align 8, !tbaa !14   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.gn
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.aq
  %i.ic = load i64, ptr %i.gn, align 8, !tbaa !17
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ie = load ptr, ptr %8, align 8, !tbaa !275   ; 3 uses
  %.not.i.i.i120 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit121, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.if = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !274
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ij) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit121

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.ar
  call void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 12032) #27
  br label %bb.av

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit: ; preds = %bb.ao, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, %bb.v
  %.0 = phi ptr [ null, %bb.v ], [ %i.ge, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i ], [ %i.ge, %bb.ao ]
  %i.ik = load ptr, ptr %6, align 16, !tbaa !211  ; 3 uses
  %i.il = load ptr, ptr %i.bu, align 8, !tbaa !305 ; 2 uses
  %.not4.i.i.i122 = icmp eq ptr %i.ik, %i.il
  br i1 %.not4.i.i.i122, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i132, label %.lr.ph.i.i.i123

.lr.ph.i.i.i123:                                  ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i128
  %.05.i.i.i124 = phi ptr [ %i.ja, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i128 ], [ %i.ik, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit ] ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i124, i64 32
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !306 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i125 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i.i.i.i.i125, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i126, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i123
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i124, i64 48
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !307
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i126

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i126: ; preds = %bb.as, %.lr.ph.i.i.i123
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i124, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !275 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i127 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i127, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i128, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i126
  %i.iv = getelementptr inbounds nuw i8, ptr %.05.i.i.i124, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !274
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #27
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i128

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i128: ; preds = %bb.at, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i126
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i.i124, i64 56 ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.ja, %i.il
  br i1 %.not.i.i.i129, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i130, label %.lr.ph.i.i.i123, !llvm.loop !308

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i130: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i128
  %.pr.i131 = load ptr, ptr %6, align 16, !tbaa !211
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i132

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i132: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i130, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.jb = phi ptr [ %.pr.i131, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i130 ], [ %i.ik, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i133 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i1.i133, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit134, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i132
  %i.jc = load ptr, ptr %i.bv, align 16, !tbaa !302
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.jb to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jf) #27
  br label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit134

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit134: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i132, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aw

bb.av:                                            ; preds = %.loopexit227, %.loopexit.split-lp, %.loopexit229, %.loopexit.split-lp230, %bb.aj, %bb.u, %bb.ap, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit121, %bb.j
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.j ], [ %i.hy, %bb.ap ], [ %lpad.loopexit.split-lp232, %.loopexit.split-lp230 ], [ %i.hz, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit121 ], [ %i.dx, %bb.u ], [ %i.gb, %bb.aj ], [ %lpad.loopexit231, %.loopexit229 ], [ %lpad.loopexit, %.loopexit227 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn86.pn.pn

bb.aw:                                            ; preds = %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit134, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ %.0, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit134 ], [ null, %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit ]
  ret ptr %.1
}

end_hunk_0
begin_hunk_1_@_ZN7rocksdb20FIFOCompactionPicker31PickRatioBasedIntraL0CompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEPNS_18VersionStorageInfoEPNS_9LogBufferE:bb.a
  tail call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.k, i32 noundef %i.j, i64 noundef %i.o)
  br label %.critedge147

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge145, label %bb.b, !llvm.loop !355

.critedge145:                                     ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !210
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %.critedge147

bb.e:                                             ; preds = %.critedge145
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 2712
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !348  ; 2 uses
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %.critedge147, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = zext nneg i32 %i.v to i64                ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !273  ; 3 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !275 ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.x
  br i1 %i.af, label %.critedge147, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !349 ; 2 uses
  %.not127 = icmp eq i64 %i.ah, 0
  br i1 %.not127, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq ptr %i.aa, %i.z
  br i1 %i.ai, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.aj = add i64 %i.ab, -8
  %i.ak = sub i64 %i.aj, %i.ac                    ; 3 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check454 = icmp ult i64 %i.ak, 120
  br i1 %min.iters.check454, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.am, 12
  %n.vec = and i64 %i.am, 4611686018427387888     ; 4 uses
  %i.ao = shl i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %i.aa, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi455.a = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi456.a = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi457 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %i.aq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.aq ; 4 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 32
  %i.as = getelementptr i8, ptr %next.gep, i64 64
  %i.at = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !108
  %wide.load458.a = load <4 x ptr>, ptr %i.ar, align 8, !tbaa !108
  %wide.load459.a = load <4 x ptr>, ptr %i.as, align 8, !tbaa !108
  %wide.load460 = load <4 x ptr>, ptr %i.at, align 8, !tbaa !108
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 24
  %wide.gep461.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load458.a, i64 24
  %wide.gep462.a = getelementptr inbounds nuw i8, <4 x ptr> %wide.load459.a, i64 24
  %wide.gep463 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load460, i64 24
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %wide.masked.gather464.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep461.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %wide.masked.gather465.a = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep462.a, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %wide.masked.gather466 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep463, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %i.au = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.av = add <4 x i64> %wide.masked.gather464.a, %vec.phi455.a ; 2 uses
  %i.aw = add <4 x i64> %wide.masked.gather465.a, %vec.phi456.a ; 2 uses
  %i.ax = add <4 x i64> %wide.masked.gather466, %vec.phi457 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !356

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.av, %i.au
  %bin.rdx467.a = add <4 x i64> %i.aw, %bin.rdx
  %bin.rdx468 = add <4 x i64> %i.ax, %bin.rdx467.a
  %i.az = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx468) ; 3 uses
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !127

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.az, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec469 = and i64 %i.am, 4611686018427387900  ; 3 uses
  %i.ba = shl i64 %n.vec469, 3
  %i.bb = getelementptr i8, ptr %i.aa, i64 %i.ba
  %i.bc = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index470 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next476, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi471 = phi <4 x i64> [ %i.bc, %vec.epilog.ph ], [ %i.be, %vec.epilog.vector.body ]
  %i.bd = shl i64 %index470, 3
  %next.gep472 = getelementptr i8, ptr %i.aa, i64 %i.bd
  %wide.load473 = load <4 x ptr>, ptr %next.gep472, align 8, !tbaa !108
  %wide.gep474 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load473, i64 24
  %wide.masked.gather475 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep474, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !110
  %i.be = add <4 x i64> %wide.masked.gather475, %vec.phi471 ; 2 uses
  %index.next476 = add nuw i64 %index470, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next476, %n.vec469
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !357

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bg = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.be) ; 2 uses
  %cmp.n477 = icmp eq i64 %i.am, %n.vec469
  br i1 %cmp.n477, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i.ph = phi i64 [ 0, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.sroa.01.04.i.ph = phi ptr [ %i.aa, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05.i = phi i64 [ %i.bk, %.lr.ph.i ], [ %.05.i.ph, %.lr.ph.i.preheader ]
  %.sroa.01.04.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.sroa.01.04.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bh = load ptr, ptr %.sroa.01.04.i, align 8, !tbaa !108
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !110
  %i.bk = add i64 %i.bj, %.05.i                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.z
  br i1 %i.bm, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %.lr.ph.i, !llvm.loop !358

_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.bg, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %i.bk, %.lr.ph.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 2776
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !279, !noalias !359 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 2784
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !279, !noalias !359 ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, %.lr.ph.i151
  %.01421.i = phi i64 [ %i.bv, %.lr.ph.i151 ], [ 0, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit ]
  %.sroa.016.019.i = phi ptr [ %i.bw, %.lr.ph.i151 ], [ %i.bo, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit ] ; 2 uses
  %i.bs = load ptr, ptr %.sroa.016.019.i, align 8, !tbaa !283, !noalias !359
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !286, !noalias !359
  %i.bu = tail call noundef i64 @_ZNK7rocksdb22SharedBlobFileMetaData15GetBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bt), !noalias !359
  %i.bv = add i64 %i.bu, %.01421.i                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.016.019.i, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bq
  br i1 %i.bx, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i151

_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit: ; preds = %.lr.ph.i151, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit
  %.014.lcssa.i = phi i64 [ 0, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit ], [ %i.bv, %.lr.ph.i151 ] ; 2 uses
  %i.by = add i64 %.014.lcssa.i, %.0.lcssa.i      ; 2 uses
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = icmp ne i64 %.0.lcssa.i, 0
  %or.cond.not = and i1 %i.ca, %i.bz
  br i1 %or.cond.not, label %bb.i, label %.critedge147

bb.i:                                             ; preds = %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit
  %.not128 = icmp eq i64 %.014.lcssa.i, 0
  %i.cb = uitofp i64 %.0.lcssa.i to double
  %i.cc = uitofp i64 %i.by to double
  %i.cd = fdiv double %i.cb, %i.cc
  %i.ce = select i1 %.not128, double 1.000000e+00, double %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !278
  %i.ch = uitofp i64 %i.cg to double
  %i.ci = fmul double %i.ce, %i.ch
  %i.cj = fptoui double %i.ci to i64              ; 2 uses
  %i.ck = udiv i64 %i.cj, %i.x                    ; 2 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.53, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.cl, double noundef %i.ce, i64 noundef %i.ck)
  %i.cm = icmp ugt i64 %i.x, %i.cj
  br i1 %i.cm, label %.critedge147, label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %.0 = phi i64 [ %i.ck, %bb.i ], [ %i.ah, %bb.g ] ; 5 uses
  %i.cn = icmp ugt i64 %.0, 10239
  br i1 %i.cn, label %.lr.ph312, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i154

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.co = icmp eq ptr %.sroa.0223.3, %.sroa.13.2
  br i1 %i.co, label %bb.p, label %_ZNSt6vectorImSaImEE9push_backERKm.exit162

.lr.ph312:                                        ; preds = %bb.j, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %storemerge311 = phi i64 [ %i.dd, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.0, %bb.j ] ; 3 uses
  %.sroa.0223.0310 = phi ptr [ %.sroa.0223.3, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %bb.j ] ; 7 uses
  %.sroa.13.0309 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %bb.j ] ; 6 uses
  %.sroa.22.0308 = phi ptr [ %.sroa.22.3.a, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ null, %bb.j ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.0309, %.sroa.22.0308
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph312
  store i64 %storemerge311, ptr %.sroa.13.0309, align 8, !tbaa !209
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.l:                                             ; preds = %.lr.ph312
  %i.cp = ptrtoint ptr %.sroa.13.0309 to i64
  %i.cq = ptrtoint ptr %.sroa.0223.0310 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 6 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
          to label %.noexc unwind label %.loopexit.split-lp272

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #26
          to label %.noexc152 unwind label %.loopexit271 ; 4 uses

.noexc152:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  store i64 %storemerge311, ptr %i.da, align 8, !tbaa !209
  %i.db = icmp sgt i64 %i.cr, 0
  br i1 %i.db, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr align 8 %.sroa.0223.0310, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc152
  %.not.i17.i.i = icmp eq ptr %.sroa.0223.0310, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0223.0310, i64 noundef %i.cr) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.k
  %.sroa.22.3.a = phi ptr [ %i.dc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.22.0308, %bb.k ] ; 5 uses
  %.pn268 = phi ptr [ %i.da, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.13.0309, %bb.k ] ; 2 uses
  %.sroa.0223.3 = phi ptr [ %i.cz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0223.0310, %bb.k ] ; 5 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn268, i64 8 ; 5 uses
  %i.dd = udiv i64 %storemerge311, %i.x           ; 2 uses
  %i.de = icmp ugt i64 %i.dd, 10239
  br i1 %i.de, label %.lr.ph312, label %._crit_edge, !llvm.loop !362

.loopexit271:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit273 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197

.loopexit.split-lp272:                            ; preds = %bb.m
  %lpad.loopexit.split-lp274 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197

bb.p:                                             ; preds = %._crit_edge
  %.not.i153 = icmp eq ptr %.sroa.13.2, %.sroa.22.3.a
  br i1 %.not.i153, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i154, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.0, ptr %.sroa.13.2, align 8, !tbaa !209
  %i.df = getelementptr inbounds nuw i8, ptr %.pn268, i64 16
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit162

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i154: ; preds = %bb.j, %bb.p
  %.sroa.22.0.lcssa394403 = phi ptr [ %.sroa.22.3.a, %bb.p ], [ null, %bb.j ] ; 2 uses
  %.sroa.0223.0.lcssa396402 = phi ptr [ %.sroa.0223.3, %bb.p ], [ null, %bb.j ] ; 2 uses
  %i.dg = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157 unwind label %bb.s ; 4 uses

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i154
  store i64 %.0, ptr %i.dg, align 8, !tbaa !209
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %.not.i17.i.i158 = icmp eq ptr %.sroa.22.0.lcssa394403, null
  br i1 %.not.i17.i.i158, label %_ZNSt6vectorImSaImEE9push_backERKm.exit162, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0223.0.lcssa396402, i64 noundef 0) #27
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit162

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i154
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197

_ZNSt6vectorImSaImEE9push_backERKm.exit162:       ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157, %bb.r, %bb.q, %._crit_edge
  %.sroa.22.1.a = phi ptr [ %.sroa.22.3.a, %._crit_edge ], [ %.sroa.22.3.a, %bb.q ], [ %i.dh, %bb.r ], [ %i.dh, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157 ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.2, %._crit_edge ], [ %i.df, %bb.q ], [ %i.dh, %bb.r ], [ %i.dh, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157 ] ; 4 uses
  %.sroa.0223.1 = phi ptr [ %.sroa.0223.3, %._crit_edge ], [ %.sroa.0223.3, %bb.q ], [ %i.dg, %bb.r ], [ %i.dg, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157 ] ; 11 uses
  %i.dj = icmp ne ptr %.sroa.0223.1, %.sroa.13.1
  %.sroa.0.010.i.i = getelementptr inbounds i8, ptr %.sroa.13.1, i64 -8 ; 2 uses
  %.not11.i.i = icmp ult ptr %.sroa.0223.1, %.sroa.0.010.i.i
  %or.cond.i.i = select i1 %i.dj, i1 %.not11.i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit162, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit162 ] ; 3 uses
  %.sroa.07.012.i.i = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %.sroa.0223.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit162 ] ; 3 uses
  %i.dk = load i64, ptr %.sroa.07.012.i.i, align 8, !tbaa !209
  %i.dl = load i64, ptr %.sroa.0.013.i.i, align 8, !tbaa !209
  store i64 %i.dl, ptr %.sroa.07.012.i.i, align 8, !tbaa !209
  store i64 %i.dk, ptr %.sroa.0.013.i.i, align 8, !tbaa !209
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.dm, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, !llvm.loop !363

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit162
  %i.dn = icmp eq ptr %.sroa.0223.1, %.sroa.13.1
  br i1 %i.dn, label %.loopexit270, label %.lr.ph325

.lr.ph325:                                        ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %.thread264
  %.sroa.0218.0324 = phi ptr [ %i.jz, %.thread264 ], [ %.sroa.0223.1, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit ] ; 2 uses
  %i.do = load i64, ptr %.sroa.0218.0324, align 8, !tbaa !209 ; 7 uses
  %i.dp = load ptr, ptr %i.y, align 8, !tbaa !273 ; 2 uses
  %i.dq = load ptr, ptr %i.t, align 8, !tbaa !275 ; 2 uses
  %.not131320 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not131320, label %.thread264, label %.lr.ph323

.lr.ph323:                                        ; preds = %.lr.ph325
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.ds, %i.dr
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = shl i64 %i.do, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph323, %.backedge
  %.0113321 = phi i64 [ %i.du, %.lr.ph323 ], [ %.0113.be, %.backedge ] ; 2 uses
  %i.dw = add i64 %.0113321, -1                   ; 3 uses
  %i.dx = load ptr, ptr %i.t, align 8, !tbaa !275 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !108 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !110
  %.not132 = icmp ult i64 %i.eb, %i.do
  br i1 %.not132, label %bb.u, label %.backedge

bb.u:                                             ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 188
  %i.ed = load i8, ptr %i.ec, align 4, !tbaa !324, !range !325, !noundef !144
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %.backedge, label %.preheader

.backedge:                                        ; preds = %bb.bb, %bb.ba, %bb.t, %bb.u
  %.0113.be = phi i64 [ %i.dw, %bb.t ], [ %i.dw, %bb.u ], [ %.0111.lcssa, %bb.ba ], [ %.0111.lcssa, %bb.bb ] ; 2 uses
  %.not131 = icmp eq i64 %.0113.be, 0
  br i1 %.not131, label %.thread264, label %bb.t, !llvm.loop !364

.preheader:                                       ; preds = %bb.u, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit
  %i.ef = phi ptr [ %i.fg, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %i.dx, %bb.u ] ; 2 uses
  %.0111319 = phi i64 [ %i.eg, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.0113321, %bb.u ] ; 4 uses
  %.0112318 = phi i64 [ %i.fl, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ 0, %bb.u ] ; 6 uses
  %.sroa.16.0317 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.u ] ; 6 uses
  %.sroa.11.0316 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.u ] ; 6 uses
  %.sroa.0207.0315 = phi ptr [ %.sroa.0207.3, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.u ] ; 10 uses
  %i.eg = add i64 %.0111319, -1                   ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !108 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !110 ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.do
  br i1 %i.el, label %bb.v, label %.critedge

bb.v:                                             ; preds = %.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 188
  %i.en = load i8, ptr %i.em, align 4, !tbaa !324, !range !325, !noundef !144
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not134 = icmp uge i64 %.0112318, %i.do
  %i.ep = add i64 %i.ek, %.0112318
  %i.eq = icmp ugt i64 %i.ep, %i.dv
  %or.cond327 = and i1 %.not134, %i.eq
  br i1 %or.cond327, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i163 = icmp eq ptr %.sroa.11.0316, %.sroa.16.0317
  br i1 %.not.i163, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.ei, ptr %.sroa.11.0316, align 8, !tbaa !108
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

bb.z:                                             ; preds = %bb.x
  %i.er = ptrtoint ptr %.sroa.16.0317 to i64
  %i.es = ptrtoint ptr %.sroa.0207.0315 to i64
  %i.et = sub i64 %i.er, %i.es                    ; 7 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.aa, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
          to label %.noexc167 unwind label %.loopexit.split-lp

.noexc167:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.ev = ashr exact i64 %i.et, 3                 ; 3 uses
  %.sroa.speculated.i.i.i164 = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i164, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = tail call i64 @llvm.umin.i64(i64 %i.ew, i64 1152921504606846975)
  %i.ez = select i1 %i.ex, i64 1152921504606846975, i64 %i.ey ; 3 uses
  %.not.i.i.i165 = icmp ne i64 %i.ez, 0
  tail call void @llvm.assume(i1 %.not.i.i.i165)
  %i.fa = shl nuw nsw i64 %i.ez, 3
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #26
          to label %.noexc168 unwind label %.loopexit269 ; 4 uses

.noexc168:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %i.et ; 2 uses
  %i.fd = load ptr, ptr %i.eh, align 8, !tbaa !108
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !108
  %i.fe = icmp sgt i64 %i.et, 0
  br i1 %i.fe, label %bb.ab, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.ab:                                            ; preds = %.noexc168
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fb, ptr align 8 %.sroa.0207.0315, i64 %i.et, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.ab, %.noexc168
  %.not.i17.i.i166 = icmp eq ptr %.sroa.0207.0315, null
  br i1 %.not.i17.i.i166, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.0315, i64 noundef %i.et) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ez
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !275
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.y
  %i.fg = phi ptr [ %.pre, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ef, %bb.y ] ; 2 uses
  %.sroa.0207.3 = phi ptr [ %i.fb, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0207.0315, %bb.y ] ; 2 uses
  %.pn267 = phi ptr [ %i.fc, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.11.0316, %bb.y ]
  %.sroa.16.3 = phi ptr [ %i.ff, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.16.0317, %bb.y ] ; 2 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn267, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.eg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !108
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !110
  %i.fl = add i64 %i.fk, %.0112318                ; 2 uses
  %.not133 = icmp eq i64 %i.eg, 0
  br i1 %.not133, label %.critedge, label %.preheader, !llvm.loop !365

.critedge:                                        ; preds = %bb.w, %.preheader, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit, %bb.v
  %i.fm = phi ptr [ %.sroa.0207.0315, %.preheader ], [ %.sroa.0207.3, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.0207.0315, %bb.w ], [ %.sroa.0207.0315, %bb.v ] ; 8 uses
  %i.fn = phi ptr [ %.sroa.11.0316, %.preheader ], [ %.sroa.11.1, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.11.0316, %bb.w ], [ %.sroa.11.0316, %bb.v ] ; 3 uses
  %i.fo = phi ptr [ %.sroa.16.0317, %.preheader ], [ %.sroa.16.3, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.16.0317, %bb.w ], [ %.sroa.16.0317, %bb.v ] ; 3 uses
  %.0112.lcssa = phi i64 [ %.0112318, %.preheader ], [ %i.fl, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.0112318, %bb.w ], [ %.0112318, %bb.v ] ; 2 uses
  %.0111.lcssa = phi i64 [ %.0111319, %.preheader ], [ 0, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.0111319, %bb.w ], [ %.0111319, %bb.v ] ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 7 uses
  %i.fs = icmp ult i64 %i.fr, 9
  %.not135 = icmp ult i64 %.0112.lcssa, %i.do
  %or.cond = select i1 %i.fs, i1 true, i1 %.not135
  br i1 %or.cond, label %bb.ba, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSEOS4_.exit: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i8 0, i64 24, i1 false)
  store i32 0, ptr %6, align 8, !tbaa !214
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.fm, ptr %i.ft, align 8, !tbaa !275
  store ptr %i.fn, ptr %i.fv, align 8, !tbaa !273
  store ptr %i.fo, ptr %i.fw, align 8, !tbaa !274
  %i.fx = load ptr, ptr %1, align 8, !tbaa !14
  %i.fy = ashr exact i64 %i.fr, 3
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.54, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.fx, i64 noundef %i.fy, i64 noundef %.0112.lcssa, i64 noundef %i.do, i64 noundef %.0)
          to label %bb.ad unwind label %bb.av

bb.ad:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSEOS4_.exit
  %i.fz = invoke noalias noundef nonnull dereferenceable(12032) ptr @_Znwm(i64 noundef 12032) #26
          to label %bb.ae unwind label %bb.aw     ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !130, !nonnull !144, !align !145
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 0, ptr %8, align 8, !tbaa !214
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i169 = icmp eq ptr %i.fn, %i.fm
  br i1 %.not.i.i.i.i.i169, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ge = getelementptr inbounds i8, ptr null, i64 %i.fr ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false)
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !274
  br label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.gg = icmp ugt i64 %i.fr, 9223372036854775800
  br i1 %i.gg, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i.i, !prof !13

.noexc.i.i.i:                                     ; preds = %bb.af
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc170 unwind label %bb.ax

.noexc170:                                        ; preds = %.noexc.i.i.i
  unreachable

end_hunk_1
begin_hunk_2_@_ZN7rocksdb20FIFOCompactionPicker31PickRatioBasedIntraL0CompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEPNS_18VersionStorageInfoEPNS_9LogBufferE:bb.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.in, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i ], [ %i.hx, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !306 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !307
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.if) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !275 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !274
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ih to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.im) #27
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i: ; preds = %bb.aq, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.in, %i.hy
  br i1 %.not.i.i.i180, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !308

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !211
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit
  %i.io = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.hx, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i
  %i.ip = load ptr, ptr %i.gq, align 8, !tbaa !302
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.io to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.is) #27
  br label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, %bb.ar
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !306 ; 3 uses
  %.not.i.i.i.i182 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i182, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !307
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i: ; preds = %bb.as, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !275 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i185, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !274
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i185

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i185: ; preds = %bb.at, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.not.i.i.i1.i186 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i1.i186, label %bb.be, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i185
  %i.jh = ptrtoint ptr %i.fo to i64
  %i.ji = sub i64 %i.jh, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.ji) #27
  br label %bb.be

bb.av:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSEOS4_.exit
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.thread258

bb.aw:                                            ; preds = %bb.ad
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.thread258

bb.ax:                                            ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.jm = landingpad { ptr, i32 }
          cleanup
  %i.jn = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.gw
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.ay
  %i.jp = load i64, ptr %i.gw, align 8, !tbaa !17
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.jr = load ptr, ptr %9, align 8, !tbaa !275   ; 3 uses
  %.not.i.i.i192 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193, label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !274
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %i.jr to i64
  %i.jw = sub i64 %i.ju, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jw) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %bb.az
  call void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  br label %.body173

.body173:                                         ; preds = %.body204.thread, %bb.am, %.body204, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193
  %.pn.pn = phi { ptr, i32 } [ %i.jm, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193 ], [ %i.he, %.body204 ], [ %i.he, %bb.am ], [ %i.hh, %.body204.thread ]
  call void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #25
  br label %.body

.body:                                            ; preds = %.body173, %bb.ax
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body173 ], [ %i.jl, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 12032) #27
  br label %.thread258

.thread258:                                       ; preds = %bb.av, %.body, %bb.aw
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jj, %bb.av ], [ %.pn.pn.pn, %.body ], [ %i.jk, %bb.aw ]
  call void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197

bb.ba:                                            ; preds = %.critedge
  %.not.i.i.i194 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i194, label %.backedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jx = ptrtoint ptr %i.fo to i64
  %i.jy = sub i64 %i.jx, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.jy) #27
  br label %.backedge

.loopexit269:                                     ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp, %.loopexit269
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit269 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i196 = icmp eq ptr %.sroa.0207.0315, null
  br i1 %.not.i.i.i196, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.0315, i64 noundef %i.et) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197

bb.be:                                            ; preds = %bb.au, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.loopexit270

.thread264:                                       ; preds = %.backedge, %.lr.ph325
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0218.0324, i64 8 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %.sroa.13.1
  br i1 %i.ka, label %.loopexit270, label %.lr.ph325

.loopexit270:                                     ; preds = %.thread264, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %bb.be
  %spec.select = phi ptr [ %i.fz, %bb.be ], [ null, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit ], [ null, %.thread264 ] ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %.sroa.0223.1, null
  br i1 %.not.i.i.i198, label %.critedge147, label %bb.bf

bb.bf:                                            ; preds = %.loopexit270
  %i.kb = ptrtoint ptr %.sroa.22.1.a to i64
  %i.kc = ptrtoint ptr %.sroa.0223.1 to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0223.1, i64 noundef %i.kd) #27
  br label %.critedge147

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197: ; preds = %.loopexit271, %.loopexit.split-lp272, %bb.bd, %bb.bc, %.thread258, %bb.s
  %.sroa.22.2.a = phi ptr [ %.sroa.22.1.a, %bb.bd ], [ %.sroa.22.0.lcssa394403, %bb.s ], [ %.sroa.22.1.a, %.thread258 ], [ %.sroa.22.1.a, %bb.bc ], [ %.sroa.13.0309, %.loopexit271 ], [ %.sroa.13.0309, %.loopexit.split-lp272 ]
  %.sroa.0223.2 = phi ptr [ %.sroa.0223.1, %bb.bd ], [ %.sroa.0223.0.lcssa396402, %bb.s ], [ %.sroa.0223.1, %.thread258 ], [ %.sroa.0223.1, %bb.bc ], [ %.sroa.0223.0310, %.loopexit271 ], [ %.sroa.0223.0310, %.loopexit.split-lp272 ] ; 3 uses
  %.pn142 = phi { ptr, i32 } [ %lpad.phi, %bb.bd ], [ %i.di, %bb.s ], [ %.pn.pn.pn.pn.pn, %.thread258 ], [ %lpad.phi, %bb.bc ], [ %lpad.loopexit273, %.loopexit271 ], [ %lpad.loopexit.split-lp274, %.loopexit.split-lp272 ]
  %.not.i.i.i199 = icmp eq ptr %.sroa.0223.2, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorImSaImEED2Ev.exit200, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197
  %i.ke = ptrtoint ptr %.sroa.22.2.a to i64
  %i.kf = ptrtoint ptr %.sroa.0223.2 to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0223.2, i64 noundef %i.kg) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit200

_ZNSt6vectorImSaImEED2Ev.exit200:                 ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197, %bb.bg
  resume { ptr, i32 } %.pn142

.critedge147:                                     ; preds = %bb.i, %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, %.loopexit270, %bb.bf, %bb.c, %bb.e, %bb.f, %.critedge145
  %.12 = phi ptr [ null, %.critedge145 ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.f ], [ null, %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit ], [ null, %bb.i ], [ %spec.select, %.loopexit270 ], [ %spec.select, %bb.bf ]
  ret ptr %.12
}

declare noundef i64 @_ZN7rocksdb21MultiplyCheckOverflowEmd(i64 noundef, double noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN7rocksdb30PickCostBasedIntraL0CompactionERKSt6vectorIPNS_12FileMetaDataESaIS2_EEmmmPNS_20CompactionInputFilesE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb20CompactionInputFilesC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !214
  store i32 %i.a, ptr %0, align 8, !tbaa !214
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !273  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !275  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i, !prof !13

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !275
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !273
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !274
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !106  ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.d, label %bb.e, !prof !366

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !108
  store ptr %i.w, ptr %i.l, align 8, !tbaa !108
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8, !tbaa !273
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !351 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !306 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i5, label %.noexc7, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit
  %i.ag = icmp ugt i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %.noexc.i.i6, label %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i, !prof !13

.noexc.i.i6:                                      ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i6
  unreachable

_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #26
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit
  %i.ai = phi ptr [ null, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEC2ERKS4_.exit ], [ %i.ah, %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !306
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !351
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !307
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !367 ; 2 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !367 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc7, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ai, %.noexc7 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %.noexc7 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !352
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.an
  br i1 %i.ar, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !354

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc7
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %.noexc7 ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !351
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i6
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !275 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !274
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.as
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !275  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !274
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb20FIFOCompactionPicker14PickCompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsERKSt6vectorImSaImEEPKNS_15SnapshotCheckerEPNS_18VersionStorageInfoEPNS_9LogBufferES8_b(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(736) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree readnone captures(none) %5, ptr noundef %6, ptr noundef %7, ptr nofree nonnull readnone align 8 captures(none) %8, i1 zeroext %9) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !225
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN7rocksdb20FIFOCompactionPicker17PickTTLCompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEPNS_18VersionStorageInfoEPNS_9LogBufferE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(736) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef %6, ptr noundef %7) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %.thread36

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = tail call noundef ptr @_ZN7rocksdb20FIFOCompactionPicker18PickSizeCompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEPNS_18VersionStorageInfoEPNS_9LogBufferE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(736) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef %6, ptr noundef %7) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
end_hunk_2
