Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZN3zip5write25GenericZipWriter$LT$W$GT$6unwrap17h29040a7b47fb114eE":bb.a
bb.j:                                             ; preds = %bb.i, %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3zip5write25GenericZipWriter$LT$W$GT$9switch_to17h233b613f46598ab2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(184) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [184 x i8], align 8               ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [192 x i8], align 8               ; 11 uses
  %.sroa.653 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.460 = alloca [152 x i8], align 8         ; 3 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [184 x i8], align 8               ; 7 uses
  %.sroa.838 = alloca [56 x i8], align 8          ; 5 uses
  %i.g = alloca [152 x i8], align 8               ; 8 uses
  %.sroa.11 = alloca [120 x i8], align 8          ; 6 uses
  %.sroa.9 = alloca [120 x i8], align 8           ; 5 uses
  %.sroa.10153 = alloca [56 x i8], align 8        ; 6 uses
  %i.h = alloca [184 x i8], align 8               ; 17 uses
  %.sroa.9151 = alloca [56 x i8], align 8         ; 5 uses
  %i.i = alloca [152 x i8], align 8               ; 7 uses
  %.sroa.9148 = alloca [56 x i8], align 8         ; 5 uses
  %i.j = alloca [120 x i8], align 8               ; 10 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.sroa.9.0.copyload = load ptr, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i64 -9223372036854775808, ptr %1, align 8
  %i.k = xor i64 %.sroa.0.0.copyload, -9223372036854775808
  %i.l = icmp slt i64 %.sroa.0.0.copyload, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 4
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.n
    i64 4, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17hba387b3b54c38644E(i8 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @119, i64 noundef 28)
          to label %bb.ah unwind label %.thread196

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.838, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, i64 56, i1 false)
  br label %bb.ao

bb.e:                                             ; preds = %bb.a
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %i.j, align 8
  %.sroa.7.sroa.9.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.7.sroa.9.0.copyload, ptr %.sroa.7.sroa.9.0..sroa_idx44, align 8
  %.sroa.7.sroa.10.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.10.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, i64 56, i1 false)
  %.sroa.7.sroa.11.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.11.0..sroa_idx47, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  %i.o = invoke noundef ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$6finish17hccb752a6330532f3E"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.j)
          to label %bb.g unwind label %bb.f, !noalias !2529 ; 2 uses

bb.f:                                             ; preds = %bb.j, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr157drop_in_place$LT$flate2..deflate..write..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h8bfa447065fec64cE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.j) #33
          to label %.thread192 unwind label %bb.m, !noalias !2529

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.q, align 8, !alias.scope !2530, !noalias !2529 ; 2 uses
  store i64 -9223372036854775807, ptr %i.q, align 8, !alias.scope !2530, !noalias !2529
  %.not11.i = icmp eq i64 %.sroa.03.0.copyload.i, -9223372036854775807
  br i1 %.not11.i, label %bb.j, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.5.8.copyload = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2531
  %.sroa.9148.8..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9148, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9148.8..sroa.5.0..sroa_idx.i.sroa_idx, i64 56, i1 false), !alias.scope !2531
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @759) #35
          to label %bb.k unwind label %bb.f, !noalias !2529

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.i
  %.sroa.5.0178 = phi ptr [ %.sroa.5.8.copyload, %bb.i ], [ %i.o, %bb.g ] ; 3 uses
  %storemerge.i = phi i64 [ %.sroa.03.0.copyload.i, %bb.i ], [ -9223372036854775807, %bb.g ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr157drop_in_place$LT$flate2..deflate..write..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17h8bfa447065fec64cE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.j)
          to label %"_ZN6flate27deflate5write23DeflateEncoder$LT$W$GT$6finish17h5c2d1f14b5cf50a7E.exit" unwind label %.thread196

bb.m:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2529
  unreachable

