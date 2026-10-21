Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@"_ZN59_$LT$$RF$mut$u20$T$u20$as$u20$bytes..buf..buf_impl..Buf$GT$13copy_to_bytes17h13930f2435a1d8f1E":bb.a
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !31091
  %i.o = tail call noundef ptr @mi_malloc_aligned(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !31091 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #43, !noalias !31090
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.o, %bb.c ]
  %i.q = lshr i64 %2, 10
  %i.r = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 false)
  %i.s = sub nuw nsw i64 64, %i.r
  %.sroa.0.0.i.i2 = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 7)
  %i.t = shl nuw nsw i64 %.sroa.0.0.i.i2, 2
  %i.u = getelementptr i8, ptr null, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 1
  store ptr %.sroa.10.0.i, ptr %i.g, align 8, !alias.scope !31092, !noalias !31090
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 0, ptr %i.w, align 8, !alias.scope !31092, !noalias !31090
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %2, ptr %i.x, align 8, !alias.scope !31092, !noalias !31090
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.y, align 8, !alias.scope !31092, !noalias !31090
  invoke fastcc void @"_ZN74_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$bytes..buf..buf_mut..BufMut$GT$3put17had9b95de9bfbeb29E"(ptr noalias noundef align 8 dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef %2)
          to label %bb.f unwind label %bb.l, !noalias !31093, !inline_history !31079

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31090
  store i64 %2, ptr %i.h, align 8, !noalias !31090
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.0.0.i.i3, ptr %i.z, align 8, !noalias !31090
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #43, !noalias !31090, !inline_history !31079
  unreachable

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit"
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !31090, !nonnull !45, !noundef !45 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %i.w, align 8, !noalias !31090 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %i.x, align 8, !noalias !31090
  %.sroa.6.0.copyload = load ptr, ptr %i.y, align 8, !noalias !31090 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31094)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aa = ptrtoint ptr %.sroa.6.0.copyload to i64 ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.g, label %.noexc

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ac, align 8, !alias.scope !31094
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload, ptr %i.ad, align 8, !alias.scope !31094
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0.copyload, ptr %i.ae, align 8, !alias.scope !31094
  store ptr @_ZN5bytes9bytes_mut13SHARED_VTABLE17ha94e88ebc7ae76b0E, ptr %0, align 8, !alias.scope !31094
  br label %_ZN5bytes3buf8buf_impl3Buf13copy_to_bytes17hb1373e137193e9d0E.exit

.noexc:                                           ; preds = %bb.f
  %i.af = lshr i64 %i.aa, 5                       ; 5 uses
  call void @_ZN5bytes9bytes_mut11rebuild_vec17h7930fac3c9cb4245E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef %.sroa.5.0.copyload, i64 noundef %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31095
  call void @"_ZN92_$LT$bytes..bytes..Bytes$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from17h105911369ca93d58E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !31096)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31095
  store i64 %i.af, ptr %i.d, align 8, !noalias !31097
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !31096, !noalias !31095, !noundef !45 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.af, %i.ah
  br i1 %.not.i.i, label %bb.h, label %bb.j, !prof !47

bb.h:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31097
  store i64 %i.ah, ptr %i.b, align 8, !noalias !31097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31097
  store ptr %i.d, ptr %i.a, align 8, !noalias !31097
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !31097
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ai, align 8, !noalias !31097
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !31097
  store ptr @1430, ptr %i.c, align 8, !noalias !31097
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.aj, align 8, !noalias !31097
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.ak, align 8, !noalias !31097
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.al, align 8, !noalias !31097
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.am, align 8, !noalias !31097
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1431) #43
          to label %.noexc.i unwind label %bb.i, !noalias !31095

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !31098)
  call void @llvm.experimental.noalias.scope.decl(metadata !31099)
  %i.ao = load ptr, ptr %i.e, align 8, !alias.scope !31100, !noalias !31095, !nonnull !45, !align !48, !noundef !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !31101, !nonnull !45, !noundef !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !31100, !noalias !31095, !noundef !45
  invoke void %i.aq(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.at, i64 noundef %i.ah)
          to label %.body.thread unwind label %bb.k, !noalias !31095, !inline_history !76

bb.j:                                             ; preds = %.noexc
  %i.au = sub nuw i64 %i.ah, %i.af
  store i64 %i.au, ptr %i.ag, align 8, !alias.scope !31096, !noalias !31095
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !31096, !noalias !31095, !noundef !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.af
  store ptr %i.ax, ptr %i.av, align 8, !alias.scope !31096, !noalias !31095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !31102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31095
  br label %_ZN5bytes3buf8buf_impl3Buf13copy_to_bytes17hb1373e137193e9d0E.exit

