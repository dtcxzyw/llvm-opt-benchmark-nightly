Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.08?download=true
inline.NumInlined: 3676
inline.NumDeleted: 1536
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMNtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB2_6Finder3new:bb.a
  %spec.select25.i = add i64 %i.aq, %.sroa.05.029.i
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ar = add i64 %i.ao, %.sroa.05.029.i          ; 2 uses
  %i.as = sub i64 %i.ar, %.sroa.0.031.i
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.at = add i64 %.sroa.05.029.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.012.1.i = phi i64 [ 0, %bb.f ], [ 0, %bb.e ], [ %spec.select.i, %bb.d ] ; 2 uses
  %.sroa.05.1.i = phi i64 [ %i.at, %bb.f ], [ %i.ar, %bb.e ], [ %spec.select25.i, %bb.d ] ; 2 uses
  %.sroa.5.1.i = phi i64 [ 1, %bb.f ], [ %i.as, %bb.e ], [ %.sroa.5.030.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.05.029.i, %bb.f ], [ %.sroa.0.031.i, %bb.e ], [ %.sroa.0.031.i, %bb.d ] ; 3 uses
  %i.au = add i64 %.sroa.05.1.i, %.sroa.012.1.i   ; 2 uses
  %i.av = icmp ult i64 %i.au, %2
  br i1 %i.av, label %.split.i, label %_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit

