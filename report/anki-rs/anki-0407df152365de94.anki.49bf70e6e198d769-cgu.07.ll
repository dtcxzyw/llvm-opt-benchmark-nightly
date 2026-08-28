Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.07?download=true
inline.NumInlined: 5610
inline.NumDeleted: 2048
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN3zip11compression21Decompressor$LT$R$GT$3new17hee10af976e278933E":bb.a
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 20, i1 false), !alias.scope !7157
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 20, i1 false), !alias.scope !7161
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
  %i.ah = load i64, ptr %i.n, align 8, !range !7165, !noundef !5 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.h, i8 0, i64 22, i1 false), !alias.scope !7173, !noalias !7166
  %i.am = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.h, i64 noundef 22)
          to label %.noexc unwind label %.thread558.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  %.sroa.09.0.copyload.i.i = load i32, ptr %i.h, align 4, !noalias !7166
  %.not4.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i, 101010256
  br i1 %.not4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i = phi i8 [ 1, %.noexc ], [ 0, %bb.f ]
  %.sroa.18.0.ph.i = phi ptr [ %i.am, %.noexc ], [ @285, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7166
  %i.an = ptrtoint ptr %.sroa.18.0.ph.i to i64    ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc455 = trunc i64 %i.an to i24
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %.sroa.6.5.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i, align 4, !noalias !7176 ; 3 uses
  %.sroa.8.i.sroa.5.0.copyload = load i16, ptr %.sroa.8.i.sroa.5.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7176 ; 3 uses
  %.sroa.8.i.sroa.6.0.copyload = load i16, ptr %.sroa.8.i.sroa.6.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 2, !noalias !7176 ; 4 uses
  %.sroa.8.i.sroa.7.0.copyload = load i24, ptr %.sroa.8.i.sroa.7.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7176 ; 3 uses
  %.sroa.18.0.copyload.i = load i56, ptr %.sroa.18.5..sroa.410.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !7176 ; 4 uses
  %.sroa.18.0.insert.ext.i = zext i56 %.sroa.18.0.copyload.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7166
  %.sroa.18.5.extract.shift.i = lshr i64 %.sroa.18.0.insert.ext.i, 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7177
  call void @llvm.experimental.noalias.scope.decl(metadata !7178)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7181
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef range(i64 0, -44) %.sroa.18.5.extract.shift.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc241 unwind label %.thread558.loopexit

.noexc241:                                        ; preds = %bb.h
  %i.ao = load i64, ptr %i.g, align 8, !range !2379, !noalias !7181, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.u, align 8, !range !450, !noalias !7181, !noundef !5 ; 2 uses
  br i1 %i.ap, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i", !prof !116

bb.i:                                             ; preds = %.noexc241
  %i.ar = load i64, ptr %i.v, align 8, !noalias !7181
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.aq, i64 %i.ar) #26
          to label %.noexc242 unwind label %.thread558.loopexit.split-lp

.noexc242:                                        ; preds = %bb.i
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i": ; preds = %.noexc241
  %i.as = load ptr, ptr %i.v, align 8, !noalias !7181, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7181
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !7178, !noalias !7177
  store ptr %i.as, ptr %i.w, align 8, !alias.scope !7178, !noalias !7177
  store i64 %.sroa.18.5.extract.shift.i, ptr %i.x, align 8, !alias.scope !7178, !noalias !7177
  %i.at = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc243 unwind label %.thread558.loopexit ; 2 uses

.noexc243:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i"
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 11 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7177
  %i.aw = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.au, i64 noundef %i.av)
          to label %bb.l unwind label %bb.k, !noalias !7182 ; 4 uses

bb.j:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7182
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
  %i.az = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr nonnull %i.aw), !noalias !7182
  %i.ba = icmp eq i8 %i.az, 37
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.aw)
          to label %bb.p unwind label %bb.k, !noalias !7182

bb.o:                                             ; preds = %bb.m
  %i.bb = ptrtoint ptr %i.aw to i64               ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc = trunc i64 %i.bb to i24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.9.sroa.0.0 = phi i8 [ 0, %bb.n ], [ 1, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.10.0.in.in = phi i64 [ ptrtoint (ptr @298 to i64), %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.0.0 = phi i24 [ ptrtoint (ptr @298 to i24), %bb.n ], [ %.sroa.17451.sroa.0.0.extract.trunc, %bb.o ] ; 2 uses
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7182
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7183)
  %i.be = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7183, !noundef !5
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fj

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.g
  %.sroa.9.sroa.0.1.ph = phi i8 [ %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i, %bb.g ], [ %.sroa.9.sroa.0.0, %bb.q ], [ %.sroa.9.sroa.0.0, %bb.p ] ; 2 uses
  %.sroa.17451.sroa.10.1.ph.in.in = phi i64 [ %i.an, %bb.g ], [ %.sroa.17451.sroa.10.0.in.in, %bb.q ], [ %.sroa.17451.sroa.10.0.in.in, %bb.p ]
  %.sroa.17451.sroa.0.1.ph = phi i24 [ %.sroa.17451.sroa.0.0.extract.trunc455, %bb.g ], [ %.sroa.17451.sroa.0.0, %bb.q ], [ %.sroa.17451.sroa.0.0, %bb.p ]
  %.sroa.23.1.ph = phi i64 [ 32, %bb.g ], [ 34, %bb.q ], [ 34, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.9.sroa.0.0.insert.ext472 = zext nneg i8 %.sroa.9.sroa.0.1.ph to i64 ; 2 uses
  %.sroa.9.sroa.0.0.insert.insert474 = or disjoint i64 %.sroa.9.sroa.0.0.insert.ext472, -9223372036854775808
  store i64 %.sroa.9.sroa.0.0.insert.insert474, ptr %i.m, align 8
  %.sroa.17451.sroa.9.0.insert.insert459 = and i64 %.sroa.17451.sroa.10.1.ph.in.in, -16777216
  %.sroa.17451.sroa.0.0.insert.ext452 = zext i24 %.sroa.17451.sroa.0.1.ph to i64
  %.sroa.17451.sroa.0.0.insert.insert454 = or disjoint i64 %.sroa.17451.sroa.9.0.insert.insert459, %.sroa.17451.sroa.0.0.insert.ext452 ; 2 uses
  store i64 %.sroa.17451.sroa.0.0.insert.insert454, ptr %.sroa.17451.8..sroa_idx, align 8
  store i64 %.sroa.23.1.ph, ptr %.sroa.23.8..sroa_idx, align 8
  %i.bg = load i64, ptr %i.o, align 8, !range !7165, !noundef !5
  %.not222 = icmp eq i64 %i.bg, -9223372036854775802
  %i.bh = inttoptr i64 %.sroa.17451.sroa.0.0.insert.insert454 to ptr
  br i1 %.not222, label %bb.fi, label %bb.fc

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
  %i.bp = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7186, !noundef !5 ; 5 uses
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
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !7189, !nonnull !5, !noundef !5
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false), !alias.scope !7202, !noalias !7192
  %i.cd = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.f, i64 noundef 20)
          to label %.noexc249 unwind label %.thread611.loopexit ; 2 uses

.noexc249:                                        ; preds = %bb.ad
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.ae, label %.thread1584

.thread1584:                                      ; preds = %.noexc249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7192
  br label %bb.ah

bb.ae:                                            ; preds = %.noexc249
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.f, align 4, !noalias !7192
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7192
  br label %.critedge

bb.ah:                                            ; preds = %.thread1584, %.thread
  %.val.i.i2521580.ph = phi ptr [ %i.cd, %.thread1584 ], [ %i.cc, %.thread ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i2521580.ph)
          to label %.critedge unwind label %.thread611.loopexit

bb.ai:                                            ; preds = %bb.ae
  %.sroa.6.i.sroa.0.0.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i.i, align 4, !noalias !7205 ; 2 uses
  %.sroa.6.i.sroa.5.0.copyload.i = load i56, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 4, !noalias !7205
  %.sroa.13.0.copyload.i.i = load i40, ptr %.sroa.13.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7205 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7192
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
  %i.ci = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7206, !noundef !5 ; 5 uses
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
  %.val.i.i259 = load ptr, ptr %i.y, align 8, !alias.scope !7209, !nonnull !5, !noundef !5
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7212)
  %i.cr = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7212, !noundef !5
  %.not.i265 = icmp eq i64 %i.cr, 2
  br i1 %.not.i265, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7212
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr noalias noundef nonnull sret([384 x i8]) align 32 captures(address) dereferenceable(384) %i.e)
          to label %.noexc266 unwind label %.thread611.loopexit

.noexc266:                                        ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.p, ptr noundef nonnull align 32 dereferenceable(384) %i.e, i64 384, i1 false)
end_hunk_0
begin_hunk_1_@_ZN3zip4spec22find_central_directory17h1c4f7525214311beE:bb.a
.noexc295:                                        ; preds = %bb.bn
  %.not.i.i.i284 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i284, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc295
  %.sroa.09.0.copyload.i.i.i286 = load i32, ptr %i.c, align 4, !noalias !7227
  %.not4.i.i.i287 = icmp eq i32 %.sroa.09.0.copyload.i.i.i286, 101075792
  br i1 %.not4.i.i.i287, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.noexc295
  %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i = phi i64 [ -9223372036854775807, %.noexc295 ], [ -9223372036854775808, %bb.bo ]
  %.sroa.15.0.ph.i.i = phi ptr [ %i.dq, %.noexc295 ], [ @285, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7227
  %i.dr = ptrtoint ptr %.sroa.15.0.ph.i.i to i64
  br label %bb.cd

bb.bq:                                            ; preds = %bb.bo
  %.sroa.6.i.sroa.0.0.copyload.i289 = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i288, align 4, !noalias !7240 ; 5 uses
  %.sroa.6.i.sroa.5.0.copyload.i291 = load i16, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i290, align 4, !noalias !7240
  %.sroa.6.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 2, !noalias !7240
  %.sroa.15.5.copyload.i.i = load ptr, ptr %.sroa.15.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7240
  %.sroa.22.5.copyload.i.i = load i8, ptr %.sroa.22.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7240
  %.sroa.26.5.copyload.i.i = load i64, ptr %.sroa.26.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7240
  %i.ds = load <2 x i64>, ptr %.sroa.24.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7240
  %.sroa.28.5.copyload.i.i = load i64, ptr %.sroa.28.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7240
  %i.dt = load <2 x i64>, ptr %.sroa.27.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7227
  %i.du = ptrtoint ptr %.sroa.15.5.copyload.i.i to i64 ; 3 uses
  %.sroa.15.5.extract.shift.i.i = lshr i64 %i.du, 40
  %.sroa.15.5.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.15.5.extract.shift.i.i to i32
  %i.dv = icmp ult i64 %.sroa.6.i.sroa.0.0.copyload.i289, 44
  br i1 %i.dv, label %bb.cd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dw = call i64 @llvm.uadd.sat.i64(i64 %.sroa.6.i.sroa.0.0.copyload.i289, i64 12)
  %i.dx = icmp ugt i64 %i.dw, %i.dp
  br i1 %i.dx, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7241
  %i.dy = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, -44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7242)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7245
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 0, -44) %i.dy, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc296 unwind label %.thread656.loopexit

.noexc296:                                        ; preds = %bb.bs
  %i.dz = load i64, ptr %i.b, align 8, !range !2379, !noalias !7245, !noundef !5
  %i.ea = trunc nuw i64 %i.dz to i1
  %i.eb = load i64, ptr %i.ac, align 8, !range !450, !noalias !7245, !noundef !5 ; 2 uses
  br i1 %i.ea, label %bb.bt, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !116

bb.bt:                                            ; preds = %.noexc296
  %i.ec = load i64, ptr %i.ad, align 8, !noalias !7245
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eb, i64 %i.ec) #26
          to label %.noexc297 unwind label %.thread656.loopexit.split-lp

.noexc297:                                        ; preds = %bb.bt
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %.noexc296
  %i.ed = load ptr, ptr %i.ad, align 8, !noalias !7245, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7245
  store i64 %i.eb, ptr %i.d, align 8, !alias.scope !7242, !noalias !7241
  store ptr %i.ed, ptr %i.ae, align 8, !alias.scope !7242, !noalias !7241
  store i64 %i.dy, ptr %i.af, align 8, !alias.scope !7242, !noalias !7241
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc298 unwind label %.thread656.loopexit ; 2 uses

.noexc298:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 8 uses
  %i.eg = extractvalue { ptr, i64 } %i.ee, 1      ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7241
  %i.eh = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.ef, i64 noundef %i.eg)
          to label %bb.bw unwind label %bb.bu, !noalias !7246 ; 2 uses

bb.bu:                                            ; preds = %.noexc298
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %.thread646, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7246
  br label %.thread646

bb.bw:                                            ; preds = %.noexc298
  %.not.i.i292 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i292, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ek = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.el = icmp eq i64 %i.eg, 0
  br i1 %i.el, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7246
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bw
  %.sroa.67.sroa.8.31.insert.ext.i = zext i8 %.sroa.22.5.copyload.i.i to i32
  %.sroa.67.sroa.8.31.insert.shift.i = shl nuw i32 %.sroa.67.sroa.8.31.insert.ext.i, 24
  %.sroa.67.sroa.8.31.insert.insert.i = or disjoint i32 %.sroa.67.sroa.8.31.insert.shift.i, %.sroa.15.5.extract.trunc.i.i
  %.not.i293 = icmp eq i32 %.sroa.67.sroa.8.31.insert.insert.i, %.sroa.6.i.sroa.0.0.copyload.i
  br i1 %.not.i293, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.em = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, 12
  %.not20.i = icmp eq i64 %i.em, %i.dp
  br i1 %.not20.i, label %_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink62.i = phi ptr [ @288, %bb.bz ], [ @287, %bb.ca ]
  %.sink.i294 = phi i64 [ 47, %bb.bz ], [ 35, %bb.ca ] ; 2 uses
  %i.en = ptrtoint ptr %.sink62.i to i64          ; 2 uses
  %i.eo = icmp eq i64 %i.eg, 0
  br i1 %i.eo, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7247
  br label %bb.cd

"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit": ; preds = %bb.bm
  %.sroa.0535.0.copyload = load i64, ptr %i.k, align 8 ; 2 uses
  %.not.i301 = icmp eq i64 %.sroa.0535.0.copyload, -9223372036854775802 ; 3 uses
  %.sroa.5537.sroa.4.0.copyload = load i64, ptr %.sroa.5537.sroa.4.0..sroa.5537.0..sroa_idx.sroa_idx, align 8
  %.sroa.5537.sroa.0.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.6542.sroa.6.0 = select i1 %.not.i301, i64 21, i64 %.sroa.5537.sroa.4.0.copyload ; 2 uses
  %.sroa.6542.sroa.0.0 = select i1 %.not.i301, ptr @290, ptr %.sroa.5537.sroa.0.0.copyload ; 2 uses
  %.sroa.0539.0 = select i1 %.not.i301, i64 -9223372036854775808, i64 %.sroa.0535.0.copyload ; 2 uses
  %i.ep = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7248, !noundef !5 ; 5 uses
  %i.eq = icmp eq i64 %i.ep, -9223372036854775802
  br i1 %i.eq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", label %bb.df