bb.n:                                             ; preds = %bb.a
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %i.i, align 8
  %.sroa.7.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.7.sroa.9.0.copyload, ptr %.sroa.7.sroa.9.0..sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, i64 56, i1 false)
  %.sroa.7.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @"_ZN6zopfli7deflate23DeflateEncoder$LT$W$GT$8__finish17h51429e9793710d36E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.i)
          to label %bb.p unwind label %bb.o, !noalias !2532

bb.o:                                             ; preds = %bb.s, %bb.n
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr150drop_in_place$LT$zopfli..deflate..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17ha69f5574946411b4E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.i) #33
          to label %.thread192 unwind label %bb.v, !noalias !2532

bb.p:                                             ; preds = %bb.n
  %i.t = load i64, ptr %i.c, align 8, !range !56, !noalias !2533, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  switch i64 %i.t, label %bb.r [
    i64 -9223372036854775806, label %bb.q
    i64 -9223372036854775807, label %bb.s
  ], !prof !57

bb.q:                                             ; preds = %bb.p
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2533, !nonnull !10, !noundef !10
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %.sroa.5150.8.copyload = load ptr, ptr %i.u, align 8, !noalias !2534
  %.sroa.9151.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9151, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9151.8..sroa_idx, i64 56, i1 false), !noalias !2534
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #35
          to label %bb.t unwind label %bb.o, !noalias !2532

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.q
  %.sroa.5150.0 = phi ptr [ %i.v, %bb.q ], [ %.sroa.5150.8.copyload, %bb.r ] ; 2 uses
  %storemerge.i129 = phi i64 [ -9223372036854775807, %bb.q ], [ %i.t, %bb.r ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr150drop_in_place$LT$zopfli..deflate..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17ha69f5574946411b4E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.i)
          to label %bb.ar unwind label %.thread196

bb.v:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2532
  unreachable

bb.w:                                             ; preds = %bb.a
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx2, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %.sroa.7.sroa.9.0.copyload, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx2.sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, i64 56, i1 false)
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, i64 80, i1 false)
  %.sroa.10.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10153)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2536)
  %i.x = invoke fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h7cb6d94019ded7c9E"(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.h)
          to label %bb.x unwind label %bb.af, !noalias !2535 ; 3 uses

bb.x:                                             ; preds = %bb.w
  %.not.i133 = icmp eq ptr %i.x, null
  br i1 %.not.i133, label %bb.y, label %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit"

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2537
  %.sroa.05.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !2536, !noalias !2535
  %.sroa.05.sroa.4.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx2, align 8, !alias.scope !2536, !noalias !2535
  %.sroa.05.sroa.5.0.copyload.i = load i64, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx2.sroa_idx, align 8, !alias.scope !2536, !noalias !2535
  %.sroa.46.0.copyload.i = load i8, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx2.sroa_idx, align 8, !alias.scope !2536, !noalias !2535
  %4 = and i8 %.sroa.46.0.copyload.i, 1           ; 2 uses
  %..i = zext nneg i8 %4 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %i.y, i64 152, i1 false), !noalias !2535
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %..i, ptr %i.z, align 8, !noalias !2537
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 6 uses
  store i64 %.sroa.05.sroa.0.0.copyload.i, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !2537
  %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %.sroa.05.sroa.4.0.copyload.i, ptr %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx.sroa_idx.i, align 8, !noalias !2537
  %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %.sroa.05.sroa.5.0.copyload.i, ptr %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx.sroa_idx.i, align 8, !noalias !2537
  %.sroa.6156.8.copyload = load i64, ptr %i.y, align 8, !alias.scope !2537
  %.sroa.8159.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8159.8.copyload = load i64, ptr %.sroa.8159.8..sroa_idx, align 8, !alias.scope !2537
  %.sroa.9162.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.9162.8.copyload = load ptr, ptr %.sroa.9162.8..sroa_idx, align 8, !alias.scope !2537
  %.sroa.10165.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.10165.8.copyload = load i64, ptr %.sroa.10165.8..sroa_idx, align 8, !alias.scope !2537
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11.8..sroa_idx, i64 120, i1 false), !alias.scope !2537
  %i.aa = icmp eq i8 %4, 0
  br i1 %i.aa, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i" unwind label %bb.aa, !noalias !2535

