Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.05?download=true
inline.NumInlined: 500
inline.NumDeleted: 171
begin_hunk_0_@_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7BtpbLEd5q3_9elfshaker:bb.a
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !1730
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !1730

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  br i1 %2, label %bb.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 9) %0, i64 noundef range(i64 0, 73) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit.thread, label %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit

_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.c

_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.c = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #28 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !316

bb.b:                                             ; preds = %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #29
  unreachable

bb.c:                                             ; preds = %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit.thread, %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvNtCs7BtpbLEd5q3_9elfshaker5store3run(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.5.i.i = alloca [48 x i8], align 8        ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 15 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 6 uses
  %i.s = alloca [264 x i8], align 8               ; 9 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 16 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 14 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 14 uses
  %i.ah = alloca [1 x i8], align 1                ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 15 uses
  %i.am = alloca [1 x i8], align 1                ; 5 uses
  %i.an = alloca [72 x i8], align 8               ; 6 uses
  %i.ao = alloca [176 x i8], align 8              ; 14 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [56 x i8], align 8               ; 7 uses
  %i.au = alloca [56 x i8], align 8               ; 4 uses
  %i.av = alloca [32 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [40 x i8], align 8               ; 4 uses
  %i.ay = alloca [40 x i8], align 8               ; 4 uses
  %i.az = alloca [40 x i8], align 8               ; 4 uses
  %i.ba = alloca [40 x i8], align 8               ; 4 uses
  %i.bb = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.19 = alloca [40 x i8], align 8           ; 7 uses
  %i.bc = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.653 = alloca [56 x i8], align 8          ; 7 uses
  %i.bd = alloca [80 x i8], align 8               ; 16 uses
  %i.be = alloca [24 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 13 uses
  %i.bg = alloca [24 x i8], align 8               ; 10 uses
  %i.bh = alloca [24 x i8], align 8               ; 9 uses
  %i.bi = alloca [24 x i8], align 8               ; 20 uses
  %i.bj = alloca [40 x i8], align 8               ; 8 uses
  %i.bk = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 7 uses
  %i.bl = alloca [48 x i8], align 8               ; 11 uses
  %i.bm = alloca [24 x i8], align 8               ; 7 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 12 uses
  %i.bp = alloca [8 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 8)
  %i.bq = call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ba) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 10)
  %i.bv = call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.az) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 11)
  %i.bw = call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ay) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8)
  %i.bx = call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ax) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %.not96 = icmp eq ptr %i.bx, null
  br i1 %.not96, label %bb.d, label %.split, !prof !44

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #30
  unreachable

.split:                                           ; preds = %bb.b
  store ptr %i.bx, ptr %i.bp, align 8, !captures !1731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store ptr %i.bp, ptr %i.bn, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_7Display3fmtCs7BtpbLEd5q3_9elfshaker, ptr %.sroa.464.0..sroa_idx, align 8
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bo, ptr noundef nonnull @42, ptr noundef nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !6, !noundef !6
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.cb)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #30
  unreachable

.body118:                                         ; preds = %bb.p, %bb.e, %.body109
  %.pn107 = phi { ptr, i32 } [ %.pn105, %.body109 ], [ %i.cc, %bb.e ], [ %i.cx, %bb.p ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo) #27
          to label %common.resume unwind label %bb.bm

bb.e:                                             ; preds = %bb.gd, %bb.z, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread230, %bb.k, %bb.g, %.split
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body118

bb.f:                                             ; preds = %.split
  %i.cd = load i64, ptr %i.aw, align 8, !range !334, !noundef !6
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #29
          to label %bb.gt unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !6, !noundef !6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !6 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %.not.i = icmp slt i64 %i.ci, 0
  br i1 %.not.i, label %bb.k, label %bb.i, !prof !1730