bb.cd:                                            ; preds = %bb.cc, %bb.bp, %bb.cb, %bb.by, %bb.bx, %bb.br, %bb.bq
  %.sroa.9501.0.ph = phi i64 [ -9223372036854775808, %bb.bq ], [ -9223372036854775807, %bb.bx ], [ -9223372036854775807, %bb.by ], [ -9223372036854775808, %bb.br ], [ -9223372036854775808, %bb.cb ], [ %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i, %bb.bp ], [ -9223372036854775808, %bb.cc ] ; 2 uses
  %.sroa.13.0.ph = phi i64 [ ptrtoint (ptr @301 to i64), %bb.bq ], [ %i.ek, %bb.bx ], [ %i.ek, %bb.by ], [ ptrtoint (ptr @300 to i64), %bb.br ], [ %i.en, %bb.cb ], [ %i.dr, %bb.bp ], [ %i.en, %bb.cc ] ; 2 uses
  %.sroa.16.0.ph = phi i64 [ 22, %bb.bq ], [ undef, %bb.bx ], [ undef, %bb.by ], [ 36, %bb.br ], [ %.sink.i294, %bb.cb ], [ 32, %bb.bp ], [ %.sink.i294, %bb.cc ] ; 2 uses
  %i.er = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7251, !noundef !5 ; 5 uses
  %i.es = icmp eq i64 %i.er, -9223372036854775802
  br i1 %i.es, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.et = icmp ne i64 %i.er, -9223372036854775806
  call void @llvm.assume(i1 %i.et)
  %i.eu = add nsw i64 %i.er, 9223372036854775807
  %i.ev = icmp ugt i64 %i.er, -9223372036854775808
  %i.ew = select i1 %i.ev, i64 %i.eu, i64 1
  switch i64 %i.ew, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" [
    i64 0, label %bb.cf
    i64 1, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %.val.i.i309 = load ptr, ptr %i.ag, align 8, !alias.scope !7254, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i309)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

bb.cg:                                            ; preds = %bb.ce
  %i.ex = icmp eq i64 %i.er, -9223372036854775808
  br i1 %i.ex, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308" unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body311 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308": ; preds = %bb.ch
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit: ; preds = %bb.ca
  %i.fa = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.26.5.copyload.i.i, i64 46) ; 2 uses
  %i.fb = extractvalue { i64, i1 } %i.fa, 0
  %i.fc = extractvalue { i64, i1 } %i.fa, 1
  br i1 %i.fc, label %bb.ck, label %bb.cl, !prof !116

bb.ck:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit, %bb.ck
  %.sroa.0189.0 = phi i64 [ -1, %bb.ck ], [ %i.fb, %_ZN3zip4spec22find_central_directory15try_read_eocd6417hf06aeddc76f0c633E.exit ]
  %i.fd = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0189.0, i64 %.sroa.28.5.copyload.i.i)
  %i.fe = icmp ult i64 %.sroa.5179.0.copyload, %i.fd
  br i1 %i.fe, label %bb.ct, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ff = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le1106 = shl nuw nsw i64 %.sroa.23.28.insert.ext.le, 32
  %.sroa.23.28.insert.insert.le = or disjoint i64 %.sroa.23.28.insert.shift.le1106, %i.ff
  %6 = shl i56 %.sroa.18.0.copyload.i, 24
  %7 = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le = or disjoint i56 %6, %7
  %.sroa.6.16.extract.trunc.le1083 = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le to i32
  %.sroa.9.24.extract.trunc.le1079 = trunc nuw i64 %.sroa.23.28.insert.insert.le to i48
  %i.fg = sub i64 %.sroa.5179.0.copyload, %.sroa.7.sroa.0.0.insert.insert.i
  %.sroa.15.1.extract.shift.i.i.le = lshr i64 %i.du, 8
  %.sroa.15.1.extract.trunc.i.i.le = trunc i64 %.sroa.15.1.extract.shift.i.i.le to i32
  %.sroa.67.sroa.11.32.insert.ext.i.le = zext i16 %.sroa.6.i.sroa.5.0.copyload.i291 to i64
  %.sroa.67.sroa.11.34.insert.ext.i.le = zext i8 %.sroa.6.i.sroa.6.0.copyload.i to i64
  %.sroa.67.sroa.11.34.insert.shift.i.le = shl nuw nsw i64 %.sroa.67.sroa.11.34.insert.ext.i.le, 16
  %.sroa.67.sroa.11.34.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.shift.i.le, %.sroa.67.sroa.11.32.insert.ext.i.le
  %.sroa.67.sroa.11.35.insert.ext.i.le = shl i64 %i.du, 24
  %.sroa.67.sroa.11.35.insert.shift.i.le = and i64 %.sroa.67.sroa.11.35.insert.ext.i.le, 4278190080
  %.sroa.67.sroa.11.35.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.insert.i.le, %.sroa.67.sroa.11.35.insert.shift.i.le
  store ptr %i.au, ptr %0, align 8
  %.sroa.062.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.062.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le1083, ptr %.sroa.062.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.062.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.062.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le1079, ptr %.sroa.062.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.062.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.062.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.062.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ef, ptr %.sroa.062.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.eg, ptr %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.6.i.sroa.0.0.copyload.i289, ptr %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ds, ptr %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.dt, ptr %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.15.1.extract.trunc.i.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.sroa.6.i.sroa.0.0.copyload.i, ptr %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.67.sroa.11.35.insert.insert.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.fg, ptr %.sroa.563.0..sroa_idx, align 8
  %i.fh = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7257, !noundef !5 ; 5 uses
  %i.fi = icmp eq i64 %i.fh, -9223372036854775802
  br i1 %i.fi, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fj = icmp ne i64 %i.fh, -9223372036854775806
  call void @llvm.assume(i1 %i.fj)
  %i.fk = add nsw i64 %i.fh, 9223372036854775807
  %i.fl = icmp ugt i64 %i.fh, -9223372036854775808
  %i.fm = select i1 %i.fl, i64 %i.fk, i64 1
  switch i64 %i.fm, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" [
    i64 0, label %bb.co
    i64 1, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %.val.i.i317 = load ptr, ptr %i.ag, align 8, !alias.scope !7260, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i317)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.cp:                                            ; preds = %bb.cn
  %i.fn = icmp eq i64 %i.fh, -9223372036854775808
  br i1 %i.fn, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316" unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread548 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316": ; preds = %bb.cq
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.ct:                                            ; preds = %bb.cl
  %i.fq = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7263, !noundef !5 ; 5 uses
  %i.fr = icmp eq i64 %i.fq, -9223372036854775802
  br i1 %i.fr, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.fs = icmp ne i64 %i.fq, -9223372036854775806
  call void @llvm.assume(i1 %i.fs)
  %i.ft = add nsw i64 %i.fq, 9223372036854775807
  %i.fu = icmp ugt i64 %i.fq, -9223372036854775808
  %i.fv = select i1 %i.fu, i64 %i.ft, i64 1
  switch i64 %i.fv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i326 = load ptr, ptr %i.ag, align 8, !alias.scope !7266, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i326)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

bb.cw:                                            ; preds = %bb.cu
  %i.fw = icmp eq i64 %i.fq, -9223372036854775808
  br i1 %i.fw, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325" unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body328 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325": ; preds = %bb.cx
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323": ; preds = %bb.cp, %bb.cn, %bb.cm, %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.da:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325", %bb.cv
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body328

.body328:                                         ; preds = %bb.cy, %bb.da
  %eh.lpad-body329 = phi { ptr, i32 } [ %i.fz, %bb.da ], [ %i.fx, %bb.cy ] ; 2 uses
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.ga = icmp eq i64 %i.eg, 0
  br i1 %i.ga, label %.thread646, label %bb.db

bb.db:                                            ; preds = %.body328
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331": ; preds = %bb.cw, %bb.cu, %bb.ct, %bb.cv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325"
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.gb = icmp eq i64 %i.eg, 0
  br i1 %i.gb, label %.backedge.backedge, label %bb.dc

.backedge.backedge:                               ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", %bb.dc, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314"
  br label %.backedge

bb.dc:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.backedge.backedge

bb.dd:                                            ; preds = %.thread548, %.thread646
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.de:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308", %bb.cf
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body311

.body311:                                         ; preds = %bb.ci, %bb.de
  %eh.lpad-body312 = phi { ptr, i32 } [ %i.gd, %bb.de ], [ %i.ey, %bb.ci ]
  store i64 %.sroa.9501.0.ph, ptr %i.k, align 8
  store i64 %.sroa.13.0.ph, ptr %i.ag, align 8
  store i64 %.sroa.16.0.ph, ptr %.sroa.6201.0..sroa_idx202, align 8
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314": ; preds = %bb.cg, %bb.ce, %bb.cd, %bb.cf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308"
  store i64 %.sroa.9501.0.ph, ptr %i.k, align 8
  store i64 %.sroa.13.0.ph, ptr %i.ag, align 8
  store i64 %.sroa.16.0.ph, ptr %.sroa.6201.0..sroa_idx202, align 8
  br label %.backedge.backedge

bb.df:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit"
  %i.ge = icmp ne i64 %i.ep, -9223372036854775806
  call void @llvm.assume(i1 %i.ge)
  %i.gf = add nsw i64 %i.ep, 9223372036854775807
  %i.gg = icmp ugt i64 %i.ep, -9223372036854775808
  %i.gh = select i1 %i.gg, i64 %i.gf, i64 1
  switch i64 %i.gh, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342" [
    i64 0, label %bb.dg
    i64 1, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %.val.i.i337 = load ptr, ptr %i.y, align 8, !alias.scope !7269, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i337)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342" unwind label %bb.dl

bb.dh:                                            ; preds = %bb.df
  %i.gi = icmp eq i64 %i.ep, -9223372036854775808
  br i1 %i.gi, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", label %bb.di

bb.di:                                            ; preds = %bb.dh
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336" unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.thread643 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336": ; preds = %bb.di
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342" unwind label %bb.dl

bb.dl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336", %bb.dg
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.thread643

.thread643:                                       ; preds = %bb.dl, %bb.dj
  %eh.lpad-body340 = phi { ptr, i32 } [ %i.gl, %bb.dl ], [ %i.gj, %bb.dj ]
  store i64 %.sroa.0539.0, ptr %i.o, align 8
  store ptr %.sroa.6542.sroa.0.0, ptr %i.y, align 8
  %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6542.sroa.6.0, ptr %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx.sroa_idx, align 8
  br label %.thread595

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342": ; preds = %bb.dh, %bb.df, %"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit", %bb.dg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336"
  store i64 %.sroa.0539.0, ptr %i.o, align 8
  store ptr %.sroa.6542.sroa.0.0, ptr %i.y, align 8
  store i64 %.sroa.6542.sroa.6.0, ptr %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx543.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gm = icmp eq i64 %i.av, 0
  br i1 %i.gm, label %.backedge685.backedge, label %bb.dm

bb.dm:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.backedge685.backedge

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283": ; preds = %bb.bi, %bb.bg, %bb.bf, %bb.bh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.eh, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283"
  %i.gn = icmp eq i64 %i.av, 0
  br i1 %i.gn, label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345", label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

.thread646:                                       ; preds = %.thread656.loopexit, %.thread656.loopexit.split-lp, %bb.db, %.body328, %.body311, %bb.bv, %bb.bu
  %.pn642 = phi { ptr, i32 } [ %i.ei, %bb.bv ], [ %eh.lpad-body329, %bb.db ], [ %i.ei, %bb.bu ], [ %eh.lpad-body312, %.body311 ], [ %eh.lpad-body329, %.body328 ], [ %lpad.loopexit, %.thread656.loopexit ], [ %lpad.loopexit.split-lp, %.thread656.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #27
          to label %.thread595 unwind label %bb.dd

bb.dp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268", %bb.av
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body271

.body271:                                         ; preds = %bb.ay, %bb.dp
  %eh.lpad-body272 = phi { ptr, i32 } [ %i.go, %bb.dp ], [ %i.cz, %bb.ay ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @291, ptr %i.y, align 8
  store i64 38, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

bb.dq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258", %bb.am
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body261

.body261:                                         ; preds = %bb.ap, %bb.dq
  %eh.lpad-body262 = phi { ptr, i32 } [ %i.gp, %bb.dq ], [ %i.cp, %bb.ap ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @292, ptr %i.y, align 8
  store i64 32, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

bb.dr:                                            ; preds = %.critedge
  %i.gq = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le1108 = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le1104 = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1108, 32
  %.sroa.23.28.insert.insert.le1098 = or disjoint i64 %.sroa.23.28.insert.shift.le1104, %i.gq
  %8 = shl i56 %.sroa.18.0.copyload.i, 24
  %9 = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le1087 = or disjoint i56 %8, %9
  %.sroa.6.16.extract.trunc.le1081 = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le1087 to i32
  %.sroa.9.24.extract.trunc.le1077 = trunc nuw i64 %.sroa.23.28.insert.insert.le1098 to i48
  %i.gr = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %i.cf)
  store ptr %i.au, ptr %0, align 8
  %.sroa.019.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.019.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.019.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le1081, ptr %.sroa.019.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.019.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.019.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.019.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le1077, ptr %.sroa.019.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.019.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 0, ptr %.sroa.019.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.019.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.019.sroa.4.0..sroa_idx, align 8
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.019.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.gr, ptr %.sroa.5.0..sroa_idx, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.ds:                                            ; preds = %.critedge
  %.not213 = icmp ugt i64 %i.aj, %i.cf
  br i1 %.not213, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !7272)
  %i.gs = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7272, !noundef !5
  %.not.i346 = icmp eq i64 %i.gs, 2
  br i1 %.not.i346, label %bb.du, label %bb.ec

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7272
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr noalias noundef nonnull sret([384 x i8]) align 32 captures(address) dereferenceable(384) %i.a)
          to label %.noexc348 unwind label %.thread611.loopexit

.noexc348:                                        ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.p, ptr noundef nonnull align 32 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7272
  br label %bb.ec

bb.dv:                                            ; preds = %bb.ds
  %i.gt = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7275, !noundef !5 ; 5 uses
  %i.gu = icmp eq i64 %i.gt, -9223372036854775802
  br i1 %i.gu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.gv = icmp ne i64 %i.gt, -9223372036854775806
  call void @llvm.assume(i1 %i.gv)
  %i.gw = add nsw i64 %i.gt, 9223372036854775807
  %i.gx = icmp ugt i64 %i.gt, -9223372036854775808
  %i.gy = select i1 %i.gx, i64 %i.gw, i64 1
  switch i64 %i.gy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.dx
    i64 1, label %bb.dy
  ]

bb.dx:                                            ; preds = %bb.dw
  %.val.i.i352 = load ptr, ptr %i.y, align 8, !alias.scope !7278, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i352)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.ey

bb.dy:                                            ; preds = %bb.dw
  %i.gz = icmp eq i64 %i.gt, -9223372036854775808
  br i1 %i.gz, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351" unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body354 unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351": ; preds = %bb.dz
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.ey

bb.ec:                                            ; preds = %.noexc348, %bb.dt
  br i1 %i.z, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.hc = call i64 @llvm.uadd.sat.i64(i64 %i.cf, i64 %3)
  %.sroa.0.0.i358 = call noundef i64 @llvm.umin.i64(i64 %i.aj, i64 %i.hc)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.524.0 = phi i8 [ 0, %bb.ec ], [ 1, %bb.ed ]
  %.sroa.023.0 = phi i64 [ %i.cf, %bb.ec ], [ %.sroa.0.0.i358, %bb.ed ]
  %i.hd = invoke noundef align 32 dereferenceable(352) ptr @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$9repurpose17h6e27c6b7293c40e5E"(ptr noalias noundef nonnull align 32 dereferenceable(352) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 4, i64 noundef %i.cf, i64 noundef %i.aj)
          to label %bb.ef unwind label %.thread611.loopexit ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  store i64 %.sroa.023.0, ptr %i.aa, align 32
  store i8 %.sroa.524.0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17h343e5494dc7a7996E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 32 dereferenceable(384) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.eg unwind label %.thread611.loopexit