bb.aa:                                            ; preds = %bb.z
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %.thread192 unwind label %bb.ab, !noalias !2535

bb.ab:                                            ; preds = %bb.aa
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2535
  unreachable

bb.ac:                                            ; preds = %bb.y
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i" unwind label %bb.ad, !noalias !2535

bb.ad:                                            ; preds = %bb.ac
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %.thread192 unwind label %bb.ae, !noalias !2535

bb.ae:                                            ; preds = %bb.ad
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2535
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i": ; preds = %bb.ac, %bb.z
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit.thread" unwind label %.thread196

"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit.thread": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2537
  br label %bb.av

bb.af:                                            ; preds = %bb.w
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr197drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$zopfli..deflate..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$$GT$17h24a34f5207135878E"(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.h) #33
          to label %.thread192 unwind label %bb.ag, !noalias !2535

bb.ag:                                            ; preds = %bb.af
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2535
  unreachable

.thread196:                                       ; preds = %bb.c, %bb.l, %bb.u, %bb.be, %bb.au, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i"
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread192

bb.ah:                                            ; preds = %bb.c
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.449.0..sroa_idx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aw, %bb.bh, %bb.ap, %bb.as, %bb.ah
  %i.ah = load ptr, ptr %3, align 8, !invariant.load !10 ; 2 uses
  %.not.i138 = icmp eq ptr %i.ah, null
  br i1 %.not.i138, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void %i.ah(ptr noundef nonnull %2)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !14, !invariant.load !10 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !15, !invariant.load !10 ; 2 uses
  %i.am = icmp ult i64 %i.al, -9223372036854775807
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.aj, 0
  br i1 %i.an, label %"_ZN4core3ptr360drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$zip..write..MaybeEncrypted$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$zip..write..GenericZipWriter$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$C$zip..result..ZipError$GT$$GT$$GT$17he0ff349a77ebdc21E.exit", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.al) #26
  br label %"_ZN4core3ptr360drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$zip..write..MaybeEncrypted$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$zip..write..GenericZipWriter$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$C$zip..result..ZipError$GT$$GT$$GT$17he0ff349a77ebdc21E.exit"

bb.am:                                            ; preds = %bb.aj
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !14, !invariant.load !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !15, !invariant.load !10 ; 2 uses
  %i.at = icmp ult i64 %i.as, -9223372036854775807
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.aq, 0
  br i1 %i.au, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) %i.as) #26
  br label %common.resume

common.resume:                                    ; preds = %.thread192, %.thread, %bb.am, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.am ], [ %i.ao, %bb.an ], [ %i.bh, %.thread ], [ %eh.lpad-body185, %.thread192 ]
  resume { ptr, i32 } %common.resume.op

bb.ao:                                            ; preds = %bb.bi, %bb.at, %bb.aq, %bb.d
  %.sroa.5.0 = phi ptr [ %.sroa.7.sroa.9.0.copyload, %bb.d ], [ %.sroa.5.0178, %bb.aq ], [ %.sroa.5150.0, %bb.at ], [ %.sroa.6.0, %bb.bi ]
  %.sroa.035.0 = phi i64 [ %.sroa.7.sroa.0.0.copyload, %bb.d ], [ %storemerge.i, %bb.aq ], [ %storemerge.i129, %bb.at ], [ %storemerge.i141, %bb.bi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.035.0, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.838.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.838, i64 56, i1 false)
  call void @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17hae7817bed9e25923E"(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.f, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = load i64, ptr %i.f, align 8, !range !58, !noundef !10 ; 3 uses
  %i.aw = icmp eq i64 %i.av, -9223372036854775804
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.653, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  br i1 %i.aw, label %bb.bj, label %bb.bk