bb.i:                                             ; preds = %bb.h
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread230, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1732
  %i.ck = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ci, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1732 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.j
  %.sroa.4210.0.ph = phi i64 [ 1, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4210.0.ph, i64 %i.ci) #29
          to label %bb.gt unwind label %bb.e

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread230: ; preds = %bb.i, %bb.l
  %i.cm = phi ptr [ %i.ck, %bb.l ], [ inttoptr (i64 1 to ptr), %bb.i ]
  store i64 %i.ci, ptr %i.bm, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.cm, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.ci, ptr %.sroa.572.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.cn = load ptr, ptr %i.bp, align 8, !nonnull !6, !align !310, !noundef !6 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !6, !noundef !6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !6
  invoke void @_RNvMs3_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10SnapshotId3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.m unwind label %bb.e

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull align 1 %i.cg, i64 %i.ci, i1 false)
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread230

bb.m:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker.exit.thread230
  %i.cs = load i64, ptr %i.bk, align 8, !range !5, !noundef !6 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 32, i1 false)
  br i1 %i.ct, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1735
  %i.cv = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1735 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.o, label %bb.gs, !prof !316

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #29
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.av) #27
          to label %.body118 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %bb.m
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.sroa.575.0.copyload = load i64, ptr %.sroa.575.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.cs, ptr %i.bl, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  store i64 %.sroa.575.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.not99 = icmp eq ptr %i.bv, null               ; 4 uses
  %.not98 = icmp eq ptr %i.bw, null               ; 2 uses
  %or.cond = or i1 %.not99, %.not98
  br i1 %or.cond, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %brmerge.not = and i1 %.not99, %.not98
  %.mux = select i1 %.not99, i8 0, i8 10          ; 2 uses
  br i1 %brmerge.not, label %bb.ab, label %bb.aa

.body109:                                         ; preds = %bb.gl, %bb.gm, %.body120, %bb.cd, %bb.ca, %bb.bp, %bb.bs, %common.resume.sink.split.i154, %bb.bw, %bb.bi, %bb.bj, %bb.bc, %bb.bd, %bb.ai, %bb.t, %.thread253, %.body112
  %.pn105 = phi { ptr, i32 } [ %eh.lpad-body113, %.body112 ], [ %eh.lpad-body256, %.thread253 ], [ %lpad.thr_comm.split-lp, %bb.cd ], [ %common.resume.op.ph.i156, %common.resume.sink.split.i154 ], [ %eh.lpad-body121, %.body120 ], [ %i.du, %bb.ai ], [ %i.ey, %bb.bc ], [ %i.fc, %bb.bi ], [ %i.cz, %bb.t ], [ %i.ey, %bb.bd ], [ %i.fc, %bb.bj ], [ %i.ft, %bb.bw ], [ %i.fo, %bb.bs ], [ %i.fj, %bb.bp ], [ %i.ga, %bb.ca ], [ %i.me, %bb.gm ], [ %i.me, %bb.gl ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bl) #27
          to label %.body118 unwind label %bb.bm

bb.t:                                             ; preds = %.noexc129, %bb.ab, %bb.ae, %bb.ad, %bb.w, %bb.v
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.u:                                             ; preds = %bb.r
  %i.da = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.db = icmp ult i64 %i.da, 6
  call void @llvm.assume(i1 %i.db)
  %.not104 = icmp eq i64 %i.da, 0
  br i1 %.not104, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr @45, ptr %i.bj, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 16, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr @45, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 16, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr @44, ptr %i.df, align 8
  invoke void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 103 to ptr), i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bj)
          to label %bb.x unwind label %bb.t

bb.w:                                             ; preds = %bb.u, %bb.x
  %i.dg = invoke { ptr, ptr } @_RNvXsi_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorEL_EINtNtBW_7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 16)
          to label %bb.y unwind label %bb.t       ; 2 uses

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  %i.dh = extractvalue { ptr, ptr } %i.dg, 0
  %i.di = extractvalue { ptr, ptr } %i.dg, 1
  br label %bb.z

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit, %bb.y
  %.sroa.10.0 = phi ptr [ %i.di, %bb.y ], [ %.sroa.10.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit ]
  %.sroa.0.0 = phi ptr [ %i.dh, %bb.y ], [ %.sroa.0.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bl)
          to label %bb.gp unwind label %bb.e

