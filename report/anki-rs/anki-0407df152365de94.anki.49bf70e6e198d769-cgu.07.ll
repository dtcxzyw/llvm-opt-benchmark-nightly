Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.07?download=true
inline.NumInlined: 5610
inline.NumDeleted: 2048
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN3zip11compression21Decompressor$LT$R$GT$3new17hee10af976e278933E":bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @283, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 32, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val5, 0
  br i1 %i.g, label %"_ZN4core3ptr155drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$zip..read..CryptoReader$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17haea60eb5fa2f4318E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val5, i64 noundef 1) #29
  br label %"_ZN4core3ptr155drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$zip..read..CryptoReader$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17haea60eb5fa2f4318E.exit"

bb.f:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %.sroa.0.0.copyload, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %"_ZN4core3ptr155drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$zip..read..CryptoReader$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17haea60eb5fa2f4318E.exit"

"_ZN4core3ptr155drop_in_place$LT$std..io..buffered..bufreader..BufReader$LT$zip..read..CryptoReader$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$$GT$$GT$17haea60eb5fa2f4318E.exit": ; preds = %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4spec14FixedSizeBlock5write17h032b7ffe4ca8c1a9E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(20) %1, ptr noalias noundef align 4 dereferenceable(4) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 20, i1 false), !alias.scope !7175
  %i.b = call noundef ptr @_ZN3std2io5Write9write_all17h55ae749b4115d4deE(ptr noalias noundef nonnull align 4 dereferenceable(4) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 20) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ -9223372036854775807, %bb.b ], [ -9223372036854775802, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4spec14FixedSizeBlock5write17hbb3975b385187be3E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(20) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 20, i1 false), !alias.scope !7179
  %i.b = call noundef ptr @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$9write_all17hc264c1d46bb67e1cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 20) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ -9223372036854775807, %bb.b ], [ -9223372036854775802, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4spec22find_central_directory17h1c4f7525214311beE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 3) %2, i64 %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 32              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 4                ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [384 x i8], align 32              ; 4 uses
  %i.f = alloca [20 x i8], align 4                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [22 x i8], align 4                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 30 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 49 uses
  %i.p = alloca [384 x i8], align 32              ; 23 uses
  %i.q = alloca [120 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$3new17h957713491c851d7aE"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @286, i64 noundef 4, i64 noundef 0, i64 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 328 ; 5 uses
  store i64 2, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 -9223372036854775802, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.8.i.sroa.5.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.i.sroa.6.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %.sroa.8.i.sroa.7.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.18.5..sroa.410.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.17451.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.23.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.13.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 16 uses
  %.sroa.6157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  %i.z = icmp eq i64 %2, 2                        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 360 ; 2 uses
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.410.0..sroa_idx.i.i.i288 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i290 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.6.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %.sroa.15.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %.sroa.22.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %.sroa.24.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.26.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.27.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.28.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %.sroa.6201.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5537.sroa.4.0..sroa.5537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx543.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %.backedge685

.backedge685:                                     ; preds = %.backedge685.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$4next17hbf39489ce9301506E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %.thread558.loopexit

.thread558.loopexit:                              ; preds = %bb.fd, %.backedge685, %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i", %bb.h, %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  %lpad.loopexit679 = landingpad { ptr, i32 }
          cleanup
  br label %.thread548

.thread558.loopexit.split-lp:                     ; preds = %bb.i
  %lpad.loopexit.split-lp680 = landingpad { ptr, i32 }
          cleanup
  br label %.thread548

bb.b:                                             ; preds = %.backedge685
  %i.ah = load i64, ptr %i.n, align 8, !range !45, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ah, -9223372036854775802
  %i.ai = load i64, ptr %i.s, align 8             ; 2 uses
  %i.aj = load i64, ptr %i.t, align 8             ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ak, align 8
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.288.0..sroa_idx, align 8
  %.sroa.389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aj, ptr %.sroa.389.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.d:                                             ; preds = %bb.b
  %i.al = trunc nuw i64 %i.ai to i1
  br i1 %i.al, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.h, i8 0, i64 22, i1 false), !alias.scope !7311, !noalias !7310
  %i.am = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.h, i64 noundef 22)
          to label %.noexc unwind label %.thread558.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  %.sroa.09.0.copyload.i.i = load i32, ptr %i.h, align 4, !noalias !7310
  %.not4.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i, 101010256
  br i1 %.not4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i = phi i64 [ 1, %.noexc ], [ 0, %bb.f ]
  %.sroa.18.0.ph.i = phi ptr [ %i.am, %.noexc ], [ @285, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7310
  %i.an = ptrtoint ptr %.sroa.18.0.ph.i to i64    ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc455 = trunc i64 %i.an to i24
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %.sroa.6.5.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i, align 4, !noalias !7312 ; 3 uses
  %.sroa.8.i.sroa.5.0.copyload = load i16, ptr %.sroa.8.i.sroa.5.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7312 ; 3 uses
  %.sroa.8.i.sroa.6.0.copyload = load i16, ptr %.sroa.8.i.sroa.6.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 2, !noalias !7312 ; 4 uses
  %.sroa.8.i.sroa.7.0.copyload = load i24, ptr %.sroa.8.i.sroa.7.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7312 ; 3 uses
  %.sroa.18.0.copyload.i = load i56, ptr %.sroa.18.5..sroa.410.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !7312 ; 4 uses
  %.sroa.18.0.insert.ext.i = zext i56 %.sroa.18.0.copyload.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7310
  %.sroa.18.5.extract.shift.i = lshr i64 %.sroa.18.0.insert.ext.i, 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7313
  call void @llvm.experimental.noalias.scope.decl(metadata !7314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7315
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef range(i64 0, -44) %.sroa.18.5.extract.shift.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc241 unwind label %.thread558.loopexit

.noexc241:                                        ; preds = %bb.h
  %i.ao = load i64, ptr %i.g, align 8, !range !32, !noalias !7315, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.u, align 8, !range !19, !noalias !7315, !noundef !5 ; 2 uses
  br i1 %i.ap, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i", !prof !11

bb.i:                                             ; preds = %.noexc241
  %i.ar = load i64, ptr %i.v, align 8, !noalias !7315
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.aq, i64 %i.ar) #26
          to label %.noexc242 unwind label %.thread558.loopexit.split-lp

.noexc242:                                        ; preds = %bb.i
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i": ; preds = %.noexc241
  %i.as = load ptr, ptr %i.v, align 8, !noalias !7315, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7315
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !7314, !noalias !7313
  store ptr %i.as, ptr %i.w, align 8, !alias.scope !7314, !noalias !7313
  store i64 %.sroa.18.5.extract.shift.i, ptr %i.x, align 8, !alias.scope !7314, !noalias !7313
  %i.at = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc243 unwind label %.thread558.loopexit ; 2 uses

.noexc243:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i"
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 11 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7313
  %i.aw = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.au, i64 noundef %i.av)
          to label %bb.l unwind label %bb.k, !noalias !7316 ; 4 uses

bb.j:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7316
  br label %.thread548

bb.k:                                             ; preds = %bb.n, %.noexc243
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %.thread548, label %bb.j

bb.l:                                             ; preds = %.noexc243
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr nonnull %i.aw), !noalias !7316
  %i.ba = icmp eq i8 %i.az, 37
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.aw)
          to label %bb.p unwind label %bb.k, !noalias !7316

bb.o:                                             ; preds = %bb.m
  %i.bb = ptrtoint ptr %i.aw to i64               ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc = trunc i64 %i.bb to i24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.9.sroa.0.0 = phi i64 [ 0, %bb.n ], [ 1, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.10.0.in.in = phi i64 [ ptrtoint (ptr @298 to i64), %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.0.0 = phi i24 [ ptrtoint (ptr @298 to i24), %bb.n ], [ %.sroa.17451.sroa.0.0.extract.trunc, %bb.o ] ; 2 uses
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7316
  br label %bb.s

bb.r:                                             ; preds = %bb.d
  %.sroa.070.0.copyload = load i64, ptr %i.o, align 8 ; 2 uses
  %.not212 = icmp eq i64 %.sroa.070.0.copyload, -9223372036854775802 ; 3 uses
  %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.572.sroa.4.0.copyload = load i64, ptr %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx, align 8
  %.sroa.572.sroa.0.0.copyload = load ptr, ptr %i.y, align 8
  %.sroa.576.sroa.5.0 = select i1 %.not212, i64 19, i64 %.sroa.572.sroa.4.0.copyload
  %.sroa.576.sroa.0.0 = select i1 %.not212, ptr @297, ptr %.sroa.572.sroa.0.0.copyload
  %.sroa.074.0 = select i1 %.not212, i64 -9223372036854775808, i64 %.sroa.070.0.copyload
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.074.0, ptr %i.bd, align 8
  %.sroa.576.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.576.sroa.0.0, ptr %.sroa.576.0..sroa_idx77, align 8
  %.sroa.576.sroa.5.0..sroa.576.0..sroa_idx77.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.576.sroa.5.0, ptr %.sroa.576.sroa.5.0..sroa.576.0..sroa_idx77.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !7317)
  %i.be = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7317, !noundef !5
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fi

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.g
  %.sroa.9.sroa.0.1.ph = phi i64 [ %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i, %bb.g ], [ %.sroa.9.sroa.0.0, %bb.q ], [ %.sroa.9.sroa.0.0, %bb.p ]
  %.sroa.17451.sroa.10.1.ph.in.in = phi i64 [ %i.an, %bb.g ], [ %.sroa.17451.sroa.10.0.in.in, %bb.q ], [ %.sroa.17451.sroa.10.0.in.in, %bb.p ]
  %.sroa.17451.sroa.0.1.ph = phi i24 [ %.sroa.17451.sroa.0.0.extract.trunc455, %bb.g ], [ %.sroa.17451.sroa.0.0, %bb.q ], [ %.sroa.17451.sroa.0.0, %bb.p ]
  %.sroa.23.1.ph = phi i64 [ 32, %bb.g ], [ 34, %bb.q ], [ 34, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.9.sroa.0.0.insert.insert474 = or i64 %.sroa.9.sroa.0.1.ph, -9223372036854775808 ; 2 uses
  store i64 %.sroa.9.sroa.0.0.insert.insert474, ptr %i.m, align 8
  %.sroa.17451.sroa.9.0.insert.insert459 = and i64 %.sroa.17451.sroa.10.1.ph.in.in, -16777216
  %.sroa.17451.sroa.0.0.insert.ext452 = zext i24 %.sroa.17451.sroa.0.1.ph to i64
  %.sroa.17451.sroa.0.0.insert.insert454 = or disjoint i64 %.sroa.17451.sroa.9.0.insert.insert459, %.sroa.17451.sroa.0.0.insert.ext452 ; 2 uses
  store i64 %.sroa.17451.sroa.0.0.insert.insert454, ptr %.sroa.17451.8..sroa_idx, align 8
  store i64 %.sroa.23.1.ph, ptr %.sroa.23.8..sroa_idx, align 8
  %i.bg = load i64, ptr %i.o, align 8, !range !45, !noundef !5
  %.not222 = icmp eq i64 %i.bg, -9223372036854775802
  %i.bh = inttoptr i64 %.sroa.17451.sroa.0.0.insert.insert454 to ptr
  br i1 %.not222, label %bb.fh, label %bb.fc

bb.t:                                             ; preds = %bb.l
  %i.bi = lshr i64 %.sroa.18.0.insert.ext.i, 8    ; 2 uses
  %.sroa.6.20.extract.trunc = trunc i64 %i.bi to i32 ; 4 uses
  %i.bj = add i64 %i.aj, 22
  %i.bk = add i64 %i.bj, %i.av
  %i.bl = icmp ugt i64 %i.bk, %5
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp ne i16 %.sroa.8.i.sroa.6.0.copyload, -1
  %i.bn = icmp ne i32 %.sroa.6.20.extract.trunc, -1
  %or.cond.not2435 = and i1 %i.bm, %i.bn
  %i.bo = icmp ult i64 %i.aj, 20
  %or.cond2432 = select i1 %or.cond.not2435, i1 true, i1 %i.bo
  br i1 %or.cond2432, label %.critedge, label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.bp = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7318, !noundef !5 ; 5 uses
  %i.bq = icmp eq i64 %i.bp, -9223372036854775802
  br i1 %i.bq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = icmp ne i64 %i.bp, -9223372036854775806
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nsw i64 %i.bp, 9223372036854775807
  %i.bt = icmp ugt i64 %i.bp, -9223372036854775808
  %i.bu = select i1 %i.bt, i64 %i.bs, i64 1
  switch i64 %i.bu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.x
    i64 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !7319, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.fa

bb.y:                                             ; preds = %bb.w
  %i.bv = icmp eq i64 %i.bp, -9223372036854775808
  br i1 %i.bv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body245 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %bb.z
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.fa

bb.ac:                                            ; preds = %bb.u
  %i.by = add i64 %i.aj, -20                      ; 5 uses
  %i.bz = invoke { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Seek$GT$4seek17ha3716c9a1fdec5e3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef %i.by)
          to label %.noexc248 unwind label %.thread611.loopexit ; 2 uses

.noexc248:                                        ; preds = %bb.ac
  %i.ca = extractvalue { i64, ptr } %i.bz, 0
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %.thread, label %bb.ad

.thread:                                          ; preds = %.noexc248
  %i.cc = extractvalue { i64, ptr } %i.bz, 1
  br label %bb.ah

bb.ad:                                            ; preds = %.noexc248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false), !alias.scope !7321, !noalias !7320
  %i.cd = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.f, i64 noundef 20)
          to label %.noexc249 unwind label %.thread611.loopexit ; 2 uses