"_ZN6flate27deflate5write23DeflateEncoder$LT$W$GT$6finish17h5c2d1f14b5cf50a7E.exit": ; preds = %bb.l
  %i.ay = icmp eq i64 %storemerge.i, -9223372036854775807
  br i1 %i.ay, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %"_ZN6flate27deflate5write23DeflateEncoder$LT$W$GT$6finish17h5c2d1f14b5cf50a7E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0178) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9148)
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0178, ptr %.sroa.468.0..sroa_idx, align 8
  br label %bb.ai

bb.aq:                                            ; preds = %"_ZN6flate27deflate5write23DeflateEncoder$LT$W$GT$6finish17h5c2d1f14b5cf50a7E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.838, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9148, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9148)
  br label %bb.ao

bb.ar:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = icmp eq i64 %storemerge.i129, -9223372036854775807
  br i1 %i.az, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9151)
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5150.0, ptr %.sroa.474.0..sroa_idx, align 8
  br label %bb.ai

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.838, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9151, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9151)
  br label %bb.ao

"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit": ; preds = %bb.x
  %.sroa.0154.0.copyload155 = load i64, ptr %i.h, align 8, !alias.scope !2537 ; 2 uses
  %.sroa.6156.0.copyload158 = load i64, ptr %.sroa.7.0..sroa_idx2, align 8, !alias.scope !2537 ; 2 uses
  %.sroa.8159.0.copyload161 = load i64, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx2.sroa_idx, align 8, !alias.scope !2537 ; 2 uses
  %.sroa.9162.0.copyload164 = load ptr, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx2.sroa_idx, align 8, !alias.scope !2537 ; 2 uses
  %.sroa.10165.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.10165.0.copyload167 = load i64, ptr %.sroa.10165.0..sroa_idx166, align 8, !alias.scope !2537 ; 2 uses
  %.sroa.11.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11.0..sroa_idx168, i64 120, i1 false), !alias.scope !2537
  %.not = icmp eq i64 %.sroa.0154.0.copyload155, -9223372036854775808
  br i1 %.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit"
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6175.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11.0..sroa_idx168, i64 120, i1 false)
  %.sroa.7.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx176, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx3, i64 24, i1 false)
  store i64 %.sroa.0154.0.copyload155, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.6156.0.copyload158, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.8159.0.copyload161, ptr %.sroa.3172.0..sroa_idx, align 8
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.9162.0.copyload164, ptr %.sroa.4173.0..sroa_idx, align 8
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.10165.0.copyload167, ptr %.sroa.5174.0..sroa_idx, align 8
  %.sroa.8177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %i.x, ptr %.sroa.8177.0..sroa_idx, align 8
  invoke fastcc void @"_ZN4core3ptr197drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$zopfli..deflate..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$$GT$17h24a34f5207135878E"(ptr noalias noundef align 8 dereferenceable(184) %i.d)
          to label %.thread209 unwind label %.thread196