bb.eg:                                            ; preds = %bb.ef
  %i.he = load i64, ptr %i.l, align 8, !range !7165, !noundef !5 ; 2 uses
  %.not214 = icmp eq i64 %i.he, -9223372036854775802
  %.sroa.4127.0.copyload = load i64, ptr %.sroa.4127.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5128.0.copyload = load i64, ptr %.sroa.5128.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not214, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.he, ptr %i.hf, align 8
  %.sroa.2130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4127.0.copyload, ptr %.sroa.2130.0..sroa_idx, align 8
  %.sroa.3131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5128.0.copyload, ptr %.sroa.3131.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.dn

bb.ei:                                            ; preds = %bb.eg
  %i.hg = trunc nuw i64 %.sroa.4127.0.copyload to i1
  br i1 %i.hg, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.hh = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le1110 = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1110, 32
  %.sroa.23.28.insert.insert.le1101 = or disjoint i64 %.sroa.23.28.insert.shift.le, %i.hh
  %10 = shl i56 %.sroa.18.0.copyload.i, 24
  %11 = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le1090 = or disjoint i56 %10, %11
  %.sroa.6.16.extract.trunc.le = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le1090 to i32
  %.sroa.9.24.extract.trunc.le = trunc nuw i64 %.sroa.23.28.insert.insert.le1101 to i48
  %i.hi = sub i64 %.sroa.5128.0.copyload, %i.cf
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
  store i64 %i.hi, ptr %.sroa.541.0..sroa_idx, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.ek:                                            ; preds = %bb.ei
  %i.hj = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7281, !noundef !5 ; 5 uses
  %i.hk = icmp eq i64 %i.hj, -9223372036854775802
  br i1 %i.hk, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.hl = icmp ne i64 %i.hj, -9223372036854775806
  call void @llvm.assume(i1 %i.hl)
  %i.hm = add nsw i64 %i.hj, 9223372036854775807
  %i.hn = icmp ugt i64 %i.hj, -9223372036854775808
  %i.ho = select i1 %i.hn, i64 %i.hm, i64 1
  switch i64 %i.ho, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.em
    i64 1, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %.val.i.i361 = load ptr, ptr %i.y, align 8, !alias.scope !7284, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i361)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.en:                                            ; preds = %bb.el
  %i.hp = icmp eq i64 %i.hj, -9223372036854775808
  br i1 %i.hp, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body363 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360": ; preds = %bb.eo
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.er:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360", %bb.em
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body363

.body363:                                         ; preds = %bb.ep, %bb.er
  %eh.lpad-body364 = phi { ptr, i32 } [ %i.hs, %bb.er ], [ %i.hq, %bb.ep ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @294, ptr %i.y, align 8
  store i64 13, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345": ; preds = %bb.do, %bb.dn, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", %bb.dr, %bb.ej, %bb.c
  %i.ht = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7287, !noundef !5 ; 5 uses
  %i.hu = icmp eq i64 %i.ht, -9223372036854775802
  br i1 %i.hu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.es

bb.es:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"
  %i.hv = icmp ne i64 %i.ht, -9223372036854775806
  call void @llvm.assume(i1 %i.hv)
  %i.hw = add nsw i64 %i.ht, 9223372036854775807
  %i.hx = icmp ugt i64 %i.ht, -9223372036854775808
  %i.hy = select i1 %i.hx, i64 %i.hw, i64 1
  switch i64 %i.hy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" [
    i64 0, label %bb.et
    i64 1, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %.val.i.i369 = load ptr, ptr %i.y, align 8, !alias.scope !7290, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i369)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fo

bb.eu:                                            ; preds = %bb.es
  %i.hz = icmp eq i64 %i.ht, -9223372036854775808
  br i1 %i.hz, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368" unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body371 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368": ; preds = %bb.ev
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fo

bb.ey:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351", %bb.dx
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body354

.body354:                                         ; preds = %bb.ea, %bb.ey
  %eh.lpad-body355 = phi { ptr, i32 } [ %i.ic, %bb.ey ], [ %i.ha, %bb.ea ]
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
  %i.id = icmp eq i64 %i.av, 0
  br i1 %i.id, label %.backedge685.backedge, label %bb.ez

bb.ez:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.backedge685.backedge

bb.fa:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.x
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body245

.body245:                                         ; preds = %bb.aa, %bb.fa
  %eh.lpad-body246 = phi { ptr, i32 } [ %i.ie, %bb.fa ], [ %i.bw, %bb.aa ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @296, ptr %i.y, align 8
  store i64 27, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

.thread595:                                       ; preds = %.thread611.loopexit, %.thread611.loopexit.split-lp, %.thread643, %.body363, %.body354, %.thread646, %.body271, %.body261, %.body245, %bb.bk
  %.pn220594 = phi { ptr, i32 } [ %i.dm, %bb.bk ], [ %eh.lpad-body246, %.body245 ], [ %lpad.loopexit.split-lp683, %.thread611.loopexit.split-lp ], [ %eh.lpad-body364, %.body363 ], [ %eh.lpad-body355, %.body354 ], [ %eh.lpad-body340, %.thread643 ], [ %.pn642, %.thread646 ], [ %eh.lpad-body272, %.body271 ], [ %eh.lpad-body262, %.body261 ], [ %lpad.loopexit682, %.thread611.loopexit ] ; 2 uses
  %i.if = icmp eq i64 %i.av, 0
  br i1 %i.if, label %.thread548, label %bb.fb

bb.fb:                                            ; preds = %.thread595
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.thread548

bb.fc:                                            ; preds = %bb.s
  %i.ig = add nsw i64 %.sroa.9.sroa.0.0.insert.ext472, -1
  %.not677 = icmp eq i8 %.sroa.9.sroa.0.1.ph, 0   ; 2 uses
  %i.ih = select i1 %.not677, i64 1, i64 %i.ig
  switch i64 %i.ih, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" [
    i64 0, label %bb.fd
    i64 1, label %bb.fe
  ]

bb.fd:                                            ; preds = %bb.fc
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.bh)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" unwind label %.thread558.loopexit

bb.fe:                                            ; preds = %bb.fc
  br i1 %.not677, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread548 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

end_hunk_1
begin_hunk_2_@_ZN3zip4spec22find_central_directory17h1c4f7525214311beE:bb.a

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374": ; preds = %bb.eu, %bb.es, %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345", %bb.et, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !7325)
  %i.jc = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7325, !noundef !5
  %i.jd = icmp eq i64 %i.jc, 2
  br i1 %i.jd, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fp

bb.fp:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.experimental.noalias.scope.decl(metadata !7328)
  call void @llvm.experimental.noalias.scope.decl(metadata !7331)
  %i.je = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %.val1.i.i.i404 = load i64, ptr %i.je, align 8, !alias.scope !7334, !noundef !5 ; 2 uses
  %i.jf = icmp eq i64 %.val1.i.i.i404, 0
  br i1 %i.jf, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.jg = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %.val.i.i.i405 = load ptr, ptr %i.jg, align 16, !alias.scope !7334, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i405, i64 noundef range(i64 1, 0) %.val1.i.i.i404, i64 noundef 1) #29, !noalias !7334
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406": ; preds = %bb.fq, %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !7335)
  call void @llvm.experimental.noalias.scope.decl(metadata !7338)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !7341)
  call void @llvm.experimental.noalias.scope.decl(metadata !7344)
  %i.ji = load i64, ptr %i.jh, align 32, !range !2379, !alias.scope !7347, !noundef !5
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fr

bb.fr:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"
  %i.jk = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %.val1.i.i.i.i.i.i.i407 = load i64, ptr %i.jk, align 16, !alias.scope !7347, !noundef !5 ; 2 uses
  %i.jl = icmp eq i64 %.val1.i.i.i.i.i.i.i407, 0
  br i1 %i.jl, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.jm = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %.val.i.i.i.i.i.i.i408 = load ptr, ptr %i.jm, align 8, !alias.scope !7347, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i408, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i407, i64 noundef 1) #29, !noalias !7347
  br label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"

"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409": ; preds = %bb.fs, %bb.fr, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !7348)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.val1.i410 = load i64, ptr %i.jn, align 8, !alias.scope !7348, !noundef !5 ; 2 uses
  %i.jo = icmp eq i64 %.val1.i410, 0
  br i1 %i.jo, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412", label %bb.ft

bb.ft:                                            ; preds = %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.jp = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.val.i411 = load ptr, ptr %i.jp, align 8, !alias.scope !7348, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i411, i64 noundef range(i64 1, 0) %.val1.i410, i64 noundef 1) #29, !noalias !7348
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412": ; preds = %bb.ft, %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.jq = load i64, ptr %i.q, align 8, !range !2379, !alias.scope !7351, !noundef !5
  %i.jr = icmp eq i64 %i.jq, 0
  %i.js = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i.i.i.i413 = load i64, ptr %i.js, align 8 ; 2 uses
  %i.jt = icmp eq i64 %.val1.i.i.i.i.i413, 0
  %or.cond2011 = select i1 %i.jr, i1 true, i1 %i.jt
  br i1 %or.cond2011, label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415", label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split"

.thread548:                                       ; preds = %.thread558.loopexit, %.thread558.loopexit.split-lp, %bb.fb, %.thread595, %bb.cr, %bb.af, %bb.fg, %bb.k, %bb.j
  %.pn223547 = phi { ptr, i32 } [ %i.ii, %bb.fg ], [ %.pn220594, %.thread595 ], [ %i.ax, %bb.k ], [ %i.ax, %bb.j ], [ %lpad.thr_comm.split-lp610, %bb.af ], [ %i.fo, %bb.cr ], [ %.pn220594, %bb.fb ], [ %lpad.loopexit679, %.thread558.loopexit ], [ %lpad.loopexit.split-lp680, %.thread558.loopexit.split-lp ]
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
  %i.ah = load i64, ptr %i.n, align 8, !range !7165, !noundef !5 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.h, i8 0, i64 22, i1 false), !alias.scope !7367, !noalias !7360
  %i.am = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.h, i64 noundef 22)
          to label %.noexc unwind label %.thread558.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  %.sroa.09.0.copyload.i.i = load i32, ptr %i.h, align 4, !noalias !7360
  %.not4.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i, 101010256
  br i1 %.not4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i = phi i8 [ 1, %.noexc ], [ 0, %bb.f ]
  %.sroa.18.0.ph.i = phi ptr [ %i.am, %.noexc ], [ @285, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7360
  %i.an = ptrtoint ptr %.sroa.18.0.ph.i to i64    ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc455 = trunc i64 %i.an to i24
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %.sroa.6.5.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i, align 4, !noalias !7370 ; 3 uses
  %.sroa.8.i.sroa.5.0.copyload = load i16, ptr %.sroa.8.i.sroa.5.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7370 ; 3 uses
  %.sroa.8.i.sroa.6.0.copyload = load i16, ptr %.sroa.8.i.sroa.6.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 2, !noalias !7370 ; 4 uses
  %.sroa.8.i.sroa.7.0.copyload = load i24, ptr %.sroa.8.i.sroa.7.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7370 ; 3 uses
  %.sroa.18.0.copyload.i = load i56, ptr %.sroa.18.5..sroa.410.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !7370 ; 4 uses
  %.sroa.18.0.insert.ext.i = zext i56 %.sroa.18.0.copyload.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7360
  %.sroa.18.5.extract.shift.i = lshr i64 %.sroa.18.0.insert.ext.i, 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7371
  call void @llvm.experimental.noalias.scope.decl(metadata !7372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7375
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef range(i64 0, -44) %.sroa.18.5.extract.shift.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc241 unwind label %.thread558.loopexit

.noexc241:                                        ; preds = %bb.h
  %i.ao = load i64, ptr %i.g, align 8, !range !2379, !noalias !7375, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.u, align 8, !range !450, !noalias !7375, !noundef !5 ; 2 uses
  br i1 %i.ap, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i", !prof !116

bb.i:                                             ; preds = %.noexc241
  %i.ar = load i64, ptr %i.v, align 8, !noalias !7375
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.aq, i64 %i.ar) #26
          to label %.noexc242 unwind label %.thread558.loopexit.split-lp

.noexc242:                                        ; preds = %bb.i
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i": ; preds = %.noexc241
  %i.as = load ptr, ptr %i.v, align 8, !noalias !7375, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7375
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !7372, !noalias !7371
  store ptr %i.as, ptr %i.w, align 8, !alias.scope !7372, !noalias !7371
  store i64 %.sroa.18.5.extract.shift.i, ptr %i.x, align 8, !alias.scope !7372, !noalias !7371
  %i.at = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc243 unwind label %.thread558.loopexit ; 2 uses

.noexc243:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i"
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 11 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7371
  %i.aw = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.au, i64 noundef %i.av)
          to label %bb.l unwind label %bb.k, !noalias !7376 ; 4 uses

bb.j:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7376
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
  %i.az = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr nonnull %i.aw), !noalias !7376
  %i.ba = icmp eq i8 %i.az, 37
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.aw)
          to label %bb.p unwind label %bb.k, !noalias !7376

bb.o:                                             ; preds = %bb.m
  %i.bb = ptrtoint ptr %i.aw to i64               ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc = trunc i64 %i.bb to i24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.9.sroa.0.0 = phi i8 [ 0, %bb.n ], [ 1, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.10.0.in.in = phi i64 [ ptrtoint (ptr @298 to i64), %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.0.0 = phi i24 [ ptrtoint (ptr @298 to i24), %bb.n ], [ %.sroa.17451.sroa.0.0.extract.trunc, %bb.o ] ; 2 uses
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7376
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7377)
  %i.be = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7377, !noundef !5
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fj

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.g
  %.sroa.9.sroa.0.1.ph = phi i8 [ %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i, %bb.g ], [ %.sroa.9.sroa.0.0, %bb.q ], [ %.sroa.9.sroa.0.0, %bb.p ] ; 2 uses
  %.sroa.17451.sroa.10.1.ph.in.in = phi i64 [ %i.an, %bb.g ], [ %.sroa.17451.sroa.10.0.in.in, %bb.q ], [ %.sroa.17451.sroa.10.0.in.in, %bb.p ]
  %.sroa.17451.sroa.0.1.ph = phi i24 [ %.sroa.17451.sroa.0.0.extract.trunc455, %bb.g ], [ %.sroa.17451.sroa.0.0, %bb.q ], [ %.sroa.17451.sroa.0.0, %bb.p ]
  %.sroa.23.1.ph = phi i64 [ 32, %bb.g ], [ 34, %bb.q ], [ 34, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.9.sroa.0.0.insert.ext472 = zext nneg i8 %.sroa.9.sroa.0.1.ph to i64 ; 2 uses
  %.sroa.9.sroa.0.0.insert.insert474 = or disjoint i64 %.sroa.9.sroa.0.0.insert.ext472, -9223372036854775808
  store i64 %.sroa.9.sroa.0.0.insert.insert474, ptr %i.m, align 8
  %.sroa.17451.sroa.9.0.insert.insert459 = and i64 %.sroa.17451.sroa.10.1.ph.in.in, -16777216
  %.sroa.17451.sroa.0.0.insert.ext452 = zext i24 %.sroa.17451.sroa.0.1.ph to i64
  %.sroa.17451.sroa.0.0.insert.insert454 = or disjoint i64 %.sroa.17451.sroa.9.0.insert.insert459, %.sroa.17451.sroa.0.0.insert.ext452 ; 2 uses
  store i64 %.sroa.17451.sroa.0.0.insert.insert454, ptr %.sroa.17451.8..sroa_idx, align 8
  store i64 %.sroa.23.1.ph, ptr %.sroa.23.8..sroa_idx, align 8
  %i.bg = load i64, ptr %i.o, align 8, !range !7165, !noundef !5
  %.not222 = icmp eq i64 %i.bg, -9223372036854775802
  %i.bh = inttoptr i64 %.sroa.17451.sroa.0.0.insert.insert454 to ptr
  br i1 %.not222, label %bb.fi, label %bb.fc

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
  %i.bp = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7380, !noundef !5 ; 5 uses
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
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !7383, !nonnull !5, !noundef !5
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7386
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false), !alias.scope !7396, !noalias !7386
  %i.cd = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.f, i64 noundef 20)
          to label %.noexc249 unwind label %.thread611.loopexit ; 2 uses

