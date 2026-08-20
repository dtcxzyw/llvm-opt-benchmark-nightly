inline.NumInlined: 5511
inline.NumDeleted: 2451
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7rocksdb7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS_17CompactionJobInfoE:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #33
  unreachable

_ZN7rocksdb9WriteLockD2Ev.exit:                   ; preds = %bb.ab
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN7rocksdb9WriteLockD2Ev.exit
  %i.bx = ptrtoint ptr %i.ah to i64
  %i.by = ptrtoint ptr %i.ai to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bz) #29
  br label %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb9WriteLockD2Ev.exit, %bb.ad
  %.not.i.i.i50 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit51, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit
  %i.ca = ptrtoint ptr %i.r to i64
  %i.cb = ptrtoint ptr %i.s to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.cc) #29
  br label %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit51

_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit51: ; preds = %bb.ae, %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit, %bb.a
  ret void

bb.af:                                            ; preds = %._crit_edge
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.z, %bb.x, %bb.r
  %.pn = phi { ptr, i32 } [ %i.az, %bb.r ], [ %i.bl, %bb.x ], [ %i.bs, %bb.z ], [ %i.cd, %bb.af ]
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.aj)
          to label %_ZN7rocksdb9WriteLockD2Ev.exit52 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #33
  unreachable

_ZN7rocksdb9WriteLockD2Ev.exit52:                 ; preds = %bb.n, %bb.ag
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ag ], [ %i.av, %bb.n ] ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit54, label %bb.ai

bb.ai:                                            ; preds = %_ZN7rocksdb9WriteLockD2Ev.exit52
  %i.cg = ptrtoint ptr %i.ah to i64
  %i.ch = ptrtoint ptr %i.ai to i64
  %i.ci = sub i64 %i.cg, %i.ch
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ci) #29
  br label %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit54

_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit54: ; preds = %bb.m, %_ZN7rocksdb9WriteLockD2Ev.exit52, %bb.ai
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ai ], [ %i.au, %bb.m ], [ %.pn.pn.pn, %_ZN7rocksdb9WriteLockD2Ev.exit52 ]
  %.not.i.i.i55 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit56, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit54
  %i.cj = ptrtoint ptr %i.r to i64
  %i.ck = ptrtoint ptr %i.s to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.cl) #29
  br label %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit56

