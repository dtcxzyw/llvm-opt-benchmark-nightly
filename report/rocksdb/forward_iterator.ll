Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/forward_iterator?download=true
inline.NumInlined: 1910
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7rocksdb15ForwardIterator24ResetIncompleteIteratorsEv:bb.a
  %i.bb = select i1 %i.az, i64 576460752303423487, i64 %i.ba ; 3 uses
  %.not.i.i.i.i6.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i6.i)
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #29 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av ; 2 uses
  store ptr %i.af, ptr %i.be, align 8, !tbaa !407
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_ZN7rocksdb22PinnedIteratorsManager23ReleaseInternalIteratorEPv, ptr %i.bf, align 8, !tbaa !408
  %.not10.i.i.i.i.i.i7.i = icmp eq ptr %i.as, %i.an
  br i1 %.not10.i.i.i.i.i.i7.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i, label %.lr.ph.i.i.i.i.i.i8.i

.lr.ph.i.i.i.i.i.i8.i:                            ; preds = %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i, %.lr.ph.i.i.i.i.i.i8.i
  %.012.i.i.i.i.i.i9.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i8.i ], [ %i.bd, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i ] ; 2 uses
  %.0911.i.i.i.i.i.i10.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i8.i ], [ %i.as, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i10.i, i64 16, i1 false), !alias.scope !660
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i10.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i9.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %i.bg, %i.an
  br i1 %.not.i.i.i.i.i.i11.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i, label %.lr.ph.i.i.i.i.i.i8.i, !llvm.loop !1

_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i: ; preds = %.lr.ph.i.i.i.i.i.i8.i, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i
  %.0.lcssa.i.i.i.i.i.i13.i = phi ptr [ %i.bd, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i ], [ %i.bh, %.lr.ph.i.i.i.i.i.i8.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i13.i, i64 16
  %.not.i24.i.i.i14.i = icmp eq ptr %i.as, null
  br i1 %.not.i24.i.i.i14.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i15.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i
  %i.bj = load ptr, ptr %i.ao, align 8, !tbaa !405
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bl) #26
  br label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i15.i

_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i15.i: ; preds = %bb.k, %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !409
  store ptr %i.bi, ptr %i.am, align 8, !tbaa !404
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bm, ptr %i.ao, align 8, !tbaa !405
  br label %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit

bb.l:                                             ; preds = %bb.f, %bb.e
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #28, !inline_history !411
  br label %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit

_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit: ; preds = %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i15.i, %bb.h, %bb.d, %bb.l
  %i.bq = load ptr, ptr %i.m, align 16, !tbaa !105 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2704
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !384
  %i.bt = call noundef ptr @_ZNK7rocksdb16ColumnFamilyData8soptionsEv(ptr noundef nonnull align 8 dereferenceable(3088) %i.bq)
  %i.bu = load ptr, ptr %i.m, align 16, !tbaa !105
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !376
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.02948
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !380
  %i.bz = load ptr, ptr %i.a, align 16, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.cb = call noundef i64 @_ZN7rocksdb23MaxFileSizeForL0MetaPinERKNS_16MutableCFOptionsE(ptr noundef nonnull align 8 dereferenceable(736) %i.ca)
  %i.cc = load i8, ptr %i.o, align 8, !tbaa !114, !range !297, !noundef !298
  %i.cd = trunc nuw i8 %i.cc to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i64 3, i1 false)
  %i.ce = call noundef ptr @_ZN7rocksdb10TableCache11NewIteratorERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEPNS_18RangeDelAggregatorERKNS_16MutableCFOptionsEPPNS_11TableReaderEPNS_13HistogramImplENS_17TableReaderCallerEPNS_5ArenaEbimPKNS_11InternalKeyESS_bPKmPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISW_EEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_21TableCacheOpenOptionsE(ptr noundef nonnull align 8 dereferenceable(152) %i.bs, ptr noundef nonnull align 8 dereferenceable(192) %i.n, ptr noundef nonnull align 8 dereferenceable(216) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(417) %i.by, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(736) %i.ca, ptr noundef null, ptr noundef null, i8 noundef signext 3, ptr noundef null, i1 noundef zeroext false, i32 noundef -1, i64 noundef %i.cb, ptr noundef null, ptr noundef null, i1 noundef zeroext %i.cd, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull align 1 dereferenceable(3) %2) ; 3 uses
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !187
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.02948
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !383
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !132
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 152
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef %i.ch)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !187
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %.critedge, %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit
  %i.cl = phi ptr [ %i.v, %bb.b ], [ %.pre54, %.critedge ], [ %.pre, %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit ] ; 2 uses
  %i.cm = add nuw i64 %.02948, 1                  ; 2 uses
  %i.cn = load ptr, ptr %i.h, align 16, !tbaa !377
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3
  %i.cs = icmp ult i64 %i.cm, %i.cr
  br i1 %i.cs, label %bb.b, label %._crit_edge, !llvm.loop !659

._crit_edge52:                                    ; preds = %.critedge34.thread, %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr null, ptr %i.ct, align 8, !tbaa !385
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i8 0, ptr %i.cu, align 16, !tbaa !130
  ret void