.noexc249:                                        ; preds = %bb.ad
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.ae, label %.thread1584

.thread1584:                                      ; preds = %.noexc249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7386
  br label %bb.ah

bb.ae:                                            ; preds = %.noexc249
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.f, align 4, !noalias !7386
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7386
  br label %.critedge

bb.ah:                                            ; preds = %.thread1584, %.thread
  %.val.i.i2521580.ph = phi ptr [ %i.cd, %.thread1584 ], [ %i.cc, %.thread ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i2521580.ph)
          to label %.critedge unwind label %.thread611.loopexit

bb.ai:                                            ; preds = %bb.ae
  %.sroa.6.i.sroa.0.0.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i.i, align 4, !noalias !7399 ; 2 uses
  %.sroa.6.i.sroa.5.0.copyload.i = load i56, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 4, !noalias !7399
  %.sroa.13.0.copyload.i.i = load i40, ptr %.sroa.13.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7399 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7386
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
  %i.ci = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7400, !noundef !5 ; 5 uses
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
  %.val.i.i259 = load ptr, ptr %i.y, align 8, !alias.scope !7403, !nonnull !5, !noundef !5
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7406)
  %i.cr = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7406, !noundef !5
  %.not.i265 = icmp eq i64 %i.cr, 2
  br i1 %.not.i265, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7406
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr noalias noundef nonnull sret([384 x i8]) align 32 captures(address) dereferenceable(384) %i.e)
          to label %.noexc266 unwind label %.thread611.loopexit

.noexc266:                                        ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.p, ptr noundef nonnull align 32 dereferenceable(384) %i.e, i64 384, i1 false)
end_hunk_2
begin_hunk_3_@_ZN3zip4spec22find_central_directory17h49732f9e6201aebdE:bb.a
.noexc295:                                        ; preds = %bb.bn
  %.not.i.i.i284 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i284, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc295
  %.sroa.09.0.copyload.i.i.i286 = load i32, ptr %i.c, align 4, !noalias !7421
  %.not4.i.i.i287 = icmp eq i32 %.sroa.09.0.copyload.i.i.i286, 101075792
  br i1 %.not4.i.i.i287, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.noexc295
  %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i = phi i64 [ -9223372036854775807, %.noexc295 ], [ -9223372036854775808, %bb.bo ]
  %.sroa.15.0.ph.i.i = phi ptr [ %i.dq, %.noexc295 ], [ @285, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7421
  %i.dr = ptrtoint ptr %.sroa.15.0.ph.i.i to i64
  br label %bb.cd

bb.bq:                                            ; preds = %bb.bo
  %.sroa.6.i.sroa.0.0.copyload.i289 = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i288, align 4, !noalias !7434 ; 5 uses
  %.sroa.6.i.sroa.5.0.copyload.i291 = load i16, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i290, align 4, !noalias !7434
  %.sroa.6.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 2, !noalias !7434
  %.sroa.15.5.copyload.i.i = load ptr, ptr %.sroa.15.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7434
  %.sroa.22.5.copyload.i.i = load i8, ptr %.sroa.22.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7434
  %.sroa.26.5.copyload.i.i = load i64, ptr %.sroa.26.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7434
  %i.ds = load <2 x i64>, ptr %.sroa.24.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7434
  %.sroa.28.5.copyload.i.i = load i64, ptr %.sroa.28.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7434
  %i.dt = load <2 x i64>, ptr %.sroa.27.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7421
  %i.du = ptrtoint ptr %.sroa.15.5.copyload.i.i to i64 ; 3 uses
  %.sroa.15.5.extract.shift.i.i = lshr i64 %i.du, 40
  %.sroa.15.5.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.15.5.extract.shift.i.i to i32
  %i.dv = icmp ult i64 %.sroa.6.i.sroa.0.0.copyload.i289, 44
  br i1 %i.dv, label %bb.cd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dw = call i64 @llvm.uadd.sat.i64(i64 %.sroa.6.i.sroa.0.0.copyload.i289, i64 12)
  %i.dx = icmp ugt i64 %i.dw, %i.dp
  br i1 %i.dx, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7435
  %i.dy = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, -44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7439
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 0, -44) %i.dy, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc296 unwind label %.thread656.loopexit

.noexc296:                                        ; preds = %bb.bs
  %i.dz = load i64, ptr %i.b, align 8, !range !2379, !noalias !7439, !noundef !5
  %i.ea = trunc nuw i64 %i.dz to i1
  %i.eb = load i64, ptr %i.ac, align 8, !range !450, !noalias !7439, !noundef !5 ; 2 uses
  br i1 %i.ea, label %bb.bt, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !116

bb.bt:                                            ; preds = %.noexc296
  %i.ec = load i64, ptr %i.ad, align 8, !noalias !7439
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eb, i64 %i.ec) #26
          to label %.noexc297 unwind label %.thread656.loopexit.split-lp

.noexc297:                                        ; preds = %bb.bt
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %.noexc296
  %i.ed = load ptr, ptr %i.ad, align 8, !noalias !7439, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7439
  store i64 %i.eb, ptr %i.d, align 8, !alias.scope !7436, !noalias !7435
  store ptr %i.ed, ptr %i.ae, align 8, !alias.scope !7436, !noalias !7435
  store i64 %i.dy, ptr %i.af, align 8, !alias.scope !7436, !noalias !7435
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc298 unwind label %.thread656.loopexit ; 2 uses

.noexc298:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 8 uses
  %i.eg = extractvalue { ptr, i64 } %i.ee, 1      ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7435
  %i.eh = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.ef, i64 noundef %i.eg)
          to label %bb.bw unwind label %bb.bu, !noalias !7440 ; 2 uses

bb.bu:                                            ; preds = %.noexc298
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %.thread646, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7440
  br label %.thread646

bb.bw:                                            ; preds = %.noexc298
  %.not.i.i292 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i292, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ek = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.el = icmp eq i64 %i.eg, 0
  br i1 %i.el, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7440
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bw
  %.sroa.67.sroa.8.31.insert.ext.i = zext i8 %.sroa.22.5.copyload.i.i to i32
  %.sroa.67.sroa.8.31.insert.shift.i = shl nuw i32 %.sroa.67.sroa.8.31.insert.ext.i, 24
  %.sroa.67.sroa.8.31.insert.insert.i = or disjoint i32 %.sroa.67.sroa.8.31.insert.shift.i, %.sroa.15.5.extract.trunc.i.i
  %.not.i293 = icmp eq i32 %.sroa.67.sroa.8.31.insert.insert.i, %.sroa.6.i.sroa.0.0.copyload.i
  br i1 %.not.i293, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.em = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, 12
  %.not20.i = icmp eq i64 %i.em, %i.dp
  br i1 %.not20.i, label %_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink62.i = phi ptr [ @288, %bb.bz ], [ @287, %bb.ca ]
  %.sink.i294 = phi i64 [ 47, %bb.bz ], [ 35, %bb.ca ] ; 2 uses
  %i.en = ptrtoint ptr %.sink62.i to i64          ; 2 uses
  %i.eo = icmp eq i64 %i.eg, 0
  br i1 %i.eo, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7441
  br label %bb.cd

"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit": ; preds = %bb.bm
  %.sroa.0535.0.copyload = load i64, ptr %i.k, align 8 ; 2 uses
  %.not.i301 = icmp eq i64 %.sroa.0535.0.copyload, -9223372036854775802 ; 3 uses
  %.sroa.5537.sroa.4.0.copyload = load i64, ptr %.sroa.5537.sroa.4.0..sroa.5537.0..sroa_idx.sroa_idx, align 8
  %.sroa.5537.sroa.0.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.6542.sroa.6.0 = select i1 %.not.i301, i64 21, i64 %.sroa.5537.sroa.4.0.copyload ; 2 uses
  %.sroa.6542.sroa.0.0 = select i1 %.not.i301, ptr @290, ptr %.sroa.5537.sroa.0.0.copyload ; 2 uses
  %.sroa.0539.0 = select i1 %.not.i301, i64 -9223372036854775808, i64 %.sroa.0535.0.copyload ; 2 uses
  %i.ep = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7442, !noundef !5 ; 5 uses
  %i.eq = icmp eq i64 %i.ep, -9223372036854775802
  br i1 %i.eq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", label %bb.df

bb.cd:                                            ; preds = %bb.cc, %bb.bp, %bb.cb, %bb.by, %bb.bx, %bb.br, %bb.bq
  %.sroa.9501.0.ph = phi i64 [ -9223372036854775808, %bb.bq ], [ -9223372036854775807, %bb.bx ], [ -9223372036854775807, %bb.by ], [ -9223372036854775808, %bb.br ], [ -9223372036854775808, %bb.cb ], [ %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i, %bb.bp ], [ -9223372036854775808, %bb.cc ] ; 2 uses
  %.sroa.13.0.ph = phi i64 [ ptrtoint (ptr @301 to i64), %bb.bq ], [ %i.ek, %bb.bx ], [ %i.ek, %bb.by ], [ ptrtoint (ptr @300 to i64), %bb.br ], [ %i.en, %bb.cb ], [ %i.dr, %bb.bp ], [ %i.en, %bb.cc ] ; 2 uses
  %.sroa.16.0.ph = phi i64 [ 22, %bb.bq ], [ undef, %bb.bx ], [ undef, %bb.by ], [ 36, %bb.br ], [ %.sink.i294, %bb.cb ], [ 32, %bb.bp ], [ %.sink.i294, %bb.cc ] ; 2 uses
  %i.er = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7445, !noundef !5 ; 5 uses
  %i.es = icmp eq i64 %i.er, -9223372036854775802
  br i1 %i.es, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.et = icmp ne i64 %i.er, -9223372036854775806
  call void @llvm.assume(i1 %i.et)
  %i.eu = add nsw i64 %i.er, 9223372036854775807
  %i.ev = icmp ugt i64 %i.er, -9223372036854775808
  %i.ew = select i1 %i.ev, i64 %i.eu, i64 1
  switch i64 %i.ew, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" [
    i64 0, label %bb.cf
    i64 1, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %.val.i.i309 = load ptr, ptr %i.ag, align 8, !alias.scope !7448, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i309)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

bb.cg:                                            ; preds = %bb.ce
  %i.ex = icmp eq i64 %i.er, -9223372036854775808
  br i1 %i.ex, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308" unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body311 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308": ; preds = %bb.ch
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit: ; preds = %bb.ca
  %i.fa = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.26.5.copyload.i.i, i64 46) ; 2 uses
  %i.fb = extractvalue { i64, i1 } %i.fa, 0
  %i.fc = extractvalue { i64, i1 } %i.fa, 1
  br i1 %i.fc, label %bb.ck, label %bb.cl, !prof !116

bb.ck:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit, %bb.ck
  %.sroa.0189.0 = phi i64 [ -1, %bb.ck ], [ %i.fb, %_ZN3zip4spec22find_central_directory15try_read_eocd6417h20a80cfa3eac08bcE.exit ]
  %i.fd = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0189.0, i64 %.sroa.28.5.copyload.i.i)
  %i.fe = icmp ult i64 %.sroa.5179.0.copyload, %i.fd
  br i1 %i.fe, label %bb.ct, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ff = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le1106 = shl nuw nsw i64 %.sroa.23.28.insert.ext.le, 32
  %.sroa.23.28.insert.insert.le = or disjoint i64 %.sroa.23.28.insert.shift.le1106, %i.ff
  %6 = shl i56 %.sroa.18.0.copyload.i, 24
  %7 = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le = or disjoint i56 %6, %7
  %.sroa.6.16.extract.trunc.le1083 = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le to i32
  %.sroa.9.24.extract.trunc.le1079 = trunc nuw i64 %.sroa.23.28.insert.insert.le to i48
  %i.fg = sub i64 %.sroa.5179.0.copyload, %.sroa.7.sroa.0.0.insert.insert.i
  %.sroa.15.1.extract.shift.i.i.le = lshr i64 %i.du, 8
  %.sroa.15.1.extract.trunc.i.i.le = trunc i64 %.sroa.15.1.extract.shift.i.i.le to i32
  %.sroa.67.sroa.11.32.insert.ext.i.le = zext i16 %.sroa.6.i.sroa.5.0.copyload.i291 to i64
  %.sroa.67.sroa.11.34.insert.ext.i.le = zext i8 %.sroa.6.i.sroa.6.0.copyload.i to i64
  %.sroa.67.sroa.11.34.insert.shift.i.le = shl nuw nsw i64 %.sroa.67.sroa.11.34.insert.ext.i.le, 16
  %.sroa.67.sroa.11.34.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.shift.i.le, %.sroa.67.sroa.11.32.insert.ext.i.le
  %.sroa.67.sroa.11.35.insert.ext.i.le = shl i64 %i.du, 24
  %.sroa.67.sroa.11.35.insert.shift.i.le = and i64 %.sroa.67.sroa.11.35.insert.ext.i.le, 4278190080
  %.sroa.67.sroa.11.35.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.insert.i.le, %.sroa.67.sroa.11.35.insert.shift.i.le
  store ptr %i.au, ptr %0, align 8
  %.sroa.062.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.062.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le1083, ptr %.sroa.062.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.062.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.062.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le1079, ptr %.sroa.062.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.062.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.062.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.062.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ef, ptr %.sroa.062.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.eg, ptr %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.6.i.sroa.0.0.copyload.i289, ptr %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ds, ptr %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.dt, ptr %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.15.1.extract.trunc.i.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.sroa.6.i.sroa.0.0.copyload.i, ptr %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.67.sroa.11.35.insert.insert.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.fg, ptr %.sroa.563.0..sroa_idx, align 8
  %i.fh = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7451, !noundef !5 ; 5 uses
  %i.fi = icmp eq i64 %i.fh, -9223372036854775802
  br i1 %i.fi, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fj = icmp ne i64 %i.fh, -9223372036854775806
  call void @llvm.assume(i1 %i.fj)
  %i.fk = add nsw i64 %i.fh, 9223372036854775807
  %i.fl = icmp ugt i64 %i.fh, -9223372036854775808
  %i.fm = select i1 %i.fl, i64 %i.fk, i64 1
  switch i64 %i.fm, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" [
    i64 0, label %bb.co
    i64 1, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %.val.i.i317 = load ptr, ptr %i.ag, align 8, !alias.scope !7454, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i317)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.cp:                                            ; preds = %bb.cn
  %i.fn = icmp eq i64 %i.fh, -9223372036854775808
  br i1 %i.fn, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316" unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread548 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316": ; preds = %bb.cq
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.ct:                                            ; preds = %bb.cl
  %i.fq = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7457, !noundef !5 ; 5 uses
  %i.fr = icmp eq i64 %i.fq, -9223372036854775802
  br i1 %i.fr, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.fs = icmp ne i64 %i.fq, -9223372036854775806
  call void @llvm.assume(i1 %i.fs)
  %i.ft = add nsw i64 %i.fq, 9223372036854775807
  %i.fu = icmp ugt i64 %i.fq, -9223372036854775808
  %i.fv = select i1 %i.fu, i64 %i.ft, i64 1
  switch i64 %i.fv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i326 = load ptr, ptr %i.ag, align 8, !alias.scope !7460, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i326)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

