Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFObjectFile?download=true
inline.NumInlined: 2994
inline.NumDeleted: 990
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm6object14COFFObjectFile19getRelocationSymbolENS0_11DataRefImplE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = icmp eq i16 %.0.copyload.i.i.i.i.i.i, -1
  br i1 %i.j, label %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  br label %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62, !nonnull !63, !noundef !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  br label %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit

_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.in = phi ptr [ %i.k, %bb.d ], [ %i.n, %bb.e ]
  %.0.i = load i32, ptr %.0.i.in, align 1
  %.not = icmp ult i32 %.0.copyload.i.i.i, %.0.i
  br i1 %.not, label %bb.f, label %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread

_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call { i64, ptr } %i.q(ptr noundef nonnull align 8 dereferenceable(232) %0) #25
  br label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit
  %i.s = zext i32 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %i.s
  %i.u = getelementptr inbounds nuw [18 x i8], ptr %i.d, i64 %i.s
  %storemerge.in = select i1 %.not.i, ptr %i.t, ptr %i.u
  %storemerge = ptrtoint ptr %storemerge.in to i64
  %i.v = insertvalue { i64, ptr } poison, i64 %storemerge, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %0, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.w, %bb.f ], [ %i.r, %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread ]
  ret { i64, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i64 0, 65536) i64 @_ZNK4llvm6object14COFFObjectFile17getRelocationTypeENS0_11DataRefImplE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0.copyload.i.i.i = load i16, ptr %i.b, align 1
  %i.c = zext i16 %.0.copyload.i.i.i to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, ptr } @_ZNK4llvm6object14COFFObjectFile13getCOFFSymbolERKNS0_9SymbolRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  %i.c = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 2 uses
  %.sroa.3.0.i = select i1 %.not.i, ptr %i.c, ptr null
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.c
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4llvm6object14COFFObjectFile17getCOFFRelocationERKNS0_13RelocationRefE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !53
  %i.a = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK4llvm6object14COFFObjectFile14getRelocationsEPKNS0_12coff_sectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %4 = alloca %class.anon.156, align 1            ; 3 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = tail call fastcc noundef ptr @_ZL13getFirstRelocPKN4llvm6object12coff_sectionENS_15MemoryBufferRefEPKh(ptr noundef %1, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %i.a, ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.d, align 1
  %i.e = and i32 %.0.copyload.i.i.i.i.i, 16777216
  %.not.i.i = icmp ne i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.0.copyload.i.i.i1.i.i = load i16, ptr %i.f, align 1 ; 2 uses
  %i.g = icmp eq i16 %.0.copyload.i.i.i1.i.i, -1
  %i.h = select i1 %.not.i.i, i1 %i.g, i1 false
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !55
  %.sroa.04.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !54 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i = load i32, ptr %i.i, align 1
  %i.j = zext i32 %.0.copyload.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 %i.j ; 3 uses
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -11 to ptr)
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = add i64 %i.m, 10
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp ugt i64 %i.n, %i.p
  %or.cond = select i1 %i.l, i1 true, i1 %i.q
  br i1 %or.cond, label %_ZN4llvm6object6Binary11checkOffsetENS_15MemoryBufferRefEmm.exit.i.i, label %_ZN4llvm5ErrorD2Ev.exit8.i

_ZN4llvm6object6Binary11checkOffsetENS_15MemoryBufferRefEmm.exit.i.i: ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #25, !noalias !573
  call void @_ZN4llvm16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, i32 4, ptr nonnull %i.r) #25
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !71 ; 2 uses
  %.not.i6.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i6.i, label %_ZN4llvm5ErrorD2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6object6Binary11checkOffsetENS_15MemoryBufferRefEmm.exit.i.i
  store ptr null, ptr %5, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.pr.i.i, ptr %3, align 8, !tbaa !71
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.s = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #25, !inline_history !2
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.x = load ptr, ptr %5, align 8, !tbaa !71     ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN4llvm5ErrorD2Ev.exit7.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit.i
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #25, !inline_history !3
  br label %_ZN4llvm5ErrorD2Ev.exit7.i