.noexc249:                                        ; preds = %bb.ad
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.ae, label %.thread1584

.thread1584:                                      ; preds = %.noexc249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7320
  br label %bb.ah

bb.ae:                                            ; preds = %.noexc249
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.f, align 4, !noalias !7320
  %.not4.i.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i.i, 117853008
  br i1 %.not4.i.i.i, label %bb.ai, label %bb.ag

.thread611.loopexit:                              ; preds = %bb.ac, %bb.ad, %bb.du, %bb.ee, %bb.ef, %bb.as, %bb.ah, %bb.bc
  %lpad.loopexit682 = landingpad { ptr, i32 }
          cleanup
  br label %.thread595

.thread611.loopexit.split-lp:                     ; preds = %bb.bh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276"
  %lpad.loopexit.split-lp683 = landingpad { ptr, i32 }
          cleanup
  br label %.thread595

bb.af:                                            ; preds = %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316"
  %lpad.thr_comm.split-lp610 = landingpad { ptr, i32 }
          cleanup
  br label %.thread548

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7320
  br label %.critedge

bb.ah:                                            ; preds = %.thread1584, %.thread
  %.val.i.i2521580.ph = phi ptr [ %i.cd, %.thread1584 ], [ %i.cc, %.thread ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i2521580.ph)
          to label %.critedge unwind label %.thread611.loopexit

bb.ai:                                            ; preds = %bb.ae
  %.sroa.6.i.sroa.0.0.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i.i, align 4, !noalias !7322 ; 2 uses
  %.sroa.6.i.sroa.5.0.copyload.i = load i56, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 4, !noalias !7322
  %.sroa.13.0.copyload.i.i = load i40, ptr %.sroa.13.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7322 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7320
  %i.ce = and i40 %.sroa.13.0.copyload.i.i, 255
  %.sroa.7.sroa.7.0.insert.ext.i = zext nneg i40 %i.ce to i64
  %.sroa.7.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.7.sroa.7.0.insert.ext.i, 56
  %.sroa.7.sroa.0.0.insert.ext.i = zext i56 %.sroa.6.i.sroa.5.0.copyload.i to i64
  %.sroa.7.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.7.sroa.7.0.insert.shift.i, %.sroa.7.sroa.0.0.insert.ext.i ; 5 uses
  %.not216 = icmp ult i64 %.sroa.7.sroa.0.0.insert.insert.i, %i.by
  br i1 %.not216, label %bb.aj, label %bb.ak

.critedge:                                        ; preds = %bb.ah, %bb.ag, %bb.u
  %i.cf = and i64 %i.bi, 4294967295               ; 6 uses
  %i.cg = icmp eq i16 %.sroa.8.i.sroa.6.0.copyload, 0
  br i1 %i.cg, label %bb.dr, label %bb.ds

bb.aj:                                            ; preds = %bb.ai
  %i.ch = icmp ugt i40 %.sroa.13.0.copyload.i.i, 511
  br i1 %i.ch, label %bb.at, label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.ci = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7323, !noundef !5 ; 5 uses
  %i.cj = icmp eq i64 %i.ci, -9223372036854775802
  br i1 %i.cj, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = icmp ne i64 %i.ci, -9223372036854775806
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nsw i64 %i.ci, 9223372036854775807
  %i.cm = icmp ugt i64 %i.ci, -9223372036854775808
  %i.cn = select i1 %i.cm, i64 %i.cl, i64 1
  switch i64 %i.cn, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.am
    i64 1, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %.val.i.i259 = load ptr, ptr %i.y, align 8, !alias.scope !7324, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i259)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dq

bb.an:                                            ; preds = %bb.al
  %i.co = icmp eq i64 %i.ci, -9223372036854775808
  br i1 %i.co, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258" unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body261 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258": ; preds = %bb.ao
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dq

bb.ar:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !7325)
  %i.cr = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7325, !noundef !5
  %.not.i265 = icmp eq i64 %i.cr, 2
end_hunk_0
begin_hunk_1_@_ZN3zip4spec22find_central_directory17h1c4f7525214311beE:bb.a
  %i.hi = load i64, ptr %i.l, align 8, !range !45, !noundef !5 ; 2 uses
  %.not214 = icmp eq i64 %i.hi, -9223372036854775802
  %.sroa.4127.0.copyload = load i64, ptr %.sroa.4127.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5128.0.copyload = load i64, ptr %.sroa.5128.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not214, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hi, ptr %i.hj, align 8
  %.sroa.2130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4127.0.copyload, ptr %.sroa.2130.0..sroa_idx, align 8
  %.sroa.3131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5128.0.copyload, ptr %.sroa.3131.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.dn

bb.ei:                                            ; preds = %bb.eg
  %i.hk = trunc nuw i64 %.sroa.4127.0.copyload to i1
  br i1 %i.hk, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.hl = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le1110 = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1110, 32
  %.sroa.23.28.insert.insert.le1101 = or disjoint i64 %.sroa.23.28.insert.shift.le, %i.hl
  %i.hm = shl i56 %.sroa.18.0.copyload.i, 24
  %i.hn = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le1090 = or disjoint i56 %i.hm, %i.hn
  %.sroa.6.16.extract.trunc.le = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le1090 to i32
  %.sroa.9.24.extract.trunc.le = trunc nuw i64 %.sroa.23.28.insert.insert.le1101 to i48
  %i.ho = sub i64 %.sroa.5128.0.copyload, %i.cf
  store ptr %i.au, ptr %0, align 8
  %.sroa.040.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.040.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le, ptr %.sroa.040.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.040.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.040.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.040.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le, ptr %.sroa.040.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.040.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.040.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ho, ptr %.sroa.541.0..sroa_idx, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.ek:                                            ; preds = %bb.ei
  %i.hp = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7349, !noundef !5 ; 5 uses
  %i.hq = icmp eq i64 %i.hp, -9223372036854775802
  br i1 %i.hq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.hr = icmp ne i64 %i.hp, -9223372036854775806
  call void @llvm.assume(i1 %i.hr)
  %i.hs = add nsw i64 %i.hp, 9223372036854775807
  %i.ht = icmp ugt i64 %i.hp, -9223372036854775808
  %i.hu = select i1 %i.ht, i64 %i.hs, i64 1
  switch i64 %i.hu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.em
    i64 1, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %.val.i.i361 = load ptr, ptr %i.y, align 8, !alias.scope !7350, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i361)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.en:                                            ; preds = %bb.el
  %i.hv = icmp eq i64 %i.hp, -9223372036854775808
  br i1 %i.hv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body363 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360": ; preds = %bb.eo
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.er:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360", %bb.em
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body363

.body363:                                         ; preds = %bb.ep, %bb.er
  %eh.lpad-body364 = phi { ptr, i32 } [ %i.hy, %bb.er ], [ %i.hw, %bb.ep ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @294, ptr %i.y, align 8
  store i64 13, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345": ; preds = %bb.do, %bb.dn, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", %bb.dr, %bb.ej, %bb.c
  %i.hz = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7351, !noundef !5 ; 5 uses
  %i.ia = icmp eq i64 %i.hz, -9223372036854775802
  br i1 %i.ia, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.es

bb.es:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"
  %i.ib = icmp ne i64 %i.hz, -9223372036854775806
  call void @llvm.assume(i1 %i.ib)
  %i.ic = add nsw i64 %i.hz, 9223372036854775807
  %i.id = icmp ugt i64 %i.hz, -9223372036854775808
  %i.ie = select i1 %i.id, i64 %i.ic, i64 1
  switch i64 %i.ie, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" [
    i64 0, label %bb.et
    i64 1, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %.val.i.i369 = load ptr, ptr %i.y, align 8, !alias.scope !7352, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i369)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fn

bb.eu:                                            ; preds = %bb.es
  %i.if = icmp eq i64 %i.hz, -9223372036854775808
  br i1 %i.if, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368" unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body371 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368": ; preds = %bb.ev
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fn

bb.ey:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351", %bb.dx
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body354

