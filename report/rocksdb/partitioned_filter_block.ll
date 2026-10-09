Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/partitioned_filter_block?download=true
inline.NumInlined: 1577
inline.NumDeleted: 789
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7rocksdb29PartitionedFilterBlockBuilder11FilterEntryD2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29PartitionedFilterBlockBuilder3AddERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  store ptr %i.b, ptr %2, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81
  store i64 %i.e, ptr %i.c, align 8, !tbaa !19
  call void @_ZN7rocksdb29PartitionedFilterBlockBuilder7AddImplERKNS_5SliceES3_(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.f = load ptr, ptr %1, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %i.i = load i64, ptr %i.d, align 8, !tbaa !81
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.i, ptr noundef %i.f, i64 noundef %i.h) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29PartitionedFilterBlockBuilder7AddImplERKNS_5SliceES3_(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !465 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i8, ptr %i.g, align 8, !tbaa !78, !range !100, !noundef !101
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load i32, ptr %i.j, align 8, !tbaa !85
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = icmp uge i64 %i.f, %i.l
  br label %_ZN7rocksdb29PartitionedFilterBlockBuilder21DecideCutAFilterBlockEv.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %i.f, %i.l
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  tail call void @_ZN7rocksdb23PartitionedIndexBuilder19RequestPartitionCutEv(ptr noundef nonnull align 8 dereferenceable(632) %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 587 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !123, !range !100, !noundef !101
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %_ZN7rocksdb29PartitionedFilterBlockBuilder21DecideCutAFilterBlockEv.exit

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.r, align 1, !tbaa !123
  br label %_ZN7rocksdb29PartitionedFilterBlockBuilder21DecideCutAFilterBlockEv.exit

_ZN7rocksdb29PartitionedFilterBlockBuilder21DecideCutAFilterBlockEv.exit: ; preds = %bb.b, %bb.e, %bb.f
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.e ], [ true, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !87   ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb29PartitionedFilterBlockBuilder21DecideCutAFilterBlockEv.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.z, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !87  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call { ptr, i64 } %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  store ptr %i.af, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = extractvalue { ptr, i64 } %i.ae, 1
  store i64 %i.ah, ptr %i.ag, align 8
  br i1 %.0.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN7rocksdb29PartitionedFilterBlockBuilder15CutAFilterBlockEPKNS_5SliceES3_RS2_(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !124, !range !100, !noundef !101
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.r

bb.n:                                             ; preds = %bb.g, %_ZN7rocksdb29PartitionedFilterBlockBuilder21DecideCutAFilterBlockEv.exit
  br i1 %.0.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN7rocksdb29PartitionedFilterBlockBuilder15CutAFilterBlockEPKNS_5SliceES3_RS2_(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !124, !range !100, !noundef !101
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29PartitionedFilterBlockBuilder14AddWithPrevKeyERKNS_5SliceES3_(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7rocksdb29PartitionedFilterBlockBuilder7AddImplERKNS_5SliceES3_(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7rocksdb29PartitionedFilterBlockBuilder20EstimateEntriesAddedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(713) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.i = add i64 %i.h, %i.b
  ret i64 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7rocksdb29PartitionedFilterBlockBuilder25CurrentFilterSizeEstimateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(713) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.g = shl i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, %i.g
  ret i64 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29PartitionedFilterBlockBuilder20OnDataBlockFinalizedEm(ptr noundef nonnull align 8 dereferenceable(713) %0, i64 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(713) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29PartitionedFilterBlockBuilder24UpdateFilterSizeEstimateEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(713) %0, i64 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %3 = load atomic i64, ptr %2 monotonic, align 8 ; 2 uses
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %6 = load i32, ptr %5, align 8
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 2
  %.sroa.speculated = select i1 %4, i64 %8, i64 %3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(632) %i.b)
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = load i64, ptr %i.g, align 8, !tbaa !466
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.k = load i8, ptr %i.j, align 8, !tbaa !467, !range !100, !noundef !101
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load double, ptr %i.i, align 8
  %i.n = fcmp ogt double %i.m, 0.000000e+00
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.q = load double, ptr %i.p, align 8, !tbaa !468
  %i.r = fptoui double %i.q to i16
  %i.s = or i16 %i.r, 1
  %i.t = zext i16 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 2
  br label %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit

_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit: ; preds = %bb.b, %bb.c
  %i.v = phi i64 [ %i.u, %bb.c ], [ 0, %bb.b ]
  %i.w = add i64 %i.v, %i.h
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.y = load i64, ptr %i.x, align 8, !tbaa !466
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !467, !range !100, !noundef !101
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load double, ptr %i.z, align 8
  %i.ae = fcmp ogt double %i.ad, 0.000000e+00
  %i.af = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.e, label %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit10

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !468
  %i.ai = fptoui double %i.ah to i16
  %i.aj = or i16 %i.ai, 1
  %i.ak = zext i16 %i.aj to i64
  %i.al = add nuw nsw i64 %i.ak, 2
  br label %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit10

_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit10: ; preds = %bb.d, %bb.e
  %i.am = phi i64 [ %i.al, %bb.e ], [ 0, %bb.d ]
  %i.an = add i64 %i.am, %i.y
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit10, %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit
  %.pn = phi i64 [ %i.w, %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit ], [ %i.an, %_ZNK7rocksdb12BlockBuilder19CurrentSizeEstimateEv.exit10 ]
  %.0 = add i64 %.pn, %.sroa.speculated           ; 3 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = udiv i64 %.0, %1
  %i.ap = shl i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ar = add i64 %i.ap, %.0
  store atomic i64 %i.ar, ptr %i.aq monotonic, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224
  store atomic i64 %.0, ptr %i.as monotonic, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29PartitionedFilterBlockBuilder19PrevKeyBeforeFinishERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7rocksdb29PartitionedFilterBlockBuilder15CutAFilterBlockEPKNS_5SliceES3_RS2_(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb29PartitionedFilterBlockBuilder6FinishERKNS_11BlockHandleEPNS_5SliceEPSt10unique_ptrIA_KcSt14default_deleteIS8_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(713) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.2", align 8 ; 4 uses
  %i.a = alloca [10 x i8], align 1                ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !83, !range !100, !noundef !101
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133, !noalias !474 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.i, align 8, !tbaa !81
  store i8 0, ptr %i.h, align 8, !tbaa !82
  invoke void @_ZNK7rocksdb11BlockHandle8EncodeToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %6)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.k, align 8, !tbaa !81
  store i8 0, ptr %i.j, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.p = load i64, ptr %i.o, align 8, !tbaa !134
  %i.q = sub i64 %i.m, %i.p                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.r = shl i64 %i.q, 1
  %i.s = ashr i64 %i.q, 63
  %i.t = xor i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp ugt i64 %i.t, 127
  br i1 %i.u, label %.lr.ph.i.i, label %_ZN7rocksdb14EncodeVarint64EPcm.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.a, %bb.c ] ; 2 uses
  %.078.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.v = trunc i64 %.078.i.i to i8
  %i.w = or i8 %i.v, -128
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1 ; 2 uses
  store i8 %i.w, ptr %.09.i.i, align 1, !tbaa !82
  %i.y = lshr i64 %.078.i.i, 7                    ; 2 uses
  %i.z = icmp ugt i64 %.078.i.i, 16383
  br i1 %i.z, label %.lr.ph.i.i, label %_ZN7rocksdb14EncodeVarint64EPcm.exit.i, !llvm.loop !471

_ZN7rocksdb14EncodeVarint64EPcm.exit.i:           ; preds = %.lr.ph.i.i, %bb.c
  %.07.lcssa.i.i = phi i64 [ %i.t, %bb.c ], [ %i.y, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi ptr [ %i.a, %bb.c ], [ %i.x, %.lr.ph.i.i ] ; 2 uses
  %i.aa = trunc nuw nsw i64 %.07.lcssa.i.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.0.lcssa.i.i, align 1, !tbaa !82
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.a to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 7 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.d:                                             ; preds = %_ZN7rocksdb14EncodeVarint64EPcm.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZN7rocksdb14EncodeVarint64EPcm.exit.i
  %.not.i.i.i = icmp samesign ugt i64 %i.ae, 15
  br i1 %.not.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %i.ab, %i.a
  br i1 %.not8.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %cond.i.i.i = icmp eq i64 %i.ae, 1
  br i1 %cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %i.a, align 1, !tbaa !82
  store i8 %i.ag, ptr %i.j, align 8, !tbaa !82
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 1 %i.a, i64 %i.ae, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ae)
          to label %._crit_edge unwind label %bb.p

._crit_edge:                                      ; preds = %bb.i
  %.pre = load ptr, ptr %7, align 8, !tbaa !88
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.h, %bb.g, %bb.e
  %i.ah = phi ptr [ %.pre, %._crit_edge ], [ %i.j, %bb.h ], [ %i.j, %bb.g ], [ %i.j, %bb.e ]
  store i64 %i.ae, ptr %i.k, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  store i8 0, ptr %i.ai, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !135
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.aj = load ptr, ptr %7, align 8, !tbaa !88
  store ptr %i.aj, ptr %8, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i64, ptr %i.k, align 8, !tbaa !81
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !88
  store ptr %i.an, ptr %9, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !81
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ar = load ptr, ptr %6, align 8, !tbaa !88
  store ptr %i.ar, ptr %10, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = load i64, ptr %i.i, align 8, !tbaa !81
  store i64 %i.at, ptr %i.as, align 8, !tbaa !19
  invoke void @_ZN7rocksdb12BlockBuilder3AddERKNS_5SliceES3_PS2_b(ptr noundef nonnull align 8 dereferenceable(232) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %8, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !76 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(632) %i.av)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %i.az, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !81
  %i.bc = add i64 %i.bb, -8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 464
end_hunk_0