bb.av:                                            ; preds = %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit", %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit.thread"
  %.sroa.10165.0208 = phi i64 [ %.sroa.10165.8.copyload, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit.thread" ], [ %.sroa.10165.0.copyload167, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit" ] ; 2 uses
  %.sroa.6156.0207 = phi i64 [ %.sroa.6156.8.copyload, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit.thread" ], [ %.sroa.6156.0.copyload158, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit" ] ; 2 uses
  %.sroa.8159.0206 = phi i64 [ %.sroa.8159.8.copyload, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit.thread" ], [ %.sroa.8159.0.copyload161, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit" ] ; 2 uses
  %.sroa.9162.0205 = phi ptr [ %.sroa.9162.8.copyload, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit.thread" ], [ %.sroa.9162.0.copyload164, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h8f9dcd66f5c7a479E.exit" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.ba = icmp eq i64 %.sroa.6156.0207, -9223372036854775808
end_hunk_0
begin_hunk_1_@"_ZN3zip5write25GenericZipWriter$LT$W$GT$9switch_to17h233b613f46598ab2E":bb.a

bb.bm:                                            ; preds = %.thread192
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3zip5write25GenericZipWriter$LT$W$GT$9switch_to17h598596e761ee64a7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(152) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [152 x i8], align 8               ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 11 uses
  %.sroa.653 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.460 = alloca [120 x i8], align 8         ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [152 x i8], align 8               ; 7 uses
  %.sroa.838 = alloca [24 x i8], align 8          ; 5 uses
  %i.g = alloca [120 x i8], align 8               ; 8 uses
  %.sroa.11 = alloca [88 x i8], align 8           ; 6 uses
  %.sroa.9 = alloca [88 x i8], align 8            ; 5 uses
  %.sroa.10153 = alloca [24 x i8], align 8        ; 6 uses
  %i.h = alloca [152 x i8], align 8               ; 16 uses
  %.sroa.9151 = alloca [24 x i8], align 8         ; 5 uses
  %i.i = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.9148 = alloca [24 x i8], align 8         ; 5 uses
  %i.j = alloca [88 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.sroa.9.0.copyload = load ptr, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store i64 -9223372036854775808, ptr %1, align 8
  %i.k = xor i64 %.sroa.0.0.copyload, -9223372036854775808
  %i.l = icmp slt i64 %.sroa.0.0.copyload, 0
  %i.m = select i1 %i.l, i64 %i.k, i64 4
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.n
    i64 4, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17hba387b3b54c38644E(i8 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @119, i64 noundef 28)
          to label %bb.ah unwind label %.thread196

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, i64 24, i1 false)
  br label %bb.ao

bb.e:                                             ; preds = %bb.a
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %i.j, align 8
  %.sroa.7.sroa.9.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.7.sroa.9.0.copyload, ptr %.sroa.7.sroa.9.0..sroa_idx44, align 8
  %.sroa.7.sroa.10.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.10.0..sroa_idx46, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.7.sroa.11.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.11.0..sroa_idx47, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  %i.o = invoke noundef ptr @"_ZN6flate23zio19Writer$LT$W$C$D$GT$6finish17hfb54b47310ddb401E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.j)
          to label %bb.g unwind label %bb.f, !noalias !2553 ; 2 uses

bb.f:                                             ; preds = %bb.j, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$flate2..deflate..write..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$17h548dbcd98bc6178bE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.j) #33
          to label %.thread192 unwind label %bb.m, !noalias !2553

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.q, align 8, !alias.scope !2554, !noalias !2553 ; 2 uses
  store i64 -9223372036854775807, ptr %i.q, align 8, !alias.scope !2554, !noalias !2553
  %.not11.i = icmp eq i64 %.sroa.03.0.copyload.i, -9223372036854775807
  br i1 %.not11.i, label %bb.j, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.5.8.copyload = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9148, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.11.0..sroa_idx47, i64 24, i1 false), !alias.scope !2555
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @759) #35
          to label %bb.k unwind label %bb.f, !noalias !2553

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.i
  %.sroa.5.0178 = phi ptr [ %.sroa.5.8.copyload, %bb.i ], [ %i.o, %bb.g ] ; 3 uses
  %storemerge.i = phi i64 [ %.sroa.03.0.copyload.i, %bb.i ], [ -9223372036854775807, %bb.g ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$flate2..deflate..write..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$17h548dbcd98bc6178bE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.j)
          to label %"_ZN6flate27deflate5write23DeflateEncoder$LT$W$GT$6finish17hbf78ce0367916bddE.exit" unwind label %.thread196

bb.m:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2553
  unreachable

bb.n:                                             ; preds = %bb.a
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %i.i, align 8
  %.sroa.7.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.7.sroa.9.0.copyload, ptr %.sroa.7.sroa.9.0..sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.7.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @"_ZN6zopfli7deflate23DeflateEncoder$LT$W$GT$8__finish17h7469b61ccc1a4c9aE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.i)
          to label %bb.p unwind label %bb.o, !noalias !2556