.body354:                                         ; preds = %bb.ea, %bb.ey
  %eh.lpad-body355 = phi { ptr, i32 } [ %i.ii, %bb.ey ], [ %i.he, %bb.ea ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @295, ptr %i.y, align 8
  store i64 27, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351", %bb.dx, %bb.dv, %bb.dw, %bb.dy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360", %bb.em, %bb.ek, %bb.el, %bb.en, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258", %bb.am, %bb.ak, %bb.al, %bb.an, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268", %bb.av, %bb.at, %bb.au, %bb.aw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.x, %bb.v, %bb.w, %bb.y
  %.sink2008 = phi ptr [ @292, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258" ], [ @294, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" ], [ @291, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268" ], [ @296, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" ], [ @296, %bb.y ], [ @296, %bb.w ], [ @296, %bb.v ], [ @296, %bb.x ], [ @291, %bb.aw ], [ @291, %bb.au ], [ @291, %bb.at ], [ @291, %bb.av ], [ @292, %bb.an ], [ @292, %bb.al ], [ @292, %bb.ak ], [ @292, %bb.am ], [ @294, %bb.en ], [ @294, %bb.el ], [ @294, %bb.ek ], [ @294, %bb.em ], [ @295, %bb.dy ], [ @295, %bb.dw ], [ @295, %bb.dv ], [ @295, %bb.dx ], [ @295, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351" ]
  %.sink = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258" ], [ 13, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" ], [ 38, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268" ], [ 27, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" ], [ 27, %bb.y ], [ 27, %bb.w ], [ 27, %bb.v ], [ 27, %bb.x ], [ 38, %bb.aw ], [ 38, %bb.au ], [ 38, %bb.at ], [ 38, %bb.av ], [ 32, %bb.an ], [ 32, %bb.al ], [ 32, %bb.ak ], [ 32, %bb.am ], [ 13, %bb.en ], [ 13, %bb.el ], [ 13, %bb.ek ], [ 13, %bb.em ], [ 27, %bb.dy ], [ 27, %bb.dw ], [ 27, %bb.dv ], [ 27, %bb.dx ], [ 27, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351" ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr %.sink2008, ptr %i.y, align 8
  store i64 %.sink, ptr %.sroa.6157.0..sroa_idx158, align 8
  %i.ij = icmp eq i64 %i.av, 0
  br i1 %i.ij, label %.backedge685.backedge, label %bb.ez

bb.ez:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.backedge685.backedge

bb.fa:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.x
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body245

.body245:                                         ; preds = %bb.aa, %bb.fa
  %eh.lpad-body246 = phi { ptr, i32 } [ %i.ik, %bb.fa ], [ %i.bw, %bb.aa ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @296, ptr %i.y, align 8
  store i64 27, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

.thread595:                                       ; preds = %.thread611.loopexit, %.thread611.loopexit.split-lp, %.thread643, %.body363, %.body354, %.thread646, %.body271, %.body261, %.body245, %bb.bk
  %.pn220594 = phi { ptr, i32 } [ %i.dm, %bb.bk ], [ %eh.lpad-body246, %.body245 ], [ %lpad.loopexit.split-lp683, %.thread611.loopexit.split-lp ], [ %eh.lpad-body364, %.body363 ], [ %eh.lpad-body355, %.body354 ], [ %eh.lpad-body340, %.thread643 ], [ %.pn642, %.thread646 ], [ %eh.lpad-body272, %.body271 ], [ %eh.lpad-body262, %.body261 ], [ %lpad.loopexit682, %.thread611.loopexit ] ; 2 uses
  %i.il = icmp eq i64 %i.av, 0
  br i1 %i.il, label %.thread548, label %bb.fb

bb.fb:                                            ; preds = %.thread595
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.thread548

bb.fc:                                            ; preds = %bb.s
  switch i64 %.sroa.9.sroa.0.0.insert.insert474, label %bb.fe [
    i64 -9223372036854775807, label %bb.fd
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit"
  ]

bb.fd:                                            ; preds = %bb.fc
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.bh)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" unwind label %.thread558.loopexit

bb.fe:                                            ; preds = %bb.fc
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread548 unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.fe
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" unwind label %.thread558.loopexit

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit": ; preds = %bb.fc, %bb.fd, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge685.backedge

.backedge685.backedge:                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", %bb.ez, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", %bb.dm
  br label %.backedge685

bb.fh:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit"

bb.fi:                                            ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !7353)
  call void @llvm.experimental.noalias.scope.decl(metadata !7354)
  %i.io = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %.val1.i.i.i = load i64, ptr %i.io, align 8, !alias.scope !7355, !noundef !5 ; 2 uses
  %i.ip = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ip, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i", label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.iq = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %.val.i.i.i401 = load ptr, ptr %i.iq, align 16, !alias.scope !7355, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i401, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #29, !noalias !7355
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i": ; preds = %bb.fj, %bb.fi
  call void @llvm.experimental.noalias.scope.decl(metadata !7356)
  call void @llvm.experimental.noalias.scope.decl(metadata !7357)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !7358)
  call void @llvm.experimental.noalias.scope.decl(metadata !7359)
  %i.is = load i64, ptr %i.ir, align 32, !range !32, !alias.scope !7360, !noundef !5
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fk

bb.fk:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i"
  %i.iu = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.iu, align 16, !alias.scope !7360, !noundef !5 ; 2 uses
  %i.iv = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.iv, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.iw = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.iw, align 8, !alias.scope !7360, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i, i64 noundef 1) #29, !noalias !7360
  br label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit"

"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit": ; preds = %bb.fl, %bb.fk, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i", %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !7361)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.val1.i = load i64, ptr %i.ix, align 8, !alias.scope !7361, !noundef !5 ; 2 uses
  %i.iy = icmp eq i64 %.val1.i, 0
  br i1 %i.iy, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403", label %bb.fm

bb.fm:                                            ; preds = %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit"
  %i.iz = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.val.i402 = load ptr, ptr %i.iz, align 8, !alias.scope !7361, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i402, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #29, !noalias !7361
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403": ; preds = %bb.fm, %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit"
  %i.ja = load i64, ptr %i.q, align 8, !range !32, !alias.scope !7362, !noundef !5
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.jc, align 8 ; 2 uses
  %i.jd = icmp eq i64 %.val1.i.i.i.i.i, 0
  %or.cond2013.a = select i1 %i.jb, i1 true, i1 %i.jd
  br i1 %or.cond2013.a, label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415", label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split"

"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split": ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403", %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"
  %.val1.i.i.i.i.i.sink = phi i64 [ %.val1.i.i.i.i.i413, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412" ], [ %.val1.i.i.i.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403" ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.je, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.sink, i64 noundef 1) #29, !noalias !5
  br label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415"

"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415": ; preds = %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split", %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403", %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.body371:                                         ; preds = %bb.fn, %bb.ew, %.thread548
  %.pn225 = phi { ptr, i32 } [ %i.ig, %bb.ew ], [ %.pn223547, %.thread548 ], [ %i.jf, %bb.fn ]
  call fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E"(ptr noalias noundef align 32 dereferenceable(384) %i.p) #27
  call fastcc void @"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E"(ptr noalias noundef align 8 dereferenceable(120) %i.q) #27
  resume { ptr, i32 } %.pn225

bb.fn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368", %bb.et
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body371

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374": ; preds = %bb.eu, %bb.es, %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345", %bb.et, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !7363)
  %i.jg = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7363, !noundef !5
  %i.jh = icmp eq i64 %i.jg, 2
  br i1 %i.jh, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fo

bb.fo:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.experimental.noalias.scope.decl(metadata !7364)
  call void @llvm.experimental.noalias.scope.decl(metadata !7365)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %.val1.i.i.i404 = load i64, ptr %i.ji, align 8, !alias.scope !7366, !noundef !5 ; 2 uses
  %i.jj = icmp eq i64 %.val1.i.i.i404, 0
  br i1 %i.jj, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.jk = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %.val.i.i.i405 = load ptr, ptr %i.jk, align 16, !alias.scope !7366, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i405, i64 noundef range(i64 1, 0) %.val1.i.i.i404, i64 noundef 1) #29, !noalias !7366
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406": ; preds = %bb.fp, %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !7367)
  call void @llvm.experimental.noalias.scope.decl(metadata !7368)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !7369)
  call void @llvm.experimental.noalias.scope.decl(metadata !7370)
  %i.jm = load i64, ptr %i.jl, align 32, !range !32, !alias.scope !7371, !noundef !5
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fq

bb.fq:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"
  %i.jo = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %.val1.i.i.i.i.i.i.i407 = load i64, ptr %i.jo, align 16, !alias.scope !7371, !noundef !5 ; 2 uses
  %i.jp = icmp eq i64 %.val1.i.i.i.i.i.i.i407, 0
  br i1 %i.jp, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %.val.i.i.i.i.i.i.i408 = load ptr, ptr %i.jq, align 8, !alias.scope !7371, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i408, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i407, i64 noundef 1) #29, !noalias !7371
  br label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"

"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409": ; preds = %bb.fr, %bb.fq, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !7372)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.val1.i410 = load i64, ptr %i.jr, align 8, !alias.scope !7372, !noundef !5 ; 2 uses
  %i.js = icmp eq i64 %.val1.i410, 0
  br i1 %i.js, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412", label %bb.fs

bb.fs:                                            ; preds = %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.jt = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.val.i411 = load ptr, ptr %i.jt, align 8, !alias.scope !7372, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i411, i64 noundef range(i64 1, 0) %.val1.i410, i64 noundef 1) #29, !noalias !7372
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412": ; preds = %bb.fs, %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.ju = load i64, ptr %i.q, align 8, !range !32, !alias.scope !7373, !noundef !5
  %i.jv = icmp eq i64 %i.ju, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i.i.i.i413 = load i64, ptr %i.jw, align 8 ; 2 uses
  %i.jx = icmp eq i64 %.val1.i.i.i.i.i413, 0
  %or.cond2011 = select i1 %i.jv, i1 true, i1 %i.jx
  br i1 %or.cond2011, label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415", label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split"

.thread548:                                       ; preds = %.thread558.loopexit, %.thread558.loopexit.split-lp, %bb.fb, %.thread595, %bb.cr, %bb.af, %bb.ff, %bb.k, %bb.j
  %.pn223547 = phi { ptr, i32 } [ %i.im, %bb.ff ], [ %.pn220594, %.thread595 ], [ %i.ax, %bb.k ], [ %i.ax, %bb.j ], [ %lpad.thr_comm.split-lp610, %bb.af ], [ %i.fq, %bb.cr ], [ %.pn220594, %bb.fb ], [ %lpad.loopexit679, %.thread558.loopexit ], [ %lpad.loopexit.split-lp680, %.thread558.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #27
          to label %.body371 unwind label %bb.dd
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4spec22find_central_directory17h49732f9e6201aebdE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(32) %1, i64 noundef range(i64 0, 3) %2, i64 %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 32              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 4                ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [384 x i8], align 32              ; 4 uses
  %i.f = alloca [20 x i8], align 4                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [22 x i8], align 4                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 30 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 49 uses
  %i.p = alloca [384 x i8], align 32              ; 23 uses
  %i.q = alloca [120 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$3new17h957713491c851d7aE"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @286, i64 noundef 4, i64 noundef 0, i64 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 328 ; 5 uses
  store i64 2, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 -9223372036854775802, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.8.i.sroa.5.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.i.sroa.6.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %.sroa.8.i.sroa.7.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.18.5..sroa.410.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.17451.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.23.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.13.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 16 uses
  %.sroa.6157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  %i.z = icmp eq i64 %2, 2                        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 360 ; 2 uses
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.410.0..sroa_idx.i.i.i288 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i290 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.6.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %.sroa.15.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %.sroa.22.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %.sroa.24.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.26.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.27.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.28.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %.sroa.6201.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5537.sroa.4.0..sroa.5537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx543.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %.backedge685

.backedge685:                                     ; preds = %.backedge685.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$4next17h1b033de7eb517bc6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %.thread558.loopexit

.thread558.loopexit:                              ; preds = %bb.fd, %.backedge685, %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i", %bb.h, %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  %lpad.loopexit679 = landingpad { ptr, i32 }
          cleanup
  br label %.thread548

.thread558.loopexit.split-lp:                     ; preds = %bb.i
  %lpad.loopexit.split-lp680 = landingpad { ptr, i32 }
          cleanup
  br label %.thread548

bb.b:                                             ; preds = %.backedge685
  %i.ah = load i64, ptr %i.n, align 8, !range !45, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ah, -9223372036854775802
  %i.ai = load i64, ptr %i.s, align 8             ; 2 uses
  %i.aj = load i64, ptr %i.t, align 8             ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ak, align 8
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.288.0..sroa_idx, align 8
  %.sroa.389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aj, ptr %.sroa.389.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.d:                                             ; preds = %bb.b
  %i.al = trunc nuw i64 %i.ai to i1
  br i1 %i.al, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.h, i8 0, i64 22, i1 false), !alias.scope !7505, !noalias !7504
  %i.am = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.h, i64 noundef 22)
          to label %.noexc unwind label %.thread558.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  %.sroa.09.0.copyload.i.i = load i32, ptr %i.h, align 4, !noalias !7504
  %.not4.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i, 101010256
  br i1 %.not4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i = phi i64 [ 1, %.noexc ], [ 0, %bb.f ]
  %.sroa.18.0.ph.i = phi ptr [ %i.am, %.noexc ], [ @285, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7504
  %i.an = ptrtoint ptr %.sroa.18.0.ph.i to i64    ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc455 = trunc i64 %i.an to i24
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %.sroa.6.5.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i, align 4, !noalias !7506 ; 3 uses
  %.sroa.8.i.sroa.5.0.copyload = load i16, ptr %.sroa.8.i.sroa.5.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7506 ; 3 uses
  %.sroa.8.i.sroa.6.0.copyload = load i16, ptr %.sroa.8.i.sroa.6.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 2, !noalias !7506 ; 4 uses
  %.sroa.8.i.sroa.7.0.copyload = load i24, ptr %.sroa.8.i.sroa.7.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7506 ; 3 uses
  %.sroa.18.0.copyload.i = load i56, ptr %.sroa.18.5..sroa.410.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !7506 ; 4 uses
  %.sroa.18.0.insert.ext.i = zext i56 %.sroa.18.0.copyload.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7504
  %.sroa.18.5.extract.shift.i = lshr i64 %.sroa.18.0.insert.ext.i, 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7507
  call void @llvm.experimental.noalias.scope.decl(metadata !7508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7509
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef range(i64 0, -44) %.sroa.18.5.extract.shift.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc241 unwind label %.thread558.loopexit

.noexc241:                                        ; preds = %bb.h
  %i.ao = load i64, ptr %i.g, align 8, !range !32, !noalias !7509, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.u, align 8, !range !19, !noalias !7509, !noundef !5 ; 2 uses
  br i1 %i.ap, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i", !prof !11

bb.i:                                             ; preds = %.noexc241
  %i.ar = load i64, ptr %i.v, align 8, !noalias !7509
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.aq, i64 %i.ar) #26
          to label %.noexc242 unwind label %.thread558.loopexit.split-lp

.noexc242:                                        ; preds = %bb.i
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i": ; preds = %.noexc241
  %i.as = load ptr, ptr %i.v, align 8, !noalias !7509, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7509
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !7508, !noalias !7507
  store ptr %i.as, ptr %i.w, align 8, !alias.scope !7508, !noalias !7507
  store i64 %.sroa.18.5.extract.shift.i, ptr %i.x, align 8, !alias.scope !7508, !noalias !7507
  %i.at = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc243 unwind label %.thread558.loopexit ; 2 uses

.noexc243:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i"
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 11 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7507
  %i.aw = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.au, i64 noundef %i.av)
          to label %bb.l unwind label %bb.k, !noalias !7510 ; 4 uses