_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit56: ; preds = %_ZNSt6vectorIN7rocksdb18CompactionFileInfoESaIS1_EED2Ev.exit54, %bb.aj
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEEZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EvT_SF_T0_"(ptr %0, ptr %1) unnamed_addr #13 {
bb.a:
  %2 = alloca %"struct.rocksdb::CompactionFileInfo", align 8 ; 4 uses
  %3 = alloca %"struct.rocksdb::CompactionFileInfo", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %i.h)
  %i.i = icmp sgt i64 %i.d, 384
  br i1 %i.i, label %.lr.ph.i.i.i, label %.preheader.i25.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 8
  %scevgep.i.i = getelementptr i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.0.018.i.idx.i.i = phi i64 [ 24, %.lr.ph.i.i.i ], [ %.sroa.0.018.i.add.i.i, %bb.h ] ; 4 uses
  %.pn17.i.i.i = phi ptr [ %0, %.lr.ph.i.i.i ], [ %.sroa.0.018.i.ptr.i.i, %bb.h ] ; 4 uses
  %.sroa.0.018.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx.i.i ; 5 uses
  %i.k = getelementptr i8, ptr %.pn17.i.i.i, i64 32
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !579 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !579
  %i.l = icmp ult i64 %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i.ptr.i.i, i64 24, i1 false), !tbaa.struct !578
  %i.m = icmp samesign ugt i64 %.sroa.0.018.i.idx.i.i, 24
  br i1 %i.m, label %bb.e, label %bb.f, !prof !585

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !578
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !578
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.018.i.ptr.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i.i.i, i64 40
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !tbaa !232
  %i.o = getelementptr i8, ptr %.pn17.i.i.i, i64 8
  %.val2.i12.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !579
  %i.p = icmp ult i64 %.val.i.i.i.i, %.val2.i12.i.i.i.i
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.sroa.09.013.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.018.i.ptr.i.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.09.013.i.i.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i, i64 24, i1 false), !tbaa.struct !578
  %i.q = getelementptr i8, ptr %.sroa.09.013.i.i.i.i, i64 -40
  %.val2.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !579
  %i.r = icmp ult i64 %.val.i.i.i.i, %.val2.i.i.i.i.i
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i.i.i", !llvm.loop !586

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.sroa.09.0.lcssa.i.i.i.i = phi ptr [ %.sroa.0.018.i.ptr.i.i, %bb.g ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  store i64 %.sroa.03.0.copyload.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i.i.i, i64 8
  store i64 %.val.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i.i.i, align 8, !tbaa !232
  %.sroa.5.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i.i.i, i64 16
  store i64 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx7.i.i.i.i, align 8, !tbaa !232
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i
  %.sroa.0.018.i.add.i.i = add nuw nsw i64 %.sroa.0.018.i.idx.i.i, 24 ; 2 uses
  %i.s = icmp eq i64 %.sroa.0.018.i.add.i.i, 384
  br i1 %i.s, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit.i.i", label %bb.c, !llvm.loop !587

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit.i.i": ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit", label %.lr.ph.i12.i.i

.lr.ph.i12.i.i:                                   ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i17.i.i"
  %.sroa.0.06.i.i.i = phi ptr [ %i.aa, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i17.i.i" ], [ %i.t, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit.i.i" ] ; 7 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !232 ; 2 uses
  %i.v = load <2 x i64>, ptr %.sroa.0.06.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i14.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i15.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i14.i.i, align 8, !tbaa !232
  %i.w = getelementptr i8, ptr %.sroa.0.06.i.i.i, i64 -16
  %.val2.i12.i.i16.i.i = load i64, ptr %i.w, align 8, !tbaa !579
  %i.x = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i, %.val2.i12.i.i16.i.i
  br i1 %i.x, label %.lr.ph.i.i21.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i17.i.i"

.lr.ph.i.i21.i.i:                                 ; preds = %.lr.ph.i12.i.i, %.lr.ph.i.i21.i.i
  %.sroa.09.013.i.i22.i.i = phi ptr [ %.sroa.0.0.i.i23.i.i, %.lr.ph.i.i21.i.i ], [ %.sroa.0.06.i.i.i, %.lr.ph.i12.i.i ] ; 3 uses
  %.sroa.0.0.i.i23.i.i = getelementptr inbounds i8, ptr %.sroa.09.013.i.i22.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.013.i.i22.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i23.i.i, i64 24, i1 false), !tbaa.struct !578
  %i.y = getelementptr i8, ptr %.sroa.09.013.i.i22.i.i, i64 -40
  %.val2.i.i.i24.i.i = load i64, ptr %i.y, align 8, !tbaa !579
  %i.z = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i, %.val2.i.i.i24.i.i
  br i1 %i.z, label %.lr.ph.i.i21.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i17.i.i", !llvm.loop !586

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i17.i.i": ; preds = %.lr.ph.i.i21.i.i, %.lr.ph.i12.i.i
  %.sroa.09.0.lcssa.i.i18.i.i = phi ptr [ %.sroa.0.06.i.i.i, %.lr.ph.i12.i.i ], [ %.sroa.0.0.i.i23.i.i, %.lr.ph.i.i21.i.i ] ; 2 uses
  store <2 x i64> %i.v, ptr %.sroa.09.0.lcssa.i.i18.i.i, align 8
  %.sroa.5.0..sroa_idx7.i.i20.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i18.i.i, i64 16
  store i64 %.sroa.5.0.copyload.i.i15.i.i, ptr %.sroa.5.0..sroa_idx7.i.i20.i.i, align 8, !tbaa !232
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 24 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit", label %.lr.ph.i12.i.i, !llvm.loop !588