bb.cw:                                            ; preds = %bb.cu
  %i.fw = icmp eq i64 %i.fq, -9223372036854775808
  br i1 %i.fw, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325" unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body328 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325": ; preds = %bb.cx
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323": ; preds = %bb.cp, %bb.cn, %bb.cm, %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.da:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325", %bb.cv
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body328

.body328:                                         ; preds = %bb.cy, %bb.da
  %eh.lpad-body329 = phi { ptr, i32 } [ %i.fz, %bb.da ], [ %i.fx, %bb.cy ] ; 2 uses
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.ga = icmp eq i64 %i.eg, 0
  br i1 %i.ga, label %.thread646, label %bb.db

bb.db:                                            ; preds = %.body328
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331": ; preds = %bb.cw, %bb.cu, %bb.ct, %bb.cv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325"
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.gb = icmp eq i64 %i.eg, 0
  br i1 %i.gb, label %.backedge.backedge, label %bb.dc

.backedge.backedge:                               ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", %bb.dc, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314"
  br label %.backedge

bb.dc:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.backedge.backedge

bb.dd:                                            ; preds = %.thread548, %.thread646
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.de:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308", %bb.cf
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body311

.body311:                                         ; preds = %bb.ci, %bb.de
  %eh.lpad-body312 = phi { ptr, i32 } [ %i.gd, %bb.de ], [ %i.ey, %bb.ci ]
  store i64 %.sroa.9501.0.ph, ptr %i.k, align 8
  store i64 %.sroa.13.0.ph, ptr %i.ag, align 8
  store i64 %.sroa.16.0.ph, ptr %.sroa.6201.0..sroa_idx202, align 8
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314": ; preds = %bb.cg, %bb.ce, %bb.cd, %bb.cf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308"
  store i64 %.sroa.9501.0.ph, ptr %i.k, align 8
  store i64 %.sroa.13.0.ph, ptr %i.ag, align 8
  store i64 %.sroa.16.0.ph, ptr %.sroa.6201.0..sroa_idx202, align 8
  br label %.backedge.backedge

bb.df:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit"
  %i.ge = icmp ne i64 %i.ep, -9223372036854775806
  call void @llvm.assume(i1 %i.ge)
  %i.gf = add nsw i64 %i.ep, 9223372036854775807
  %i.gg = icmp ugt i64 %i.ep, -9223372036854775808
  %i.gh = select i1 %i.gg, i64 %i.gf, i64 1
  switch i64 %i.gh, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342" [
    i64 0, label %bb.dg
    i64 1, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %.val.i.i337 = load ptr, ptr %i.y, align 8, !alias.scope !7463, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i337)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342" unwind label %bb.dl

bb.dh:                                            ; preds = %bb.df
  %i.gi = icmp eq i64 %i.ep, -9223372036854775808
  br i1 %i.gi, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", label %bb.di

bb.di:                                            ; preds = %bb.dh
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336" unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.thread643 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336": ; preds = %bb.di
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342" unwind label %bb.dl

bb.dl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336", %bb.dg
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.thread643

.thread643:                                       ; preds = %bb.dl, %bb.dj
  %eh.lpad-body340 = phi { ptr, i32 } [ %i.gl, %bb.dl ], [ %i.gj, %bb.dj ]
  store i64 %.sroa.0539.0, ptr %i.o, align 8
  store ptr %.sroa.6542.sroa.0.0, ptr %i.y, align 8
  %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6542.sroa.6.0, ptr %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx.sroa_idx, align 8
  br label %.thread595

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342": ; preds = %bb.dh, %bb.df, %"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit", %bb.dg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336"
  store i64 %.sroa.0539.0, ptr %i.o, align 8
  store ptr %.sroa.6542.sroa.0.0, ptr %i.y, align 8
  store i64 %.sroa.6542.sroa.6.0, ptr %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx543.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gm = icmp eq i64 %i.av, 0
  br i1 %i.gm, label %.backedge685.backedge, label %bb.dm

bb.dm:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.backedge685.backedge

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283": ; preds = %bb.bi, %bb.bg, %bb.bf, %bb.bh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.eh, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283"
  %i.gn = icmp eq i64 %i.av, 0
  br i1 %i.gn, label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345", label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

.thread646:                                       ; preds = %.thread656.loopexit, %.thread656.loopexit.split-lp, %bb.db, %.body328, %.body311, %bb.bv, %bb.bu
  %.pn642 = phi { ptr, i32 } [ %i.ei, %bb.bv ], [ %eh.lpad-body329, %bb.db ], [ %i.ei, %bb.bu ], [ %eh.lpad-body312, %.body311 ], [ %eh.lpad-body329, %.body328 ], [ %lpad.loopexit, %.thread656.loopexit ], [ %lpad.loopexit.split-lp, %.thread656.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #27
          to label %.thread595 unwind label %bb.dd

bb.dp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268", %bb.av
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body271

.body271:                                         ; preds = %bb.ay, %bb.dp
  %eh.lpad-body272 = phi { ptr, i32 } [ %i.go, %bb.dp ], [ %i.cz, %bb.ay ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @291, ptr %i.y, align 8
  store i64 38, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

bb.dq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258", %bb.am
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body261

.body261:                                         ; preds = %bb.ap, %bb.dq
  %eh.lpad-body262 = phi { ptr, i32 } [ %i.gp, %bb.dq ], [ %i.cp, %bb.ap ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @292, ptr %i.y, align 8
  store i64 32, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

bb.dr:                                            ; preds = %.critedge
  %i.gq = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le1108 = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le1104 = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1108, 32
  %.sroa.23.28.insert.insert.le1098 = or disjoint i64 %.sroa.23.28.insert.shift.le1104, %i.gq
  %8 = shl i56 %.sroa.18.0.copyload.i, 24
  %9 = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le1087 = or disjoint i56 %8, %9
  %.sroa.6.16.extract.trunc.le1081 = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le1087 to i32
  %.sroa.9.24.extract.trunc.le1077 = trunc nuw i64 %.sroa.23.28.insert.insert.le1098 to i48
  %i.gr = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %i.cf)
  store ptr %i.au, ptr %0, align 8
  %.sroa.019.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.019.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.019.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le1081, ptr %.sroa.019.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.019.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.019.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.019.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le1077, ptr %.sroa.019.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.019.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 0, ptr %.sroa.019.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.019.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.019.sroa.4.0..sroa_idx, align 8
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.019.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.gr, ptr %.sroa.5.0..sroa_idx, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.ds:                                            ; preds = %.critedge
  %.not213 = icmp ugt i64 %i.aj, %i.cf
  br i1 %.not213, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !7466)
  %i.gs = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7466, !noundef !5
  %.not.i346 = icmp eq i64 %i.gs, 2
  br i1 %.not.i346, label %bb.du, label %bb.ec

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7466
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr noalias noundef nonnull sret([384 x i8]) align 32 captures(address) dereferenceable(384) %i.a)
          to label %.noexc348 unwind label %.thread611.loopexit

.noexc348:                                        ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.p, ptr noundef nonnull align 32 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7466
  br label %bb.ec

bb.dv:                                            ; preds = %bb.ds
  %i.gt = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7469, !noundef !5 ; 5 uses
  %i.gu = icmp eq i64 %i.gt, -9223372036854775802
  br i1 %i.gu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.gv = icmp ne i64 %i.gt, -9223372036854775806
  call void @llvm.assume(i1 %i.gv)
  %i.gw = add nsw i64 %i.gt, 9223372036854775807
  %i.gx = icmp ugt i64 %i.gt, -9223372036854775808
  %i.gy = select i1 %i.gx, i64 %i.gw, i64 1
  switch i64 %i.gy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.dx
    i64 1, label %bb.dy
  ]

bb.dx:                                            ; preds = %bb.dw
  %.val.i.i352 = load ptr, ptr %i.y, align 8, !alias.scope !7472, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i352)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.ey

bb.dy:                                            ; preds = %bb.dw
  %i.gz = icmp eq i64 %i.gt, -9223372036854775808
  br i1 %i.gz, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351" unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body354 unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351": ; preds = %bb.dz
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.ey

bb.ec:                                            ; preds = %.noexc348, %bb.dt
  br i1 %i.z, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.hc = call i64 @llvm.uadd.sat.i64(i64 %i.cf, i64 %3)
  %.sroa.0.0.i358 = call noundef i64 @llvm.umin.i64(i64 %i.aj, i64 %i.hc)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.524.0 = phi i8 [ 0, %bb.ec ], [ 1, %bb.ed ]
  %.sroa.023.0 = phi i64 [ %i.cf, %bb.ec ], [ %.sroa.0.0.i358, %bb.ed ]
  %i.hd = invoke noundef align 32 dereferenceable(352) ptr @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$9repurpose17h6e27c6b7293c40e5E"(ptr noalias noundef nonnull align 32 dereferenceable(352) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 4, i64 noundef %i.cf, i64 noundef %i.aj)
          to label %bb.ef unwind label %.thread611.loopexit ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  store i64 %.sroa.023.0, ptr %i.aa, align 32
  store i8 %.sroa.524.0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17ha207c59479bdd451E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 32 dereferenceable(384) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.eg unwind label %.thread611.loopexit

bb.eg:                                            ; preds = %bb.ef
  %i.he = load i64, ptr %i.l, align 8, !range !7165, !noundef !5 ; 2 uses
  %.not214 = icmp eq i64 %i.he, -9223372036854775802
  %.sroa.4127.0.copyload = load i64, ptr %.sroa.4127.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5128.0.copyload = load i64, ptr %.sroa.5128.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not214, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.he, ptr %i.hf, align 8
  %.sroa.2130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4127.0.copyload, ptr %.sroa.2130.0..sroa_idx, align 8
  %.sroa.3131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5128.0.copyload, ptr %.sroa.3131.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.dn

bb.ei:                                            ; preds = %bb.eg
  %i.hg = trunc nuw i64 %.sroa.4127.0.copyload to i1
  br i1 %i.hg, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.hh = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le1110 = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1110, 32
  %.sroa.23.28.insert.insert.le1101 = or disjoint i64 %.sroa.23.28.insert.shift.le, %i.hh
  %10 = shl i56 %.sroa.18.0.copyload.i, 24
  %11 = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le1090 = or disjoint i56 %10, %11
  %.sroa.6.16.extract.trunc.le = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le1090 to i32
  %.sroa.9.24.extract.trunc.le = trunc nuw i64 %.sroa.23.28.insert.insert.le1101 to i48
  %i.hi = sub i64 %.sroa.5128.0.copyload, %i.cf
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
  store i64 %i.hi, ptr %.sroa.541.0..sroa_idx, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.ek:                                            ; preds = %bb.ei
  %i.hj = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7475, !noundef !5 ; 5 uses
  %i.hk = icmp eq i64 %i.hj, -9223372036854775802
  br i1 %i.hk, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.hl = icmp ne i64 %i.hj, -9223372036854775806
  call void @llvm.assume(i1 %i.hl)
  %i.hm = add nsw i64 %i.hj, 9223372036854775807
  %i.hn = icmp ugt i64 %i.hj, -9223372036854775808
  %i.ho = select i1 %i.hn, i64 %i.hm, i64 1
  switch i64 %i.ho, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.em
    i64 1, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %.val.i.i361 = load ptr, ptr %i.y, align 8, !alias.scope !7478, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i361)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.en:                                            ; preds = %bb.el
  %i.hp = icmp eq i64 %i.hj, -9223372036854775808
  br i1 %i.hp, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body363 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360": ; preds = %bb.eo
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.er:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360", %bb.em
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body363

.body363:                                         ; preds = %bb.ep, %bb.er
  %eh.lpad-body364 = phi { ptr, i32 } [ %i.hs, %bb.er ], [ %i.hq, %bb.ep ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @294, ptr %i.y, align 8
  store i64 13, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345": ; preds = %bb.do, %bb.dn, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", %bb.dr, %bb.ej, %bb.c
  %i.ht = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7481, !noundef !5 ; 5 uses
  %i.hu = icmp eq i64 %i.ht, -9223372036854775802
  br i1 %i.hu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.es

bb.es:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"
  %i.hv = icmp ne i64 %i.ht, -9223372036854775806
  call void @llvm.assume(i1 %i.hv)
  %i.hw = add nsw i64 %i.ht, 9223372036854775807
  %i.hx = icmp ugt i64 %i.ht, -9223372036854775808
  %i.hy = select i1 %i.hx, i64 %i.hw, i64 1
  switch i64 %i.hy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" [
    i64 0, label %bb.et
    i64 1, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %.val.i.i369 = load ptr, ptr %i.y, align 8, !alias.scope !7484, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i369)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fo

bb.eu:                                            ; preds = %bb.es
  %i.hz = icmp eq i64 %i.ht, -9223372036854775808
  br i1 %i.hz, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368" unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body371 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368": ; preds = %bb.ev
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fo

bb.ey:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351", %bb.dx
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body354

.body354:                                         ; preds = %bb.ea, %bb.ey
  %eh.lpad-body355 = phi { ptr, i32 } [ %i.ic, %bb.ey ], [ %i.ha, %bb.ea ]
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
  %i.id = icmp eq i64 %i.av, 0
  br i1 %i.id, label %.backedge685.backedge, label %bb.ez

bb.ez:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.backedge685.backedge

bb.fa:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.x
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body245

.body245:                                         ; preds = %bb.aa, %bb.fa
  %eh.lpad-body246 = phi { ptr, i32 } [ %i.ie, %bb.fa ], [ %i.bw, %bb.aa ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @296, ptr %i.y, align 8
  store i64 27, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

.thread595:                                       ; preds = %.thread611.loopexit, %.thread611.loopexit.split-lp, %.thread643, %.body363, %.body354, %.thread646, %.body271, %.body261, %.body245, %bb.bk
  %.pn220594 = phi { ptr, i32 } [ %i.dm, %bb.bk ], [ %eh.lpad-body246, %.body245 ], [ %lpad.loopexit.split-lp683, %.thread611.loopexit.split-lp ], [ %eh.lpad-body364, %.body363 ], [ %eh.lpad-body355, %.body354 ], [ %eh.lpad-body340, %.thread643 ], [ %.pn642, %.thread646 ], [ %eh.lpad-body272, %.body271 ], [ %eh.lpad-body262, %.body261 ], [ %lpad.loopexit682, %.thread611.loopexit ] ; 2 uses
  %i.if = icmp eq i64 %i.av, 0
  br i1 %i.if, label %.thread548, label %bb.fb

bb.fb:                                            ; preds = %.thread595
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.thread548

bb.fc:                                            ; preds = %bb.s
  %i.ig = add nsw i64 %.sroa.9.sroa.0.0.insert.ext472, -1
  %.not677 = icmp eq i8 %.sroa.9.sroa.0.1.ph, 0   ; 2 uses
  %i.ih = select i1 %.not677, i64 1, i64 %i.ig
  switch i64 %i.ih, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" [
    i64 0, label %bb.fd
    i64 1, label %bb.fe
  ]