_ZN4llvm5ErrorD2Ev.exit7.i:                       ; preds = %bb.e, %_ZN4llvm5ErrorD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZL22getNumberOfRelocationsPKN4llvm6object12coff_sectionENS_15MemoryBufferRefEPKh.exit

_ZN4llvm5ErrorD2Ev.exit8.i:                       ; preds = %bb.b, %_ZN4llvm6object6Binary11checkOffsetENS_15MemoryBufferRefEmm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.0.copyload.i.i.i9.i = load i32, ptr %i.k, align 1
  %i.ac = add i32 %.0.copyload.i.i.i9.i, -1
  br label %_ZL22getNumberOfRelocationsPKN4llvm6object12coff_sectionENS_15MemoryBufferRefEPKh.exit

bb.f:                                             ; preds = %bb.a
  %i.ad = zext i16 %.0.copyload.i.i.i1.i.i to i32
  br label %_ZL22getNumberOfRelocationsPKN4llvm6object12coff_sectionENS_15MemoryBufferRefEPKh.exit

_ZL22getNumberOfRelocationsPKN4llvm6object12coff_sectionENS_15MemoryBufferRefEPKh.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i, %_ZN4llvm5ErrorD2Ev.exit8.i, %bb.f
  %.2.i = phi i32 [ %i.ad, %bb.f ], [ %i.ac, %_ZN4llvm5ErrorD2Ev.exit8.i ], [ 0, %_ZN4llvm5ErrorD2Ev.exit7.i ]
  %i.ae = zext i32 %.2.i to i64
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ae, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt(ptr noundef nonnull align 8 dereferenceable(232) %0, i16 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(232) %0) #25
  switch i32 %i.d, label %bb.g [
    i32 41, label %bb.b
    i32 38, label %bb.c
    i32 3, label %bb.d
    i32 40, label %bb.e
    i32 17, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i16 %1, 17
  br i1 %i.e, label %switch.lookup25, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i16 %1, 23
  br i1 %i.f, label %switch.lookup25, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = icmp ult i16 %1, 18
  br i1 %i.g, label %switch.lookup25, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = icmp ult i16 %1, 21
  br i1 %i.h, label %switch.lookup25, label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.i = icmp ult i16 %1, 38
  br i1 %i.i, label %switch.lookup25, label %bb.g

switch.lookup25:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.37.sink = phi ptr [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.35, %bb.e ], [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.33, %bb.d ], [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.31, %bb.c ], [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt, %bb.b ], [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.37, %bb.f ]
  %switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.38.sink = phi ptr [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.36, %bb.e ], [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.34, %bb.d ], [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.32, %bb.c ], [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.30, %bb.b ], [ @switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.38, %bb.f ]
  %i.j = zext nneg i16 %1 to i64
  %switch.gep26 = getelementptr inbounds nuw i8, ptr %switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.37.sink, i64 %i.j
  %switch.load27 = load i8, ptr %switch.gep26, align 1
  %switch.ext28 = zext i8 %switch.load27 to i64
  %i.k = zext nneg i16 %1 to i64
  %switch.gep29 = getelementptr inbounds nuw [8 x i8], ptr %switch.table._ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt.38.sink, i64 %i.k
  %switch.load30 = load ptr, ptr %switch.gep29, align 8
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup25, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %.sroa.85.0 = phi i64 [ 7, %bb.f ], [ 7, %bb.a ], [ 7, %bb.e ], [ 7, %bb.d ], [ 7, %bb.c ], [ 7, %bb.b ], [ %switch.ext28, %switch.lookup25 ]
  %.sroa.0.0 = phi ptr [ @.str.56, %bb.f ], [ @.str.56, %bb.a ], [ @.str.56, %bb.e ], [ @.str.56, %bb.d ], [ @.str.56, %bb.c ], [ @.str.56, %bb.b ], [ %switch.load30, %switch.lookup25 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.85.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameENS0_11DataRefImplERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0.copyload.i.i.i = load i16, ptr %i.b, align 1
  %i.c = tail call { ptr, i64 } @_ZNK4llvm6object14COFFObjectFile21getRelocationTypeNameEt(ptr noundef nonnull align 8 dereferenceable(232) %0, i16 noundef zeroext %.0.copyload.i.i.i) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !575  ; 2 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !576
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.b, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.l, i64 noundef %i.h, i64 noundef 1) #25
  %.pre8.pre.i = load i64, ptr %i.f, align 8, !tbaa !575
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i:    ; preds = %bb.b, %bb.a
  %.pre8.i = phi i64 [ %i.g, %bb.a ], [ %.pre8.pre.i, %bb.b ] ; 2 uses
  %.not.i.i = icmp samesign eq i64 %i.e, 0
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !577
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.pre8.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.d, i64 %i.e, i1 false)
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !575
  br label %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i, %bb.c
  %i.o = phi i64 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i ], [ %.pre.i, %bb.c ]
  %i.p = add i64 %i.o, %i.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !575
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm6object14COFFObjectFile19isRelocatableObjectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %.not = icmp eq ptr %i.b, null
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZNK4llvm6object14COFFObjectFile19mapDebugSectionNameENS_9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #4 align 2 {
bb.a:
  %.not.i.i.i.i = icmp eq i64 %2, 7
  br i1 %.not.i.i.i.i, label %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit, label %.thread