bb.j:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7510
  br label %.thread548

bb.k:                                             ; preds = %bb.n, %.noexc243
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %.thread548, label %bb.j

bb.l:                                             ; preds = %.noexc243
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr nonnull %i.aw), !noalias !7510
  %i.ba = icmp eq i8 %i.az, 37
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.aw)
          to label %bb.p unwind label %bb.k, !noalias !7510

bb.o:                                             ; preds = %bb.m
  %i.bb = ptrtoint ptr %i.aw to i64               ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc = trunc i64 %i.bb to i24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.9.sroa.0.0 = phi i64 [ 0, %bb.n ], [ 1, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.10.0.in.in = phi i64 [ ptrtoint (ptr @298 to i64), %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.0.0 = phi i24 [ ptrtoint (ptr @298 to i24), %bb.n ], [ %.sroa.17451.sroa.0.0.extract.trunc, %bb.o ] ; 2 uses
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7510
  br label %bb.s

bb.r:                                             ; preds = %bb.d
  %.sroa.070.0.copyload = load i64, ptr %i.o, align 8 ; 2 uses
  %.not212 = icmp eq i64 %.sroa.070.0.copyload, -9223372036854775802 ; 3 uses
  %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.572.sroa.4.0.copyload = load i64, ptr %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx, align 8
  %.sroa.572.sroa.0.0.copyload = load ptr, ptr %i.y, align 8
  %.sroa.576.sroa.5.0 = select i1 %.not212, i64 19, i64 %.sroa.572.sroa.4.0.copyload
  %.sroa.576.sroa.0.0 = select i1 %.not212, ptr @297, ptr %.sroa.572.sroa.0.0.copyload
  %.sroa.074.0 = select i1 %.not212, i64 -9223372036854775808, i64 %.sroa.070.0.copyload
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.074.0, ptr %i.bd, align 8
  %.sroa.576.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.576.sroa.0.0, ptr %.sroa.576.0..sroa_idx77, align 8
  %.sroa.576.sroa.5.0..sroa.576.0..sroa_idx77.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.576.sroa.5.0, ptr %.sroa.576.sroa.5.0..sroa.576.0..sroa_idx77.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !7511)
  %i.be = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7511, !noundef !5
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fi

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.g
  %.sroa.9.sroa.0.1.ph = phi i64 [ %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i, %bb.g ], [ %.sroa.9.sroa.0.0, %bb.q ], [ %.sroa.9.sroa.0.0, %bb.p ]
  %.sroa.17451.sroa.10.1.ph.in.in = phi i64 [ %i.an, %bb.g ], [ %.sroa.17451.sroa.10.0.in.in, %bb.q ], [ %.sroa.17451.sroa.10.0.in.in, %bb.p ]
  %.sroa.17451.sroa.0.1.ph = phi i24 [ %.sroa.17451.sroa.0.0.extract.trunc455, %bb.g ], [ %.sroa.17451.sroa.0.0, %bb.q ], [ %.sroa.17451.sroa.0.0, %bb.p ]
  %.sroa.23.1.ph = phi i64 [ 32, %bb.g ], [ 34, %bb.q ], [ 34, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.9.sroa.0.0.insert.insert474 = or i64 %.sroa.9.sroa.0.1.ph, -9223372036854775808 ; 2 uses
  store i64 %.sroa.9.sroa.0.0.insert.insert474, ptr %i.m, align 8
  %.sroa.17451.sroa.9.0.insert.insert459 = and i64 %.sroa.17451.sroa.10.1.ph.in.in, -16777216
  %.sroa.17451.sroa.0.0.insert.ext452 = zext i24 %.sroa.17451.sroa.0.1.ph to i64
  %.sroa.17451.sroa.0.0.insert.insert454 = or disjoint i64 %.sroa.17451.sroa.9.0.insert.insert459, %.sroa.17451.sroa.0.0.insert.ext452 ; 2 uses
  store i64 %.sroa.17451.sroa.0.0.insert.insert454, ptr %.sroa.17451.8..sroa_idx, align 8
  store i64 %.sroa.23.1.ph, ptr %.sroa.23.8..sroa_idx, align 8
  %i.bg = load i64, ptr %i.o, align 8, !range !45, !noundef !5
  %.not222 = icmp eq i64 %i.bg, -9223372036854775802
  %i.bh = inttoptr i64 %.sroa.17451.sroa.0.0.insert.insert454 to ptr
  br i1 %.not222, label %bb.fh, label %bb.fc

bb.t:                                             ; preds = %bb.l
  %i.bi = lshr i64 %.sroa.18.0.insert.ext.i, 8    ; 2 uses
  %.sroa.6.20.extract.trunc = trunc i64 %i.bi to i32 ; 4 uses
  %i.bj = add i64 %i.aj, 22
  %i.bk = add i64 %i.bj, %i.av
  %i.bl = icmp ugt i64 %i.bk, %5
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp ne i16 %.sroa.8.i.sroa.6.0.copyload, -1
  %i.bn = icmp ne i32 %.sroa.6.20.extract.trunc, -1
  %or.cond.not2435 = and i1 %i.bm, %i.bn
  %i.bo = icmp ult i64 %i.aj, 20
  %or.cond2432 = select i1 %or.cond.not2435, i1 true, i1 %i.bo
  br i1 %or.cond2432, label %.critedge, label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.bp = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7512, !noundef !5 ; 5 uses
  %i.bq = icmp eq i64 %i.bp, -9223372036854775802
  br i1 %i.bq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = icmp ne i64 %i.bp, -9223372036854775806
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nsw i64 %i.bp, 9223372036854775807
  %i.bt = icmp ugt i64 %i.bp, -9223372036854775808
  %i.bu = select i1 %i.bt, i64 %i.bs, i64 1
  switch i64 %i.bu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.x
    i64 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !7513, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.fa

bb.y:                                             ; preds = %bb.w
  %i.bv = icmp eq i64 %i.bp, -9223372036854775808
  br i1 %i.bv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body245 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %bb.z
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.fa

bb.ac:                                            ; preds = %bb.u
  %i.by = add i64 %i.aj, -20                      ; 5 uses
  %i.bz = invoke { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Seek$GT$4seek17h6654b42bc96c228bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.by)
          to label %.noexc248 unwind label %.thread611.loopexit ; 2 uses

.noexc248:                                        ; preds = %bb.ac
  %i.ca = extractvalue { i64, ptr } %i.bz, 0
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %.thread, label %bb.ad

.thread:                                          ; preds = %.noexc248
  %i.cc = extractvalue { i64, ptr } %i.bz, 1
  br label %bb.ah

bb.ad:                                            ; preds = %.noexc248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7514
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false), !alias.scope !7515, !noalias !7514
  %i.cd = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.f, i64 noundef 20)
          to label %.noexc249 unwind label %.thread611.loopexit ; 2 uses

.noexc249:                                        ; preds = %bb.ad
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.ae, label %.thread1584

.thread1584:                                      ; preds = %.noexc249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7514
  br label %bb.ah

bb.ae:                                            ; preds = %.noexc249
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.f, align 4, !noalias !7514
  %.not4.i.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i.i, 117853008
  br i1 %.not4.i.i.i, label %bb.ai, label %bb.ag

.thread611.loopexit:                              ; preds = %bb.ac, %bb.ad, %bb.du, %bb.ee, %bb.ef, %bb.as, %bb.ah, %bb.bc
  %lpad.loopexit682 = landingpad { ptr, i32 }
          cleanup
  br label %.thread595

.thread611.loopexit.split-lp:                     ; preds = %bb.bh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276"
  %lpad.loopexit.split-lp683 = landingpad { ptr, i32 }
          cleanup
  br label %.thread595

bb.af:                                            ; preds = %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316"
  %lpad.thr_comm.split-lp610 = landingpad { ptr, i32 }
          cleanup
  br label %.thread548

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7514
  br label %.critedge

bb.ah:                                            ; preds = %.thread1584, %.thread
  %.val.i.i2521580.ph = phi ptr [ %i.cd, %.thread1584 ], [ %i.cc, %.thread ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i2521580.ph)
          to label %.critedge unwind label %.thread611.loopexit

bb.ai:                                            ; preds = %bb.ae
  %.sroa.6.i.sroa.0.0.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i.i, align 4, !noalias !7516 ; 2 uses
  %.sroa.6.i.sroa.5.0.copyload.i = load i56, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 4, !noalias !7516
  %.sroa.13.0.copyload.i.i = load i40, ptr %.sroa.13.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7516 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7514
  %i.ce = and i40 %.sroa.13.0.copyload.i.i, 255
  %.sroa.7.sroa.7.0.insert.ext.i = zext nneg i40 %i.ce to i64
  %.sroa.7.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.7.sroa.7.0.insert.ext.i, 56
  %.sroa.7.sroa.0.0.insert.ext.i = zext i56 %.sroa.6.i.sroa.5.0.copyload.i to i64
  %.sroa.7.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.7.sroa.7.0.insert.shift.i, %.sroa.7.sroa.0.0.insert.ext.i ; 5 uses
  %.not216 = icmp ult i64 %.sroa.7.sroa.0.0.insert.insert.i, %i.by
  br i1 %.not216, label %bb.aj, label %bb.ak

.critedge:                                        ; preds = %bb.ah, %bb.ag, %bb.u
  %i.cf = and i64 %i.bi, 4294967295               ; 6 uses
  %i.cg = icmp eq i16 %.sroa.8.i.sroa.6.0.copyload, 0
  br i1 %i.cg, label %bb.dr, label %bb.ds

bb.aj:                                            ; preds = %bb.ai
  %i.ch = icmp ugt i40 %.sroa.13.0.copyload.i.i, 511
  br i1 %i.ch, label %bb.at, label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.ci = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7517, !noundef !5 ; 5 uses
  %i.cj = icmp eq i64 %i.ci, -9223372036854775802
  br i1 %i.cj, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = icmp ne i64 %i.ci, -9223372036854775806
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nsw i64 %i.ci, 9223372036854775807
  %i.cm = icmp ugt i64 %i.ci, -9223372036854775808
  %i.cn = select i1 %i.cm, i64 %i.cl, i64 1
  switch i64 %i.cn, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.am
    i64 1, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %.val.i.i259 = load ptr, ptr %i.y, align 8, !alias.scope !7518, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i259)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dq

