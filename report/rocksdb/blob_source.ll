Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/blob_source?download=true
inline.NumInlined: 1323
inline.NumDeleted: 537
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb10BlobSource17GetSimpleGen2BlobERKNS_11ReadOptionsERKNS_18OffsetableCacheKeyEPNS_22RandomAccessFileReaderEmmNS_12ChecksumTypeEjNS_15CompressionTypeEPNS_13PinnableSliceEPm:bb.a
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %bb.az ], [ %i.cf, %bb.u ]
  call void @_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.t
  %.sroa.38201.12 = phi ptr [ %.sroa.38201.11, %bb.be ], [ %.sroa.38201.2, %bb.t ]
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn, %bb.be ], [ %i.ce, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.bj

bb.bg:                                            ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit, %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit
  %.sroa.38201.13 = phi ptr [ %.sroa.38201.2, %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit ], [ null, %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit ], [ null, %_ZN7rocksdb6StatusC2EOS0_.exit ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !63 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gj = load ptr, ptr %13, align 8, !tbaa !64   ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !52
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 184
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = invoke noundef zeroext i1 %i.gm(ptr noundef nonnull align 8 dereferenceable(80) %i.gj, ptr noundef nonnull %i.gi, i1 noundef zeroext false)
          to label %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit unwind label %bb.bi, !inline_history !1 ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #27
  unreachable

_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit: ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.not.i.i127 = icmp eq ptr %.sroa.38201.13, null
  br i1 %.not.i.i127, label %_ZN7rocksdb6StatusD2Ev.exit129, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i128

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i128: ; preds = %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.38201.13) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit129

_ZN7rocksdb6StatusD2Ev.exit129:                   ; preds = %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.bj:                                            ; preds = %bb.l, %bb.bf, %bb.i
  %.sroa.38201.14 = phi ptr [ %.sroa.38201.2, %bb.l ], [ %.sroa.38201.12, %bb.bf ], [ %.sroa.38201.1, %bb.i ] ; 2 uses
  %.pn54.pn = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %.pn48.pn.pn.pn.pn, %bb.bf ], [ %.pn, %bb.i ]
  call void @_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.not.i.i130 = icmp eq ptr %.sroa.38201.14, null
  br i1 %.not.i.i130, label %_ZN7rocksdb6StatusD2Ev.exit132, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i131

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i131: ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %.sroa.38201.14) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit132

_ZN7rocksdb6StatusD2Ev.exit132:                   ; preds = %bb.bj, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  resume { ptr, i32 } %.pn54.pn
}

declare void @_ZN7rocksdb33ReadAndVerifySimpleGen2BlobRecordERKNS_11ReadOptionsEPNS_22RandomAccessFileReaderEmmmNS_12ChecksumTypeEjNS_15CompressionTypeEPc(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, i64 noundef, i64 noundef, i64 noundef, i8 noundef signext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK7rocksdb22CacheAllocationDeleterclEPc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !151    ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull %i.b)
          to label %_ZNK7rocksdb22CacheAllocationDeleterclEPc.exit unwind label %bb.e, !inline_history !7

bb.d:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #25
  br label %_ZNK7rocksdb22CacheAllocationDeleterclEPc.exit

