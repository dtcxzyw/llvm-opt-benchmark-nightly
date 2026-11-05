Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64MCPlusBuilder?download=true
inline.NumInlined: 4523
inline.NumDeleted: 1840
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN12_GLOBAL__N_120AArch64MCPlusBuilder20createInstrIncMemoryEPKN4llvm8MCSymbolEPNS1_9MCContextEbj:bb.a
  %i.jh = ptrtoint ptr %i.jd to i64
  %i.ji = sub i64 %i.jg, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.ji) #27
  br label %_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit88

_ZNSt6vectorIN4llvm6MCInstESaIS1_EED2Ev.exit88:   ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i86, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext range(i16 0, 247) i16 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder17getIntArgRegisterEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 8
  %switch.idx.cast = trunc i32 %1 to i16
  %switch.offset = add nsw i16 %switch.idx.cast, 239
  %.0 = select i1 %i.a, i16 %switch.offset, i16 0
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder14isIndirectCallERKN4llvm6MCInstE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !236
  %.off.i = add i32 %i.a, -2138
  %switch.i = icmp ult i32 %.off.i, 5
  ret i1 %switch.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder6isCallERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %1) #25
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder10isTailCallERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ true, %bb.a ], [ %i.g, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder8isReturnERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %1) #25
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder20getTrustedLiveInRegsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.25") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !450
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 20, ptr %i.c, align 8, !tbaa !451
  store i16 6, ptr %i.a, align 8
  store i64 1, ptr %i.b, align 8, !tbaa !452
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 131072) i32 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder26getWrittenAuthenticatedRegERKN4llvm6MCInstERb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2) unnamed_addr #10 align 2 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !286
  %i.a = load i32, ptr %1, align 8, !tbaa !236
  switch i32 %i.a, label %bb.e [
    i32 1939, label %bb.f
    i32 1946, label %bb.f
    i32 1936, label %bb.f
    i32 1943, label %bb.f
    i32 1937, label %bb.f
    i32 1944, label %bb.f
    i32 1938, label %bb.f
    i32 1945, label %bb.f
    i32 1934, label %bb.b
    i32 1941, label %bb.b
    i32 1935, label %bb.b
    i32 1942, label %bb.b
    i32 1933, label %bb.c
    i32 1940, label %bb.c
    i32 1929, label %bb.c
    i32 1930, label %bb.c
    i32 1947, label %bb.c
    i32 1948, label %bb.c
    i32 1931, label %bb.c
    i32 1932, label %bb.c
    i32 5091, label %bb.d
    i32 5093, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !221
  br label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a
  store i8 1, ptr %2, align 1, !tbaa !286
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !221
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.07.0 = phi i32 [ 0, %bb.e ], [ %i.i, %bb.d ], [ 256, %bb.b ], [ %i.e, %bb.c ], [ 6, %bb.a ], [ 6, %bb.a ], [ 6, %bb.a ], [ 6, %bb.a ], [ 6, %bb.a ], [ 6, %bb.a ], [ 6, %bb.a ], [ 6, %bb.a ]
  %.sroa.5.0 = phi i32 [ 0, %bb.e ], [ 65536, %bb.d ], [ 65536, %bb.b ], [ 65536, %bb.c ], [ 65536, %bb.a ], [ 65536, %bb.a ], [ 65536, %bb.a ], [ 65536, %bb.a ], [ 65536, %bb.a ], [ 65536, %bb.a ], [ 65536, %bb.a ], [ 65536, %bb.a ]
  %.sroa.07.0.insert.ext = and i32 %.sroa.07.0, 65535
  %.sroa.07.0.insert.insert = or disjoint i32 %.sroa.5.0, %.sroa.07.0.insert.ext
  ret i32 %.sroa.07.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 131072) i32 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder12getSignedRegERKN4llvm6MCInstE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !236
  switch i32 %i.a, label %bb.d [
    i32 5668, label %bb.b
    i32 5674, label %bb.b
    i32 5663, label %bb.b
    i32 5664, label %bb.b
    i32 5680, label %bb.b
    i32 5681, label %bb.b
    i32 5665, label %bb.b
    i32 5666, label %bb.b
    i32 5673, label %bb.e
    i32 5679, label %bb.e
    i32 5671, label %bb.e
    i32 5677, label %bb.e
    i32 5672, label %bb.e
    i32 5678, label %bb.e
    i32 5683, label %bb.e
    i32 5684, label %bb.e
    i32 5669, label %bb.c
    i32 5675, label %bb.c
    i32 5670, label %bb.c
    i32 5676, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !221
  %i.f = and i32 %i.e, 65535
  %i.g = or disjoint i32 %i.f, 65536
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.4.0 = phi i32 [ 0, %bb.d ], [ %i.g, %bb.b ], [ 65792, %bb.c ], [ 65542, %bb.a ], [ 65542, %bb.a ], [ 65542, %bb.a ], [ 65542, %bb.a ], [ 65542, %bb.a ], [ 65542, %bb.a ], [ 65542, %bb.a ], [ 65542, %bb.a ]
  ret i32 %.sroa.4.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder11isPSignOnLRERKN4llvm6MCInstE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) #25
  %i.e = and i32 %i.d, 131071
  %i.f = icmp eq i32 %i.e, 65542
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder11isPAuthOnLRERKN4llvm6MCInstE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load ptr, ptr %0, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call i32 %i.d(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #25 ; 2 uses
  %i.f = load i8, ptr %i.a, align 1, !tbaa !286, !range !37, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = and i32 %i.e, 65536
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.g, i1 true, i1 %i.i
  br i1 %i.j, label %5, label %2

2:                                                ; preds = %bb.a
  %3 = and i32 %i.e, 65535
  %4 = icmp eq i32 %3, 6
  br label %5

5:                                                ; preds = %2, %bb.a
  %6 = phi i1 [ %4, %2 ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder13isPAuthAndRetERKN4llvm6MCInstE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #8 align 2 {
switch.edge:
  %i.a = load i32, ptr %1, align 8, !tbaa !236
  %.off = add i32 %i.a, -5878
  %switch = icmp ult i32 %.off, 6
  ret i1 %switch
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120AArch64MCPlusBuilder18createMatchingAuthERKN4llvm6MCInstERS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) initializes((24, 28)) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !84   ; 4 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !85
  %i.j = icmp ugt i32 %i.e, %i.i
  br i1 %i.j, label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 16) #25
  %.pre8.pre.i.i.i = load i32, ptr %i.a, align 8, !tbaa !84
  %i.l = zext i32 %.pre8.pre.i.i.i to i64
  br label %bb.b