bb.an:                                            ; preds = %bb.al
  %i.co = icmp eq i64 %i.ci, -9223372036854775808
  br i1 %i.co, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258" unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body261 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258": ; preds = %bb.ao
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dq

bb.ar:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !7519)
  %i.cr = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7519, !noundef !5
  %.not.i265 = icmp eq i64 %i.cr, 2
end_hunk_1
begin_hunk_2_@_ZN3zip4spec22find_central_directory17h49732f9e6201aebdE:bb.a
  %i.hi = load i64, ptr %i.l, align 8, !range !45, !noundef !5 ; 2 uses
  %.not214 = icmp eq i64 %i.hi, -9223372036854775802
  %.sroa.4127.0.copyload = load i64, ptr %.sroa.4127.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5128.0.copyload = load i64, ptr %.sroa.5128.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not214, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hi, ptr %i.hj, align 8
  %.sroa.2130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4127.0.copyload, ptr %.sroa.2130.0..sroa_idx, align 8
  %.sroa.3131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5128.0.copyload, ptr %.sroa.3131.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.dn

bb.ei:                                            ; preds = %bb.eg
  %i.hk = trunc nuw i64 %.sroa.4127.0.copyload to i1
  br i1 %i.hk, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.hl = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le1110 = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1110, 32
  %.sroa.23.28.insert.insert.le1101 = or disjoint i64 %.sroa.23.28.insert.shift.le, %i.hl
  %i.hm = shl i56 %.sroa.18.0.copyload.i, 24
  %i.hn = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le1090 = or disjoint i56 %i.hm, %i.hn
  %.sroa.6.16.extract.trunc.le = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le1090 to i32
  %.sroa.9.24.extract.trunc.le = trunc nuw i64 %.sroa.23.28.insert.insert.le1101 to i48
  %i.ho = sub i64 %.sroa.5128.0.copyload, %i.cf
  store ptr %i.au, ptr %0, align 8
  %.sroa.040.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.040.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le, ptr %.sroa.040.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.040.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.040.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.040.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le, ptr %.sroa.040.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.040.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.040.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ho, ptr %.sroa.541.0..sroa_idx, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.ek:                                            ; preds = %bb.ei
  %i.hp = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7543, !noundef !5 ; 5 uses
  %i.hq = icmp eq i64 %i.hp, -9223372036854775802
  br i1 %i.hq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.hr = icmp ne i64 %i.hp, -9223372036854775806
  call void @llvm.assume(i1 %i.hr)
  %i.hs = add nsw i64 %i.hp, 9223372036854775807
  %i.ht = icmp ugt i64 %i.hp, -9223372036854775808
  %i.hu = select i1 %i.ht, i64 %i.hs, i64 1
  switch i64 %i.hu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.em
    i64 1, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %.val.i.i361 = load ptr, ptr %i.y, align 8, !alias.scope !7544, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i361)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.en:                                            ; preds = %bb.el
  %i.hv = icmp eq i64 %i.hp, -9223372036854775808
  br i1 %i.hv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body363 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360": ; preds = %bb.eo
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.er:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360", %bb.em
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body363

.body363:                                         ; preds = %bb.ep, %bb.er
  %eh.lpad-body364 = phi { ptr, i32 } [ %i.hy, %bb.er ], [ %i.hw, %bb.ep ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @294, ptr %i.y, align 8
  store i64 13, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345": ; preds = %bb.do, %bb.dn, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", %bb.dr, %bb.ej, %bb.c
  %i.hz = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7545, !noundef !5 ; 5 uses
  %i.ia = icmp eq i64 %i.hz, -9223372036854775802
  br i1 %i.ia, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.es

bb.es:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"
  %i.ib = icmp ne i64 %i.hz, -9223372036854775806
  call void @llvm.assume(i1 %i.ib)
  %i.ic = add nsw i64 %i.hz, 9223372036854775807
  %i.id = icmp ugt i64 %i.hz, -9223372036854775808
  %i.ie = select i1 %i.id, i64 %i.ic, i64 1
  switch i64 %i.ie, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" [
    i64 0, label %bb.et
    i64 1, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %.val.i.i369 = load ptr, ptr %i.y, align 8, !alias.scope !7546, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i369)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fn

bb.eu:                                            ; preds = %bb.es
  %i.if = icmp eq i64 %i.hz, -9223372036854775808
  br i1 %i.if, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368" unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body371 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368": ; preds = %bb.ev
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fn

bb.ey:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351", %bb.dx
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body354

.body354:                                         ; preds = %bb.ea, %bb.ey
  %eh.lpad-body355 = phi { ptr, i32 } [ %i.ii, %bb.ey ], [ %i.he, %bb.ea ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @295, ptr %i.y, align 8
  store i64 27, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351", %bb.dx, %bb.dv, %bb.dw, %bb.dy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360", %bb.em, %bb.ek, %bb.el, %bb.en, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258", %bb.am, %bb.ak, %bb.al, %bb.an, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268", %bb.av, %bb.at, %bb.au, %bb.aw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.x, %bb.v, %bb.w, %bb.y
  %.sink2008 = phi ptr [ @292, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258" ], [ @294, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" ], [ @291, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268" ], [ @296, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" ], [ @296, %bb.y ], [ @296, %bb.w ], [ @296, %bb.v ], [ @296, %bb.x ], [ @291, %bb.aw ], [ @291, %bb.au ], [ @291, %bb.at ], [ @291, %bb.av ], [ @292, %bb.an ], [ @292, %bb.al ], [ @292, %bb.ak ], [ @292, %bb.am ], [ @294, %bb.en ], [ @294, %bb.el ], [ @294, %bb.ek ], [ @294, %bb.em ], [ @295, %bb.dy ], [ @295, %bb.dw ], [ @295, %bb.dv ], [ @295, %bb.dx ], [ @295, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351" ]
  %.sink = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258" ], [ 13, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" ], [ 38, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268" ], [ 27, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" ], [ 27, %bb.y ], [ 27, %bb.w ], [ 27, %bb.v ], [ 27, %bb.x ], [ 38, %bb.aw ], [ 38, %bb.au ], [ 38, %bb.at ], [ 38, %bb.av ], [ 32, %bb.an ], [ 32, %bb.al ], [ 32, %bb.ak ], [ 32, %bb.am ], [ 13, %bb.en ], [ 13, %bb.el ], [ 13, %bb.ek ], [ 13, %bb.em ], [ 27, %bb.dy ], [ 27, %bb.dw ], [ 27, %bb.dv ], [ 27, %bb.dx ], [ 27, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351" ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr %.sink2008, ptr %i.y, align 8
  store i64 %.sink, ptr %.sroa.6157.0..sroa_idx158, align 8
  %i.ij = icmp eq i64 %i.av, 0
  br i1 %i.ij, label %.backedge685.backedge, label %bb.ez

bb.ez:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.backedge685.backedge

bb.fa:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.x
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body245

.body245:                                         ; preds = %bb.aa, %bb.fa
  %eh.lpad-body246 = phi { ptr, i32 } [ %i.ik, %bb.fa ], [ %i.bw, %bb.aa ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @296, ptr %i.y, align 8
  store i64 27, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

.thread595:                                       ; preds = %.thread611.loopexit, %.thread611.loopexit.split-lp, %.thread643, %.body363, %.body354, %.thread646, %.body271, %.body261, %.body245, %bb.bk
  %.pn220594 = phi { ptr, i32 } [ %i.dm, %bb.bk ], [ %eh.lpad-body246, %.body245 ], [ %lpad.loopexit.split-lp683, %.thread611.loopexit.split-lp ], [ %eh.lpad-body364, %.body363 ], [ %eh.lpad-body355, %.body354 ], [ %eh.lpad-body340, %.thread643 ], [ %.pn642, %.thread646 ], [ %eh.lpad-body272, %.body271 ], [ %eh.lpad-body262, %.body261 ], [ %lpad.loopexit682, %.thread611.loopexit ] ; 2 uses
  %i.il = icmp eq i64 %i.av, 0
  br i1 %i.il, label %.thread548, label %bb.fb

bb.fb:                                            ; preds = %.thread595
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.thread548

bb.fc:                                            ; preds = %bb.s
  switch i64 %.sroa.9.sroa.0.0.insert.insert474, label %bb.fe [
    i64 -9223372036854775807, label %bb.fd
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit"
  ]

bb.fd:                                            ; preds = %bb.fc
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.bh)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" unwind label %.thread558.loopexit

bb.fe:                                            ; preds = %bb.fc
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread548 unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.fe
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" unwind label %.thread558.loopexit

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit": ; preds = %bb.fc, %bb.fd, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge685.backedge

.backedge685.backedge:                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", %bb.ez, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", %bb.dm
  br label %.backedge685

bb.fh:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit"

bb.fi:                                            ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !7547)
  call void @llvm.experimental.noalias.scope.decl(metadata !7548)
  %i.io = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %.val1.i.i.i = load i64, ptr %i.io, align 8, !alias.scope !7549, !noundef !5 ; 2 uses
  %i.ip = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ip, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i", label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.iq = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %.val.i.i.i401 = load ptr, ptr %i.iq, align 16, !alias.scope !7549, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i401, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #29, !noalias !7549
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i": ; preds = %bb.fj, %bb.fi
  call void @llvm.experimental.noalias.scope.decl(metadata !7550)
  call void @llvm.experimental.noalias.scope.decl(metadata !7551)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !7552)
  call void @llvm.experimental.noalias.scope.decl(metadata !7553)
  %i.is = load i64, ptr %i.ir, align 32, !range !32, !alias.scope !7554, !noundef !5
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fk

bb.fk:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i"
  %i.iu = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.iu, align 16, !alias.scope !7554, !noundef !5 ; 2 uses
  %i.iv = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.iv, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.iw = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.iw, align 8, !alias.scope !7554, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i, i64 noundef 1) #29, !noalias !7554
  br label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit"

"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit": ; preds = %bb.fl, %bb.fk, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i", %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !7555)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.val1.i = load i64, ptr %i.ix, align 8, !alias.scope !7555, !noundef !5 ; 2 uses
  %i.iy = icmp eq i64 %.val1.i, 0
  br i1 %i.iy, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403", label %bb.fm

bb.fm:                                            ; preds = %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit"
  %i.iz = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.val.i402 = load ptr, ptr %i.iz, align 8, !alias.scope !7555, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i402, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #29, !noalias !7555
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403": ; preds = %bb.fm, %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit"
  %i.ja = load i64, ptr %i.q, align 8, !range !32, !alias.scope !7556, !noundef !5
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.jc, align 8 ; 2 uses
  %i.jd = icmp eq i64 %.val1.i.i.i.i.i, 0
  %or.cond2013.a = select i1 %i.jb, i1 true, i1 %i.jd
  br i1 %or.cond2013.a, label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415", label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split"

"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split": ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403", %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"
  %.val1.i.i.i.i.i.sink = phi i64 [ %.val1.i.i.i.i.i413, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412" ], [ %.val1.i.i.i.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403" ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.je, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.sink, i64 noundef 1) #29, !noalias !5
  br label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415"

"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415": ; preds = %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split", %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403", %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.body371:                                         ; preds = %bb.fn, %bb.ew, %.thread548
  %.pn225 = phi { ptr, i32 } [ %i.ig, %bb.ew ], [ %.pn223547, %.thread548 ], [ %i.jf, %bb.fn ]
  call fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E"(ptr noalias noundef align 32 dereferenceable(384) %i.p) #27
  call fastcc void @"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E"(ptr noalias noundef align 8 dereferenceable(120) %i.q) #27
  resume { ptr, i32 } %.pn225