bb.m:                                             ; preds = %.lr.ph51, %.critedge34.thread
  %.sroa.044.049 = phi ptr [ %i.q, %.lr.ph51 ], [ %i.dc, %.critedge34.thread ] ; 2 uses
  %i.cv = load ptr, ptr %.sroa.044.049, align 8, !tbaa !390 ; 4 uses
  %.not.not = icmp eq ptr %i.cv, null
  br i1 %.not.not, label %.critedge34.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(113) %i.cv)
  %i.cz = load i8, ptr %3, align 8, !tbaa !494
  %i.da = icmp eq i8 %i.cz, 7
  %i.db = load ptr, ptr %i.u, align 8, !tbaa !184 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.db, null
  br i1 %.not.i.i38, label %.critedge34, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i39

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i39: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.db) #26
  br label %.critedge34

.critedge34:                                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i39, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.da, label %bb.o, label %.critedge34.thread

bb.o:                                             ; preds = %.critedge34
  call void @_ZN7rocksdb20ForwardLevelIterator5ResetEv(ptr noundef nonnull align 8 dereferenceable(113) %i.cv)
  br label %.critedge34.thread

.critedge34.thread:                               ; preds = %bb.m, %bb.o, %.critedge34
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.044.049, i64 8 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.s
  br i1 %i.dd, label %._crit_edge52, label %bb.m
}

; Function Attrs: uwtable
define void @_ZN7rocksdb15ForwardIterator12SeekInternalERKNS_5SliceEbb(ptr noundef nonnull align 16 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 7 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  br i1 %3, label %.thread224, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !294  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.h = tail call noundef zeroext i1 @_ZN7rocksdb15ForwardIterator19NeedToSeekImmutableERKNS_5SliceE(ptr noundef nonnull align 16 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.h, label %.thread220, label %bb.cf

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %.thread220

.thread220:                                       ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 429
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.k, i8 0, i64 6, i1 false)
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !184 ; 2 uses
  store ptr null, ptr %i.n, align 16, !tbaa !184
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %.thread220
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %.thread220
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.q = load i8, ptr %i.p, align 8, !tbaa !118, !range !297, !noundef !298
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.t = load i8, ptr %i.s, align 16, !tbaa !130, !range !297, !noundef !298
  %i.u = icmp eq i8 %i.t, 0
  %or.cond3 = or i1 %2, %i.u
  br i1 %or.cond3, label %.critedge5.a, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !105
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !121  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aa = load i64, ptr %i.z, align 16, !tbaa !122 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ac = add i64 %i.aa, -8
  store ptr %i.y, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ac, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ae = load ptr, ptr %1, align 8, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !129
  %i.ah = add i64 %i.ag, -8
  store ptr %i.ae, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  %.not.i.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  br i1 %.not.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i

_ZTWN7rocksdb10perf_levelE.exit.i.i:              ; preds = %bb.g, %bb.f
  %i.aj = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !496
  %i.al = icmp ugt i8 %i.ak, 1
  br i1 %i.al, label %bb.h, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i

bb.h:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i
  %.not.i3.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i3.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i

_ZTWN7rocksdb12perf_contextE.exit.i.i:            ; preds = %bb.i, %bb.h
  %i.am = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !498
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !498
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit

bb.j:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.ax, align 1 ; 2 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !128
  %i.az = load i64, ptr %i.af, align 8, !tbaa !129
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %.0.copyload.i18.i = load i64, ptr %i.bb, align 1 ; 2 uses
  %i.bc = icmp ugt i64 %.0.copyload.i.i, %.0.copyload.i18.i
  br i1 %i.bc, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp ult i64 %.0.copyload.i.i, %.0.copyload.i18.i
  %spec.select.i = zext i1 %i.bd to i32
  br label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit: ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i, %bb.k
  %.1.i = phi i32 [ %i.au, %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i ], [ %spec.select.i, %bb.k ]
  %i.be = icmp sgt i32 %.1.i, 0
  br i1 %i.be, label %.critedge5.a, label %.critedge

.critedge5.a:                                     ; preds = %bb.e, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit
  call void @_ZN7rocksdb15ForwardIterator16RebuildIteratorsEb(ptr noundef nonnull align 16 dereferenceable(2960) %0, i1 noundef zeroext true)
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %21 = load ptr, ptr %20, align 8, !tbaa !294    ; 3 uses
  %22 = load ptr, ptr %21, align 8, !tbaa !30     ; 2 uses
  br i1 %2, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge5.a
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(40) %21)
  br label %.critedge

bb.m:                                             ; preds = %.critedge5.a
  %i.bh = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %_ZN7rocksdb6StatusD2Ev.exit, %bb.l, %bb.m, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_5SliceES3_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !105
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !187 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !188
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store i64 %i.bm, ptr %i.br, align 8, !tbaa !115
  %.not.i.i.i.i108 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i108, label %_ZNSt14priority_queueIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt6vectorIS4_SaIS4_EENS0_17MinIterComparatorEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bu) #26
  br label %_ZNSt14priority_queueIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt6vectorIS4_SaIS4_EENS0_17MinIterComparatorEED2Ev.exit