bb.aa:                                            ; preds = %bb.s
  %.mux296 = select i1 %.not99, ptr %i.bw, ptr %i.bv ; 2 uses
  %.sroa.0196.0.ph.in = getelementptr inbounds nuw i8, ptr %.mux296, i64 8
  %.sroa.0196.0.ph = load ptr, ptr %.sroa.0196.0.ph.in, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.6197.1.ph.in = getelementptr inbounds nuw i8, ptr %.mux296, i64 16
  %.sroa.6197.1.ph = load i64, ptr %.sroa.6197.1.ph.in, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.dj = icmp eq i64 %.sroa.6197.1.ph, 1
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1738
  invoke void @_RINvMs_Cs35zZu0fmp16_7walkdirNtB5_7WalkDir3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 1)
          to label %.noexc129 unwind label %bb.t

.noexc129:                                        ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i8 1, ptr %i.dl, align 8, !noalias !1738
  store i64 0, ptr %i.ao, align 8, !noalias !1738
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 0, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !1738
  %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx.sroa_idx.i, align 8, !noalias !1738
  %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.622.sroa.4.0..sroa.622.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.sroa.5.0..sroa.521.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1738
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.622.sroa.4.0..sroa.622.0..sroa_idx.sroa_idx.i, align 8, !noalias !1738
  %.sroa.622.sroa.5.0..sroa.622.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %.sroa.723.sroa.4.0..sroa.723.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.622.sroa.5.0..sroa.622.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1738
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.723.sroa.4.0..sroa.723.0..sroa_idx.sroa_idx.i, align 8, !noalias !1738
  %.sroa.723.sroa.5.0..sroa.723.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  store i64 0, ptr %.sroa.723.sroa.5.0..sroa.723.0..sroa_idx.sroa_idx.i, align 8, !noalias !1738
  %.sroa.824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.824.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !1738
  %.sroa.925.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.925.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.dk, i64 48, i1 false), !noalias !1738
  %.sroa.1026.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1026.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1738
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB2a_6filter6FilterINtNtB2a_10filter_map9FilterMapINtCs35zZu0fmp16_7walkdir11FilterEntryNtB3O_8IntoIterNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_files0ENCB4E_s_0ENCB4E_s0_0ENCB4E_s1_0EE9from_iterB4I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.ao)
          to label %_RNvNtCs7BtpbLEd5q3_9elfshaker5store10find_files.exit unwind label %bb.t

_RNvNtCs7BtpbLEd5q3_9elfshaker5store10find_files.exit: ; preds = %.noexc129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.bg

bb.ac:                                            ; preds = %bb.aa
  %lhsc = load i8, ptr %.sroa.0196.0.ph, align 1
  %i.dm = icmp eq i8 %lhsc, 45
  br i1 %i.dm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std2fs4readReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0196.0.ph, i64 noundef %.sroa.6197.1.ph)
          to label %bb.af unwind label %bb.t

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.dn = invoke noundef nonnull align 8 ptr @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio5stdin()
          to label %bb.bo unwind label %bb.t

bb.af:                                            ; preds = %bb.ad
  %i.do = load i64, ptr %i.be, align 8, !range !5, !noundef !6 ; 2 uses
  %i.dp = icmp eq i64 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8            ; 4 uses
  br i1 %i.dp, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.dr, ptr %i.ap, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.ds = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #28 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ah, label %bb.bn, !prof !316

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #29
          to label %.noexc131 unwind label %bb.ai