bb.fn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368", %bb.et
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body371

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374": ; preds = %bb.eu, %bb.es, %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345", %bb.et, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !7557)
  %i.jg = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7557, !noundef !5
  %i.jh = icmp eq i64 %i.jg, 2
  br i1 %i.jh, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fo

bb.fo:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.experimental.noalias.scope.decl(metadata !7558)
  call void @llvm.experimental.noalias.scope.decl(metadata !7559)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %.val1.i.i.i404 = load i64, ptr %i.ji, align 8, !alias.scope !7560, !noundef !5 ; 2 uses
  %i.jj = icmp eq i64 %.val1.i.i.i404, 0
  br i1 %i.jj, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.jk = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %.val.i.i.i405 = load ptr, ptr %i.jk, align 16, !alias.scope !7560, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i405, i64 noundef range(i64 1, 0) %.val1.i.i.i404, i64 noundef 1) #29, !noalias !7560
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406": ; preds = %bb.fp, %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !7561)
  call void @llvm.experimental.noalias.scope.decl(metadata !7562)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !7563)
  call void @llvm.experimental.noalias.scope.decl(metadata !7564)
  %i.jm = load i64, ptr %i.jl, align 32, !range !32, !alias.scope !7565, !noundef !5
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fq

bb.fq:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"
  %i.jo = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %.val1.i.i.i.i.i.i.i407 = load i64, ptr %i.jo, align 16, !alias.scope !7565, !noundef !5 ; 2 uses
  %i.jp = icmp eq i64 %.val1.i.i.i.i.i.i.i407, 0
  br i1 %i.jp, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %.val.i.i.i.i.i.i.i408 = load ptr, ptr %i.jq, align 8, !alias.scope !7565, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i408, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i407, i64 noundef 1) #29, !noalias !7565
  br label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"

"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409": ; preds = %bb.fr, %bb.fq, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !7566)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.val1.i410 = load i64, ptr %i.jr, align 8, !alias.scope !7566, !noundef !5 ; 2 uses
  %i.js = icmp eq i64 %.val1.i410, 0
  br i1 %i.js, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412", label %bb.fs

bb.fs:                                            ; preds = %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.jt = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.val.i411 = load ptr, ptr %i.jt, align 8, !alias.scope !7566, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i411, i64 noundef range(i64 1, 0) %.val1.i410, i64 noundef 1) #29, !noalias !7566
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412": ; preds = %bb.fs, %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.ju = load i64, ptr %i.q, align 8, !range !32, !alias.scope !7567, !noundef !5
  %i.jv = icmp eq i64 %i.ju, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i.i.i.i413 = load i64, ptr %i.jw, align 8 ; 2 uses
  %i.jx = icmp eq i64 %.val1.i.i.i.i.i413, 0
  %or.cond2011 = select i1 %i.jv, i1 true, i1 %i.jx
  br i1 %or.cond2011, label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415", label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split"

.thread548:                                       ; preds = %.thread558.loopexit, %.thread558.loopexit.split-lp, %bb.fb, %.thread595, %bb.cr, %bb.af, %bb.ff, %bb.k, %bb.j
  %.pn223547 = phi { ptr, i32 } [ %i.im, %bb.ff ], [ %.pn220594, %.thread595 ], [ %i.ax, %bb.k ], [ %i.ax, %bb.j ], [ %lpad.thr_comm.split-lp610, %bb.af ], [ %i.fq, %bb.cr ], [ %.pn220594, %bb.fb ], [ %lpad.loopexit679, %.thread558.loopexit ], [ %lpad.loopexit.split-lp680, %.thread558.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #27
          to label %.body371 unwind label %bb.dd
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4spec22find_central_directory17hb3bc14935b41b74aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 4 dereferenceable(4) %1, i64 noundef range(i64 0, 3) %2, i64 %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 32              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 4                ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [384 x i8], align 32              ; 4 uses
  %i.f = alloca [20 x i8], align 4                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [22 x i8], align 4                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 30 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 49 uses
  %i.p = alloca [384 x i8], align 32              ; 23 uses
  %i.q = alloca [120 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$3new17h957713491c851d7aE"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @286, i64 noundef 4, i64 noundef 0, i64 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 328 ; 5 uses
  store i64 2, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 -9223372036854775802, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.8.i.sroa.5.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.i.sroa.6.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %.sroa.8.i.sroa.7.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.18.5..sroa.410.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.17451.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.23.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.13.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 16 uses
  %.sroa.6157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  %i.z = icmp eq i64 %2, 2                        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 360 ; 2 uses
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.410.0..sroa_idx.i.i.i288 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i290 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.6.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %.sroa.15.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %.sroa.22.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %.sroa.24.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.26.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.27.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.28.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %.sroa.6201.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5537.sroa.4.0..sroa.5537.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx543.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %.backedge685

.backedge685:                                     ; preds = %.backedge685.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$4next17h515a286807336f8cE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.q, ptr noalias noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %.thread558.loopexit

.thread558.loopexit:                              ; preds = %bb.fd, %.backedge685, %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i", %bb.h, %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  %lpad.loopexit679 = landingpad { ptr, i32 }
          cleanup
  br label %.thread548

.thread558.loopexit.split-lp:                     ; preds = %bb.i
  %lpad.loopexit.split-lp680 = landingpad { ptr, i32 }
          cleanup
  br label %.thread548

bb.b:                                             ; preds = %.backedge685
  %i.ah = load i64, ptr %i.n, align 8, !range !45, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ah, -9223372036854775802
  %i.ai = load i64, ptr %i.s, align 8             ; 2 uses
  %i.aj = load i64, ptr %i.t, align 8             ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ak, align 8
  %.sroa.288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.288.0..sroa_idx, align 8
  %.sroa.389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aj, ptr %.sroa.389.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.d:                                             ; preds = %bb.b
  %i.al = trunc nuw i64 %i.ai to i1
  br i1 %i.al, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7698
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.h, i8 0, i64 22, i1 false), !alias.scope !7699, !noalias !7698
  %i.am = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.h, i64 noundef 22)
          to label %.noexc unwind label %.thread558.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  %.sroa.09.0.copyload.i.i = load i32, ptr %i.h, align 4, !noalias !7698
  %.not4.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i, 101010256
  br i1 %.not4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i = phi i64 [ 1, %.noexc ], [ 0, %bb.f ]
  %.sroa.18.0.ph.i = phi ptr [ %i.am, %.noexc ], [ @285, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7698
  %i.an = ptrtoint ptr %.sroa.18.0.ph.i to i64    ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc455 = trunc i64 %i.an to i24
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %.sroa.6.5.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i, align 4, !noalias !7700 ; 3 uses
  %.sroa.8.i.sroa.5.0.copyload = load i16, ptr %.sroa.8.i.sroa.5.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7700 ; 3 uses
  %.sroa.8.i.sroa.6.0.copyload = load i16, ptr %.sroa.8.i.sroa.6.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 2, !noalias !7700 ; 4 uses
  %.sroa.8.i.sroa.7.0.copyload = load i24, ptr %.sroa.8.i.sroa.7.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7700 ; 3 uses
  %.sroa.18.0.copyload.i = load i56, ptr %.sroa.18.5..sroa.410.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !7700 ; 4 uses
  %.sroa.18.0.insert.ext.i = zext i56 %.sroa.18.0.copyload.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7698
  %.sroa.18.5.extract.shift.i = lshr i64 %.sroa.18.0.insert.ext.i, 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7701
  call void @llvm.experimental.noalias.scope.decl(metadata !7702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7703
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef range(i64 0, -44) %.sroa.18.5.extract.shift.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc241 unwind label %.thread558.loopexit

.noexc241:                                        ; preds = %bb.h
  %i.ao = load i64, ptr %i.g, align 8, !range !32, !noalias !7703, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.u, align 8, !range !19, !noalias !7703, !noundef !5 ; 2 uses
  br i1 %i.ap, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i", !prof !11

bb.i:                                             ; preds = %.noexc241
  %i.ar = load i64, ptr %i.v, align 8, !noalias !7703
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.aq, i64 %i.ar) #26
          to label %.noexc242 unwind label %.thread558.loopexit.split-lp

.noexc242:                                        ; preds = %bb.i
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i": ; preds = %.noexc241
  %i.as = load ptr, ptr %i.v, align 8, !noalias !7703, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7703
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !7702, !noalias !7701
  store ptr %i.as, ptr %i.w, align 8, !alias.scope !7702, !noalias !7701
  store i64 %.sroa.18.5.extract.shift.i, ptr %i.x, align 8, !alias.scope !7702, !noalias !7701
  %i.at = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc243 unwind label %.thread558.loopexit ; 2 uses

.noexc243:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i"
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 11 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7701
  %i.aw = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.au, i64 noundef %i.av)
          to label %bb.l unwind label %bb.k, !noalias !7704 ; 4 uses

bb.j:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7704
  br label %.thread548

bb.k:                                             ; preds = %bb.n, %.noexc243
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %.thread548, label %bb.j

bb.l:                                             ; preds = %.noexc243
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr nonnull %i.aw), !noalias !7704
  %i.ba = icmp eq i8 %i.az, 37
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.aw)
          to label %bb.p unwind label %bb.k, !noalias !7704