bb.fd:                                            ; preds = %bb.fc
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.bh)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" unwind label %.thread558.loopexit

bb.fe:                                            ; preds = %bb.fc
  br i1 %.not677, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread548 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

end_hunk_3
begin_hunk_4_@_ZN3zip4spec22find_central_directory17h49732f9e6201aebdE:bb.a

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374": ; preds = %bb.eu, %bb.es, %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345", %bb.et, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !7519)
  %i.jc = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7519, !noundef !5
  %i.jd = icmp eq i64 %i.jc, 2
  br i1 %i.jd, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fp

bb.fp:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.experimental.noalias.scope.decl(metadata !7522)
  call void @llvm.experimental.noalias.scope.decl(metadata !7525)
  %i.je = getelementptr inbounds nuw i8, ptr %i.p, i64 312
  %.val1.i.i.i404 = load i64, ptr %i.je, align 8, !alias.scope !7528, !noundef !5 ; 2 uses
  %i.jf = icmp eq i64 %.val1.i.i.i404, 0
  br i1 %i.jf, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.jg = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %.val.i.i.i405 = load ptr, ptr %i.jg, align 16, !alias.scope !7528, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i405, i64 noundef range(i64 1, 0) %.val1.i.i.i404, i64 noundef 1) #29, !noalias !7528
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406": ; preds = %bb.fq, %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !7529)
  call void @llvm.experimental.noalias.scope.decl(metadata !7532)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !7535)
  call void @llvm.experimental.noalias.scope.decl(metadata !7538)
  %i.ji = load i64, ptr %i.jh, align 32, !range !2379, !alias.scope !7541, !noundef !5
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fr

bb.fr:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406"
  %i.jk = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %.val1.i.i.i.i.i.i.i407 = load i64, ptr %i.jk, align 16, !alias.scope !7541, !noundef !5 ; 2 uses
  %i.jl = icmp eq i64 %.val1.i.i.i.i.i.i.i407, 0
  br i1 %i.jl, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409", label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.jm = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %.val.i.i.i.i.i.i.i408 = load ptr, ptr %i.jm, align 8, !alias.scope !7541, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i408, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i407, i64 noundef 1) #29, !noalias !7541
  br label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"

"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409": ; preds = %bb.fs, %bb.fr, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i.i.i406", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !7542)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.val1.i410 = load i64, ptr %i.jn, align 8, !alias.scope !7542, !noundef !5 ; 2 uses
  %i.jo = icmp eq i64 %.val1.i410, 0
  br i1 %i.jo, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412", label %bb.ft

bb.ft:                                            ; preds = %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.jp = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %.val.i411 = load ptr, ptr %i.jp, align 8, !alias.scope !7542, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i411, i64 noundef range(i64 1, 0) %.val1.i410, i64 noundef 1) #29, !noalias !7542
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i412": ; preds = %bb.ft, %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit409"
  %i.jq = load i64, ptr %i.q, align 8, !range !2379, !alias.scope !7545, !noundef !5
  %i.jr = icmp eq i64 %i.jq, 0
  %i.js = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val1.i.i.i.i.i413 = load i64, ptr %i.js, align 8 ; 2 uses
  %i.jt = icmp eq i64 %.val1.i.i.i.i.i413, 0
  %or.cond2011 = select i1 %i.jr, i1 true, i1 %i.jt
  br i1 %or.cond2011, label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415", label %"_ZN4core3ptr99drop_in_place$LT$zip..read..magic_finder..MagicFinder$LT$zip..read..magic_finder..Backwards$GT$$GT$17h60db2a8a0926ba27E.exit415.sink.split"

.thread548:                                       ; preds = %.thread558.loopexit, %.thread558.loopexit.split-lp, %bb.fb, %.thread595, %bb.cr, %bb.af, %bb.fg, %bb.k, %bb.j
  %.pn223547 = phi { ptr, i32 } [ %i.ii, %bb.fg ], [ %.pn220594, %.thread595 ], [ %i.ax, %bb.k ], [ %i.ax, %bb.j ], [ %lpad.thr_comm.split-lp610, %bb.af ], [ %i.fo, %bb.cr ], [ %.pn220594, %bb.fb ], [ %lpad.loopexit679, %.thread558.loopexit ], [ %lpad.loopexit.split-lp680, %.thread558.loopexit.split-lp ]
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
  %i.ah = load i64, ptr %i.n, align 8, !range !7165, !noundef !5 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.h, i8 0, i64 22, i1 false), !alias.scope !7561, !noalias !7554
  %i.am = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.h, i64 noundef 22)
          to label %.noexc unwind label %.thread558.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  %.sroa.09.0.copyload.i.i = load i32, ptr %i.h, align 4, !noalias !7554
  %.not4.i.i = icmp eq i32 %.sroa.09.0.copyload.i.i, 101010256
  br i1 %.not4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i = phi i8 [ 1, %.noexc ], [ 0, %bb.f ]
  %.sroa.18.0.ph.i = phi ptr [ %i.am, %.noexc ], [ @285, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7554
  %i.an = ptrtoint ptr %.sroa.18.0.ph.i to i64    ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc455 = trunc i64 %i.an to i24
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %.sroa.6.5.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i, align 4, !noalias !7564 ; 3 uses
  %.sroa.8.i.sroa.5.0.copyload = load i16, ptr %.sroa.8.i.sroa.5.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7564 ; 3 uses
  %.sroa.8.i.sroa.6.0.copyload = load i16, ptr %.sroa.8.i.sroa.6.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 2, !noalias !7564 ; 4 uses
  %.sroa.8.i.sroa.7.0.copyload = load i24, ptr %.sroa.8.i.sroa.7.0..sroa.8.5..sroa.410.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 4, !noalias !7564 ; 3 uses
  %.sroa.18.0.copyload.i = load i56, ptr %.sroa.18.5..sroa.410.0..sroa_idx.i.sroa_idx.i, align 1, !noalias !7564 ; 4 uses
  %.sroa.18.0.insert.ext.i = zext i56 %.sroa.18.0.copyload.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7554
  %.sroa.18.5.extract.shift.i = lshr i64 %.sroa.18.0.insert.ext.i, 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7565
  call void @llvm.experimental.noalias.scope.decl(metadata !7566)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7569
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef range(i64 0, -44) %.sroa.18.5.extract.shift.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc241 unwind label %.thread558.loopexit

.noexc241:                                        ; preds = %bb.h
  %i.ao = load i64, ptr %i.g, align 8, !range !2379, !noalias !7569, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.u, align 8, !range !450, !noalias !7569, !noundef !5 ; 2 uses
  br i1 %i.ap, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i", !prof !116

bb.i:                                             ; preds = %.noexc241
  %i.ar = load i64, ptr %i.v, align 8, !noalias !7569
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.aq, i64 %i.ar) #26
          to label %.noexc242 unwind label %.thread558.loopexit.split-lp

.noexc242:                                        ; preds = %bb.i
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i": ; preds = %.noexc241
  %i.as = load ptr, ptr %i.v, align 8, !noalias !7569, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7569
  store i64 %i.aq, ptr %i.i, align 8, !alias.scope !7566, !noalias !7565
  store ptr %i.as, ptr %i.w, align 8, !alias.scope !7566, !noalias !7565
  store i64 %.sroa.18.5.extract.shift.i, ptr %i.x, align 8, !alias.scope !7566, !noalias !7565
  %i.at = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc243 unwind label %.thread558.loopexit ; 2 uses

.noexc243:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i"
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 11 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7565
  %i.aw = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.au, i64 noundef %i.av)
          to label %bb.l unwind label %bb.k, !noalias !7570 ; 4 uses

bb.j:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7570
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
  %i.az = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr nonnull %i.aw), !noalias !7570
  %i.ba = icmp eq i8 %i.az, 37
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.aw)
          to label %bb.p unwind label %bb.k, !noalias !7570

bb.o:                                             ; preds = %bb.m
  %i.bb = ptrtoint ptr %i.aw to i64               ; 2 uses
  %.sroa.17451.sroa.0.0.extract.trunc = trunc i64 %i.bb to i24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.9.sroa.0.0 = phi i8 [ 0, %bb.n ], [ 1, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.10.0.in.in = phi i64 [ ptrtoint (ptr @298 to i64), %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.17451.sroa.0.0 = phi i24 [ ptrtoint (ptr @298 to i24), %bb.n ], [ %.sroa.17451.sroa.0.0.extract.trunc, %bb.o ] ; 2 uses
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29, !noalias !7570
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7571)
  %i.be = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7571, !noundef !5
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %"_ZN4core3ptr135drop_in_place$LT$core..option..Option$LT$zip..read..magic_finder..OptimisticMagicFinder$LT$zip..read..magic_finder..Forward$GT$$GT$$GT$17h7b6257e637d279c5E.exit", label %bb.fj

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.g
  %.sroa.9.sroa.0.1.ph = phi i8 [ %.sroa.8.1..sroa.8.1..sroa.8.8..sroa.043.0.copyload.i, %bb.g ], [ %.sroa.9.sroa.0.0, %bb.q ], [ %.sroa.9.sroa.0.0, %bb.p ] ; 2 uses
  %.sroa.17451.sroa.10.1.ph.in.in = phi i64 [ %i.an, %bb.g ], [ %.sroa.17451.sroa.10.0.in.in, %bb.q ], [ %.sroa.17451.sroa.10.0.in.in, %bb.p ]
  %.sroa.17451.sroa.0.1.ph = phi i24 [ %.sroa.17451.sroa.0.0.extract.trunc455, %bb.g ], [ %.sroa.17451.sroa.0.0, %bb.q ], [ %.sroa.17451.sroa.0.0, %bb.p ]
  %.sroa.23.1.ph = phi i64 [ 32, %bb.g ], [ 34, %bb.q ], [ 34, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.9.sroa.0.0.insert.ext472 = zext nneg i8 %.sroa.9.sroa.0.1.ph to i64 ; 2 uses
  %.sroa.9.sroa.0.0.insert.insert474 = or disjoint i64 %.sroa.9.sroa.0.0.insert.ext472, -9223372036854775808
  store i64 %.sroa.9.sroa.0.0.insert.insert474, ptr %i.m, align 8
  %.sroa.17451.sroa.9.0.insert.insert459 = and i64 %.sroa.17451.sroa.10.1.ph.in.in, -16777216
  %.sroa.17451.sroa.0.0.insert.ext452 = zext i24 %.sroa.17451.sroa.0.1.ph to i64
  %.sroa.17451.sroa.0.0.insert.insert454 = or disjoint i64 %.sroa.17451.sroa.9.0.insert.insert459, %.sroa.17451.sroa.0.0.insert.ext452 ; 2 uses
  store i64 %.sroa.17451.sroa.0.0.insert.insert454, ptr %.sroa.17451.8..sroa_idx, align 8
  store i64 %.sroa.23.1.ph, ptr %.sroa.23.8..sroa_idx, align 8
  %i.bg = load i64, ptr %i.o, align 8, !range !7165, !noundef !5
  %.not222 = icmp eq i64 %i.bg, -9223372036854775802
  %i.bh = inttoptr i64 %.sroa.17451.sroa.0.0.insert.insert454 to ptr
  br i1 %.not222, label %bb.fi, label %bb.fc

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
  %i.bp = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7574, !noundef !5 ; 5 uses
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
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !7577, !nonnull !5, !noundef !5
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false), !alias.scope !7590, !noalias !7580
  %i.cd = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.f, i64 noundef 20)
          to label %.noexc249 unwind label %.thread611.loopexit ; 2 uses

.noexc249:                                        ; preds = %bb.ad
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.ae, label %.thread1584

.thread1584:                                      ; preds = %.noexc249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7580
  br label %bb.ah

bb.ae:                                            ; preds = %.noexc249
  %.sroa.09.0.copyload.i.i.i = load i32, ptr %i.f, align 4, !noalias !7580
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7580
  br label %.critedge

bb.ah:                                            ; preds = %.thread1584, %.thread
  %.val.i.i2521580.ph = phi ptr [ %i.cd, %.thread1584 ], [ %i.cc, %.thread ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i2521580.ph)
          to label %.critedge unwind label %.thread611.loopexit

bb.ai:                                            ; preds = %bb.ae
  %.sroa.6.i.sroa.0.0.copyload.i = load i32, ptr %.sroa.410.0..sroa_idx.i.i.i, align 4, !noalias !7593 ; 2 uses
  %.sroa.6.i.sroa.5.0.copyload.i = load i56, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 4, !noalias !7593
  %.sroa.13.0.copyload.i.i = load i40, ptr %.sroa.13.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7593 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7580
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
  %i.ci = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7594, !noundef !5 ; 5 uses
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
  %.val.i.i259 = load ptr, ptr %i.y, align 8, !alias.scope !7597, !nonnull !5, !noundef !5
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7600)
  %i.cr = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7600, !noundef !5
  %.not.i265 = icmp eq i64 %i.cr, 2
  br i1 %.not.i265, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7600
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr noalias noundef nonnull sret([384 x i8]) align 32 captures(address) dereferenceable(384) %i.e)
          to label %.noexc266 unwind label %.thread611.loopexit

.noexc266:                                        ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.p, ptr noundef nonnull align 32 dereferenceable(384) %i.e, i64 384, i1 false)
end_hunk_4
begin_hunk_5_@_ZN3zip4spec22find_central_directory17hb3bc14935b41b74aE:bb.a
.noexc295:                                        ; preds = %bb.bn
  %.not.i.i.i284 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i284, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc295
  %.sroa.09.0.copyload.i.i.i286 = load i32, ptr %i.c, align 4, !noalias !7615
  %.not4.i.i.i287 = icmp eq i32 %.sroa.09.0.copyload.i.i.i286, 101075792
  br i1 %.not4.i.i.i287, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.noexc295
  %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i = phi i64 [ -9223372036854775807, %.noexc295 ], [ -9223372036854775808, %bb.bo ]
  %.sroa.15.0.ph.i.i = phi ptr [ %i.dq, %.noexc295 ], [ @285, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7615
  %i.dr = ptrtoint ptr %.sroa.15.0.ph.i.i to i64
  br label %bb.cd

bb.bq:                                            ; preds = %bb.bo
  %.sroa.6.i.sroa.0.0.copyload.i289 = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i288, align 4, !noalias !7628 ; 5 uses
  %.sroa.6.i.sroa.5.0.copyload.i291 = load i16, ptr %.sroa.6.i.sroa.5.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i290, align 4, !noalias !7628
  %.sroa.6.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.i.sroa.6.0..sroa.410.0..sroa_idx.i.i.sroa_idx.i, align 2, !noalias !7628
  %.sroa.15.5.copyload.i.i = load ptr, ptr %.sroa.15.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7628
  %.sroa.22.5.copyload.i.i = load i8, ptr %.sroa.22.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 1, !noalias !7628
  %.sroa.26.5.copyload.i.i = load i64, ptr %.sroa.26.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7628
  %i.ds = load <2 x i64>, ptr %.sroa.24.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7628
  %.sroa.28.5.copyload.i.i = load i64, ptr %.sroa.28.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7628
  %i.dt = load <2 x i64>, ptr %.sroa.27.5..sroa.410.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !7628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7615
  %i.du = ptrtoint ptr %.sroa.15.5.copyload.i.i to i64 ; 3 uses
  %.sroa.15.5.extract.shift.i.i = lshr i64 %i.du, 40
  %.sroa.15.5.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.15.5.extract.shift.i.i to i32
  %i.dv = icmp ult i64 %.sroa.6.i.sroa.0.0.copyload.i289, 44
  br i1 %i.dv, label %bb.cd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dw = call i64 @llvm.uadd.sat.i64(i64 %.sroa.6.i.sroa.0.0.copyload.i289, i64 12)
  %i.dx = icmp ugt i64 %i.dw, %i.dp
  br i1 %i.dx, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7629
  %i.dy = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, -44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7633
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 0, -44) %i.dy, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc296 unwind label %.thread656.loopexit