_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm6MCInst11setOperandsENS_8ArrayRefINS_9MCOperandEEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.thread.i
  %.pre8.i.i5.i = phi i64 [ %i.l, %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i ]
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.pre8.i.i5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 8 %i.c, i64 %.idx.i, i1 false)
  %.pre.i.i.i = load i32, ptr %i.a, align 8, !tbaa !84
  br label %_ZN4llvm6MCInst11setOperandsENS_8ArrayRefINS_9MCOperandEEE.exit

_ZN4llvm6MCInst11setOperandsENS_8ArrayRefINS_9MCOperandEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i, %bb.b
  %i.o = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_9MCOperandEE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.b ]
  %i.p = add i32 %i.o, %i.e
  store i32 %i.p, ptr %i.a, align 8, !tbaa !84
  %i.q = load i32, ptr %1, align 8, !tbaa !236
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [2 x i8], ptr @switch.table._ZN12_GLOBAL__N_120AArch64MCPlusBuilder18createMatchingAuthERKN4llvm6MCInstERS2_, i64 %i.r
  %switch.gep = getelementptr i8, ptr %i.s, i64 -11756
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  store i32 %switch.ext, ptr %2, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 131072) i32 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder19getRegUsedAsRetDestERKN4llvm6MCInstERb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !236
  switch i32 %i.a, label %bb.d [
    i32 5877, label %bb.b
    i32 5878, label %bb.c
    i32 5881, label %bb.c
    i32 5879, label %bb.c
    i32 5882, label %bb.c
    i32 5880, label %bb.c
    i32 5883, label %bb.c
    i32 2765, label %bb.e
    i32 2766, label %bb.e
    i32 2767, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !286
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !221
  %i.f = and i32 %i.e, 65535
  %i.g = or disjoint i32 %i.f, 65536
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i8 1, ptr %2, align 1, !tbaa !286
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.sroa.3.0 = phi i32 [ %i.g, %bb.b ], [ 65542, %bb.c ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ]
  ret i32 %.sroa.3.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i16 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder30getRegUsedAsIndirectBranchDestERKN4llvm6MCInstERb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) unnamed_addr #10 align 2 {