.noexc131:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #27
          to label %.body109 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ak:                                            ; preds = %bb.af
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.585.0.copyload = load i64, ptr %.sroa.585.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  store i64 %i.do, ptr %i.bf, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 5 uses
  store ptr %i.dr, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.585.0.copyload, ptr %.sroa.544.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i8 %.mux, ptr %i.am, align 1, !noalias !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1744
  store i64 0, ptr %i.al, align 8, !noalias !1744
  %i.dw = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dw, align 8, !noalias !1744
  %i.dx = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 4 uses
  store i64 0, ptr %i.dx, align 8, !noalias !1744
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  %.not.i133 = icmp eq i64 %.sroa.585.0.copyload, 0 ; 2 uses
  br i1 %.not.i133, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %..i14.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.585.0.copyload, i64 range(i64 0, -1) 8) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1755
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aj, i64 0, ptr nonnull inttoptr (i64 1 to ptr), i64 noundef %..i14.i.i.i.i, i64 noundef 1, i64 noundef 1), !noalias !1755
  %i.dy = load i64, ptr %i.aj, align 8, !range !334, !noalias !1755, !noundef !6
  %i.dz = trunc nuw i64 %i.dy to i1
  br i1 %i.dz, label %bb.ap, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7BtpbLEd5q3_9elfshaker.exit.i.i.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !1755, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1755
  store ptr %i.eb, ptr %i.dw, align 8, !alias.scope !1757, !noalias !1758
  store i64 %..i14.i.i.i.i, ptr %i.al, align 8, !alias.scope !1757, !noalias !1758
  br label %bb.am

bb.am:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.ak
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef range(i64 0, -9223372036854775808) %.sroa.585.0.copyload)
          to label %.noexc.i unwind label %bb.ao, !noalias !1744

.noexc.i:                                         ; preds = %bb.am
  %i.ec = load i64, ptr %i.dx, align 8, !alias.scope !1759, !noalias !1758, !noundef !6 ; 3 uses
  %i.ed = icmp sgt i64 %i.ec, -1
  call void @llvm.assume(i1 %i.ed)
  br i1 %.not.i133, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.noexc.i
  %i.ee = load ptr, ptr %i.dw, align 8, !alias.scope !1759, !noalias !1758, !nonnull !6, !noundef !6
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull readonly align 1 %i.dr, i64 range(i64 0, -9223372036854775808) %.sroa.585.0.copyload, i1 false), !noalias !1762
  %.pre.i7.i.i = load i64, ptr %i.dx, align 8, !alias.scope !1759, !noalias !1758
  br label %bb.as

bb.ao:                                            ; preds = %bb.as, %bb.am
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #27
          to label %.body112 unwind label %bb.aw, !noalias !1744

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1755
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr inttoptr (i64 163208757251 to ptr), ptr %i.eh, align 8, !alias.scope !1741, !noalias !1763
  store i64 -1, ptr %i.bg, align 8, !alias.scope !1741, !noalias !1763
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.ar unwind label %bb.aq, !noalias !1744

bb.aq:                                            ; preds = %bb.ap
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.al, align 8, !alias.scope !1764, !noalias !1744 ; 2 uses
  %i.ej = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ej, label %.body112, label %common.resume.sink.split.i

bb.ar:                                            ; preds = %bb.ap
  %.val.i.i = load i64, ptr %i.al, align 8, !alias.scope !1764, !noalias !1744 ; 2 uses
  %i.ek = icmp eq i64 %.val.i.i, 0
  br i1 %i.ek, label %.thread246, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.sink.split.i

.thread246:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %._crit_edge

common.resume.sink.split.i:                       ; preds = %bb.au, %bb.aq
  %.val2.i14.sink.i = phi i64 [ %.val2.i14.i, %bb.au ], [ %.val2.i.i, %bb.aq ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.eo, %bb.au ], [ %i.ei, %bb.aq ]
  %.val3.i15.i = load ptr, ptr %i.dw, align 8, !noalias !1744, !nonnull !6, !noundef !6
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i15.i, i64 noundef %.val2.i14.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1744
  br label %.body112

bb.as:                                            ; preds = %bb.an, %.noexc.i
  %i.el = phi i64 [ %.pre.i7.i.i, %bb.an ], [ %i.ec, %.noexc.i ]
  %i.em = add i64 %i.el, %.sroa.585.0.copyload    ; 2 uses
  store i64 %i.em, ptr %i.dx, align 8, !alias.scope !1759, !noalias !1758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1744
end_hunk_0