bb.o:                                             ; preds = %bb.m
  %i.bb = ptrtoint ptr %i.aw to i64               ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc = trunc i64 %i.bb to i24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.9.sroa.0.0 = phi i64 [ 0, %bb.n ], [ 1, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.10.0.in.in = phi i64 [ ptrtoint (ptr @298 to i64), %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.0.0 = phi i24 [ ptrtoint (ptr @298 to i24), %bb.n ], [ %.sroa.17451.sroa.0.0.extract.trunc, %bb.o ] ; 2 uses
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7704
  br label %bb.s

bb.r:                                             ; preds = %bb.d
  %.sroa.070.0.copyload = load i64, ptr %i.o, align 8 ; 2 uses
  %.not212 = icmp eq i64 %.sroa.070.0.copyload, -9223372036854775802 ; 3 uses
  %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.572.sroa.4.0.copyload = load i64, ptr %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx, align 8
  %.sroa.572.sroa.0.0.copyload = load ptr, ptr %i.y, align 8
  %.sroa.576.sroa.5.0 = select i1 %.not212, i64 19, i64 %.sroa.572.sroa.4.0.copyload
  %.sroa.576.sroa.0.0 = select i1 %.not212, ptr @297, ptr %.sroa.572.sroa.0.0.copyload
  %.sroa.074.0 = select i1 %.not212, i64 -9223372036854775808, i64 %.sroa.070.0.copyload
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.074.0, ptr %i.bd, align 8
  %.sroa.576.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.576.sroa.0.0, ptr %.sroa.576.0..sroa_idx77, align 8
  %.sroa.576.sroa.5.0..sroa.576.0..sroa_idx77.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.576.sroa.5.0, ptr %.sroa.576.sroa.5.0..sroa.576.0..sroa_idx77.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !7705)
  %i.be = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7705, !noundef !5
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fi

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.g
  %.sroa.9.sroa.0.1.ph = phi i64 [ %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i, %bb.g ], [ %.sroa.9.sroa.0.0, %bb.q ], [ %.sroa.9.sroa.0.0, %bb.p ]
  %.sroa.17451.sroa.10.1.ph.in.in = phi i64 [ %i.an, %bb.g ], [ %.sroa.17451.sroa.10.0.in.in, %bb.q ], [ %.sroa.17451.sroa.10.0.in.in, %bb.p ]
  %.sroa.17451.sroa.0.1.ph = phi i24 [ %.sroa.17451.sroa.0.0.extract.trunc455, %bb.g ], [ %.sroa.17451.sroa.0.0, %bb.q ], [ %.sroa.17451.sroa.0.0, %bb.p ]
  %.sroa.23.1.ph = phi i64 [ 32, %bb.g ], [ 34, %bb.q ], [ 34, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.9.sroa.0.0.insert.insert474 = or i64 %.sroa.9.sroa.0.1.ph, -9223372036854775808 ; 2 uses
  store i64 %.sroa.9.sroa.0.0.insert.insert474, ptr %i.m, align 8
  %.sroa.17451.sroa.9.0.insert.insert459 = and i64 %.sroa.17451.sroa.10.1.ph.in.in, -16777216
  %.sroa.17451.sroa.0.0.insert.ext452 = zext i24 %.sroa.17451.sroa.0.1.ph to i64
  %.sroa.17451.sroa.0.0.insert.insert454 = or disjoint i64 %.sroa.17451.sroa.9.0.insert.insert459, %.sroa.17451.sroa.0.0.insert.ext452 ; 2 uses
  store i64 %.sroa.17451.sroa.0.0.insert.insert454, ptr %.sroa.17451.8..sroa_idx, align 8
  store i64 %.sroa.23.1.ph, ptr %.sroa.23.8..sroa_idx, align 8
  %i.bg = load i64, ptr %i.o, align 8, !range !45, !noundef !5
  %.not222 = icmp eq i64 %i.bg, -9223372036854775802
  %i.bh = inttoptr i64 %.sroa.17451.sroa.0.0.insert.insert454 to ptr
  br i1 %.not222, label %bb.fh, label %bb.fc

bb.t:                                             ; preds = %bb.l
  %i.bi = lshr i64 %.sroa.18.0.insert.ext.i, 8    ; 2 uses
  %.sroa.6.20.extract.trunc = trunc i64 %i.bi to i32 ; 4 uses
  %i.bj = add i64 %i.aj, 22
  %i.bk = add i64 %i.bj, %i.av
  %i.bl = icmp ugt i64 %i.bk, %5
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp ne i16 %.sroa.8.i.sroa.6.0.copyload, -1
  %i.bn = icmp ne i32 %.sroa.6.20.extract.trunc, -1
  %or.cond.not2435 = and i1 %i.bm, %i.bn
  %i.bo = icmp ult i64 %i.aj, 20
  %or.cond2432 = select i1 %or.cond.not2435, i1 true, i1 %i.bo
  br i1 %or.cond2432, label %.critedge, label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.bp = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7706, !noundef !5 ; 5 uses
  %i.bq = icmp eq i64 %i.bp, -9223372036854775802
  br i1 %i.bq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = icmp ne i64 %i.bp, -9223372036854775806
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nsw i64 %i.bp, 9223372036854775807
  %i.bt = icmp ugt i64 %i.bp, -9223372036854775808
  %i.bu = select i1 %i.bt, i64 %i.bs, i64 1
  switch i64 %i.bu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.x
    i64 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !7707, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.fa

bb.y:                                             ; preds = %bb.w
  %i.bv = icmp eq i64 %i.bp, -9223372036854775808
  br i1 %i.bv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body245 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %bb.z
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.fa

bb.ac:                                            ; preds = %bb.u
  %i.by = add i64 %i.aj, -20                      ; 5 uses
  %i.bz = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17hb97dd089350561d0E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, i64 noundef 0, i64 noundef %i.by)
          to label %.noexc248 unwind label %.thread611.loopexit ; 2 uses

.noexc248:                                        ; preds = %bb.ac
  %i.ca = extractvalue { i64, ptr } %i.bz, 0
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %.thread, label %bb.ad

.thread:                                          ; preds = %.noexc248
  %i.cc = extractvalue { i64, ptr } %i.bz, 1
  br label %bb.ah

bb.ad:                                            ; preds = %.noexc248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7708
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false), !alias.scope !7709, !noalias !7708
  %i.cd = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.f, i64 noundef 20)
          to label %.noexc249 unwind label %.thread611.loopexit ; 2 uses

.noexc249:                                        ; preds = %bb.ad
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.ae, label %.thread1584

.thread1584:                                      ; preds = %.noexc249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7708
  br label %bb.ah

bb.ae:                                            ; preds = %.noexc249
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.f, align 4, !noalias !7708
  %.not4.i.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i.i, 117853008
  br i1 %.not4.i.i.i, label %bb.ai, label %bb.ag

.thread611.loopexit:                              ; preds = %bb.ac, %bb.ad, %bb.du, %bb.ee, %bb.ef, %bb.as, %bb.ah, %bb.bc
  %lpad.loopexit682 = landingpad { ptr, i32 }
          cleanup
  br label %.thread595

.thread611.loopexit.split-lp:                     ; preds = %bb.bh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276"
  %lpad.loopexit.split-lp683 = landingpad { ptr, i32 }
          cleanup
  br label %.thread595

bb.af:                                            ; preds = %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316"
  %lpad.thr_comm.split-lp610 = landingpad { ptr, i32 }
          cleanup
  br label %.thread548

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7708
  br label %.critedge

bb.ah:                                            ; preds = %.thread1584, %.thread
  %.val.i.i2521580.ph = phi ptr [ %i.cd, %.thread1584 ], [ %i.cc, %.thread ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i2521580.ph)
          to label %.critedge unwind label %.thread611.loopexit

bb.ai:                                            ; preds = %bb.ae
  %.sroa.6.i.sroa.0.0.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i.i, align 4, !noalias !7710 ; 2 uses
  %.sroa.6.i.sroa.5.0.copyload.i = load i56, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 4, !noalias !7710
  %.sroa.13.0.copyload.i.i = load i40, ptr %.sroa.13.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7710 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7708
  %i.ce = and i40 %.sroa.13.0.copyload.i.i, 255
  %.sroa.7.sroa.7.0.insert.ext.i = zext nneg i40 %i.ce to i64
  %.sroa.7.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.7.sroa.7.0.insert.ext.i, 56
  %.sroa.7.sroa.0.0.insert.ext.i = zext i56 %.sroa.6.i.sroa.5.0.copyload.i to i64
  %.sroa.7.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.7.sroa.7.0.insert.shift.i, %.sroa.7.sroa.0.0.insert.ext.i ; 5 uses
  %.not216 = icmp ult i64 %.sroa.7.sroa.0.0.insert.insert.i, %i.by
  br i1 %.not216, label %bb.aj, label %bb.ak

.critedge:                                        ; preds = %bb.ah, %bb.ag, %bb.u
  %i.cf = and i64 %i.bi, 4294967295               ; 6 uses
  %i.cg = icmp eq i16 %.sroa.8.i.sroa.6.0.copyload, 0
  br i1 %i.cg, label %bb.dr, label %bb.ds

bb.aj:                                            ; preds = %bb.ai
  %i.ch = icmp ugt i40 %.sroa.13.0.copyload.i.i, 511
  br i1 %i.ch, label %bb.at, label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.ci = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7711, !noundef !5 ; 5 uses
  %i.cj = icmp eq i64 %i.ci, -9223372036854775802
  br i1 %i.cj, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = icmp ne i64 %i.ci, -9223372036854775806
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nsw i64 %i.ci, 9223372036854775807
  %i.cm = icmp ugt i64 %i.ci, -9223372036854775808
  %i.cn = select i1 %i.cm, i64 %i.cl, i64 1
  switch i64 %i.cn, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.am
    i64 1, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %.val.i.i259 = load ptr, ptr %i.y, align 8, !alias.scope !7712, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i259)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dq

bb.an:                                            ; preds = %bb.al
  %i.co = icmp eq i64 %i.ci, -9223372036854775808
  br i1 %i.co, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258" unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body261 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258": ; preds = %bb.ao
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.dq

bb.ar:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !7713)
  %i.cr = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7713, !noundef !5
  %.not.i265 = icmp eq i64 %i.cr, 2
end_hunk_2
begin_hunk_3_@_ZN3zip4spec22find_central_directory17hb3bc14935b41b74aE:bb.a
  %i.hi = load i64, ptr %i.l, align 8, !range !45, !noundef !5 ; 2 uses
  %.not214 = icmp eq i64 %i.hi, -9223372036854775802
  %.sroa.4127.0.copyload = load i64, ptr %.sroa.4127.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5128.0.copyload = load i64, ptr %.sroa.5128.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not214, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hi, ptr %i.hj, align 8
  %.sroa.2130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4127.0.copyload, ptr %.sroa.2130.0..sroa_idx, align 8
  %.sroa.3131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5128.0.copyload, ptr %.sroa.3131.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.dn

bb.ei:                                            ; preds = %bb.eg
  %i.hk = trunc nuw i64 %.sroa.4127.0.copyload to i1
  br i1 %i.hk, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.hl = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le1110 = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1110, 32
  %.sroa.23.28.insert.insert.le1101 = or disjoint i64 %.sroa.23.28.insert.shift.le, %i.hl
  %i.hm = shl i56 %.sroa.18.0.copyload.i, 24
  %i.hn = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le1090 = or disjoint i56 %i.hm, %i.hn
  %.sroa.6.16.extract.trunc.le = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le1090 to i32
  %.sroa.9.24.extract.trunc.le = trunc nuw i64 %.sroa.23.28.insert.insert.le1101 to i48
  %i.ho = sub i64 %.sroa.5128.0.copyload, %i.cf
  store ptr %i.au, ptr %0, align 8
  %.sroa.040.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.040.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le, ptr %.sroa.040.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.040.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.040.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.040.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le, ptr %.sroa.040.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.040.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.040.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ho, ptr %.sroa.541.0..sroa_idx, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.ek:                                            ; preds = %bb.ei
  %i.hp = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7737, !noundef !5 ; 5 uses
  %i.hq = icmp eq i64 %i.hp, -9223372036854775802
  br i1 %i.hq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.hr = icmp ne i64 %i.hp, -9223372036854775806
  call void @llvm.assume(i1 %i.hr)
  %i.hs = add nsw i64 %i.hp, 9223372036854775807
  %i.ht = icmp ugt i64 %i.hp, -9223372036854775808
  %i.hu = select i1 %i.ht, i64 %i.hs, i64 1
  switch i64 %i.hu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.em
    i64 1, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %.val.i.i361 = load ptr, ptr %i.y, align 8, !alias.scope !7738, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i361)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.en:                                            ; preds = %bb.el
  %i.hv = icmp eq i64 %i.hp, -9223372036854775808
  br i1 %i.hv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body363 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360": ; preds = %bb.eo
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.er:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360", %bb.em
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body363

.body363:                                         ; preds = %bb.ep, %bb.er
  %eh.lpad-body364 = phi { ptr, i32 } [ %i.hy, %bb.er ], [ %i.hw, %bb.ep ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @294, ptr %i.y, align 8
  store i64 13, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345": ; preds = %bb.do, %bb.dn, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", %bb.dr, %bb.ej, %bb.c
  %i.hz = load i64, ptr %i.o, align 8, !range !45, !alias.scope !7739, !noundef !5 ; 5 uses
  %i.ia = icmp eq i64 %i.hz, -9223372036854775802
  br i1 %i.ia, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.es

bb.es:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"
  %i.ib = icmp ne i64 %i.hz, -9223372036854775806
  call void @llvm.assume(i1 %i.ib)
  %i.ic = add nsw i64 %i.hz, 9223372036854775807
  %i.id = icmp ugt i64 %i.hz, -9223372036854775808
  %i.ie = select i1 %i.id, i64 %i.ic, i64 1
  switch i64 %i.ie, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" [
    i64 0, label %bb.et
    i64 1, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %.val.i.i369 = load ptr, ptr %i.y, align 8, !alias.scope !7740, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i369)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fn

bb.eu:                                            ; preds = %bb.es
  %i.if = icmp eq i64 %i.hz, -9223372036854775808
  br i1 %i.if, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368" unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body371 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368": ; preds = %bb.ev
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fn

bb.ey:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351", %bb.dx
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body354