_ZNSt14priority_queueIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt6vectorIS4_SaIS4_EENS0_17MinIterComparatorEED2Ev.exit: ; preds = %.critedge, %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !377
  %i.by = load ptr, ptr %i.bv, align 16, !tbaa !187 ; 2 uses
  %.not244 = icmp eq ptr %i.bx, %i.by
  br i1 %.not244, label %.thread224, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt14priority_queueIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt6vectorIS4_SaIS4_EENS0_17MinIterComparatorEED2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.v
  %i.cd = phi ptr [ %i.by, %.lr.ph ], [ %i.di, %bb.v ]
  %.0239 = phi i64 [ 0, %.lr.ph ], [ %i.dg, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.0239
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !383 ; 4 uses
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !383
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !30 ; 2 uses
  br i1 %2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(40) %i.cf)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !383 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 120
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %i.cl)
  %i.cp = load i8, ptr %8, align 8, !tbaa !494
  %i.cq = icmp eq i8 %i.cp, 0
  %i.cr = load ptr, ptr %i.bz, align 8, !tbaa !184 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i112, label %_ZN7rocksdb6StatusD2Ev.exit114, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i113

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i113: ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.cr) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit114

_ZN7rocksdb6StatusD2Ev.exit114:                   ; preds = %bb.r, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.cq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !383 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %i.cs)
  %i.cw = load <4 x i8>, ptr %9, align 8, !tbaa !28
  store <4 x i8> %i.cw, ptr %i.k, align 8, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %9, align 8, !tbaa !28
  %i.cx = load i8, ptr %i.ca, align 4, !tbaa !392, !range !297, !noundef !298
  store i8 %i.cx, ptr %i.l, align 4, !tbaa !393
  store i8 0, ptr %i.ca, align 4, !tbaa !393
  %i.cy = load i8, ptr %i.cb, align 1, !tbaa !28
  store i8 %i.cy, ptr %i.m, align 1, !tbaa !394
  store i8 0, ptr %i.cb, align 1, !tbaa !394
  %i.cz = load ptr, ptr %i.cc, align 8, !tbaa !184
  store ptr null, ptr %i.cc, align 8, !tbaa !184
  %i.da = load ptr, ptr %i.n, align 16, !tbaa !184 ; 2 uses
  store ptr %i.cz, ptr %i.n, align 16, !tbaa !184
  %.not.i.i.i.i.i115 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i115, label %_ZN7rocksdb6StatusD2Ev.exit120, label %_ZN7rocksdb6StatusaSEOS0_.exit117

_ZN7rocksdb6StatusaSEOS0_.exit117:                ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.da) #26
  %.pr = load ptr, ptr %i.cc, align 8, !tbaa !184 ; 2 uses
  %.not.i.i118 = icmp eq ptr %.pr, null
  br i1 %.not.i.i118, label %_ZN7rocksdb6StatusD2Ev.exit120, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i119

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i119: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit117
  call void @_ZdaPv(ptr noundef nonnull %.pr) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit120

_ZN7rocksdb6StatusD2Ev.exit120:                   ; preds = %bb.s, %_ZN7rocksdb6StatusaSEOS0_.exit117, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.v

bb.t:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit114
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !383 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(40) %i.db)
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt14priority_queueIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt6vectorIS4_SaIS4_EENS0_17MinIterComparatorEE4pushERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %_ZN7rocksdb6StatusD2Ev.exit120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dg = add nuw i64 %.0239, 1                   ; 2 uses
  %i.dh = load ptr, ptr %i.bw, align 8, !tbaa !377
  %i.di = load ptr, ptr %i.bv, align 16, !tbaa !187 ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 3
  %i.dn = icmp ult i64 %i.dg, %i.dm
  br i1 %i.dn, label %bb.o, label %.thread224, !llvm.loop !661

.thread224:                                       ; preds = %bb.v, %_ZNSt14priority_queueIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt6vectorIS4_SaIS4_EENS0_17MinIterComparatorEED2Ev.exit, %bb.a
  %or.cond218223 = phi i1 [ true, %bb.a ], [ %2, %_ZNSt14priority_queueIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt6vectorIS4_SaIS4_EENS0_17MinIterComparatorEED2Ev.exit ], [ %2, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr @.str, ptr %10, align 8, !tbaa !128
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.do, align 8, !tbaa !129
  br i1 %2, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread224
  %i.dp = load ptr, ptr %1, align 8, !tbaa !128
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !129
  %i.ds = add i64 %i.dr, -8
  store ptr %i.dp, ptr %10, align 8, !tbaa !184
  store i64 %i.ds, ptr %i.do, align 8, !tbaa !182
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread224
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.du = load ptr, ptr %i.dt, align 16, !tbaa !116
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !299 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2776 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !372 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !375
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !376
  %.not245 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not245, label %.preheader, label %.lr.ph241

.lr.ph241:                                        ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 13 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 429
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.y

.preheader:                                       ; preds = %bb.bb, %bb.x
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dw, i64 80 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 16, !tbaa !499
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %.lr.ph243, label %._crit_edge
end_hunk_0