bb.o:                                             ; preds = %bb.s, %bb.n
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$zopfli..deflate..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$17h94fe453554b8966eE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.i) #33
          to label %.thread192 unwind label %bb.v, !noalias !2556

bb.p:                                             ; preds = %bb.n
  %i.t = load i64, ptr %i.c, align 8, !range !56, !noalias !2557, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  switch i64 %i.t, label %bb.r [
    i64 -9223372036854775806, label %bb.q
    i64 -9223372036854775807, label %bb.s
  ], !prof !57

bb.q:                                             ; preds = %bb.p
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2557, !nonnull !10, !noundef !10
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %.sroa.5150.8.copyload = load ptr, ptr %i.u, align 8, !noalias !2558
  %.sroa.9151.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9151, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9151.8..sroa_idx, i64 24, i1 false), !noalias !2558
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #35
          to label %bb.t unwind label %bb.o, !noalias !2556

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.q
  %.sroa.5150.0 = phi ptr [ %i.v, %bb.q ], [ %.sroa.5150.8.copyload, %bb.r ] ; 2 uses
  %storemerge.i129 = phi i64 [ -9223372036854775807, %bb.q ], [ %i.t, %bb.r ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$zopfli..deflate..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$17h94fe453554b8966eE"(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.i)
          to label %bb.ar unwind label %.thread196

bb.v:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2556
  unreachable

bb.w:                                             ; preds = %bb.a
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx2, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %.sroa.7.sroa.9.0.copyload, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx2.sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, i64 80, i1 false)
  %.sroa.10.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10153)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  %i.x = invoke fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h92dd479a8e13b03dE"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.h)
          to label %bb.x unwind label %bb.af, !noalias !2559 ; 3 uses

bb.x:                                             ; preds = %bb.w
  %.not.i133 = icmp eq ptr %i.x, null
  br i1 %.not.i133, label %bb.y, label %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit"

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2561
  %.sroa.05.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !2560, !noalias !2559
  %.sroa.05.sroa.4.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx2, align 8, !alias.scope !2560, !noalias !2559
  %.sroa.05.sroa.5.0.copyload.i = load i64, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx2.sroa_idx, align 8, !alias.scope !2560, !noalias !2559
  %.sroa.46.0.copyload.i = load i8, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx2.sroa_idx, align 8, !alias.scope !2560, !noalias !2559
  %4 = and i8 %.sroa.46.0.copyload.i, 1           ; 2 uses
  %..i = zext nneg i8 %4 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %i.y, i64 120, i1 false), !noalias !2559
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %..i, ptr %i.z, align 8, !noalias !2561
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 6 uses
  store i64 %.sroa.05.sroa.0.0.copyload.i, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !2561
  %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %.sroa.05.sroa.4.0.copyload.i, ptr %.sroa.59.sroa.5.0..sroa.59.0..sroa_idx.sroa_idx.i, align 8, !noalias !2561
  %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i64 %.sroa.05.sroa.5.0.copyload.i, ptr %.sroa.59.sroa.6.0..sroa.59.0..sroa_idx.sroa_idx.i, align 8, !noalias !2561
  %.sroa.6156.8.copyload = load i64, ptr %i.y, align 8, !alias.scope !2561
  %.sroa.8159.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8159.8.copyload = load i64, ptr %.sroa.8159.8..sroa_idx, align 8, !alias.scope !2561
  %.sroa.9162.8.copyload = load ptr, ptr %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx2.sroa_idx, align 8, !alias.scope !2561
  %.sroa.10165.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.10165.8.copyload = load i64, ptr %.sroa.10165.8..sroa_idx, align 8, !alias.scope !2561
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11.8..sroa_idx, i64 88, i1 false), !alias.scope !2561
  %i.aa = icmp eq i8 %4, 0
  br i1 %i.aa, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i" unwind label %bb.aa, !noalias !2559