_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit: ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.m, %_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit
  %i.aw = phi i64 [ %i.bl, %bb.m ], [ 1, %_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ]
  %.sroa.0.031.us.i = phi i64 [ %.sroa.0.1.us.i, %bb.m ], [ 0, %_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 4 uses
  %.sroa.5.030.us.i = phi i64 [ %.sroa.5.1.us.i, %bb.m ], [ 1, %_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 3 uses
  %.sroa.05.029.us.i = phi i64 [ %.sroa.05.1.us.i, %bb.m ], [ 1, %_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 4 uses
  %.sroa.012.028.us.i = phi i64 [ %.sroa.012.1.us.i, %bb.m ], [ 0, %_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit ] ; 2 uses
  %i.ax = add i64 %.sroa.012.028.us.i, %.sroa.0.031.us.i ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %2
  br i1 %i.ay, label %bb.h, label %.split33.us.i7

bb.h:                                             ; preds = %.split.us.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !3064, !noundef !5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !3064, !noundef !5 ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, %i.ba
  br i1 %i.bd, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp ult i8 %i.bc, %i.ba
  %i.bf = add i64 %.sroa.012.028.us.i, 1          ; 3 uses
  br i1 %i.be, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp eq i64 %i.bf, %.sroa.5.030.us.i    ; 2 uses
  %spec.select.us.i = select i1 %i.bg, i64 0, i64 %i.bf
  %i.bh = select i1 %i.bg, i64 %.sroa.5.030.us.i, i64 0
  %spec.select25.us.i = add i64 %i.bh, %.sroa.05.029.us.i
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bi = add i64 %i.bf, %.sroa.05.029.us.i       ; 2 uses
  %i.bj = sub i64 %i.bi, %.sroa.0.031.us.i
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.bk = add i64 %.sroa.05.029.us.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.012.1.us.i = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %spec.select.us.i, %bb.j ] ; 2 uses
  %.sroa.05.1.us.i = phi i64 [ %i.bk, %bb.l ], [ %i.bi, %bb.k ], [ %spec.select25.us.i, %bb.j ] ; 2 uses
  %.sroa.5.1.us.i = phi i64 [ 1, %bb.l ], [ %i.bj, %bb.k ], [ %.sroa.5.030.us.i, %bb.j ] ; 2 uses
  %.sroa.0.1.us.i = phi i64 [ %.sroa.05.029.us.i, %bb.l ], [ %.sroa.0.031.us.i, %bb.k ], [ %.sroa.0.031.us.i, %bb.j ] ; 3 uses
  %i.bl = add i64 %.sroa.05.1.us.i, %.sroa.012.1.us.i ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %2
  br i1 %i.bm, label %.split.us.i, label %_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit8

.split33.us.i7:                                   ; preds = %.split.us.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef range(i64 2, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #42, !noalias !3064
  unreachable

_RNvMs1_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_6Suffix7forward.exit8: ; preds = %bb.m
  %i.bn = icmp ugt i64 %.sroa.0.1.i, %.sroa.0.1.us.i
  %.6 = tail call i64 @llvm.umax.i64(i64 %.sroa.0.1.i, i64 %.sroa.0.1.us.i) ; 2 uses
  %.sroa.03.0 = select i1 %i.bn, i64 %.sroa.5.1.i, i64 %.sroa.5.1.us.i
  %i.bo = tail call { i64, i64 } @_RNvMs0_NtNtNtCslssDYltVX0B_6memchr4arch3all6twowayNtB5_5Shift7forward(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.03.0, i64 noundef %.6) ; 2 uses
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1
  store i64 %i.bp, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.lcssa37, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.6, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1f_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema10CuckooJsonEEEE16get_or_init_slowB2L_(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !34, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB19_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema10CuckooJsonEEEEB2F_)
  store i8 0, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1f_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEE16get_or_init_slowCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !34, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB19_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEECs7gfv9tzbXmh_6yara_x)
  store i8 0, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtNtCskKLDkoKarTP_4core4cell4once8OnceCellINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE16get_or_init_slowB2s_(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !34, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyINtNtNtCskKLDkoKarTP_4core4cell4once8OnceCellINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB2m_)
  store i8 0, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCslssDYltVX0B_6memchr4arch6x86_644avx210packedpairNtB2_6Finder14with_pair_impl(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 2, -9223372036854775808) %2, i8 noundef %3, i8 noundef %4) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3068)
  %i.a = zext i8 %3 to i64                        ; 3 uses
  %i.b = icmp samesign ugt i64 %2, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %4 to i64                        ; 3 uses
  %i.d = icmp samesign ugt i64 %2, %i.c
  br i1 %i.d, label %_RNvMNtNtNtCslssDYltVX0B_6memchr4arch7generic10packedpairINtB2_6FinderNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m256iE3newCs7gfv9tzbXmh_6yara_x.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef range(i64 2, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #42, !noalias !3069
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef range(i64 2, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #42, !noalias !3069
  unreachable

_RNvMNtNtNtCslssDYltVX0B_6memchr4arch7generic10packedpairINtB2_6FinderNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m256iE3newCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !3068, !noalias !3070, !noundef !5 ; 2 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %..i = tail call noundef i8 @llvm.umax.i8(i8 %4, i8 %3)
  %i.h = zext i8 %..i to i64                      ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 16
  %..i1 = tail call noundef range(i64 16, -9223372036854775808) i64 @llvm.umax.i64(i64 range(i64 16, 288) %i.i, i64 range(i64 2, -9223372036854775808) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !3068, !noalias !3070, !noundef !5 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = add nuw nsw i64 %i.h, 32
  %..i3 = tail call noundef range(i64 16, -9223372036854775808) i64 @llvm.umax.i64(i64 range(i64 16, 288) %i.m, i64 range(i64 2, -9223372036854775808) %2)
  %i.n = insertelement <32 x i8> poison, i8 %i.f, i64 0
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> poison, <32 x i32> zeroinitializer
  %i.p = insertelement <32 x i8> poison, i8 %i.k, i64 0
  %i.q = shufflevector <32 x i8> %i.p, <32 x i8> poison, <32 x i32> zeroinitializer
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %5 = shufflevector <16 x i8> %i.g, <16 x i8> %i.l, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  store <32 x i8> %5, ptr %i.r, align 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %..i1, ptr %.sroa.5.0..sroa_idx, align 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %3, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %4, ptr %.sroa.7.0..sroa_idx, align 1
  store <32 x i8> %i.o, ptr %0, align 32
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <32 x i8> %i.q, ptr %.sroa.45.0..sroa_idx, align 32
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %..i3, ptr %.sroa.56.0..sroa_idx, align 32
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %3, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %4, ptr %.sroa.78.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf4tlshNtB5_11TlshBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1096 x i8]) align 8 captures(none) dereferenceable(1096) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.02.0 = select i1 %2, i64 3, i64 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3073
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.02.0, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !3073
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noalias !3073, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !10, !noalias !3073, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !3073
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #44, !noalias !3073
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  %. = select i1 %1, i64 256, i64 128             ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !noalias !3073, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3073
  %i.i = lshr exact i64 %., 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1084
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.l = zext i1 %1 to i8
  store i8 %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1081
  %i.n = zext i1 %2 to i8
  store i8 %i.n, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.o, i8 0, i64 1024, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i64 %., ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1083
  store i8 0, ptr %i.q, align 1
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i64 %.sroa.02.0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i64 %i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1082
  %i.v = zext i1 %3 to i8
  store i8 %i.v, ptr %i.u, align 2
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf4tlshNtB5_11TlshBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1096) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.013 = alloca [48 x i8], align 8          ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [12 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.g = icmp ult i64 %i.f, 50
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  call void @_RNvNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf4tlsh6helper14find_quartiles(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.h, i64 noundef 256, i64 noundef %i.j)
  %i.k = load <2 x i32>, ptr %i.d, align 8        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i32, ptr %i.l, align 8, !noundef !5 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3078
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.r, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !3078
  %i.s = load i64, ptr %i.a, align 8, !range !9, !noalias !3078, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !10, !noalias !3078, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.f, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.w, align 8, !noalias !3078
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #44, !noalias !3078
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.e
  %i.y = load ptr, ptr %i.w, align 8, !noalias !3078, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3078
  store i64 %i.v, ptr %i.c, align 8, !alias.scope !3078
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !3078
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.r, ptr %i.aa, align 8, !alias.scope !3078
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.r
  %i.ac = icmp samesign eq i64 %i.r, 0
  br i1 %i.ac, label %.preheader.preheader, label %.lr.ph.preheader

.preheader.preheader:                             ; preds = %bb.al, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit
  br label %.preheader

.lr.ph.preheader:                                 ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit
  %i.ad = add i64 %i.r, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 64)
  %i.ae = shl nuw nsw i64 %umin, 2
  %i.af = extractelement <2 x i32> %i.k, i64 0    ; 4 uses
  %i.ag = extractelement <2 x i32> %i.k, i64 1    ; 4 uses
  br label %.lr.ph

