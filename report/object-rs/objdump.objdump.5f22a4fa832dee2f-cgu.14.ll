Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.14?download=true
inline.NumInlined: 124
inline.NumDeleted: 85
begin_hunk_0_@_RNvMs0_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupINtB5_25DyldChainedImportIteratorNtNtBb_6endian10EndiannessE4nextCs8aoZCP6pRcV_7objdump:bb.a
  %i.az = lshr i64 %.sroa.03.0.i62.i, 32
  br label %bb.l

bb.q:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.021.0.i ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.bc = load atomic ptr, ptr @_RNvNvNtNtNtCs906JEEYSgkH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !120, !nonnull !7, !noundef !7
  %i.bd = tail call { i64, ptr } %i.bc(i8 noundef 0, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.bb), !noalias !121, !inline_history !116 ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.t, %bb.b
  ret void

bb.s:                                             ; preds = %bb.m, %bb.o, %bb.c, %bb.f, %bb.j, %bb.q, %bb.l
  %.sroa.12.0.ph = phi i64 [ 48, %bb.l ], [ 48, %bb.q ], [ 36, %bb.m ], [ 47, %bb.c ], [ 36, %bb.j ], [ 36, %bb.f ], [ 36, %bb.o ]
  %.sroa.0.0.ph = phi ptr [ @1, %bb.l ], [ @1, %bb.q ], [ @0, %bb.m ], [ @2, %bb.c ], [ @0, %bb.j ], [ @0, %bb.f ], [ @0, %bb.o ]
  store ptr %.sroa.0.0.ph, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.0.ph, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 -1, ptr %i.bh, align 4
  store i32 0, ptr %i.a, align 8
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  %i.bi = sub nuw i64 %i.l, %.sroa.021.0.i
  %i.bj = extractvalue { i64, ptr } %i.bd, 1
  %i.bk = tail call noundef i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCs8aoZCP6pRcV_7objdump(ptr noundef %i.bj, ptr noundef nonnull readonly %i.ba), !noalias !122 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.bk, %i.bi
  tail call void @llvm.assume(i1 %.not.i.i.i)
  store ptr %i.ba, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.022.0.i, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.019.1.i, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.020.0.i, ptr %.sroa.76.0..sroa_idx, align 4
  %i.bl = add i32 %i.b, -1
  store i32 %i.bl, ptr %i.a, align 8
  br label %bb.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupINtB4_17DyldChainedFixupsNtNtBa_6endian10EndiannessE5parseCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %3, 28
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @10, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 36, ptr %i.c, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.06.0.copyload = load i32, ptr %2, align 1 ; 2 uses
  %i.d = tail call i32 @llvm.bswap.i32(i32 %.sroa.06.0.copyload)
  %.sroa.03.0.i = select i1 %1, i32 %i.d, i32 %.sroa.06.0.copyload
  %i.e = icmp eq i32 %.sroa.03.0.i, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @9, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 41, ptr %i.g, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupINtB4_17DyldChainedFixupsNtNtBa_6endian10EndiannessE7importsCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16), (40, 41)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.025.0.copyload = load i32, ptr %i.c, align 1 ; 2 uses
  %i.d = tail call i32 @llvm.bswap.i32(i32 %.sroa.025.0.copyload)
  %.sroa.03.0.i = select i1 %2, i32 %i.d, i32 %.sroa.025.0.copyload
  %i.e = icmp eq i32 %.sroa.03.0.i, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.027.0.copyload = load i32, ptr %i.i, align 1 ; 2 uses
  %i.j = tail call i32 @llvm.bswap.i32(i32 %.sroa.027.0.copyload)
  %.sroa.03.0.i42 = select i1 %2, i32 %i.j, i32 %.sroa.027.0.copyload
  %i.k = zext i32 %.sroa.03.0.i42 to i64          ; 3 uses
  %i.l = icmp ult i64 %i.h, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr @13, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 52, ptr %i.m, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.029.0.copyload = load i32, ptr %i.n, align 1 ; 2 uses
  %i.o = tail call i32 @llvm.bswap.i32(i32 %.sroa.029.0.copyload)
  %.sroa.03.0.i43 = select i1 %2, i32 %i.o, i32 %.sroa.029.0.copyload
  %i.p = zext i32 %.sroa.03.0.i43 to i64          ; 3 uses
  %i.q = icmp ult i64 %i.h, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  store ptr @12, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 44, ptr %i.r, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  store ptr @11, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 44, ptr %i.s, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.u = sub nuw i64 %i.h, %i.k
  %i.v = sub nuw i64 %i.h, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.031.0.copyload = load i32, ptr %i.x, align 1 ; 2 uses
  %i.y = tail call i32 @llvm.bswap.i32(i32 %.sroa.031.0.copyload)
  %.sroa.03.0.i44 = select i1 %2, i32 %i.y, i32 %.sroa.031.0.copyload
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.033.0.copyload = load i32, ptr %i.z, align 1 ; 2 uses
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %.sroa.033.0.copyload)
  %.sroa.03.0.i45 = select i1 %2, i32 %i.aa, i32 %.sroa.033.0.copyload
  %i.ab = zext i1 %2 to i8
  store ptr %i.t, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.03.0.i44, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.03.0.i45, ptr %.sroa.8.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.sink = phi i8 [ %i.ab, %bb.g ], [ 2, %bb.f ], [ 2, %bb.e ], [ 2, %bb.c ]
  %.sroa.924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sink, ptr %.sroa.924.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB2_22CoffRelocationIteratorRShNtNtB8_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !7, !align !11, !noundef !7
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  %i.i = getelementptr i8, ptr %i.h, i64 6
  %.val = load i16, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload.i = load i16, ptr %i.j, align 1, !alias.scope !125 ; 5 uses
  switch i16 %.val, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit [
    i16 452, label %bb.c
    i16 -21916, label %bb.d
    i16 -22975, label %bb.d
    i16 332, label %bb.e
    i16 -31132, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i16 %.sroa.06.0.copyload.i, -1 ; 5 uses
  %i.k = icmp ult i16 %switch.tableidx, 15
  br i1 %i.k, label %switch.lookup, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  %switch.tableidx10 = add i16 %.sroa.06.0.copyload.i, -1 ; 5 uses
  %i.l = icmp ult i16 %switch.tableidx10, 17
  br i1 %i.l, label %switch.lookup11, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

bb.e:                                             ; preds = %bb.b
  %switch.tableidx20 = add i16 %.sroa.06.0.copyload.i, -1 ; 5 uses
  %i.m = icmp ult i16 %switch.tableidx20, 20
  br i1 %i.m, label %switch.lookup21, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

bb.f:                                             ; preds = %bb.b
  %switch.tableidx30 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.n = icmp ult i16 %switch.tableidx30, 12
  br i1 %i.n, label %switch.lookup31.a, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

switch.lookup:                                    ; preds = %bb.c
  %2 = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump, i64 %2
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.o = zext nneg i16 %switch.tableidx to i64
  %switch.gep4.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.57, i64 %i.o
  %switch.load5 = load i8, ptr %switch.gep4.a, align 1
  %i.p = zext nneg i16 %switch.tableidx to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.58, i64 %i.p
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %3 = zext nneg i16 %switch.tableidx to i64
  %switch.gep8 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.59, i64 %3
  %switch.load9 = load i64, ptr %switch.gep8, align 8
  br label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

switch.lookup11:                                  ; preds = %bb.d
  %4 = zext nneg i16 %switch.tableidx10 to i64
  %switch.gep12 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.60, i64 %4
  %switch.load13 = load i8, ptr %switch.gep12, align 1
  %i.q = zext nneg i16 %switch.tableidx10 to i64
  %switch.gep14.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.61, i64 %i.q
  %switch.load15 = load i8, ptr %switch.gep14.a, align 1
  %i.r = zext nneg i16 %switch.tableidx10 to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.62, i64 %i.r
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %5 = zext nneg i16 %switch.tableidx10 to i64
  %switch.gep18 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.63, i64 %5
  %switch.load19 = load i64, ptr %switch.gep18, align 8
  br label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

switch.lookup21:                                  ; preds = %bb.e
  %6 = zext nneg i16 %switch.tableidx20 to i64
  %switch.gep22 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.64, i64 %6
  %switch.load23 = load i8, ptr %switch.gep22, align 1
  %i.s = zext nneg i16 %switch.tableidx20 to i64
  %switch.gep24.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.65, i64 %i.s
  %switch.load25 = load i8, ptr %switch.gep24.a, align 1
  %i.t = zext nneg i16 %switch.tableidx20 to i64
  %switch.gep26 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.66, i64 %i.t
  %switch.load27 = load i8, ptr %switch.gep26, align 1
  %7 = zext nneg i16 %switch.tableidx20 to i64
  %switch.gep28 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.67, i64 %7
  %switch.load29 = load i64, ptr %switch.gep28, align 8
  br label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

switch.lookup31.a:                                ; preds = %bb.f
  %8 = zext nneg i16 %switch.tableidx30 to i64
  %switch.gep32 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.68, i64 %8
  %switch.load33 = load i8, ptr %switch.gep32, align 1
  %i.u = zext nneg i16 %switch.tableidx30 to i64
  %switch.gep34 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.69, i64 %i.u
  %switch.load35 = load i8, ptr %switch.gep34, align 1
  %i.v = zext nneg i16 %switch.tableidx30 to i64
  %switch.gep36 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.70, i64 %i.v
  %switch.load37 = load i64, ptr %switch.gep36, align 8
  br label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit: ; preds = %switch.lookup31.a, %bb.f, %switch.lookup21, %bb.e, %switch.lookup11, %bb.d, %switch.lookup, %bb.c, %bb.b
  %.sroa.07.0.i = phi i8 [ %switch.load33, %switch.lookup31.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %switch.load, %switch.lookup ], [ %switch.load23, %switch.lookup21 ], [ 0, %bb.d ], [ %switch.load13, %switch.lookup11 ], [ 0, %bb.c ], [ 0, %bb.f ]
  %.sroa.08.0.i = phi i8 [ 1, %switch.lookup31.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %switch.load5, %switch.lookup ], [ %switch.load25, %switch.lookup21 ], [ 0, %bb.d ], [ %switch.load15, %switch.lookup11 ], [ 0, %bb.c ], [ 0, %bb.f ]
  %.sroa.09.0.i = phi i8 [ %switch.load35, %switch.lookup31.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %switch.load7, %switch.lookup ], [ %switch.load27, %switch.lookup21 ], [ 0, %bb.d ], [ %switch.load17, %switch.lookup11 ], [ 0, %bb.c ], [ 0, %bb.f ]
  %.sroa.010.0.i = phi i64 [ %switch.load37, %switch.lookup31.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %switch.load9, %switch.lookup ], [ %switch.load29, %switch.lookup21 ], [ 0, %bb.d ], [ %switch.load19, %switch.lookup11 ], [ 0, %bb.c ], [ 0, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.05.0.copyload.i = load i32, ptr %i.w, align 1, !alias.scope !125
  %i.x = zext i32 %.sroa.05.0.copyload.i to i64
  %.sroa.011.0.copyload.i = load i32, ptr %i.b, align 1, !alias.scope !125
  %i.y = zext i32 %.sroa.011.0.copyload.i to i64
  store i64 %i.y, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 %.sroa.06.0.copyload.i, ptr %.sroa.82.0..sroa_idx, align 2
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.010.0.i, ptr %.sroa.93.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.07.0.i, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.08.0.i, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.09.0.i, ptr %.sroa.13.0..sroa_idx, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationINtB4_22CoffRelocationIteratorRShNtNtBa_2pe22AnonObjectHeaderBigobjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((8, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !7, !align !11, !noundef !7
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7
  %.val = load i16, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.06.0.copyload.i = load i16, ptr %i.i, align 1, !alias.scope !128 ; 5 uses
  switch i16 %.val, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit [
    i16 452, label %bb.c
    i16 -21916, label %bb.d
    i16 -22975, label %bb.d
    i16 332, label %bb.e
    i16 -31132, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i16 %.sroa.06.0.copyload.i, -1 ; 5 uses
  %i.j = icmp ult i16 %switch.tableidx, 15
  br i1 %i.j, label %switch.lookup, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  %switch.tableidx10 = add i16 %.sroa.06.0.copyload.i, -1 ; 5 uses
  %i.k = icmp ult i16 %switch.tableidx10, 17
  br i1 %i.k, label %switch.lookup11, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

bb.e:                                             ; preds = %bb.b
  %switch.tableidx20 = add i16 %.sroa.06.0.copyload.i, -1 ; 5 uses
  %i.l = icmp ult i16 %switch.tableidx20, 20
  br i1 %i.l, label %switch.lookup21, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

bb.f:                                             ; preds = %bb.b
  %switch.tableidx30 = add i16 %.sroa.06.0.copyload.i, -1 ; 4 uses
  %i.m = icmp ult i16 %switch.tableidx30, 12
  br i1 %i.m, label %switch.lookup31.a, label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

switch.lookup:                                    ; preds = %bb.c
  %2 = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump, i64 %2
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.n = zext nneg i16 %switch.tableidx to i64
  %switch.gep4.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.57, i64 %i.n
  %switch.load5 = load i8, ptr %switch.gep4.a, align 1
  %i.o = zext nneg i16 %switch.tableidx to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.58, i64 %i.o
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %3 = zext nneg i16 %switch.tableidx to i64
  %switch.gep8 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.59, i64 %3
  %switch.load9 = load i64, ptr %switch.gep8, align 8
  br label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

switch.lookup11:                                  ; preds = %bb.d
  %4 = zext nneg i16 %switch.tableidx10 to i64
  %switch.gep12 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.60, i64 %4
  %switch.load13 = load i8, ptr %switch.gep12, align 1
  %i.p = zext nneg i16 %switch.tableidx10 to i64
  %switch.gep14.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.61, i64 %i.p
  %switch.load15 = load i8, ptr %switch.gep14.a, align 1
  %i.q = zext nneg i16 %switch.tableidx10 to i64
  %switch.gep16 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.62, i64 %i.q
  %switch.load17 = load i8, ptr %switch.gep16, align 1
  %5 = zext nneg i16 %switch.tableidx10 to i64
  %switch.gep18 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.63, i64 %5
  %switch.load19 = load i64, ptr %switch.gep18, align 8
  br label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

switch.lookup21:                                  ; preds = %bb.e
  %6 = zext nneg i16 %switch.tableidx20 to i64
  %switch.gep22 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.64, i64 %6
  %switch.load23 = load i8, ptr %switch.gep22, align 1
  %i.r = zext nneg i16 %switch.tableidx20 to i64
  %switch.gep24.a = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.65, i64 %i.r
  %switch.load25 = load i8, ptr %switch.gep24.a, align 1
  %i.s = zext nneg i16 %switch.tableidx20 to i64
  %switch.gep26 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.66, i64 %i.s
  %switch.load27 = load i8, ptr %switch.gep26, align 1
  %7 = zext nneg i16 %switch.tableidx20 to i64
  %switch.gep28 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.67, i64 %7
  %switch.load29 = load i64, ptr %switch.gep28, align 8
  br label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

switch.lookup31.a:                                ; preds = %bb.f
  %8 = zext nneg i16 %switch.tableidx30 to i64
  %switch.gep32 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.68, i64 %8
  %switch.load33 = load i8, ptr %switch.gep32, align 1
  %i.t = zext nneg i16 %switch.tableidx30 to i64
  %switch.gep34 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.69, i64 %i.t
  %switch.load35 = load i8, ptr %switch.gep34, align 1
  %i.u = zext nneg i16 %switch.tableidx30 to i64
  %switch.gep36 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB2_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8aoZCP6pRcV_7objdump.70, i64 %i.u
  %switch.load37 = load i64, ptr %switch.gep36, align 8
  br label %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit

_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit: ; preds = %switch.lookup31.a, %bb.f, %switch.lookup21, %bb.e, %switch.lookup11, %bb.d, %switch.lookup, %bb.c, %bb.b
  %.sroa.07.0.i = phi i8 [ %switch.load33, %switch.lookup31.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %switch.load, %switch.lookup ], [ %switch.load23, %switch.lookup21 ], [ 0, %bb.d ], [ %switch.load13, %switch.lookup11 ], [ 0, %bb.c ], [ 0, %bb.f ]
  %.sroa.08.0.i = phi i8 [ 1, %switch.lookup31.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %switch.load5, %switch.lookup ], [ %switch.load25, %switch.lookup21 ], [ 0, %bb.d ], [ %switch.load15, %switch.lookup11 ], [ 0, %bb.c ], [ 0, %bb.f ]
  %.sroa.09.0.i = phi i8 [ %switch.load35, %switch.lookup31.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %switch.load7, %switch.lookup ], [ %switch.load27, %switch.lookup21 ], [ 0, %bb.d ], [ %switch.load17, %switch.lookup11 ], [ 0, %bb.c ], [ 0, %bb.f ]
  %.sroa.010.0.i = phi i64 [ %switch.load37, %switch.lookup31.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ %switch.load9, %switch.lookup ], [ %switch.load29, %switch.lookup21 ], [ 0, %bb.d ], [ %switch.load19, %switch.lookup11 ], [ 0, %bb.c ], [ 0, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.05.0.copyload.i = load i32, ptr %i.v, align 1, !alias.scope !128
  %i.w = zext i32 %.sroa.05.0.copyload.i to i64
  %.sroa.011.0.copyload.i = load i32, ptr %i.b, align 1, !alias.scope !128
  %i.x = zext i32 %.sroa.011.0.copyload.i to i64
  store i64 %i.x, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 %.sroa.06.0.copyload.i, ptr %.sroa.82.0..sroa_idx, align 2
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.010.0.i, ptr %.sroa.93.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %.sroa.07.0.i, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %.sroa.08.0.i, ptr %.sroa.12.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %.sroa.09.0.i, ptr %.sroa.13.0..sroa_idx, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNCNvXNtNtNtCseHTIzroA4w0_6object4read4coff10relocationNtB4_22CoffRelocationIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs8aoZCP6pRcV_7objdump.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 37) i8 @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object12architectureCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 18
  %.val = load i16, ptr %i.f, align 1
  %i.g = tail call noundef i16 @_RNvMs7_NtCseHTIzroA4w0_6object6endianINtB5_3U16NtB5_10EndiannessNtNtB7_3elf7MachineE3getCs8aoZCP6pRcV_7objdump(i16 noundef %.val, i1 noundef zeroext %i.e)
  %i.h = tail call noundef zeroext i1 @_RNvYINtNtCseHTIzroA4w0_6object3elf12FileHeader32NtNtB7_6endian10EndiannessENtNtNtNtB7_4read3elf4file10FileHeader11is_class_64Cs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(52) %i.b) ; 15 uses
  switch i16 %i.g, label %bb.ac [
    i16 183, label %bb.b
    i16 -28634, label %bb.c
    i16 40, label %bb.d
    i16 83, label %bb.e
    i16 247, label %bb.f
    i16 252, label %bb.g
    i16 175, label %bb.h
    i16 3, label %bb.i
    i16 62, label %bb.j
    i16 164, label %bb.k
    i16 50, label %bb.l
    i16 258, label %bb.m
    i16 4, label %bb.n
    i16 8, label %bb.o
    i16 105, label %bb.p
    i16 15, label %bb.q
    i16 20, label %bb.r
    i16 21, label %bb.s
    i16 243, label %bb.t
    i16 22, label %bb.u
    i16 263, label %bb.v
    i16 133, label %bb.w
    i16 2, label %bb.x
    i16 18, label %bb.y
    i16 43, label %bb.z
    i16 94, label %bb.aa
    i16 42, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  %. = select i1 %i.h, i8 1, i8 2
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %spec.select = select i1 %i.h, i8 3, i8 0
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  br label %bb.ac

bb.f:                                             ; preds = %bb.a
  br label %bb.ac

bb.g:                                             ; preds = %bb.a
  br label %bb.ac

bb.h:                                             ; preds = %bb.a
  %.1 = select i1 %i.h, i8 9, i8 8
  br label %bb.ac

bb.i:                                             ; preds = %bb.a
  br label %bb.ac

bb.j:                                             ; preds = %bb.a
  %.2 = select i1 %i.h, i8 11, i8 12
  br label %bb.ac

bb.k:                                             ; preds = %bb.a
  br label %bb.ac

bb.l:                                             ; preds = %bb.a
  br label %bb.ac

bb.m:                                             ; preds = %bb.a
  %.3 = select i1 %i.h, i8 17, i8 16
  br label %bb.ac

bb.n:                                             ; preds = %bb.a
  %spec.select4 = select i1 %i.h, i8 0, i8 18
  br label %bb.ac

bb.o:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.ac, label %bb.ad

bb.p:                                             ; preds = %bb.a
  br label %bb.ac

bb.q:                                             ; preds = %bb.a
  br label %bb.ac

bb.r:                                             ; preds = %bb.a
  br label %bb.ac

bb.s:                                             ; preds = %bb.a
  br label %bb.ac

bb.t:                                             ; preds = %bb.a
  %.5 = select i1 %i.h, i8 26, i8 25
  br label %bb.ac

bb.u:                                             ; preds = %bb.a
  %spec.select6 = select i1 %i.h, i8 27, i8 0
  br label %bb.ac

bb.v:                                             ; preds = %bb.a
  br label %bb.ac

bb.w:                                             ; preds = %bb.a
  %spec.select7 = select i1 %i.h, i8 0, i8 29
  br label %bb.ac

bb.x:                                             ; preds = %bb.a
  %spec.select8 = select i1 %i.h, i8 0, i8 30
  br label %bb.ac

bb.y:                                             ; preds = %bb.a
  %spec.select9 = select i1 %i.h, i8 0, i8 31
  br label %bb.ac

bb.z:                                             ; preds = %bb.a
  %spec.select10 = select i1 %i.h, i8 32, i8 0
  br label %bb.ac

bb.aa:                                            ; preds = %bb.a
  %spec.select11 = select i1 %i.h, i8 0, i8 36
  br label %bb.ac

bb.ab:                                            ; preds = %bb.a
  %spec.select12 = select i1 %i.h, i8 0, i8 33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.n, %bb.c, %bb.o, %bb.ad, %bb.t, %bb.m, %bb.j, %bb.h, %bb.b, %bb.a, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %spec.select7, %bb.w ], [ %.3, %bb.m ], [ %.5, %bb.t ], [ %.2, %bb.j ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ %.1, %bb.h ], [ %spec.select6, %bb.u ], [ 10, %bb.i ], [ 0, %bb.a ], [ %., %bb.b ], [ 13, %bb.k ], [ 15, %bb.l ], [ %spec.select8, %bb.x ], [ %spec.select, %bb.c ], [ %spec.select11, %bb.aa ], [ %.13, %bb.ad ], [ %spec.select4, %bb.n ], [ 20, %bb.o ], [ 22, %bb.p ], [ 14, %bb.q ], [ 23, %bb.r ], [ 24, %bb.s ], [ %spec.select10, %bb.z ], [ %spec.select12, %bb.ab ], [ %spec.select9, %bb.y ], [ 28, %bb.v ]
  ret i8 %.sroa.0.0

bb.ad:                                            ; preds = %bb.o
  %i.i = getelementptr i8, ptr %i.b, i64 36
  %.val14 = load i32, ptr %i.i, align 1
  %i.j = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf9FileFlagsE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val14, i1 noundef zeroext %i.e)
  %i.k = and i32 %i.j, 32
  %.not = icmp eq i32 %i.k, 0
  %.13 = select i1 %.not, i8 19, i8 21
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCseHTIzroA4w0_6object4read3elf4fileINtB5_7ElfFileINtNtBb_3elf12FileHeader32NtNtBb_6endian10EndiannessEENtNtB9_6traits6Object13gnu_debuglinkCs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1                  ; 3 uses
  %i.f = tail call { i64, ptr } @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read3elf7sectionINtB4_12SectionTableINtNtBa_3elf12FileHeader32NtNtBa_6endian10EndiannessEE15section_by_nameCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, i1 noundef zeroext %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 14)
  %i.g = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_0