bb.aa:                                            ; preds = %bb.z
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %.thread192 unwind label %bb.ab, !noalias !2559

bb.ab:                                            ; preds = %bb.aa
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2559
  unreachable

bb.ac:                                            ; preds = %bb.y
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i" unwind label %bb.ad, !noalias !2559

bb.ad:                                            ; preds = %bb.ac
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %.thread192 unwind label %bb.ae, !noalias !2559

bb.ae:                                            ; preds = %bb.ad
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2559
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i": ; preds = %bb.ac, %bb.z
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.59.0..sroa_idx.i)
          to label %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit.thread" unwind label %.thread196

"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit.thread": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2561
  br label %bb.av

bb.af:                                            ; preds = %bb.w
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$zopfli..deflate..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$$GT$17h7d04261c26dabe09E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.h) #33
          to label %.thread192 unwind label %bb.ag, !noalias !2559

bb.ag:                                            ; preds = %bb.af
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !2559
  unreachable

.thread196:                                       ; preds = %bb.c, %bb.l, %bb.u, %bb.be, %bb.au, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i.i"
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread192

bb.ah:                                            ; preds = %bb.c
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.449.0..sroa_idx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aw, %bb.bh, %bb.ap, %bb.as, %bb.ah
  %i.ah = load ptr, ptr %3, align 8, !invariant.load !10 ; 2 uses
  %.not.i138 = icmp eq ptr %i.ah, null
  br i1 %.not.i138, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void %i.ah(ptr noundef nonnull %2)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !14, !invariant.load !10 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !15, !invariant.load !10 ; 2 uses
  %i.am = icmp ult i64 %i.al, -9223372036854775807
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.aj, 0
  br i1 %i.an, label %"_ZN4core3ptr274drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$zip..write..GenericZipWriter$LT$std..fs..File$GT$$C$zip..result..ZipError$GT$$GT$$GT$17hc33b27026238be66E.exit", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, -9223372036854775807) %i.al) #26
  br label %"_ZN4core3ptr274drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$zip..write..GenericZipWriter$LT$std..fs..File$GT$$C$zip..result..ZipError$GT$$GT$$GT$17hc33b27026238be66E.exit"

bb.am:                                            ; preds = %bb.aj
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !14, !invariant.load !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !15, !invariant.load !10 ; 2 uses
  %i.at = icmp ult i64 %i.as, -9223372036854775807
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.aq, 0
  br i1 %i.au, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) %i.as) #26
  br label %common.resume

common.resume:                                    ; preds = %.thread192, %.thread, %bb.am, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.am ], [ %i.ao, %bb.an ], [ %i.bh, %.thread ], [ %eh.lpad-body185, %.thread192 ]
  resume { ptr, i32 } %common.resume.op

bb.ao:                                            ; preds = %bb.bi, %bb.at, %bb.aq, %bb.d
  %.sroa.5.0 = phi ptr [ %.sroa.7.sroa.9.0.copyload, %bb.d ], [ %.sroa.5.0178, %bb.aq ], [ %.sroa.5150.0, %bb.at ], [ %.sroa.6.0, %bb.bi ]
  %.sroa.035.0 = phi i64 [ %.sroa.7.sroa.0.0.copyload, %bb.d ], [ %storemerge.i, %bb.aq ], [ %storemerge.i129, %bb.at ], [ %storemerge.i141, %bb.bi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.035.0, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838, i64 24, i1 false)
  call void @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17hfe152974e5a48a3aE"(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.f, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = load i64, ptr %i.f, align 8, !range !58, !noundef !10 ; 3 uses
  %i.aw = icmp eq i64 %i.av, -9223372036854775804
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.653, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  br i1 %i.aw, label %bb.bj, label %bb.bk

