Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/io_dispatcher_imp?download=true
inline.NumInlined: 3493
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorIN7rocksdb13CachableEntryINS0_5BlockEEESaIS3_EE6resizeEm:bb.a
bb.i:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #27
  unreachable

_ZSt8_DestroyIN7rocksdb13CachableEntryINS0_5BlockEEEEvPT_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb13CachableEntryINS0_5BlockEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !151

_ZSt8_DestroyIPN7rocksdb13CachableEntryINS0_5BlockEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN7rocksdb13CachableEntryINS0_5BlockEEEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !145
  br label %_ZNSt6vectorIN7rocksdb13CachableEntryINS0_5BlockEEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorIN7rocksdb13CachableEntryINS0_5BlockEEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb13CachableEntryINS0_5BlockEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = load ptr, ptr %1, align 8, !tbaa !13     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.i = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !prof !125

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !385

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.r, ptr %i.o, align 8, !tbaa !33
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #26
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !128
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !9    ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !385

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !33
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !385

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !13
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !13
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !9
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !33
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !385

bb.r:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !33
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !33
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare void @_ZNK7rocksdb15BlockBasedTable25LookupAndPinBlocksInCacheINS_11Block_kDataEEENS_6StatusERKNS_11ReadOptionsERKNS_11BlockHandleEPNS_13CachableEntryIT_EE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16IODispatcherImpl4Impl17PreCoalesceBlocksERKSt10shared_ptrINS_5IOJobEERKS2_INS_7ReadSetEERKSt6vectorImSaImEEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.298") align 8 initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %4, align 8, !tbaa !362
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !362
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !160    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !539
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt6vectorIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null)
          to label %_ZNSt6vectorIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit unwind label %bb.c

_ZNSt6vectorIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.b
  %.pre = load ptr, ptr %4, align 8, !tbaa !362   ; 2 uses
  %.pre49.a = load ptr, ptr %i.b, align 8, !tbaa !362 ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre49.a
  br i1 %i.j, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %.not = icmp eq i64 %5, 0                       ; 2 uses
  %i.k = add i64 %i.g, 5
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.043.048 = phi ptr [ %.pre, %.lr.ph ], [ %i.bu, %bb.p ] ; 2 uses
  %i.m = load i64, ptr %.sroa.043.048, align 8, !tbaa !33 ; 4 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !472
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load i64, ptr %i.q, align 8, !tbaa !33   ; 3 uses
  %6 = icmp ule i64 %i.r, %5
  %or.cond.not = select i1 %.not, i1 true, i1 %6
  br i1 %or.cond.not, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !494  ; 10 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !362
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !362  ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !33
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !358 ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !380
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !382
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.m
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !380
  %i.ah = add i64 %i.k, %i.ac
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = icmp ugt i64 %i.ag, %i.ai               ; 2 uses
  %brmerge = or i1 %.not, %i.aj
  br i1 %brmerge, label %bb.g, label %.split

.split:                                           ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !501
  %i.am = add i64 %i.al, %i.r
  %i.an = icmp ugt i64 %i.am, %5
  br i1 %i.an, label %bb.h, label %.critedge

bb.g:                                             ; preds = %bb.f
  br i1 %i.aj, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.split, %bb.g
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !699
  %.not.i33 = icmp eq ptr %i.s, %i.ao
  br i1 %.not.i33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !697
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.s)
          to label %..critedge_crit_edge unwind label %.loopexit47

..critedge_crit_edge:                             ; preds = %bb.j
  %.pre50.a = load ptr, ptr %i.h, align 8, !tbaa !494
  br label %.critedge

.loopexit47:                                      ; preds = %bb.j, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.i, %.split, %bb.e, %bb.g
  %i.aq = phi ptr [ %.pre50.a, %..critedge_crit_edge ], [ %i.ap, %bb.i ], [ %i.s, %.split ], [ %i.s, %bb.e ], [ %i.s, %bb.g ] ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -32 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -24 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !9  ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 -16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !128
  %.not.i37 = icmp eq ptr %i.at, %i.av
  br i1 %.not.i37, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  store i64 %i.m, ptr %i.at, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !9
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.l:                                             ; preds = %.critedge
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !13 ; 4 uses
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 5 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #25
          to label %.noexc39 unwind label %.loopexit47 ; 4 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ba ; 2 uses
  store i64 %i.m, ptr %i.bj, align 8, !tbaa !33
  %i.bk = icmp sgt i64 %i.ba, 0
  br i1 %i.bk, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc39
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.ax, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !128
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bo) #26
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.bi, ptr %i.ar, align 8, !tbaa !13
  store ptr %i.bl, ptr %i.as, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bp, ptr %i.au, align 8, !tbaa !128
  %.pre51 = load ptr, ptr %i.h, align 8, !tbaa !494
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.k
  %i.bq = phi ptr [ %.pre51, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.aq, %bb.k ]
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !501
  %i.bt = add i64 %i.bs, %i.r
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !501
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.043.048, i64 8 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %.pre49.a
  br i1 %i.bv, label %.loopexit, label %bb.d

bb.q:                                             ; preds = %.loopexit47, %.loopexit.split-lp, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.loopexit, %.loopexit47 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZNSt6vectorIN7rocksdb22CoalescedPrefetchGroupESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.p, %_ZNSt6vectorIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIN7rocksdb22CoalescedPrefetchGroupESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator.258", align 8 ; 4 uses
  %2 = alloca %"struct.std::_Deque_iterator.258", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.e = load <4 x ptr>, ptr %i.a, align 8, !tbaa !98, !noalias !700
  store <4 x ptr> %i.e, ptr %1, align 8, !tbaa !98
  %i.f = load <4 x ptr>, ptr %i.c, align 8, !tbaa !98, !noalias !703
  store <4 x ptr> %i.f, ptr %2, align 8, !tbaa !98
  invoke void @_ZNSt5dequeIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.g = load ptr, ptr %0, align 8, !tbaa !706    ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !492  ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !707  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.06.i.i, align 8, !tbaa !494
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef 512) #26
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.n = icmp ult ptr %.06.i.i, %i.i
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.loopexit.i, !llvm.loop !708
end_hunk_0