_ZNK7rocksdb22CacheAllocationDeleterclEPc.exit:   ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10BlobSource12MultiGetBlobERKNS_11ReadOptionsERNS_10autovectorISt5tupleIJmmNS4_INS_15BlobReadRequestELm8EEEEELm8EEEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3560) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6.i.i.i.i.i = alloca { i64, i8, ptr, ptr }, align 8 ; 4 uses
  %4 = alloca %"class.rocksdb::autovector<rocksdb::BlobReadRequest>::iterator_impl", align 8 ; 5 uses
  %5 = alloca %"class.rocksdb::autovector<rocksdb::BlobReadRequest>::iterator_impl", align 8 ; 5 uses
  %6 = alloca %"class.rocksdb::autovector<rocksdb::BlobReadRequest>::iterator_impl", align 8 ; 5 uses
  %7 = alloca %"class.rocksdb::autovector<rocksdb::BlobReadRequest>::iterator_impl", align 8 ; 5 uses
  %8 = alloca %"class.rocksdb::autovector<rocksdb::BlobReadRequest>::iterator_impl", align 8 ; 5 uses
  %9 = alloca %"class.rocksdb::autovector<rocksdb::BlobReadRequest>::iterator_impl", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !112
  %i.b = load i64, ptr %2, align 8, !tbaa !315, !noalias !316
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3536 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3544
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317, !noalias !316
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !318, !noalias !316
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 440
  %i.k = add i64 %i.j, %i.b                       ; 2 uses
  %.not3738 = icmp eq i64 %i.k, 0
  br i1 %.not3738, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3528
  %.sroa.37.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.5.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.023.lcssa = phi i64 [ 0, %bb.a ], [ %i.bn, %bb.f ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.h, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.02340 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %bb.f ]
  %.sroa.5.039 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %bb.f ] ; 4 uses
  %i.n = icmp ult i64 %.sroa.5.039, 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw [440 x i8], ptr %i.o, i64 %.sroa.5.039
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = getelementptr [440 x i8], ptr %i.q, i64 %.sroa.5.039
  %i.s = getelementptr i8, ptr %i.r, i64 -3520
  %.0.i.i = select i1 %i.n, ptr %i.p, ptr %i.s    ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 432
  %i.u = load i64, ptr %.0.i.i, align 8, !tbaa !162, !noalias !319
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 400 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 408
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !163, !noalias !319
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !164, !noalias !319
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 48
  %i.ad = add i64 %i.ac, %i.u                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.0.i.i, ptr %8, align 8, !tbaa !166
  store i64 0, ptr %.sroa.37.0..sroa_idx8.i, align 8, !tbaa !112
  store ptr %.0.i.i, ptr %9, align 8, !tbaa !166
  store i64 %i.ad, ptr %.sroa.3.0..sroa_idx2.i, align 8, !tbaa !112
  %i.ae = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = xor i64 %i.af, 126
  call fastcc void @"_ZSt16__introsort_loopIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_T0_T1_"(ptr noundef align 8 %8, ptr noundef align 8 %9, i64 noundef %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ah = icmp sgt i64 %i.ad, 16
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  store ptr %.0.i.i, ptr %4, align 8, !tbaa !166
  store i64 0, ptr %.sroa.5.0..sroa_idx16.i.i, align 8, !tbaa !112
  store ptr %.0.i.i, ptr %5, align 8, !tbaa !168, !alias.scope !320
  store i64 16, ptr %i.m, align 8, !tbaa !169, !alias.scope !320
  call fastcc void @"_ZSt16__insertion_sortIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_T0_"(ptr noundef align 8 %4, ptr noundef align 8 %5)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 392 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.5.08.i.i.i.i = phi i64 [ 16, %.lr.ph.i.i.i.i ], [ %i.bk, %.loopexit.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load ptr, ptr %i.v, align 8             ; 4 uses
  %i.al = getelementptr [48 x i8], ptr %i.ak, i64 %.sroa.5.08.i.i.i.i ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -384
  %.sroa.016.0.copyload.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !170
  %.sroa.5.0..0.i.i.sroa_idx.i.i.i.i.i = getelementptr i8, ptr %i.al, i64 -376
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..0.i.i.sroa_idx.i.i.i.i.i, align 8, !tbaa !112 ; 3 uses
  %.sroa.6.0..0.i.i.sroa_idx.i.i.i.i.i = getelementptr i8, ptr %i.al, i64 -368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..0.i.i.sroa_idx.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !176
  %.sroa.7.019.i.i.i.i.i = add nsw i64 %.sroa.5.08.i.i.i.i, -1 ; 2 uses
  %i.an = getelementptr [48 x i8], ptr %i.ak, i64 %.sroa.7.019.i.i.i.i.i ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -376
  %.val2.i23.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !178
  %i.ap = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, %.val2.i23.i.i.i.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.an, i64 -384
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ar = phi ptr [ %.val3.val5.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ]
  %i.as = phi ptr [ %.val3.val.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ]
  %10 = phi i64 [ %.sroa.7.024.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.5.08.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0.i.i.i25.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.7.024.i.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.7.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.at = icmp ult i64 %10, 8
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %10
  %i.av = getelementptr [48 x i8], ptr %i.ar, i64 %10
  %i.aw = getelementptr i8, ptr %i.av, i64 -384
  %.0.i.i7.i.i.i.i.i = select i1 %i.at, ptr %i.au, ptr %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i25.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !179
  %.sroa.7.0.i.i.i.i.i = add i64 %.sroa.7.024.i.i.i.i.i, -1 ; 4 uses
  %.val3.val.i.i.i.i.i = load ptr, ptr %i.ai, align 8 ; 3 uses
  %.val3.val5.i.i.i.i.i = load ptr, ptr %i.v, align 8 ; 3 uses
  %i.ax = icmp ult i64 %.sroa.7.0.i.i.i.i.i, 8
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %.val3.val.i.i.i.i.i, i64 %.sroa.7.0.i.i.i.i.i
  %i.az = getelementptr [48 x i8], ptr %.val3.val5.i.i.i.i.i, i64 %.sroa.7.0.i.i.i.i.i
  %i.ba = getelementptr i8, ptr %i.az, i64 -384
  %.0.i.i.i.i.i.i.i.i = select i1 %i.ax, ptr %i.ay, ptr %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %.0.i.i.i.i.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !178
  %i.bc = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !llvm.loop !8

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %i.bd = phi ptr [ %i.ak, %bb.d ], [ %.val3.val5.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.be = phi ptr [ %i.aj, %bb.d ], [ %.val3.val.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bf = phi i64 [ %.sroa.5.08.i.i.i.i, %bb.d ], [ %.sroa.7.024.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 8
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %i.bf
  %i.bi = getelementptr [48 x i8], ptr %i.bd, i64 %i.bf
  %i.bj = getelementptr i8, ptr %i.bi, i64 -384
  %.0.i.i8.i.i.i.i.i = select i1 %i.bg, ptr %i.bh, ptr %i.bj ; 3 uses
  store ptr %.sroa.016.0.copyload.i.i.i.i.i, ptr %.0.i.i8.i.i.i.i.i, align 8, !tbaa !170
  %.sroa.5.0..0.i.i8.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..0.i.i8.sroa_idx.i.i.i.i.i, align 8, !tbaa !112
  %.sroa.6.0..0.i.i8.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i8.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..0.i.i8.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.bk = add nuw nsw i64 %.sroa.5.08.i.i.i.i, 1  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bk, %i.ad
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.d, !llvm.loop !308

bb.e:                                             ; preds = %bb.c
  store ptr %.0.i.i, ptr %6, align 8, !tbaa !166
  store i64 0, ptr %.sroa.5.0..sroa_idx14.i.i, align 8, !tbaa !112
  store ptr %.0.i.i, ptr %7, align 8, !tbaa !166
  store i64 %i.ad, ptr %.sroa.2.0..sroa_idx7.i.i, align 8, !tbaa !112
  call fastcc void @"_ZSt16__insertion_sortIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_T0_"(ptr noundef align 8 %6, ptr noundef align 8 %7)
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.bl = load i64, ptr %i.t, align 8, !tbaa !112
  call void @_ZN7rocksdb10BlobSource23MultiGetBlobFromOneFileERKNS_11ReadOptionsEmmRNS_10autovectorINS_15BlobReadRequestELm8EEEPm(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %i.bl, i64 poison, ptr noundef nonnull align 8 dereferenceable(424) %.0.i.i, ptr noundef nonnull %i.a)
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !112
  %i.bn = add i64 %i.bm, %.02340                  ; 2 uses
  %i.bo = add nuw i64 %.sroa.5.039, 1             ; 2 uses
  %.not37 = icmp eq i64 %i.bo, %i.k
  br i1 %.not37, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %._crit_edge
  store i64 %.023.lcssa, ptr %3, align 8, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10BlobSource23MultiGetBlobFromOneFileERKNS_11ReadOptionsEmmRNS_10autovectorINS_15BlobReadRequestELm8EEEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 noundef %2, i64 %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %9 = alloca %"class.rocksdb::OffsetableCacheKey", align 8 ; 8 uses
  %10 = alloca %"class.rocksdb::CacheHandleGuard", align 8 ; 11 uses
  %11 = alloca %"class.rocksdb::CacheKey", align 8 ; 6 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %17 = alloca %"class.rocksdb::autovector.186", align 8 ; 24 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %18 = alloca %"class.std::unique_ptr.118", align 8 ; 6 uses
  %19 = alloca %"class.rocksdb::CacheHandleGuard.126", align 8 ; 12 uses
  %20 = alloca %"class.rocksdb::Status", align 8  ; 25 uses
  %21 = alloca %"class.std::unique_ptr.158", align 8 ; 9 uses
  %22 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %23 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %24 = alloca %"class.rocksdb::autovector.186", align 8 ; 17 uses
  %25 = alloca %"class.rocksdb::autovector.192", align 8 ; 14 uses
  %26 = alloca %"class.std::unique_ptr.118", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %27 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %28 = alloca %"class.rocksdb::CacheHandleGuard.126", align 8 ; 8 uses
  %29 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %30 = alloca %"class.rocksdb::CacheHandleGuard", align 8 ; 11 uses
  %31 = alloca %"class.rocksdb::CacheKey", align 8 ; 6 uses
  %32 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %33 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %i.c = load i64, ptr %4, align 8, !tbaa !162
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 400 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 408
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !164
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 48
  %i.l = add i64 %i.k, %i.c                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.m = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !109, !align !110
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111, !nonnull !109, !align !110
  call void @_ZN7rocksdb18OffsetableCacheKeyC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %2)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59
  %.not.i.i.not = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not, label %.critedge, label %.preheader505

.preheader505:                                    ; preds = %bb.a
  %.not567 = icmp eq i64 %i.l, 0
  br i1 %.not567, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader505
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 392
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit
  %i.ab = icmp eq i64 %.1175, %i.l
  br i1 %i.ab, label %._crit_edge.thread, label %.critedge

bb.b:                                             ; preds = %.lr.ph, %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit
  %.0173526 = phi i64 [ 0, %.lr.ph ], [ %i.cz, %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit ] ; 5 uses
  %.0174525 = phi i64 [ 0, %.lr.ph ], [ %.1175, %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit ] ; 2 uses
  %.0176524 = phi i64 [ 0, %.lr.ph ], [ %.1177, %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit ] ; 2 uses
  %.0179523 = phi i64 [ 0, %.lr.ph ], [ %.1180, %_ZN7rocksdb16CacheHandleGuardINS_12BlobContentsEED2Ev.exit ] ; 2 uses
  %i.ac = icmp ult i64 %.0173526, 8
  %i.ad = load ptr, ptr %i.r, align 8
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %.0173526
  %i.af = load ptr, ptr %i.d, align 8
  %i.ag = getelementptr [48 x i8], ptr %i.af, i64 %.0173526
  %i.ah = getelementptr i8, ptr %i.ag, i64 -384
  %.0.i = select i1 %i.ac, ptr %i.ae, ptr %i.ah   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !178
  %i.ak = load i64, ptr %9, align 8, !tbaa !153
  %i.al = load i64, ptr %i.s, align 8, !tbaa !154
  %i.am = xor i64 %i.al, %i.aj
  store i64 %i.ak, ptr %11, align 8
  store i64 %i.am, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %11, ptr %12, align 8
  store i64 16, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNK7rocksdb10BlobSource16GetBlobFromCacheERKNS_5SliceEPNS_16CacheHandleGuardINS_12BlobContentsEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %10)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.an = load i8, ptr %13, align 8, !tbaa !93
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !350 ; 5 uses
  %.not.i = icmp eq ptr %i.aq, %13
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.aq, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load <4 x i8>, ptr %i.v, align 1, !tbaa !39
  store <4 x i8> %i.as, ptr %i.ar, align 1, !tbaa !39
  %i.at = load i8, ptr %i.w, align 1, !tbaa !116
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  store i8 %i.at, ptr %i.au, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !94  ; 2 uses
  %.not.i.i235 = icmp eq ptr %i.av, null
  br i1 %.not.i.i235, label %bb.g, label %bb.f

end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_T0_T1_":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !389
  call fastcc void @"_ZSt16__introsort_loopIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_T0_T1_"(ptr noundef align 8 %13, ptr noundef align 8 %14, i64 noundef %i.ay)
  store ptr %.sroa.021.0.copyload, ptr %1, align 8, !tbaa !166
  store i64 %.us-phi.i, ptr %i.a, align 8, !tbaa !112
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !169
  %.fr35.i = freeze i64 %i.dw                     ; 3 uses
  %i.dx = sub i64 %.us-phi.i, %.fr35.i            ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, 16
  br i1 %i.dy, label %bb.b, label %"_ZSt14__partial_sortIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !377

"_ZSt14__partial_sortIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_SK_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEET_SK_SK_T0_.exit", %"_ZSt13__heap_selectIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_SK_T0_.exit.i.thread.split", %"_ZSt13__heap_selectIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_SK_T0_.exit.i.thread.split.us", %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_T0_SL_T1_T2_"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly byval(%"struct.rocksdb::BlobReadRequest") align 8 captures(none) %3) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02767 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.e = shl i64 %.02767, 1                       ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !168, !noalias !396 ; 2 uses
  %i.h = load i64, ptr %i.d, align 8, !tbaa !169, !noalias !396 ; 4 uses
  %i.i = add i64 %i.h, %i.f                       ; 3 uses
  %i.j = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.k = add i64 %i.h, %i.j                       ; 3 uses
  %i.l = getelementptr i8, ptr %i.g, i64 392
  %.val.val = load ptr, ptr %i.l, align 8         ; 4 uses
  %i.m = getelementptr i8, ptr %i.g, i64 400
  %.val.val42 = load ptr, ptr %i.m, align 8       ; 4 uses
  %i.n = icmp ult i64 %i.i, 8
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.i
  %i.p = getelementptr [48 x i8], ptr %.val.val42, i64 %i.i
  %i.q = getelementptr i8, ptr %i.p, i64 -384
  %.0.i.i.i = select i1 %i.n, ptr %i.o, ptr %i.q
  %i.r = icmp ult i64 %i.k, 8
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.k
  %i.t = getelementptr [48 x i8], ptr %.val.val42, i64 %i.k
  %i.u = getelementptr i8, ptr %i.t, i64 -384
  %.0.i.i2.i = select i1 %i.r, ptr %i.s, ptr %i.u
  %i.v = getelementptr i8, ptr %.0.i.i.i, i64 8
  %.val.i = load i64, ptr %i.v, align 8, !tbaa !178
  %i.w = getelementptr i8, ptr %.0.i.i2.i, i64 8
  %.val1.i = load i64, ptr %i.w, align 8, !tbaa !178
  %i.x = icmp ult i64 %.val.i, %.val1.i
  %spec.select = select i1 %i.x, i64 %i.j, i64 %i.f ; 4 uses
  %i.y = add i64 %spec.select, %i.h               ; 3 uses
  %i.z = icmp ult i64 %i.y, 8
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.y
  %i.ab = getelementptr [48 x i8], ptr %.val.val42, i64 %i.y
  %i.ac = getelementptr i8, ptr %i.ab, i64 -384
  %.0.i.i = select i1 %i.z, ptr %i.aa, ptr %i.ac
  %i.ad = add i64 %i.h, %.02767                   ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 8
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.ad
  %i.ag = getelementptr [48 x i8], ptr %.val.val42, i64 %i.ad
  %i.ah = getelementptr i8, ptr %i.ag, i64 -384
  %.0.i.i44 = select i1 %i.ae, ptr %i.af, ptr %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i44, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 48, i1 false), !tbaa.struct !179
  %i.ai = icmp slt i64 %spec.select, %i.b
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !392

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.027.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.aj = and i64 %2, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.al = add nsw i64 %2, -2
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp eq i64 %.027.lcssa, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = shl nsw i64 %.027.lcssa, 1
  %i.ap = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !168, !noalias !397 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !169, !noalias !397 ; 2 uses
  %i.at = add i64 %i.as, %i.ap                    ; 3 uses
  %i.au = icmp ult i64 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 392
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.aw, i64 %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 400
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr [48 x i8], ptr %i.az, i64 %i.at
  %i.bb = getelementptr i8, ptr %i.ba, i64 -384
  %.0.i.i45 = select i1 %i.au, ptr %i.ax, ptr %i.bb
  %i.bc = add i64 %i.as, %.027.lcssa              ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 8
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.aw, i64 %i.bc
  %i.bf = getelementptr [48 x i8], ptr %i.az, i64 %i.bc
  %i.bg = getelementptr i8, ptr %i.bf, i64 -384
  %.0.i.i46 = select i1 %i.bd, ptr %i.be, ptr %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i46, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i45, i64 48, i1 false), !tbaa.struct !179
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.130 = phi i64 [ %i.ap, %bb.d ], [ %.027.lcssa, %bb.c ], [ %.027.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !166 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !112 ; 3 uses
  %.sroa.064.0.copyload = load ptr, ptr %3, align 8, !tbaa !170
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.265.0.copyload = load i64, ptr %.sroa.265.0..sroa_idx, align 8, !tbaa !112 ; 2 uses
  %i.bh = icmp sgt i64 %.130, %1
  br i1 %i.bh, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.bi = getelementptr i8, ptr %.sroa.0.0.copyload, i64 392
  %i.bj = getelementptr i8, ptr %.sroa.0.0.copyload, i64 400
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.0189.i = phi i64 [ %.01710.i, %bb.f ], [ %.130, %.lr.ph.i.preheader ] ; 3 uses
  %.01710.in.i = add nsw i64 %.0189.i, -1
  %.01710.i = sdiv i64 %.01710.in.i, 2            ; 4 uses
  %i.bk = add i64 %.01710.i, %.sroa.3.0.copyload  ; 3 uses
  %.val.val.i = load ptr, ptr %i.bi, align 8      ; 2 uses
  %.val.val24.i = load ptr, ptr %i.bj, align 8    ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 8
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i, i64 %i.bk
  %i.bn = getelementptr [48 x i8], ptr %.val.val24.i, i64 %i.bk
  %i.bo = getelementptr i8, ptr %i.bn, i64 -384
  %.0.i.i.i.i = select i1 %i.bl, ptr %i.bm, ptr %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %.val.i.i = load i64, ptr %i.bp, align 8, !tbaa !178
  %i.bq = icmp ult i64 %.val.i.i, %.sroa.265.0.copyload
  br i1 %i.bq, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i
  %i.br = add i64 %.0189.i, %.sroa.3.0.copyload   ; 3 uses
  %i.bs = icmp ult i64 %i.br, 8
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i, i64 %i.br
  %i.bu = getelementptr [48 x i8], ptr %.val.val24.i, i64 %i.br
  %i.bv = getelementptr i8, ptr %i.bu, i64 -384
  %.0.i.i25.i = select i1 %i.bs, ptr %i.bt, ptr %i.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i25.i, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, i64 48, i1 false), !tbaa.struct !179
  %i.bw = icmp sgt i64 %.01710.i, %1
  br i1 %i.bw, label %.lr.ph.i, label %.loopexit, !llvm.loop !395

.loopexit:                                        ; preds = %bb.f, %.lr.ph.i, %bb.e
  %.018.lcssa.i = phi i64 [ %.130, %bb.e ], [ %.0189.i, %.lr.ph.i ], [ %.01710.i, %bb.f ]
  %.sroa.366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = add i64 %.018.lcssa.i, %.sroa.3.0.copyload ; 3 uses
  %i.by = icmp ult i64 %i.bx, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 392
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 400
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr [48 x i8], ptr %i.cd, i64 %i.bx
  %i.cf = getelementptr i8, ptr %i.ce, i64 -384
  %.0.i.i26.i = select i1 %i.by, ptr %i.cb, ptr %i.cf ; 3 uses
  store ptr %.sroa.064.0.copyload, ptr %.0.i.i26.i, align 8, !tbaa !170
  %.sroa.4.0..0.i.i26.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i26.i, i64 8
  store i64 %.sroa.265.0.copyload, ptr %.sroa.4.0..0.i.i26.i.sroa_idx, align 8, !tbaa !112
  %.sroa.563.0..0.i.i26.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i26.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.563.0..0.i.i26.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.366.0..sroa_idx, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN7rocksdb10autovectorINS0_15BlobReadRequestELm8EE13iterator_implIS3_S2_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_10BlobSource12MultiGetBlobERKNS0_11ReadOptionsERNS1_ISt5tupleIJmmS3_EELm8EEEPmE3$_0EEEvT_SK_T0_"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6.i = alloca { i64, i8, ptr, ptr }, align 8 ; 4 uses
  %2 = alloca %"struct.rocksdb::BlobReadRequest", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !169  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %.loopexit34, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.9.035 = add i64 %i.b, 1                  ; 2 uses
  %.not36 = icmp eq i64 %.sroa.9.035, %i.d
  br i1 %.not36, label %.loopexit34, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !168, !noalias !412 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 392      ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 400      ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.9.038.a = phi i64 [ %.sroa.9.035, %.lr.ph ], [ %.sroa.9.0, %bb.f ] ; 10 uses
  %.sroa.9.0.in37 = phi i64 [ %i.b, %.lr.ph ], [ %.sroa.9.038.a, %bb.f ] ; 7 uses
  %.sroa.021.0.copyload = load ptr, ptr %0, align 8, !tbaa !166 ; 2 uses
  %.sroa.222.0.copyload = load i64, ptr %i.a, align 8, !tbaa !112 ; 6 uses
  %.val.val = load ptr, ptr %i.g, align 8         ; 4 uses
  %.val.val11 = load ptr, ptr %i.h, align 8       ; 4 uses
  %i.i = getelementptr i8, ptr %.sroa.021.0.copyload, i64 392
  %.val9.val = load ptr, ptr %i.i, align 8        ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.021.0.copyload, i64 400
  %.val9.val12 = load ptr, ptr %i.j, align 8      ; 2 uses
  %i.k = icmp ult i64 %.sroa.9.038.a, 8
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %.sroa.9.038.a
  %i.m = getelementptr [48 x i8], ptr %.val.val11, i64 %.sroa.9.038.a
  %i.n = getelementptr i8, ptr %i.m, i64 -384
  %.0.i.i.i = select i1 %i.k, ptr %i.l, ptr %i.n  ; 4 uses
  %i.o = icmp ult i64 %.sroa.222.0.copyload, 8
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %.val9.val, i64 %.sroa.222.0.copyload
  %i.q = getelementptr [48 x i8], ptr %.val9.val12, i64 %.sroa.222.0.copyload
  %i.r = getelementptr i8, ptr %i.q, i64 -384
  %.0.i.i2.i = select i1 %i.o, ptr %i.p, ptr %i.r
  %i.s = getelementptr i8, ptr %.0.i.i.i, i64 8
  %.val.i = load i64, ptr %i.s, align 8, !tbaa !178 ; 4 uses
  %i.t = getelementptr i8, ptr %.0.i.i2.i, i64 8
  %.val1.i = load i64, ptr %i.t, align 8, !tbaa !178
  %i.u = icmp ult i64 %.val.i, %.val1.i
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i64 48, i1 false), !tbaa.struct !179
  %i.v = sub i64 %.sroa.9.038.a, %.sroa.222.0.copyload ; 4 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.x = add i64 %.sroa.9.0.in37, 2
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.y = add i64 %.sroa.9.038.a, -1               ; 4 uses
  %i.z = icmp ult i64 %i.y, 8
  %i.aa = load ptr, ptr %i.g, align 8, !noalias !413 ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.y
  %i.ac = load ptr, ptr %i.h, align 8, !noalias !413 ; 2 uses
  %i.ad = getelementptr [48 x i8], ptr %i.ac, i64 %i.y
  %i.ae = getelementptr i8, ptr %i.ad, i64 -384
  %.0.i.i.i.i.i.i.i.prol = select i1 %i.z, ptr %i.ab, ptr %i.ae
  %3 = add i64 %.sroa.9.0.in37, 1                 ; 4 uses
  %i.af = icmp ult i64 %3, 8
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %3
  %i.ah = getelementptr [48 x i8], ptr %i.ac, i64 %3
  %i.ai = getelementptr i8, ptr %i.ah, i64 -384
  %.0.i.i2.i.i.i.i.i.prol = select i1 %i.af, ptr %i.ag, ptr %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i2.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i.i.i.prol, i64 48, i1 false), !tbaa.struct !179, !noalias !413
  %i.aj = add nsw i64 %i.v, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.3.0.i.i.i.i.unr = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %3, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.2.0.i.i.i.i.unr = phi i64 [ %.sroa.9.038.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.i.i.prol ]
  %.03.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.prol ]
  %i.ak = icmp eq i64 %.sroa.9.0.in37, %.sroa.222.0.copyload
  br i1 %i.ak, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.2.0.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.sroa.2.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.03.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.al = add i64 %.sroa.2.0.i.i.i.i, -1          ; 3 uses
  %i.am = icmp ult i64 %i.al, 8
  %i.an = load ptr, ptr %i.g, align 8, !noalias !413 ; 2 uses
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %i.al
  %i.ap = load ptr, ptr %i.h, align 8, !noalias !413 ; 2 uses
  %i.aq = getelementptr [48 x i8], ptr %i.ap, i64 %i.al
  %i.ar = getelementptr i8, ptr %i.aq, i64 -384
  %.0.i.i.i.i.i.i.i = select i1 %i.am, ptr %i.ao, ptr %i.ar
  %i.as = add i64 %.sroa.3.0.i.i.i.i, -1          ; 3 uses
  %i.at = icmp ult i64 %i.as, 8
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %i.as
  %i.av = getelementptr [48 x i8], ptr %i.ap, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 -384
  %.0.i.i2.i.i.i.i.i = select i1 %i.at, ptr %i.au, ptr %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i2.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !179, !noalias !413
  %i.ax = add i64 %.sroa.2.0.i.i.i.i, -2          ; 4 uses
  %i.ay = icmp ult i64 %i.ax, 8
  %i.az = load ptr, ptr %i.g, align 8, !noalias !413 ; 2 uses
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %i.ax
  %i.bb = load ptr, ptr %i.h, align 8, !noalias !413 ; 2 uses
  %i.bc = getelementptr [48 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = getelementptr i8, ptr %i.bc, i64 -384
  %.0.i.i.i.i.i.i.i.1 = select i1 %i.ay, ptr %i.ba, ptr %i.bd
  %i.be = add i64 %.sroa.3.0.i.i.i.i, -2          ; 4 uses
  %i.bf = icmp ult i64 %i.be, 8
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %i.be
  %i.bh = getelementptr [48 x i8], ptr %i.bb, i64 %i.be
  %i.bi = getelementptr i8, ptr %i.bh, i64 -384
  %.0.i.i2.i.i.i.i.i.1 = select i1 %i.bf, ptr %i.bg, ptr %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i2.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i.i.i.1, i64 48, i1 false), !tbaa.struct !179, !noalias !413
  %i.bj = add nsw i64 %.03.i.i.i.i.i, -2
  %i.bk = icmp sgt i64 %.03.i.i.i.i.i, 2
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %.loopexit.loopexit, !llvm.loop !410

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.pre = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %.pre39 = load i64, ptr %i.a, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 392
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %.pre, i64 400
  %.pre42 = load ptr, ptr %.phi.trans.insert41, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d
  %i.bl = phi ptr [ %.pre42, %.loopexit.loopexit ], [ %.val9.val12, %bb.d ]
  %i.bm = phi ptr [ %.pre40, %.loopexit.loopexit ], [ %.val9.val, %bb.d ]
  %i.bn = phi i64 [ %.pre39, %.loopexit.loopexit ], [ %.sroa.222.0.copyload, %bb.d ] ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 8
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.bm, i64 %i.bn
  %i.bq = getelementptr [48 x i8], ptr %i.bl, i64 %i.bn
  %i.br = getelementptr i8, ptr %i.bq, i64 -384
  %.0.i.i13 = select i1 %i.bo, ptr %i.bp, ptr %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i13, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !179
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.016.0.copyload.i = load ptr, ptr %.0.i.i.i, align 8, !tbaa !170
  %.sroa.6.0..0.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..0.i.i.sroa_idx.i, i64 32, i1 false), !tbaa.struct !176
  %i.bs = icmp ult i64 %.sroa.9.0.in37, 8
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %.sroa.9.0.in37
  %i.bu = getelementptr [48 x i8], ptr %.val.val11, i64 %.sroa.9.0.in37
  %i.bv = getelementptr i8, ptr %i.bu, i64 -384
  %.0.i.i.i22.i = select i1 %i.bs, ptr %i.bt, ptr %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %.0.i.i.i22.i, i64 8
  %.val2.i23.i = load i64, ptr %i.bw, align 8, !tbaa !178
  %i.bx = icmp ult i64 %.val.i, %.val2.i23.i
  br i1 %i.bx, label %.lr.ph.i, label %.loopexit33

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.by = phi ptr [ %.val3.val5.i, %.lr.ph.i ], [ %.val.val11, %bb.e ]
  %i.bz = phi ptr [ %.val3.val.i, %.lr.ph.i ], [ %.val.val, %bb.e ]
  %4 = phi i64 [ %.sroa.7.024.i, %.lr.ph.i ], [ %.sroa.9.038.a, %bb.e ] ; 3 uses
  %.0.i.i.i25.i = phi ptr [ %.0.i.i.i.i, %.lr.ph.i ], [ %.0.i.i.i22.i, %bb.e ]
  %.sroa.7.024.i = phi i64 [ %.sroa.7.0.i, %.lr.ph.i ], [ %.sroa.9.0.in37, %bb.e ] ; 3 uses
  %i.ca = icmp ult i64 %4, 8
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bz, i64 %4
  %i.cc = getelementptr [48 x i8], ptr %i.by, i64 %4
  %i.cd = getelementptr i8, ptr %i.cc, i64 -384
  %.0.i.i7.i = select i1 %i.ca, ptr %i.cb, ptr %i.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i7.i, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i25.i, i64 48, i1 false), !tbaa.struct !179
  %.sroa.7.0.i = add i64 %.sroa.7.024.i, -1       ; 4 uses
  %.val3.val.i = load ptr, ptr %i.g, align 8      ; 3 uses
  %.val3.val5.i = load ptr, ptr %i.h, align 8     ; 3 uses
  %i.ce = icmp ult i64 %.sroa.7.0.i, 8
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %.val3.val.i, i64 %.sroa.7.0.i
  %i.cg = getelementptr [48 x i8], ptr %.val3.val5.i, i64 %.sroa.7.0.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 -384
  %.0.i.i.i.i = select i1 %i.ce, ptr %i.cf, ptr %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %.val2.i.i = load i64, ptr %i.ci, align 8, !tbaa !178
  %i.cj = icmp ult i64 %.val.i, %.val2.i.i
  br i1 %i.cj, label %.lr.ph.i, label %.loopexit33, !llvm.loop !8