bb.k:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !31095
  unreachable

.body.thread:                                     ; preds = %bb.l, %bb.i
  %eh.lpad-body9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.l ], [ %i.an, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body9

bb.l:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit"
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !31093, !inline_history !31079
  unreachable

_ZN5bytes3buf8buf_impl3Buf13copy_to_bytes17hb1373e137193e9d0E.exit: ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31090
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN59_$LT$rustls..error..Error$u20$as$u20$core..clone..Clone$GT$5clone17hb497f4a19cbda983E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 2 uses
  %i.g = load i8, ptr %1, align 8, !range !130, !noundef !45
  switch i8 %i.g, label %default.unreachable239 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.k
    i8 6, label %bb.l
    i8 7, label %bb.m
    i8 8, label %bb.n
    i8 9, label %bb.bq
    i8 10, label %bb.br
    i8 11, label %bb.bs
    i8 12, label %bb.eg
    i8 13, label %bb.ey
    i8 14, label %bb.ez
    i8 15, label %bb.fa
    i8 16, label %bb.fb
    i8 17, label %bb.fc
    i8 18, label %bb.fd
    i8 19, label %bb.fe
    i8 20, label %bb.ff
    i8 21, label %bb.fg
  ]

default.unreachable239:                           ; preds = %bb.eg, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.h, align 8, !nonnull !45, !noundef !45
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2 = load i64, ptr %i.i, align 8, !noundef !45 ; 6 uses
  %i.j = shl i64 %.val2, 1                        ; 5 uses
  %i.k = or i64 %i.j, %.val2
  %or.cond.i.i.i.not.i.i = icmp sgt i64 %i.k, -1
  br i1 %or.cond.i.i.i.not.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, label %bb.d, !prof !31318

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f177f7381c0d405E.exit", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !31319
  %i.m = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.j, i64 noundef range(i64 1, 9) 1) #38, !noalias !31319 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %2

2:                                                ; preds = %bb.c
  %3 = icmp sgt i64 %.val2, -1
  tail call void @llvm.assume(i1 %3)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f177f7381c0d405E.exit"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2135) #43, !noalias !31320
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f177f7381c0d405E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %2
  %.sroa.10.0.i.i.i = phi ptr [ %i.m, %2 ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %.val2, %2 ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ] ; 2 uses
  %i.o = icmp ule i64 %.val2, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %.val, i64 %i.j, i1 false), !noalias !31321
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !80, !noundef !45
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.q, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.s, ptr %i.v, align 2
  store i8 0, ptr %0, align 8
  br label %bb.fh

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load ptr, ptr %i.w, align 8, !nonnull !45, !noundef !45
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4 = load i64, ptr %i.x, align 8, !noundef !45 ; 6 uses
  %i.y = shl i64 %.val4, 1                        ; 5 uses
  %i.z = or i64 %i.y, %.val4
  %or.cond.i.i.i.not.i.i6 = icmp sgt i64 %i.z, -1
  br i1 %or.cond.i.i.i.not.i.i6, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8, label %bb.g, !prof !31318

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8: ; preds = %bb.e
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8017ed672b06d3bfE.exit", label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !31322
  %i.ab = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.y, i64 noundef range(i64 1, 9) 1) #38, !noalias !31322 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %4

4:                                                ; preds = %bb.f
  %5 = icmp sgt i64 %.val4, -1
  tail call void @llvm.assume(i1 %5)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8017ed672b06d3bfE.exit"

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i7 = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i7, i64 %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2135) #43, !noalias !31323
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8017ed672b06d3bfE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8, %4
  %.sroa.10.0.i.i.i9 = phi ptr [ %i.ab, %4 ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8 ] ; 2 uses
  %.sroa.4.0.i.i.i10 = phi i64 [ %.val4, %4 ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i8 ] ; 2 uses
  %i.ad = icmp ule i64 %.val4, %.sroa.4.0.i.i.i10
  tail call void @llvm.assume(i1 %i.ad)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i9, ptr nonnull readonly align 1 %.val3, i64 %i.y, i1 false), !noalias !31324
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !range !31325, !noundef !45
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ah = load i8, ptr %i.ag, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i.i10, ptr %i.ai, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i9, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val4, ptr %.sroa.546.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.af, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ah, ptr %i.ak, align 2
  store i8 1, ptr %0, align 8
  br label %bb.fh

bb.h:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.am = load i8, ptr %i.al, align 1, !range !57, !noundef !45
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.am, ptr %i.an, align 1
  store i8 2, ptr %0, align 8
  br label %bb.fh

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.fh