.preheader.i25.i.i:                               ; preds = %bb.b
  %.sroa.0.016.i26.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = icmp eq ptr %.sroa.0.016.i26.i.i, %1
  br i1 %i.ac, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit", label %.lr.ph.i27.i.i

.lr.ph.i27.i.i:                                   ; preds = %.preheader.i25.i.i
  %i.ad = getelementptr i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i27.i.i
  %.sroa.0.018.i28.i.i = phi ptr [ %.sroa.0.016.i26.i.i, %.lr.ph.i27.i.i ], [ %.sroa.0.0.i40.i.i, %bb.o ] ; 7 uses
  %.pn17.i29.i.i = phi ptr [ %0, %.lr.ph.i27.i.i ], [ %.sroa.0.018.i28.i.i, %bb.o ] ; 5 uses
  %i.ae = getelementptr i8, ptr %.pn17.i29.i.i, i64 32
  %.val.i.i30.i.i = load i64, ptr %i.ae, align 8, !tbaa !579 ; 4 uses
  %.val1.i.i31.i.i = load i64, ptr %i.ad, align 8, !tbaa !579
  %i.af = icmp ult i64 %.val.i.i30.i.i, %.val1.i.i31.i.i
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i28.i.i, i64 24, i1 false), !tbaa.struct !578
  %i.ag = ptrtoint ptr %.sroa.0.018.i28.i.i to i64
  %i.ah = sub i64 %i.ag, %i.c                     ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 24
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !585

bb.k:                                             ; preds = %bb.j
  %4 = getelementptr inbounds nuw i8, ptr %.pn17.i29.i.i, i64 48
  %.neg22.i46.i.i = udiv exact i64 %i.ah, 24
  %.neg22.neg.i47.i.i = sub nsw i64 0, %.neg22.i46.i.i
  %5 = getelementptr inbounds [24 x i8], ptr %4, i64 %.neg22.neg.i47.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i45.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = icmp eq i64 %i.ah, 24
  br i1 %i.aj, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i45.i.i

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn17.i29.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !578
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i45.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i45.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !578
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.0.copyload.i.i32.i.i = load i64, ptr %.sroa.0.018.i28.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i33.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i29.i.i, i64 40
  %.sroa.5.0.copyload.i.i34.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i33.i.i, align 8, !tbaa !232
  %i.al = getelementptr i8, ptr %.pn17.i29.i.i, i64 8
  %.val2.i12.i.i35.i.i = load i64, ptr %i.al, align 8, !tbaa !579
  %i.am = icmp ult i64 %.val.i.i30.i.i, %.val2.i12.i.i35.i.i
  br i1 %i.am, label %.lr.ph.i.i41.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i36.i.i"

.lr.ph.i.i41.i.i:                                 ; preds = %bb.n, %.lr.ph.i.i41.i.i
  %.sroa.09.013.i.i42.i.i = phi ptr [ %.sroa.0.0.i.i43.i.i, %.lr.ph.i.i41.i.i ], [ %.sroa.0.018.i28.i.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i43.i.i = getelementptr inbounds i8, ptr %.sroa.09.013.i.i42.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.013.i.i42.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i43.i.i, i64 24, i1 false), !tbaa.struct !578
  %i.an = getelementptr i8, ptr %.sroa.09.013.i.i42.i.i, i64 -40
  %.val2.i.i.i44.i.i = load i64, ptr %i.an, align 8, !tbaa !579
  %i.ao = icmp ult i64 %.val.i.i30.i.i, %.val2.i.i.i44.i.i
  br i1 %i.ao, label %.lr.ph.i.i41.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i36.i.i", !llvm.loop !586

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i36.i.i": ; preds = %.lr.ph.i.i41.i.i, %bb.n
  %.sroa.09.0.lcssa.i.i37.i.i = phi ptr [ %.sroa.0.018.i28.i.i, %bb.n ], [ %.sroa.0.0.i.i43.i.i, %.lr.ph.i.i41.i.i ] ; 3 uses
  store i64 %.sroa.03.0.copyload.i.i32.i.i, ptr %.sroa.09.0.lcssa.i.i37.i.i, align 8
  %.sroa.4.0..sroa_idx5.i.i38.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i37.i.i, i64 8
  store i64 %.val.i.i30.i.i, ptr %.sroa.4.0..sroa_idx5.i.i38.i.i, align 8, !tbaa !232
  %.sroa.5.0..sroa_idx7.i.i39.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i37.i.i, i64 16
  store i64 %.sroa.5.0.copyload.i.i34.i.i, ptr %.sroa.5.0..sroa_idx7.i.i39.i.i, align 8, !tbaa !232
  br label %bb.o