"_ZN6flate27deflate5write23DeflateEncoder$LT$W$GT$6finish17hbf78ce0367916bddE.exit": ; preds = %bb.l
  %i.ay = icmp eq i64 %storemerge.i, -9223372036854775807
  br i1 %i.ay, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %"_ZN6flate27deflate5write23DeflateEncoder$LT$W$GT$6finish17hbf78ce0367916bddE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0178) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9148)
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0178, ptr %.sroa.468.0..sroa_idx, align 8
  br label %bb.ai

bb.aq:                                            ; preds = %"_ZN6flate27deflate5write23DeflateEncoder$LT$W$GT$6finish17hbf78ce0367916bddE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9148, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9148)
  br label %bb.ao

bb.ar:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = icmp eq i64 %storemerge.i129, -9223372036854775807
  br i1 %i.az, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9151)
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5150.0, ptr %.sroa.474.0..sroa_idx, align 8
  br label %bb.ai

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.838, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9151, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9151)
  br label %bb.ao

"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit": ; preds = %bb.x
  %.sroa.0154.0.copyload155 = load i64, ptr %i.h, align 8, !alias.scope !2561 ; 2 uses
  %.sroa.6156.0.copyload158 = load i64, ptr %.sroa.7.0..sroa_idx2, align 8, !alias.scope !2561 ; 2 uses
  %.sroa.8159.0.copyload161 = load i64, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx2.sroa_idx, align 8, !alias.scope !2561 ; 2 uses
  %.sroa.9162.0.copyload164 = load ptr, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx2.sroa_idx, align 8, !alias.scope !2561 ; 2 uses
  %.sroa.10165.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.10165.0.copyload167 = load i64, ptr %.sroa.10165.0..sroa_idx166, align 8, !alias.scope !2561 ; 2 uses
  %.sroa.11.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11.0..sroa_idx168, i64 88, i1 false), !alias.scope !2561
  %.not = icmp eq i64 %.sroa.0154.0.copyload155, -9223372036854775808
  br i1 %.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit"
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6175.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11.0..sroa_idx168, i64 88, i1 false)
  %.sroa.7.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx176, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx3, i64 24, i1 false)
  store i64 %.sroa.0154.0.copyload155, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.6156.0.copyload158, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.8159.0.copyload161, ptr %.sroa.3172.0..sroa_idx, align 8
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.9162.0.copyload164, ptr %.sroa.4173.0..sroa_idx, align 8
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.10165.0.copyload167, ptr %.sroa.5174.0..sroa_idx, align 8
  %.sroa.8177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.x, ptr %.sroa.8177.0..sroa_idx, align 8
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$std..io..buffered..bufwriter..BufWriter$LT$zopfli..deflate..DeflateEncoder$LT$zip..write..MaybeEncrypted$LT$std..fs..File$GT$$GT$$GT$$GT$17h7d04261c26dabe09E"(ptr noalias noundef align 8 dereferenceable(152) %i.d)
          to label %.thread209 unwind label %.thread196

bb.av:                                            ; preds = %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit", %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit.thread"
  %.sroa.10165.0208 = phi i64 [ %.sroa.10165.8.copyload, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit.thread" ], [ %.sroa.10165.0.copyload167, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit" ] ; 2 uses
  %.sroa.6156.0207 = phi i64 [ %.sroa.6156.8.copyload, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit.thread" ], [ %.sroa.6156.0.copyload158, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit" ] ; 2 uses
  %.sroa.8159.0206 = phi i64 [ %.sroa.8159.8.copyload, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit.thread" ], [ %.sroa.8159.0.copyload161, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit" ] ; 2 uses
  %.sroa.9162.0205 = phi ptr [ %.sroa.9162.8.copyload, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit.thread" ], [ %.sroa.9162.0.copyload164, %"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$10into_inner17h68e194b2b1bc2266E.exit" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.ba = icmp eq i64 %.sroa.6156.0207, -9223372036854775808
end_hunk_1