.loopexit33:                                      ; preds = %.lr.ph.i, %bb.e
  %i.ck = phi ptr [ %.val.val11, %bb.e ], [ %.val3.val5.i, %.lr.ph.i ]
  %i.cl = phi ptr [ %.val.val, %bb.e ], [ %.val3.val.i, %.lr.ph.i ]
  %i.cm = phi i64 [ %.sroa.9.038.a, %bb.e ], [ %.sroa.7.024.i, %.lr.ph.i ] ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %i.cl, i64 %i.cm
  %i.cp = getelementptr [48 x i8], ptr %i.ck, i64 %i.cm
  %i.cq = getelementptr i8, ptr %i.cp, i64 -384
  %.0.i.i8.i = select i1 %i.cn, ptr %i.co, ptr %i.cq ; 3 uses
  store ptr %.sroa.016.0.copyload.i, ptr %.0.i.i8.i, align 8, !tbaa !170
  %.sroa.5.0..0.i.i8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 8
  store i64 %.val.i, ptr %.sroa.5.0..0.i.i8.sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..0.i.i8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i8.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..0.i.i8.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !tbaa.struct !176
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %.loopexit33
  %.sroa.9.0 = add i64 %.sroa.9.038.a, 1          ; 2 uses
  %i.cr = load i64, ptr %i.c, align 8, !tbaa !169
  %.not = icmp eq i64 %.sroa.9.0, %i.cr
  br i1 %.not, label %.loopexit34, label %bb.c, !llvm.loop !411

.loopexit34:                                      ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb12ChargedCacheESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb12ChargedCacheESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN7rocksdb12ChargedCacheEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.a) #23, !inline_history !414
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb12ChargedCacheESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb12ChargedCacheESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb12ChargedCacheESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #23
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN7rocksdb12ChargedCacheEJRKSt10shared_ptrINS0_5CacheEERS4_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !38
  store <2 x ptr> %i.d, ptr %3, align 16, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !40
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !40
  br label %_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = load <2 x ptr>, ptr %2, align 8, !tbaa !38
  store <2 x ptr> %i.m, ptr %4, align 16, !tbaa !38
  %.not.i.i.i4 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i4, label %_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i5 = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !40
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !40
  br label %_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit6

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit6

_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit6: ; preds = %_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit, %bb.f, %bb.g
  invoke void @_ZN7rocksdb12ChargedCacheC1ESt10shared_ptrINS_5CacheEES3_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb5CacheEEC2ERKS2_.exit6
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !37   ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !57
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !0
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i7 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.n, label %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !37  ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.aj, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !57
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #23, !inline_history !0
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.q:                                             ; preds = %bb.o
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i9 = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i9, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !40
end_hunk_1