switch.lookup:
  %i.a = load i32, ptr %1, align 8, !tbaa !236
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr i8, ptr @switch.table._ZNK12_GLOBAL__N_120AArch64MCPlusBuilder30getRegUsedAsIndirectBranchDestERKN4llvm6MCInstERb, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 -2138
  %switch.load = load i8, ptr %switch.gep, align 1
  store i8 %switch.load, ptr %2, align 1, !tbaa !286
  %.pn.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !40
  %.0.in.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.0.in = load i32, ptr %.0.in.in, align 8, !tbaa !221
  %.0 = trunc i32 %.0.in to i16
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 131072) i32 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder35getMaterializedAddressRegForPtrAuthERKN4llvm6MCInstE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !236
  %.off = add i32 %i.a, -1841
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !221
  %i.f = and i32 %i.e, 65535
  %i.g = or disjoint i32 %i.f, 65536
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.sroa.2.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i48 0, 8589934592) i48 @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder35analyzeAddressArithmeticsForPtrAuthERKN4llvm6MCInstE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !236
  switch i32 %i.a, label %.critedge [
    i32 1795, label %bb.b
    i32 7773, label %bb.b
    i32 5645, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !221
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !221
  %i.h = trunc i32 %i.e to i16
  %i.i = trunc i32 %i.g to i16
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !221
  %.not19 = icmp eq i32 %i.m, 14
  br i1 %.not19, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !221
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !221
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !221
  %i.t = trunc i32 %i.q to i16
  %i.u = trunc i32 %i.s to i16
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.a, %bb.e, %bb.b
  %.sroa.018.0 = phi i16 [ %i.t, %bb.e ], [ %i.h, %bb.b ], [ undef, %bb.a ], [ undef, %bb.c ], [ undef, %bb.d ]
  %.sroa.3.0 = phi i16 [ %i.u, %bb.e ], [ %i.i, %bb.b ], [ undef, %bb.a ], [ undef, %bb.c ], [ undef, %bb.d ]
  %.sroa.5.0 = phi i8 [ 1, %bb.e ], [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ]
  %.sroa.5.0.insert.ext = zext nneg i8 %.sroa.5.0 to i48
  %.sroa.5.0.insert.shift = shl nuw nsw i48 %.sroa.5.0.insert.ext, 32
  %.sroa.3.0.insert.ext = zext i16 %.sroa.3.0 to i48
  %.sroa.3.0.insert.shift = shl nuw nsw i48 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i48 %.sroa.5.0.insert.shift, %.sroa.3.0.insert.shift
  %.sroa.018.0.insert.ext = zext i16 %.sroa.018.0 to i48
  %.sroa.018.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.insert, %.sroa.018.0.insert.ext
  ret i48 %.sroa.018.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_120AArch64MCPlusBuilder17getAuthCheckedRegERN4llvm4bolt16BinaryBasicBlockE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.39") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(192) %2) unnamed_addr #3 align 2 {
bb.a:
end_hunk_0