.noexc296:                                        ; preds = %bb.bs
  %i.dz = load i64, ptr %i.b, align 8, !range !2379, !noalias !7633, !noundef !5
  %i.ea = trunc nuw i64 %i.dz to i1
  %i.eb = load i64, ptr %i.ac, align 8, !range !450, !noalias !7633, !noundef !5 ; 2 uses
  br i1 %i.ea, label %bb.bt, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !116

bb.bt:                                            ; preds = %.noexc296
  %i.ec = load i64, ptr %i.ad, align 8, !noalias !7633
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eb, i64 %i.ec) #26
          to label %.noexc297 unwind label %.thread656.loopexit.split-lp

.noexc297:                                        ; preds = %bb.bt
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %.noexc296
  %i.ed = load ptr, ptr %i.ad, align 8, !noalias !7633, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7633
  store i64 %i.eb, ptr %i.d, align 8, !alias.scope !7630, !noalias !7629
  store ptr %i.ed, ptr %i.ae, align 8, !alias.scope !7630, !noalias !7629
  store i64 %i.dy, ptr %i.af, align 8, !alias.scope !7630, !noalias !7629
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc298 unwind label %.thread656.loopexit ; 2 uses

.noexc298:                                        ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 8 uses
  %i.eg = extractvalue { ptr, i64 } %i.ee, 1      ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7629
  %i.eh = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.ef, i64 noundef %i.eg)
          to label %bb.bw unwind label %bb.bu, !noalias !7634 ; 2 uses

bb.bu:                                            ; preds = %.noexc298
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %.thread646, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7634
  br label %.thread646

bb.bw:                                            ; preds = %.noexc298
  %.not.i.i292 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i292, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ek = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.el = icmp eq i64 %i.eg, 0
  br i1 %i.el, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7634
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bw
  %.sroa.67.sroa.8.31.insert.ext.i = zext i8 %.sroa.22.5.copyload.i.i to i32
  %.sroa.67.sroa.8.31.insert.shift.i = shl nuw i32 %.sroa.67.sroa.8.31.insert.ext.i, 24
  %.sroa.67.sroa.8.31.insert.insert.i = or disjoint i32 %.sroa.67.sroa.8.31.insert.shift.i, %.sroa.15.5.extract.trunc.i.i
  %.not.i293 = icmp eq i32 %.sroa.67.sroa.8.31.insert.insert.i, %.sroa.6.i.sroa.0.0.copyload.i
  br i1 %.not.i293, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.em = add i64 %.sroa.6.i.sroa.0.0.copyload.i289, 12
  %.not20.i = icmp eq i64 %i.em, %i.dp
  br i1 %.not20.i, label %_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink62.i = phi ptr [ @288, %bb.bz ], [ @287, %bb.ca ]
  %.sink.i294 = phi i64 [ 47, %bb.bz ], [ 35, %bb.ca ] ; 2 uses
  %i.en = ptrtoint ptr %.sink62.i to i64          ; 2 uses
  %i.eo = icmp eq i64 %i.eg, 0
  br i1 %i.eo, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29, !noalias !7635
  br label %bb.cd

"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit": ; preds = %bb.bm
  %.sroa.0535.0.copyload = load i64, ptr %i.k, align 8 ; 2 uses
  %.not.i301 = icmp eq i64 %.sroa.0535.0.copyload, -9223372036854775802 ; 3 uses
  %.sroa.5537.sroa.4.0.copyload = load i64, ptr %.sroa.5537.sroa.4.0..sroa.5537.0..sroa_idx.sroa_idx, align 8
  %.sroa.5537.sroa.0.0.copyload = load ptr, ptr %i.ag, align 8
  %.sroa.6542.sroa.6.0 = select i1 %.not.i301, i64 21, i64 %.sroa.5537.sroa.4.0.copyload ; 2 uses
  %.sroa.6542.sroa.0.0 = select i1 %.not.i301, ptr @290, ptr %.sroa.5537.sroa.0.0.copyload ; 2 uses
  %.sroa.0539.0 = select i1 %.not.i301, i64 -9223372036854775808, i64 %.sroa.0535.0.copyload ; 2 uses
  %i.ep = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7636, !noundef !5 ; 5 uses
  %i.eq = icmp eq i64 %i.ep, -9223372036854775802
  br i1 %i.eq, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", label %bb.df

bb.cd:                                            ; preds = %bb.cc, %bb.bp, %bb.cb, %bb.by, %bb.bx, %bb.br, %bb.bq
  %.sroa.9501.0.ph = phi i64 [ -9223372036854775808, %bb.bq ], [ -9223372036854775807, %bb.bx ], [ -9223372036854775807, %bb.by ], [ -9223372036854775808, %bb.br ], [ -9223372036854775808, %bb.cb ], [ %.sroa.6.3..sroa.6.3..sroa.6.8..sroa.043.0.copyload.i.i, %bb.bp ], [ -9223372036854775808, %bb.cc ] ; 2 uses
  %.sroa.13.0.ph = phi i64 [ ptrtoint (ptr @301 to i64), %bb.bq ], [ %i.ek, %bb.bx ], [ %i.ek, %bb.by ], [ ptrtoint (ptr @300 to i64), %bb.br ], [ %i.en, %bb.cb ], [ %i.dr, %bb.bp ], [ %i.en, %bb.cc ] ; 2 uses
  %.sroa.16.0.ph = phi i64 [ 22, %bb.bq ], [ undef, %bb.bx ], [ undef, %bb.by ], [ 36, %bb.br ], [ %.sink.i294, %bb.cb ], [ 32, %bb.bp ], [ %.sink.i294, %bb.cc ] ; 2 uses
  %i.er = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7639, !noundef !5 ; 5 uses
  %i.es = icmp eq i64 %i.er, -9223372036854775802
  br i1 %i.es, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.et = icmp ne i64 %i.er, -9223372036854775806
  call void @llvm.assume(i1 %i.et)
  %i.eu = add nsw i64 %i.er, 9223372036854775807
  %i.ev = icmp ugt i64 %i.er, -9223372036854775808
  %i.ew = select i1 %i.ev, i64 %i.eu, i64 1
  switch i64 %i.ew, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" [
    i64 0, label %bb.cf
    i64 1, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %.val.i.i309 = load ptr, ptr %i.ag, align 8, !alias.scope !7642, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i309)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

bb.cg:                                            ; preds = %bb.ce
  %i.ex = icmp eq i64 %i.er, -9223372036854775808
  br i1 %i.ex, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314", label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308" unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body311 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308": ; preds = %bb.ch
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314" unwind label %bb.de

_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit: ; preds = %bb.ca
  %i.fa = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.26.5.copyload.i.i, i64 46) ; 2 uses
  %i.fb = extractvalue { i64, i1 } %i.fa, 0
  %i.fc = extractvalue { i64, i1 } %i.fa, 1
  br i1 %i.fc, label %bb.ck, label %bb.cl, !prof !116

bb.ck:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit, %bb.ck
  %.sroa.0189.0 = phi i64 [ -1, %bb.ck ], [ %i.fb, %_ZN3zip4spec22find_central_directory15try_read_eocd6417h6488ef75316371f6E.exit ]
  %i.fd = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0189.0, i64 %.sroa.28.5.copyload.i.i)
  %i.fe = icmp ult i64 %.sroa.5179.0.copyload, %i.fd
  br i1 %i.fe, label %bb.ct, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ff = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le1106 = shl nuw nsw i64 %.sroa.23.28.insert.ext.le, 32
  %.sroa.23.28.insert.insert.le = or disjoint i64 %.sroa.23.28.insert.shift.le1106, %i.ff
  %6 = shl i56 %.sroa.18.0.copyload.i, 24
  %7 = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le = or disjoint i56 %6, %7
  %.sroa.6.16.extract.trunc.le1083 = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le to i32
  %.sroa.9.24.extract.trunc.le1079 = trunc nuw i64 %.sroa.23.28.insert.insert.le to i48
  %i.fg = sub i64 %.sroa.5179.0.copyload, %.sroa.7.sroa.0.0.insert.insert.i
  %.sroa.15.1.extract.shift.i.i.le = lshr i64 %i.du, 8
  %.sroa.15.1.extract.trunc.i.i.le = trunc i64 %.sroa.15.1.extract.shift.i.i.le to i32
  %.sroa.67.sroa.11.32.insert.ext.i.le = zext i16 %.sroa.6.i.sroa.5.0.copyload.i291 to i64
  %.sroa.67.sroa.11.34.insert.ext.i.le = zext i8 %.sroa.6.i.sroa.6.0.copyload.i to i64
  %.sroa.67.sroa.11.34.insert.shift.i.le = shl nuw nsw i64 %.sroa.67.sroa.11.34.insert.ext.i.le, 16
  %.sroa.67.sroa.11.34.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.shift.i.le, %.sroa.67.sroa.11.32.insert.ext.i.le
  %.sroa.67.sroa.11.35.insert.ext.i.le = shl i64 %i.du, 24
  %.sroa.67.sroa.11.35.insert.shift.i.le = and i64 %.sroa.67.sroa.11.35.insert.ext.i.le, 4278190080
  %.sroa.67.sroa.11.35.insert.insert.i.le = or disjoint i64 %.sroa.67.sroa.11.34.insert.insert.i.le, %.sroa.67.sroa.11.35.insert.shift.i.le
  store ptr %i.au, ptr %0, align 8
  %.sroa.062.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.062.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le1083, ptr %.sroa.062.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.062.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.062.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le1079, ptr %.sroa.062.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.062.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.8.i.sroa.6.0.copyload, ptr %.sroa.062.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.062.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.062.sroa.4.0..sroa_idx, align 8
  %.sroa.062.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ef, ptr %.sroa.062.sroa.5.0..sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.eg, ptr %.sroa.062.sroa.5.sroa.0.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.6.i.sroa.0.0.copyload.i289, ptr %.sroa.062.sroa.5.sroa.0.sroa.5.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.ds, ptr %.sroa.062.sroa.5.sroa.0.sroa.6.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.dt, ptr %.sroa.062.sroa.5.sroa.0.sroa.8.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sroa.15.1.extract.trunc.i.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.10.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.sroa.6.i.sroa.0.0.copyload.i, ptr %.sroa.062.sroa.5.sroa.0.sroa.11.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.67.sroa.11.35.insert.insert.i.le, ptr %.sroa.062.sroa.5.sroa.0.sroa.12.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.5179.0.copyload, ptr %.sroa.062.sroa.5.sroa.4.0..sroa.062.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.fg, ptr %.sroa.563.0..sroa_idx, align 8
  %i.fh = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7645, !noundef !5 ; 5 uses
  %i.fi = icmp eq i64 %i.fh, -9223372036854775802
  br i1 %i.fi, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fj = icmp ne i64 %i.fh, -9223372036854775806
  call void @llvm.assume(i1 %i.fj)
  %i.fk = add nsw i64 %i.fh, 9223372036854775807
  %i.fl = icmp ugt i64 %i.fh, -9223372036854775808
  %i.fm = select i1 %i.fl, i64 %i.fk, i64 1
  switch i64 %i.fm, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" [
    i64 0, label %bb.co
    i64 1, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %.val.i.i317 = load ptr, ptr %i.ag, align 8, !alias.scope !7648, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i317)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.cp:                                            ; preds = %bb.cn
  %i.fn = icmp eq i64 %i.fh, -9223372036854775808
  br i1 %i.fn, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316" unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread548 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316": ; preds = %bb.cq
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323" unwind label %bb.af

bb.ct:                                            ; preds = %bb.cl
  %i.fq = load i64, ptr %i.k, align 8, !range !7165, !alias.scope !7651, !noundef !5 ; 5 uses
  %i.fr = icmp eq i64 %i.fq, -9223372036854775802
  br i1 %i.fr, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.fs = icmp ne i64 %i.fq, -9223372036854775806
  call void @llvm.assume(i1 %i.fs)
  %i.ft = add nsw i64 %i.fq, 9223372036854775807
  %i.fu = icmp ugt i64 %i.fq, -9223372036854775808
  %i.fv = select i1 %i.fu, i64 %i.ft, i64 1
  switch i64 %i.fv, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" [
    i64 0, label %bb.cv
    i64 1, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i326 = load ptr, ptr %i.ag, align 8, !alias.scope !7654, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i326)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

bb.cw:                                            ; preds = %bb.cu
  %i.fw = icmp eq i64 %i.fq, -9223372036854775808
  br i1 %i.fw, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325" unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body328 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325": ; preds = %bb.cx
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331" unwind label %bb.da

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323": ; preds = %bb.cp, %bb.cn, %bb.cm, %bb.co, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i316"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.da:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325", %bb.cv
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body328

.body328:                                         ; preds = %bb.cy, %bb.da
  %eh.lpad-body329 = phi { ptr, i32 } [ %i.fz, %bb.da ], [ %i.fx, %bb.cy ] ; 2 uses
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.ga = icmp eq i64 %i.eg, 0
  br i1 %i.ga, label %.thread646, label %bb.db

bb.db:                                            ; preds = %.body328
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331": ; preds = %bb.cw, %bb.cu, %bb.ct, %bb.cv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i325"
  store i64 -9223372036854775808, ptr %i.k, align 8
  store ptr @289, ptr %i.ag, align 8
  store i64 44, ptr %.sroa.6201.0..sroa_idx202, align 8
  %i.gb = icmp eq i64 %i.eg, 0
  br i1 %i.gb, label %.backedge.backedge, label %bb.dc

.backedge.backedge:                               ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331", %bb.dc, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314"
  br label %.backedge

bb.dc:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit331"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef range(i64 1, 0) %i.eg, i64 noundef 1) #29
  br label %.backedge.backedge

bb.dd:                                            ; preds = %.thread548, %.thread646
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.de:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308", %bb.cf
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body311