bb.o:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i36.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i45.i.i
  %.sroa.0.0.i40.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i28.i.i, i64 24 ; 2 uses
  %i.ap = icmp eq ptr %.sroa.0.0.i40.i.i, %1
  br i1 %i.ap, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit", label %bb.i, !llvm.loop !587

"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit": ; preds = %bb.o, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_T0_.exit.i17.i.i", %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb18CompactionFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_7blob_db10BlobDBImpl24ProcessCompactionJobInfoERKNS2_17CompactionJobInfoEE3$_0EEEvT_SI_T0_.exit.i.i", %.preheader.i25.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb7blob_db10BlobDBImpl28MarkBlobFileObsoleteIfNeededERKSt10shared_ptrINS0_8BlobFileEEm(ptr noundef nonnull align 8 dereferenceable(2644) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load atomic i8, ptr %i.b seq_cst, align 1, !range !250, !noundef !251
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNSt12__shared_ptrIN7rocksdb7blob_db8BlobFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !453
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.i = load i64, ptr %i.h, align 8, !tbaa !569
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %_ZNSt12__shared_ptrIN7rocksdb7blob_db8BlobFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !545
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNSt12__shared_ptrIN7rocksdb7blob_db8BlobFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  tail call void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), i64 noundef %i.p)
  %i.q = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !276  ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !276
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb7blob_db8BlobFileEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.u, align 4, !tbaa !278
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !278
  br label %_ZNSt10shared_ptrIN7rocksdb7blob_db8BlobFileEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZNSt10shared_ptrIN7rocksdb7blob_db8BlobFileEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7rocksdb7blob_db8BlobFileEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.z = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.f ], [ %.pre, %bb.g ] ; 4 uses
  invoke void @_ZN7rocksdb7blob_db8BlobFile12MarkObsoleteEm(ptr noundef nonnull align 8 dereferenceable(314) %i.z, i64 noundef %2)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN7rocksdb7blob_db8BlobFileEEC2ERKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.ab = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %.noexc9 unwind label %bb.r    ; 3 uses

.noexc9:                                          ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !276 ; 3 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !276
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.noexc9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !278
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !278
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  %.pre11 = load ptr, ptr %3, align 8, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.noexc9
  %i.ak = phi ptr [ %.pre11, %bb.j ], [ %i.z, %bb.i ], [ %i.z, %.noexc9 ]
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !454
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !454
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.ar = atomicrmw sub ptr %i.aq, i64 %i.ap seq_cst, align 8 ; 0 uses
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !276 ; 8 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb7blob_db8BlobFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.at, align 8, !tbaa !304
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !306
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #32, !inline_history !335
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #32, !inline_history !335
  br label %_ZNSt12__shared_ptrIN7rocksdb7blob_db8BlobFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i10 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i10, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !278
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.o ], [ %i.bg, %bb.p ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.q, label %_ZNSt12__shared_ptrIN7rocksdb7blob_db8BlobFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_0