.body354:                                         ; preds = %bb.ea, %bb.ey
  %eh.lpad-body355 = phi { ptr, i32 } [ %i.ii, %bb.ey ], [ %i.he, %bb.ea ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @295, ptr %i.y, align 8
  store i64 27, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351", %bb.dx, %bb.dv, %bb.dw, %bb.dy, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360", %bb.em, %bb.ek, %bb.el, %bb.en, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258", %bb.am, %bb.ak, %bb.al, %bb.an, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268", %bb.av, %bb.at, %bb.au, %bb.aw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.x, %bb.v, %bb.w, %bb.y
  %.sink2008 = phi ptr [ @292, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258" ], [ @294, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" ], [ @291, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268" ], [ @296, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" ], [ @296, %bb.y ], [ @296, %bb.w ], [ @296, %bb.v ], [ @296, %bb.x ], [ @291, %bb.aw ], [ @291, %bb.au ], [ @291, %bb.at ], [ @291, %bb.av ], [ @292, %bb.an ], [ @292, %bb.al ], [ @292, %bb.ak ], [ @292, %bb.am ], [ @294, %bb.en ], [ @294, %bb.el ], [ @294, %bb.ek ], [ @294, %bb.em ], [ @295, %bb.dy ], [ @295, %bb.dw ], [ @295, %bb.dv ], [ @295, %bb.dx ], [ @295, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351" ]
  %.sink = phi i64 [ 32, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258" ], [ 13, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" ], [ 38, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268" ], [ 27, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" ], [ 27, %bb.y ], [ 27, %bb.w ], [ 27, %bb.v ], [ 27, %bb.x ], [ 38, %bb.aw ], [ 38, %bb.au ], [ 38, %bb.at ], [ 38, %bb.av ], [ 32, %bb.an ], [ 32, %bb.al ], [ 32, %bb.ak ], [ 32, %bb.am ], [ 13, %bb.en ], [ 13, %bb.el ], [ 13, %bb.ek ], [ 13, %bb.em ], [ 27, %bb.dy ], [ 27, %bb.dw ], [ 27, %bb.dv ], [ 27, %bb.dx ], [ 27, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351" ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr %.sink2008, ptr %i.y, align 8
  store i64 %.sink, ptr %.sroa.6157.0..sroa_idx158, align 8
  %i.ij = icmp eq i64 %i.av, 0
  br i1 %i.ij, label %.backedge685.backedge, label %bb.ez

bb.ez:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.backedge685.backedge

bb.fa:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.x
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body245

.body245:                                         ; preds = %bb.aa, %bb.fa
  %eh.lpad-body246 = phi { ptr, i32 } [ %i.ik, %bb.fa ], [ %i.bw, %bb.aa ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @296, ptr %i.y, align 8
  store i64 27, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

.thread595:                                       ; preds = %.thread611.loopexit, %.thread611.loopexit.split-lp, %.thread643, %.body363, %.body354, %.thread646, %.body271, %.body261, %.body245, %bb.bk
  %.pn220594 = phi { ptr, i32 } [ %i.dm, %bb.bk ], [ %eh.lpad-body246, %.body245 ], [ %lpad.loopexit.split-lp683, %.thread611.loopexit.split-lp ], [ %eh.lpad-body364, %.body363 ], [ %eh.lpad-body355, %.body354 ], [ %eh.lpad-body340, %.thread643 ], [ %.pn642, %.thread646 ], [ %eh.lpad-body272, %.body271 ], [ %eh.lpad-body262, %.body261 ], [ %lpad.loopexit682, %.thread611.loopexit ] ; 2 uses
  %i.il = icmp eq i64 %i.av, 0
  br i1 %i.il, label %.thread548, label %bb.fb

bb.fb:                                            ; preds = %.thread595
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.thread548

bb.fc:                                            ; preds = %bb.s
  switch i64 %.sroa.9.sroa.0.0.insert.insert474, label %bb.fe [
    i64 -9223372036854775807, label %bb.fd
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit"
  ]

bb.fd:                                            ; preds = %bb.fc
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.bh)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" unwind label %.thread558.loopexit

bb.fe:                                            ; preds = %bb.fc
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread548 unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.fe
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" unwind label %.thread558.loopexit

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit": ; preds = %bb.fc, %bb.fd, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i", %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge685.backedge

.backedge685.backedge:                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", %bb.ez, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", %bb.dm
  br label %.backedge685

bb.fh:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit"

bb.fi:                                            ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !7741)
  call void @llvm.experimental.noalias.scope.decl(metadata !7742)
  %i.io = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %.val1.i.i.i = load i64, ptr %i.io, align 8, !alias.scope !7743, !noundef !5 ; 2 uses
  %i.ip = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ip, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i", label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.iq = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %.val.i.i.i401 = load ptr, ptr %i.iq, align 16, !alias.scope !7743, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i401, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #29, !noalias !7743
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i": ; preds = %bb.fj, %bb.fi
  call void @llvm.experimental.noalias.scope.decl(metadata !7744)
  call void @llvm.experimental.noalias.scope.decl(metadata !7745)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !7746)
  call void @llvm.experimental.noalias.scope.decl(metadata !7747)
  %i.is = load i64, ptr %i.ir, align 32, !range !32, !alias.scope !7748, !noundef !5
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fk

bb.fk:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i"
  %i.iu = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.iu, align 16, !alias.scope !7748, !noundef !5 ; 2 uses
  %i.iv = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.iv, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.iw = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.iw, align 8, !alias.scope !7748, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i, i64 noundef 1) #29, !noalias !7748
  br label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit"

"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit": ; preds = %bb.fl, %bb.fk, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i", %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !7749)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.val1.i = load i64, ptr %i.ix, align 8, !alias.scope !7749, !noundef !5 ; 2 uses
  %i.iy = icmp eq i64 %.val1.i, 0
  br i1 %i.iy, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403", label %bb.fm

bb.fm:                                            ; preds = %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit"
  %i.iz = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.val.i402 = load ptr, ptr %i.iz, align 8, !alias.scope !7749, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i402, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #29, !noalias !7749
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403": ; preds = %bb.fm, %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit"
  %i.ja = load i64, ptr %i.q, align 8, !range !32, !alias.scope !7750, !noundef !5
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.jc, align 8 ; 2 uses
  %i.jd = icmp eq i64 %.val1.i.i.i.i.i, 0
  %or.cond2013.a = select i1 %i.jb, i1 true, i1 %i.jd
  br i1 %or.cond2013.a, label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415", label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split"

"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split": ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403", %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"
  %.val1.i.i.i.i.i.sink = phi i64 [ %.val1.i.i.i.i.i413, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412" ], [ %.val1.i.i.i.i.i, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403" ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.je, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.sink, i64 noundef 1) #29, !noalias !5
  br label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415"

"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415": ; preds = %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split", %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i403", %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.body371:                                         ; preds = %bb.fn, %bb.ew, %.thread548
  %.pn225 = phi { ptr, i32 } [ %i.ig, %bb.ew ], [ %.pn223547, %.thread548 ], [ %i.jf, %bb.fn ]
  call fastcc void @"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E"(ptr noalias noundef align 32 dereferenceable(384) %i.p) #27
  call fastcc void @"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E"(ptr noalias noundef align 8 dereferenceable(120) %i.q) #27
  resume { ptr, i32 } %.pn225

bb.fn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368", %bb.et
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body371

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374": ; preds = %bb.eu, %bb.es, %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345", %bb.et, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !7751)
  %i.jg = load i64, ptr %i.r, align 8, !range !10, !alias.scope !7751, !noundef !5
  %i.jh = icmp eq i64 %i.jg, 2
  br i1 %i.jh, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fo

bb.fo:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.experimental.noalias.scope.decl(metadata !7752)
  call void @llvm.experimental.noalias.scope.decl(metadata !7753)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %.val1.i.i.i404 = load i64, ptr %i.ji, align 8, !alias.scope !7754, !noundef !5 ; 2 uses
  %i.jj = icmp eq i64 %.val1.i.i.i404, 0
  br i1 %i.jj, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.jk = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %.val.i.i.i405 = load ptr, ptr %i.jk, align 16, !alias.scope !7754, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i405, i64 noundef range(i64 1, 0) %.val1.i.i.i404, i64 noundef 1) #29, !noalias !7754
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406": ; preds = %bb.fp, %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !7755)
  call void @llvm.experimental.noalias.scope.decl(metadata !7756)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !7757)
  call void @llvm.experimental.noalias.scope.decl(metadata !7758)
  %i.jm = load i64, ptr %i.jl, align 32, !range !32, !alias.scope !7759, !noundef !5
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fq

bb.fq:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"
  %i.jo = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %.val1.i.i.i.i.i.i.i407 = load i64, ptr %i.jo, align 16, !alias.scope !7759, !noundef !5 ; 2 uses
  %i.jp = icmp eq i64 %.val1.i.i.i.i.i.i.i407, 0
  br i1 %i.jp, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %.val.i.i.i.i.i.i.i408 = load ptr, ptr %i.jq, align 8, !alias.scope !7759, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i408, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i407, i64 noundef 1) #29, !noalias !7759
  br label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"

"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409": ; preds = %bb.fr, %bb.fq, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !7760)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.val1.i410 = load i64, ptr %i.jr, align 8, !alias.scope !7760, !noundef !5 ; 2 uses
  %i.js = icmp eq i64 %.val1.i410, 0
  br i1 %i.js, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412", label %bb.fs

bb.fs:                                            ; preds = %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.jt = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.val.i411 = load ptr, ptr %i.jt, align 8, !alias.scope !7760, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i411, i64 noundef range(i64 1, 0) %.val1.i410, i64 noundef 1) #29, !noalias !7760
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412": ; preds = %bb.fs, %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.ju = load i64, ptr %i.q, align 8, !range !32, !alias.scope !7761, !noundef !5
  %i.jv = icmp eq i64 %i.ju, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i.i.i.i413 = load i64, ptr %i.jw, align 8 ; 2 uses
  %i.jx = icmp eq i64 %.val1.i.i.i.i.i413, 0
  %or.cond2011 = select i1 %i.jv, i1 true, i1 %i.jx
  br i1 %or.cond2011, label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415", label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split"

.thread548:                                       ; preds = %.thread558.loopexit, %.thread558.loopexit.split-lp, %bb.fb, %.thread595, %bb.cr, %bb.af, %bb.ff, %bb.k, %bb.j
  %.pn223547 = phi { ptr, i32 } [ %i.im, %bb.ff ], [ %.pn220594, %.thread595 ], [ %i.ax, %bb.k ], [ %i.ax, %bb.j ], [ %lpad.thr_comm.split-lp610, %bb.af ], [ %i.fq, %bb.cr ], [ %.pn220594, %bb.fb ], [ %lpad.loopexit679, %.thread558.loopexit ], [ %lpad.loopexit.split-lp680, %.thread558.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #27
          to label %.body371 unwind label %bb.dd
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4spec24Zip32CentralDirectoryEnd5write17h457f58b367e9978bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 4 dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [22 x i8], align 4                ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 65535
  br i1 %i.e, label %.thread45, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %i.d to i16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7769
  store i32 101010256, ptr %i.a, align 4, !alias.scope !7770, !noalias !7771
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load <4 x i16>, ptr %i.h, align 8
  store <4 x i16> %i.i, ptr %.sroa.2.0..sroa_idx, align 4, !alias.scope !7770, !noalias !7771
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = load <2 x i32>, ptr %i.g, align 8
  store <2 x i32> %i.j, ptr %.sroa.625.0..sroa_idx, align 4, !alias.scope !7770, !noalias !7771
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.f, ptr %.sroa.827.0..sroa_idx, align 4, !alias.scope !7770, !noalias !7771
  %i.k = invoke noundef ptr @_ZN3std2io5Write9write_all17h55ae749b4115d4deE(ptr noalias noundef nonnull align 4 dereferenceable(4) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 22)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %.not.i = icmp eq ptr %i.k, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7769
  br i1 %.not.i, label %bb.e, label %bb.h

.thread45:                                        ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @299, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