.body311:                                         ; preds = %bb.ci, %bb.de
  %eh.lpad-body312 = phi { ptr, i32 } [ %i.gd, %bb.de ], [ %i.ey, %bb.ci ]
  store i64 %.sroa.9501.0.ph, ptr %i.k, align 8
  store i64 %.sroa.13.0.ph, ptr %i.ag, align 8
  store i64 %.sroa.16.0.ph, ptr %.sroa.6201.0..sroa_idx202, align 8
  br label %.thread646

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit314": ; preds = %bb.cg, %bb.ce, %bb.cd, %bb.cf, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i308"
  store i64 %.sroa.9501.0.ph, ptr %i.k, align 8
  store i64 %.sroa.13.0.ph, ptr %i.ag, align 8
  store i64 %.sroa.16.0.ph, ptr %.sroa.6201.0..sroa_idx202, align 8
  br label %.backedge.backedge

bb.df:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit"
  %i.ge = icmp ne i64 %i.ep, -9223372036854775806
  call void @llvm.assume(i1 %i.ge)
  %i.gf = add nsw i64 %i.ep, 9223372036854775807
  %i.gg = icmp ugt i64 %i.ep, -9223372036854775808
  %i.gh = select i1 %i.gg, i64 %i.gf, i64 1
  switch i64 %i.gh, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342" [
    i64 0, label %bb.dg
    i64 1, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %.val.i.i337 = load ptr, ptr %i.y, align 8, !alias.scope !7657, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i337)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342" unwind label %bb.dl

bb.dh:                                            ; preds = %bb.df
  %i.gi = icmp eq i64 %i.ep, -9223372036854775808
  br i1 %i.gi, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342", label %bb.di

bb.di:                                            ; preds = %bb.dh
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336" unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.thread643 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336": ; preds = %bb.di
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342" unwind label %bb.dl

bb.dl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336", %bb.dg
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.thread643

.thread643:                                       ; preds = %bb.dl, %bb.dj
  %eh.lpad-body340 = phi { ptr, i32 } [ %i.gl, %bb.dl ], [ %i.gj, %bb.dj ]
  store i64 %.sroa.0539.0, ptr %i.o, align 8
  store ptr %.sroa.6542.sroa.0.0, ptr %i.y, align 8
  %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6542.sroa.6.0, ptr %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx.sroa_idx, align 8
  br label %.thread595

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342": ; preds = %bb.dh, %bb.df, %"_ZN4core6option15Option$LT$T$GT$2or17hb9523f5f9c05d2e8E.exit", %bb.dg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i336"
  store i64 %.sroa.0539.0, ptr %i.o, align 8
  store ptr %.sroa.6542.sroa.0.0, ptr %i.y, align 8
  store i64 %.sroa.6542.sroa.6.0, ptr %.sroa.6542.sroa.6.0..sroa.6542.0..sroa_idx543.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gm = icmp eq i64 %i.av, 0
  br i1 %i.gm, label %.backedge685.backedge, label %bb.dm

bb.dm:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit342"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.backedge685.backedge

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283": ; preds = %bb.bi, %bb.bg, %bb.bf, %bb.bh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i276"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.eh, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit283"
  %i.gn = icmp eq i64 %i.av, 0
  br i1 %i.gn, label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345", label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

.thread646:                                       ; preds = %.thread656.loopexit, %.thread656.loopexit.split-lp, %bb.db, %.body328, %.body311, %bb.bv, %bb.bu
  %.pn642 = phi { ptr, i32 } [ %i.ei, %bb.bv ], [ %eh.lpad-body329, %bb.db ], [ %i.ei, %bb.bu ], [ %eh.lpad-body312, %.body311 ], [ %eh.lpad-body329, %.body328 ], [ %lpad.loopexit, %.thread656.loopexit ], [ %lpad.loopexit.split-lp, %.thread656.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #27
          to label %.thread595 unwind label %bb.dd

bb.dp:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i268", %bb.av
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body271

.body271:                                         ; preds = %bb.ay, %bb.dp
  %eh.lpad-body272 = phi { ptr, i32 } [ %i.go, %bb.dp ], [ %i.cz, %bb.ay ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @291, ptr %i.y, align 8
  store i64 38, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

bb.dq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i258", %bb.am
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body261

.body261:                                         ; preds = %bb.ap, %bb.dq
  %eh.lpad-body262 = phi { ptr, i32 } [ %i.gp, %bb.dq ], [ %i.cp, %bb.ap ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @292, ptr %i.y, align 8
  store i64 32, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

bb.dr:                                            ; preds = %.critedge
  %i.gq = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le1108 = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le1104 = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1108, 32
  %.sroa.23.28.insert.insert.le1098 = or disjoint i64 %.sroa.23.28.insert.shift.le1104, %i.gq
  %8 = shl i56 %.sroa.18.0.copyload.i, 24
  %9 = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le1087 = or disjoint i56 %8, %9
  %.sroa.6.16.extract.trunc.le1081 = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le1087 to i32
  %.sroa.9.24.extract.trunc.le1077 = trunc nuw i64 %.sroa.23.28.insert.insert.le1098 to i48
  %i.gr = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %i.cf)
  store ptr %i.au, ptr %0, align 8
  %.sroa.019.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %.sroa.019.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.019.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.16.extract.trunc.le1081, ptr %.sroa.019.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.019.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.6.20.extract.trunc, ptr %.sroa.019.sroa.0.sroa.6.0..sroa_idx, align 4
  %.sroa.019.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i48 %.sroa.9.24.extract.trunc.le1077, ptr %.sroa.019.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.019.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 0, ptr %.sroa.019.sroa.0.sroa.8.0..sroa_idx, align 2
  %.sroa.019.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %.sroa.019.sroa.4.0..sroa_idx, align 8
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.019.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.gr, ptr %.sroa.5.0..sroa_idx, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.ds:                                            ; preds = %.critedge
  %.not213 = icmp ugt i64 %i.aj, %i.cf
  br i1 %.not213, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !7660)
  %i.gs = load i64, ptr %i.r, align 8, !range !115, !alias.scope !7660, !noundef !5
  %.not.i346 = icmp eq i64 %i.gs, 2
  br i1 %.not.i346, label %bb.du, label %bb.ec

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7660
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr noalias noundef nonnull sret([384 x i8]) align 32 captures(address) dereferenceable(384) %i.a)
          to label %.noexc348 unwind label %.thread611.loopexit

.noexc348:                                        ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.p, ptr noundef nonnull align 32 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7660
  br label %bb.ec

bb.dv:                                            ; preds = %bb.ds
  %i.gt = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7663, !noundef !5 ; 5 uses
  %i.gu = icmp eq i64 %i.gt, -9223372036854775802
  br i1 %i.gu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.gv = icmp ne i64 %i.gt, -9223372036854775806
  call void @llvm.assume(i1 %i.gv)
  %i.gw = add nsw i64 %i.gt, 9223372036854775807
  %i.gx = icmp ugt i64 %i.gt, -9223372036854775808
  %i.gy = select i1 %i.gx, i64 %i.gw, i64 1
  switch i64 %i.gy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.dx
    i64 1, label %bb.dy
  ]

bb.dx:                                            ; preds = %bb.dw
  %.val.i.i352 = load ptr, ptr %i.y, align 8, !alias.scope !7666, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i352)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.ey

bb.dy:                                            ; preds = %bb.dw
  %i.gz = icmp eq i64 %i.gt, -9223372036854775808
  br i1 %i.gz, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351" unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body354 unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351": ; preds = %bb.dz
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.ey

bb.ec:                                            ; preds = %.noexc348, %bb.dt
  br i1 %i.z, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.hc = call i64 @llvm.uadd.sat.i64(i64 %i.cf, i64 %3)
  %.sroa.0.0.i358 = call noundef i64 @llvm.umin.i64(i64 %i.aj, i64 %i.hc)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.524.0 = phi i8 [ 0, %bb.ec ], [ 1, %bb.ed ]
  %.sroa.023.0 = phi i64 [ %i.cf, %bb.ec ], [ %.sroa.0.0.i358, %bb.ed ]
  %i.hd = invoke noundef align 32 dereferenceable(352) ptr @"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$9repurpose17h6e27c6b7293c40e5E"(ptr noalias noundef nonnull align 32 dereferenceable(352) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 4, i64 noundef %i.cf, i64 noundef %i.aj)
          to label %bb.ef unwind label %.thread611.loopexit ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  store i64 %.sroa.023.0, ptr %i.aa, align 32
  store i8 %.sroa.524.0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17ha1fb3351d3ebf8d6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 32 dereferenceable(384) %i.p, ptr noalias noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.eg unwind label %.thread611.loopexit

bb.eg:                                            ; preds = %bb.ef
  %i.he = load i64, ptr %i.l, align 8, !range !7165, !noundef !5 ; 2 uses
  %.not214 = icmp eq i64 %i.he, -9223372036854775802
  %.sroa.4127.0.copyload = load i64, ptr %.sroa.4127.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5128.0.copyload = load i64, ptr %.sroa.5128.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.not214, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.he, ptr %i.hf, align 8
  %.sroa.2130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4127.0.copyload, ptr %.sroa.2130.0..sroa_idx, align 8
  %.sroa.3131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5128.0.copyload, ptr %.sroa.3131.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.dn

bb.ei:                                            ; preds = %bb.eg
  %i.hg = trunc nuw i64 %.sroa.4127.0.copyload to i1
  br i1 %i.hg, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.hh = zext i32 %.sroa.6.5.copyload.i to i64
  %.sroa.23.28.insert.ext.le1110 = zext i16 %.sroa.8.i.sroa.5.0.copyload to i64
  %.sroa.23.28.insert.shift.le = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1110, 32
  %.sroa.23.28.insert.insert.le1101 = or disjoint i64 %.sroa.23.28.insert.shift.le, %i.hh
  %10 = shl i56 %.sroa.18.0.copyload.i, 24
  %11 = zext i24 %.sroa.8.i.sroa.7.0.copyload to i56
  %.sroa.17451.sroa.0.0.insert.insert678.le1090 = or disjoint i56 %10, %11
  %.sroa.6.16.extract.trunc.le = trunc i56 %.sroa.17451.sroa.0.0.insert.insert678.le1090 to i32
  %.sroa.9.24.extract.trunc.le = trunc nuw i64 %.sroa.23.28.insert.insert.le1101 to i48
  %i.hi = sub i64 %.sroa.5128.0.copyload, %i.cf
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
  store i64 %i.hi, ptr %.sroa.541.0..sroa_idx, align 8
  br label %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"

bb.ek:                                            ; preds = %bb.ei
  %i.hj = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7669, !noundef !5 ; 5 uses
  %i.hk = icmp eq i64 %i.hj, -9223372036854775802
  br i1 %i.hk, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.hl = icmp ne i64 %i.hj, -9223372036854775806
  call void @llvm.assume(i1 %i.hl)
  %i.hm = add nsw i64 %i.hj, 9223372036854775807
  %i.hn = icmp ugt i64 %i.hj, -9223372036854775808
  %i.ho = select i1 %i.hn, i64 %i.hm, i64 1
  switch i64 %i.ho, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" [
    i64 0, label %bb.em
    i64 1, label %bb.en
  ]

bb.em:                                            ; preds = %bb.el
  %.val.i.i361 = load ptr, ptr %i.y, align 8, !alias.scope !7672, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i361)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.en:                                            ; preds = %bb.el
  %i.hp = icmp eq i64 %i.hj, -9223372036854775808
  br i1 %i.hp, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360" unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body363 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360": ; preds = %bb.eo
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit" unwind label %bb.er

bb.er:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i360", %bb.em
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body363

.body363:                                         ; preds = %bb.ep, %bb.er
  %eh.lpad-body364 = phi { ptr, i32 } [ %i.hs, %bb.er ], [ %i.hq, %bb.ep ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @294, ptr %i.y, align 8
  store i64 13, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345": ; preds = %bb.do, %bb.dn, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit323", %bb.dr, %bb.ej, %bb.c
  %i.ht = load i64, ptr %i.o, align 8, !range !7165, !alias.scope !7675, !noundef !5 ; 5 uses
  %i.hu = icmp eq i64 %i.ht, -9223372036854775802
  br i1 %i.hu, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.es

bb.es:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$zip..spec..Zip32CentralDirectoryEnd$GT$17h5aaec7fecd613a92E.exit345"
  %i.hv = icmp ne i64 %i.ht, -9223372036854775806
  call void @llvm.assume(i1 %i.hv)
  %i.hw = add nsw i64 %i.ht, 9223372036854775807
  %i.hx = icmp ugt i64 %i.ht, -9223372036854775808
  %i.hy = select i1 %i.hx, i64 %i.hw, i64 1
  switch i64 %i.hy, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" [
    i64 0, label %bb.et
    i64 1, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %.val.i.i369 = load ptr, ptr %i.y, align 8, !alias.scope !7678, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i369)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fo

bb.eu:                                            ; preds = %bb.es
  %i.hz = icmp eq i64 %i.ht, -9223372036854775808
  br i1 %i.hz, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374", label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368" unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body371 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i368": ; preds = %bb.ev
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit374" unwind label %bb.fo

bb.ey:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i351", %bb.dx
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body354

.body354:                                         ; preds = %bb.ea, %bb.ey
  %eh.lpad-body355 = phi { ptr, i32 } [ %i.ic, %bb.ey ], [ %i.ha, %bb.ea ]
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
  %i.id = icmp eq i64 %i.av, 0
  br i1 %i.id, label %.backedge685.backedge, label %bb.ez

bb.ez:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$zip..result..ZipError$GT$$GT$17h1667eb2c840c6250E.exit"
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.backedge685.backedge

bb.fa:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %bb.x
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body245

.body245:                                         ; preds = %bb.aa, %bb.fa
  %eh.lpad-body246 = phi { ptr, i32 } [ %i.ie, %bb.fa ], [ %i.bw, %bb.aa ]
  store i64 -9223372036854775808, ptr %i.o, align 8
  store ptr @296, ptr %i.y, align 8
  store i64 27, ptr %.sroa.6157.0..sroa_idx158, align 8
  br label %.thread595

.thread595:                                       ; preds = %.thread611.loopexit, %.thread611.loopexit.split-lp, %.thread643, %.body363, %.body354, %.thread646, %.body271, %.body261, %.body245, %bb.bk
  %.pn220594 = phi { ptr, i32 } [ %i.dm, %bb.bk ], [ %eh.lpad-body246, %.body245 ], [ %lpad.loopexit.split-lp683, %.thread611.loopexit.split-lp ], [ %eh.lpad-body364, %.body363 ], [ %eh.lpad-body355, %.body354 ], [ %eh.lpad-body340, %.thread643 ], [ %.pn642, %.thread646 ], [ %eh.lpad-body272, %.body271 ], [ %eh.lpad-body262, %.body261 ], [ %lpad.loopexit682, %.thread611.loopexit ] ; 2 uses
  %i.if = icmp eq i64 %i.av, 0
  br i1 %i.if, label %.thread548, label %bb.fb

bb.fb:                                            ; preds = %.thread595
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef range(i64 1, 0) %i.av, i64 noundef 1) #29
  br label %.thread548

bb.fc:                                            ; preds = %bb.s
  %i.ig = add nsw i64 %.sroa.9.sroa.0.0.insert.ext472, -1
  %.not677 = icmp eq i8 %.sroa.9.sroa.0.1.ph, 0   ; 2 uses
  %i.ih = select i1 %.not677, i64 1, i64 %i.ig
  switch i64 %i.ih, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" [
    i64 0, label %bb.fd
    i64 1, label %bb.fe
  ]

bb.fd:                                            ; preds = %bb.fc
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.bh)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit" unwind label %.thread558.loopexit

bb.fe:                                            ; preds = %bb.fc
  br i1 %.not677, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit", label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread548 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

end_hunk_5