bb.g:                                             ; preds = %bb.o, %split, %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #45
          to label %common.resume unwind label %bb.am

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.al
  %.sroa.0.043 = phi ptr [ %i.ai, %bb.al ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.042 = phi i64 [ %i.aj, %bb.al ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 1 ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.7.042, 1
  %i.ak = shl nuw nsw i64 %.sroa.7.042, 2         ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.7.042, 64
  br i1 %exitcond.not, label %split, label %bb.s

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %.sroa.0.017.i = phi i64 [ %.sroa.0.1.i, %bb.j ], [ 170, %.preheader.preheader ]
  %.sroa.02.016.i = phi i64 [ %.sroa.02.1.i, %bb.j ], [ 0, %.preheader.preheader ]
  %.sroa.03.015.i = phi i64 [ %i.av, %bb.j ], [ 85, %.preheader.preheader ] ; 5 uses
  %i.al = icmp eq i64 %.sroa.03.015.i, 0
  br i1 %i.al, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @501, i64 %.sroa.03.015.i ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !3079, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.f, %i.an
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %i.am, i64 -8
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !3079, !noundef !5
  %i.aq = icmp ugt i64 %i.f, %i.ap
  br i1 %i.aq, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = icmp ult i64 %i.f, %i.an                ; 2 uses
  %i.as = add nsw i64 %.sroa.03.015.i, -1
  %i.at = add nuw nsw i64 %.sroa.03.015.i, 1
  %.sroa.02.1.i = select i1 %i.ar, i64 %.sroa.02.016.i, i64 %i.at ; 2 uses
  %.sroa.0.1.i = select i1 %i.ar, i64 %i.as, i64 %.sroa.0.017.i ; 2 uses
  %i.au = add i64 %.sroa.02.1.i, %.sroa.0.1.i     ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %i.aw = icmp ult i64 %i.au, 340
  br i1 %i.aw, label %.preheader, label %_RNvNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf4tlsh6helper11l_capturing.exit

_RNvNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules3elf4tlsh6helper11l_capturing.exit: ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