_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit: ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = xor i32 %i.a, 1717528677
  %i.c = getelementptr i8, ptr %1, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1835102822
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %bcmp.i.i.i.i.fr = freeze i32 %i.h
  %.not.i.i = icmp eq i32 %bcmp.i.i.i.i.fr, 0     ; 2 uses
  %spec.select = select i1 %.not.i.i, ptr @.str.119, ptr %1
  %spec.select18 = select i1 %.not.i.i, i64 8, i64 7
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit, %bb.a
  %i.i = phi ptr [ %1, %bb.a ], [ %spec.select, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit ]
  %i.j = phi i64 [ %2, %bb.a ], [ %spec.select18, %_ZN4llvm12StringSwitchINS_9StringRefES1_E4CaseENS_13StringLiteralES1_.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.j, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object14COFFObjectFile19getHybridObjectViewEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.55") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 5 uses
  %2 = alloca %"class.std::unique_ptr.63", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::Error", align 8
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  %.not2.i = icmp eq ptr %i.e, null
  %.0.copyload.i.i.i3.pre.i = load i16, ptr %i.c, align 1 ; 3 uses
  br i1 %.not2.i, label %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i16 %.0.copyload.i.i.i3.pre.i, label %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit [
    i16 -31132, label %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread100
    i16 -21916, label %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread
  ]

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62, !nonnull !63, !noundef !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %.0.copyload.i.i.i4.i = load i16, ptr %i.h, align 1
  br label %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit

_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i16 [ %.0.copyload.i.i.i4.i, %bb.d ], [ %.0.copyload.i.i.i3.pre.i, %bb.c ], [ %.0.copyload.i.i.i3.pre.i, %bb.b ]
  %.not = icmp eq i16 %.0.i, -22962
  br i1 %.not, label %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread, label %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread100

_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread: ; preds = %bb.c, %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120, !noalias !582 ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread100, label %_ZNK4llvm6object14COFFObjectFile14dynamic_relocsEv.exit

_ZNK4llvm6object14COFFObjectFile14dynamic_relocsEv.exit: ; preds = %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.l, align 1, !noalias !582 ; 2 uses
  %i.m = zext i32 %.0.copyload.i.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %.not103110 = icmp eq i32 %.0.copyload.i.i.i.i.i, 0
  br i1 %.not103110, label %_ZNK4llvm6object14COFFObjectFile10getMachineEv.exit.thread100, label %.lr.ph114

.lr.ph114:                                        ; preds = %_ZNK4llvm6object14COFFObjectFile14dynamic_relocsEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.0.copyload.i.i.i.i.pre = load i32, ptr %i.j, align 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph114, %_ZN4llvm6object16content_iteratorINS0_15DynamicRelocRefEEppEv.exit
  %.0.copyload.i.i.i.i.i56119 = phi i32 [ %.0.copyload.i.i.i.i.pre, %.lr.ph114 ], [ %.0.copyload.i.i.i.i.i56, %_ZN4llvm6object16content_iteratorINS0_15DynamicRelocRefEEppEv.exit ] ; 4 uses
  %.sroa.091.0113 = phi ptr [ null, %.lr.ph114 ], [ %.sroa.091.3, %_ZN4llvm6object16content_iteratorINS0_15DynamicRelocRefEEppEv.exit ] ; 3 uses
  %.sroa.584.0111 = phi ptr [ %i.k, %.lr.ph114 ], [ %.sroa.584.1, %_ZN4llvm6object16content_iteratorINS0_15DynamicRelocRefEEppEv.exit ] ; 17 uses
  %i.s = icmp eq i32 %.0.copyload.i.i.i.i.i56119, 1
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !58
  %.not9.i = icmp eq ptr %i.t, null               ; 4 uses
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.copyload.i.i.i5.i = load i64, ptr %.sroa.584.0111, align 1
  %i.u = trunc i64 %.0.copyload.i.i.i5.i to i32
  br label %_ZNK4llvm6object15DynamicRelocRef7getTypeEv.exit

bb.h:                                             ; preds = %bb.f
  %.0.copyload.i.i.i6.i = load i32, ptr %.sroa.584.0111, align 1
  br label %_ZNK4llvm6object15DynamicRelocRef7getTypeEv.exit

bb.i:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.584.0111, i64 8 ; 2 uses
  br i1 %.not9.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i7.i = load i64, ptr %i.v, align 1
  %i.w = trunc i64 %.0.copyload.i.i.i7.i to i32
  br label %_ZNK4llvm6object15DynamicRelocRef7getTypeEv.exit

bb.k:                                             ; preds = %bb.i
  %.0.copyload.i.i.i8.i = load i32, ptr %i.v, align 1
  br label %_ZNK4llvm6object15DynamicRelocRef7getTypeEv.exit

_ZNK4llvm6object15DynamicRelocRef7getTypeEv.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.0.i18 = phi i32 [ %i.u, %bb.g ], [ %.0.copyload.i.i.i6.i, %bb.h ], [ %i.w, %bb.j ], [ %.0.copyload.i.i.i8.i, %bb.k ]
  %.not10 = icmp eq i32 %.0.i18, 6
  br i1 %.not10, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZNK4llvm6object15DynamicRelocRef7getTypeEv.exit
  switch i32 %.0.copyload.i.i.i.i.i56119, label %_ZNK4llvm6object15DynamicRelocRef13arm64x_relocsEv.exit [
    i32 1, label %_ZNK4llvm6object15DynamicRelocRef18arm64x_reloc_beginEv.exit.thread.i
    i32 2, label %_ZNK4llvm6object15DynamicRelocRef18arm64x_reloc_beginEv.exit.thread14.i
  ]

_ZNK4llvm6object15DynamicRelocRef18arm64x_reloc_beginEv.exit.thread.i: ; preds = %bb.l
  %.sroa.02.0.i12.v.i = select i1 %.not9.i, i64 8, i64 12
  %.sroa.02.0.i12.i = getelementptr inbounds nuw i8, ptr %.sroa.584.0111, i64 %.sroa.02.0.i12.v.i ; 2 uses
  br i1 %.not9.i, label %bb.n, label %bb.m

_ZNK4llvm6object15DynamicRelocRef18arm64x_reloc_beginEv.exit.thread14.i: ; preds = %bb.l
  %.0.copyload.i.i.i15.i.i.i = load i32, ptr %.sroa.584.0111, align 1, !noalias !583
  %i.x = zext i32 %.0.copyload.i.i.i15.i.i.i to i64
end_hunk_0