bb.j:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 8
  br label %bb.fh

bb.k:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8
  br label %bb.fh

bb.l:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  br label %bb.fh

bb.m:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 8
  br label %bb.fh

bb.n:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31326)
  %i.ap = load i64, ptr %i.ao, align 8, !range !131, !alias.scope !31326, !noundef !45 ; 3 uses
  %i.aq = add nsw i64 %i.ap, 9223372036854775807
  %i.ar = icmp ugt i64 %i.ap, -9223372036854775808
  %i.as = select i1 %i.ar, i64 %i.aq, i64 21
  switch i64 %i.as, label %bb.o [
    i64 0, label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"
    i64 1, label %bb.p
    i64 2, label %bb.q
    i64 3, label %bb.r
    i64 4, label %bb.s
    i64 5, label %bb.t
    i64 6, label %bb.u
    i64 7, label %bb.v
    i64 8, label %bb.w
    i64 9, label %bb.x
    i64 10, label %bb.y
    i64 11, label %bb.z
    i64 12, label %bb.aa
    i64 13, label %bb.ab
    i64 14, label %bb.ac
    i64 15, label %bb.ad
    i64 16, label %bb.ae
    i64 17, label %bb.af
    i64 18, label %bb.ag
    i64 19, label %bb.ah
    i64 20, label %bb.ai
    i64 21, label %bb.aj
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.q:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.r:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.s:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.t:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.u:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.v:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.w:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.x:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.y:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.z:                                             ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.aa:                                            ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.ab:                                            ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.ac:                                            ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.ad:                                            ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.ae:                                            ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.af:                                            ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.ag:                                            ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.ah:                                            ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.ai:                                            ; preds = %bb.n
  br label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit"

bb.aj:                                            ; preds = %bb.n
  %.not.i = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not.i, label %"_ZN70_$LT$rustls..error..PeerIncompatible$u20$as$u20$core..clone..Clone$GT$5clone17he7a08cb4babcb162E.exit", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.at, align 8, !alias.scope !31326, !nonnull !45, !noundef !45 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load i64, ptr %i.au, align 8, !alias.scope !31326, !noundef !45 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31327)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31328
  %i.av = mul i64 %.val3.i, 112                   ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.val3.i, 82351536043346212
  br i1 %or.cond.i.i.i.i.i.i, label %bb.am, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit.thread.i.i.i", label %bb.al

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.ax = icmp eq i64 %.val3.i, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ay, align 8, !noalias !31328
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc1882f906e94653aE.exit.i"

bb.al:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !31329
  %i.ba = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.av, i64 noundef range(i64 1, 9) 8) #38, !noalias !31329 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.am, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit.i.i.i"

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.al ], [ 0, %bb.ak ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2136) #43, !noalias !31330
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit.i.i.i": ; preds = %bb.al
  store i64 %.val3.i, ptr %i.f, align 8, !noalias !31328
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ba, ptr %i.bc, align 8, !noalias !31328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.val3.i
  %.sroa.514.0..sroa_idx15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.617.0..sroa_idx18.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.an

bb.an:                                            ; preds = %"_ZN80_$LT$rustls..msgs..handshake..EchConfigPayload$u20$as$u20$core..clone..Clone$GT$5clone17h1331603b1d8bca61E.exit.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit.i.i.i"
  %.sroa.013.0103.i.i.i = phi ptr [ %.val.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit.i.i.i" ], [ %i.bi, %"_ZN80_$LT$rustls..msgs..handshake..EchConfigPayload$u20$as$u20$core..clone..Clone$GT$5clone17h1331603b1d8bca61E.exit.i.i.i" ] ; 18 uses
  %.sroa.7.0100.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit.i.i.i" ], [ %i.bj, %"_ZN80_$LT$rustls..msgs..handshake..EchConfigPayload$u20$as$u20$core..clone..Clone$GT$5clone17h1331603b1d8bca61E.exit.i.i.i" ] ; 3 uses
  %.sroa.10.099.i.i.i = phi i64 [ %.val3.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h76020e055105f96dE.exit.i.i.i" ], [ %i.bf, %"_ZN80_$LT$rustls..msgs..handshake..EchConfigPayload$u20$as$u20$core..clone..Clone$GT$5clone17h1331603b1d8bca61E.exit.i.i.i" ]
  %i.bf = add nsw i64 %.sroa.10.099.i.i.i, -1     ; 2 uses
  %i.bg = icmp eq ptr %.sroa.013.0103.i.i.i, %i.be
  br i1 %i.bg, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc1882f906e94653aE.exit.i", label %bb.ap

bb.ao:                                            ; preds = %.invoke
end_hunk_0
