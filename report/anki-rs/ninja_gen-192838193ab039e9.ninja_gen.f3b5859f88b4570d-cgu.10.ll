Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ninja_gen-192838193ab039e9.ninja_gen.f3b5859f88b4570d-cgu.10?download=true
inline.NumInlined: 171
inline.NumDeleted: 105
begin_hunk_0_@"_ZN83_$LT$ninja_gen..protobuf..ClangFormat$u20$as$u20$ninja_gen..action..BuildAction$GT$17on_first_instance17h938821b7b85fde83E":switch.lookup
  %switch.gep13 = getelementptr inbounds nuw i8, ptr @"switch.table._ZN83_$LT$ninja_gen..protobuf..ClangFormat$u20$as$u20$ninja_gen..action..BuildAction$GT$17on_first_instance17h938821b7b85fde83E.39", i64 %i.p
  %switch.load14 = load i8, ptr %switch.gep13, align 1
  %switch.ext = zext i8 %switch.load14 to i64
  %i.q = zext nneg i8 %i.k to i64
  %switch.gep15 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN83_$LT$ninja_gen..protobuf..ClangFormat$u20$as$u20$ninja_gen..action..BuildAction$GT$17on_first_instance17h938821b7b85fde83E.40", i64 %i.q
  %switch.load16 = load ptr, ptr %switch.gep15, align 8
  store ptr %switch.load, ptr %i.f, align 8
  store i64 %switch.ext, ptr %i.l, align 8
  store ptr %switch.load16, ptr %i.m, align 8
  store i64 64, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h03da19aeafd7407bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @15)
          to label %bb.a unwind label %bb.i       ; 2 uses

bb.a:                                             ; preds = %switch.lookup
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h52404a5b6aac5172E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, i64 noundef 1, i64 noundef %i.s, i64 noundef %i.t)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  invoke void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h916a5c4db9856b71E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @16, i64 noundef 3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc709ead19665b683E.exit.i.i.i", %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.w, %bb.f ]
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f340035d93f6e46E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.thread unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = load i64, ptr %i.c, align 8, !range !15, !alias.scope !177, !noundef !4
  %switch.i = icmp slt i64 %i.v, -9223372036854775806
  br i1 %switch.i, label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$$u5b$alloc..borrow..Cow$LT$str$GT$$u3b$$u20$1$u5d$$GT$$GT$17h978dfe1ec33509a0E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h112a73c15386b39aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc709ead19665b683E.exit.i.i.i" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #18
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc709ead19665b683E.exit.i.i.i": ; preds = %bb.e
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5e04326d6f271b92E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$$u5b$alloc..borrow..Cow$LT$str$GT$$u3b$$u20$1$u5d$$GT$$GT$17h978dfe1ec33509a0E.exit" unwind label %bb.c

"_ZN4core3ptr99drop_in_place$LT$core..option..Option$LT$$u5b$alloc..borrow..Cow$LT$str$GT$$u3b$$u20$1$u5d$$GT$$GT$17h978dfe1ec33509a0E.exit": ; preds = %bb.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc709ead19665b683E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.y = call noundef ptr @_ZN9ninja_gen8archives20download_and_extract17h1cf68df023341aa8E(ptr noalias noundef nonnull align 8 dereferenceable(248) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.y

bb.h:                                             ; preds = %.body, %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #18
  unreachable

.thread:                                          ; preds = %.body, %bb.i
  %.pn5 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %.pn5

bb.i:                                             ; preds = %bb.a, %switch.lookup
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h6a1eb63c246436ebE"(ptr noalias noundef align 8 dereferenceable(24) %i.g) #17
          to label %.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN83_$LT$ninja_gen..protobuf..ClangFormat$u20$as$u20$ninja_gen..action..BuildAction$GT$5files17h71babdfbe64844cdE"(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !184 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.h = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #19 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 25)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.g, align 8
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17h46507a6fe2abad40E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$10add_inputs17h298b260d844b38f3E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @18, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i8, ptr %i.k, align 8, !range !8, !noundef !4
  %i.m = trunc nuw i8 %i.l to i1                  ; 4 uses
  %. = select i1 %i.m, ptr @21, ptr @19
  %.15 = select i1 %i.m, i64 33, i64 2
  %.16 = select i1 %i.m, ptr @22, ptr @20
  %.17 = select i1 %i.m, i64 5, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.16, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.17, ptr %i.n, align 8
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$12add_variable17hc5ce44241c4572b7E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @23, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %., i64 noundef %.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = call noundef i64 @_ZN9ninja_gen4hash11simple_hash17h7d749271e38f9d63E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  store i64 %i.o, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h27b187f480cce668E", ptr %.sroa.45.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.p, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h55433084d8216725E", ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !185
  store ptr @25, ptr %i.a, align 8, !noalias !186
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.420.0..sroa_idx, align 8, !noalias !186
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.521.0..sroa_idx, align 8, !noalias !186
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !186
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !186
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN82_$LT$ninja_gen..build..BuildStatement$u20$as$u20$ninja_gen..build..FilesHandle$GT$16add_output_stamp17h7638c649108aa855E"(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 48, i64 noundef 8) #19
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17h246649f3c2814960E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !224 {
.lr.ph.i:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @28, i64 noundef 32, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 2)
  %.sroa.07.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.07.sroa.4.0.copyload = load i64, ptr %.sroa.07.sroa.4.0..sroa_idx, align 8 ; 26 uses
  %.sroa.07.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.07.sroa.6.0.copyload = load i64, ptr %.sroa.07.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.07.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.07.sroa.7.0.copyload = load i64, ptr %.sroa.07.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.07.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.07.sroa.8.0.copyload = load i64, ptr %.sroa.07.sroa.8.0..sroa_idx, align 8
  %.sroa.07.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.07.sroa.10.0.copyload = load i64, ptr %.sroa.07.sroa.10.0..sroa_idx, align 8
  %.sroa.07.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.07.sroa.12.0.copyload = load ptr, ptr %.sroa.07.sroa.12.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 16 uses
  %.sroa.07.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.07.sroa.13.0.copyload = load i64, ptr %.sroa.07.sroa.13.0..sroa_idx, align 8 ; 41 uses
  %.sroa.07.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.07.sroa.14.0.copyload = load ptr, ptr %.sroa.07.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.07.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.07.sroa.15.0.copyload = load i64, ptr %.sroa.07.sroa.15.0..sroa_idx, align 8 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.b = trunc nuw i64 %.sroa.07.sroa.0.0.copyload to i1
  %i.c = add i64 %.sroa.07.sroa.15.0.copyload, -1 ; 3 uses
  br i1 %i.b, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.sroa.14.0.copyload) ]
  %i.d = sub i64 %.sroa.07.sroa.15.0.copyload, %.sroa.07.sroa.6.0.copyload
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.4.0.copyload, i64 %.sroa.07.sroa.15.0.copyload)
  %i.e = add i64 %.sroa.07.sroa.4.0.copyload, -1
  %.first_iter = icmp ult i64 %i.e, %.sroa.07.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.07.sroa.4.0.copyload
  %exitcond.not.i.us319.not = icmp ult i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.15.0.copyload
  %invariant.op423 = sub i64 1, %.sroa.07.sroa.4.0.copyload
  %.not82.us322 = icmp eq i64 %.sroa.07.sroa.4.0.copyload, 0
  br label %bb.a

bb.a:                                             ; preds = %.loopexit19.thread.i.i.i.us, %.lr.ph.i.split.us
  %.sroa.39.0.us = phi i64 [ 0, %.lr.ph.i.split.us ], [ %.sroa.11.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 4 uses
  %.sroa.2937.0.us = phi i64 [ %.sroa.07.sroa.10.0.copyload, %.lr.ph.i.split.us ], [ %.sroa.2937.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 2 uses
  %.sroa.17.0.us = phi i64 [ %.sroa.07.sroa.8.0.copyload, %.lr.ph.i.split.us ], [ %.sroa.11.1.ph.us, %.loopexit19.thread.i.i.i.us ] ; 3 uses
  %i.f = icmp eq i64 %.sroa.2937.0.us, -1
  %i.g = add i64 %.sroa.17.0.us, %i.c             ; 3 uses
  %i.h = icmp ult i64 %i.g, %.sroa.07.sroa.13.0.copyload ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  br i1 %i.h, label %.lr.ph.i21.us, label %.lr.ph.split.i.i

.lr.ph.i21.us:                                    ; preds = %bb.b, %.sink.split.i.us
  %i.i = phi i64 [ %.sink.i.us, %.sink.split.i.us ], [ %.sroa.2937.0.us, %bb.b ] ; 3 uses
  %i.j = phi i64 [ %i.am, %.sink.split.i.us ], [ %i.g, %bb.b ]
  %i.k = phi i64 [ %.ph71.i.us, %.sink.split.i.us ], [ %.sroa.17.0.us, %bb.b ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !225, !noundef !4
  %i.n = and i8 %i.m, 63
  %i.o = zext nneg i8 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.p, %.sroa.07.sroa.7.0.copyload
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i21.us
  %.sroa.0.0.i.i23.us = call i64 @llvm.umax.i64(i64 %i.i, i64 %.sroa.07.sroa.4.0.copyload) ; 4 uses
  %umax49.i24.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i23.us, i64 %.sroa.07.sroa.15.0.copyload)
  %exitcond.not.i26.us314.not = icmp ult i64 %.sroa.0.0.i.i23.us, %.sroa.07.sroa.15.0.copyload
  br i1 %exitcond.not.i26.us314.not, label %.lr.ph, label %.preheader83.us.preheader

bb.d:                                             ; preds = %bb.e
  %i.s = add nuw i64 %.sroa.02.0.i25.us315, 1     ; 2 uses
  %exitcond.not.i26.us = icmp eq i64 %i.s, %umax49.i24.us
  br i1 %exitcond.not.i26.us, label %.preheader83.us.preheader, label %.lr.ph

.preheader83.us.preheader:                        ; preds = %bb.d, %bb.c
  %i.t = icmp ult i64 %i.i, %.sroa.07.sroa.4.0.copyload
  br i1 %i.t, label %.lr.ph317, label %.loopexit19.thread.i.i.i.us

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.02.0.i25.us315 = phi i64 [ %i.s, %bb.d ], [ %.sroa.0.0.i.i23.us, %bb.c ] ; 4 uses
  %i.u = add i64 %.sroa.02.0.i25.us315, %i.k      ; 2 uses
  %i.v = icmp ult i64 %i.u, %.sroa.07.sroa.13.0.copyload
  br i1 %i.v, label %bb.e, label %.split.us

bb.e:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %.sroa.02.0.i25.us315
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !226, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.u
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !225, !noundef !4
  %.not21.i28.us = icmp eq i8 %i.x, %i.z
  br i1 %.not21.i28.us, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.reass.reass = add i64 %i.k, %invariant.op
  %i.aa = add i64 %.reass.reass, %.sroa.02.0.i25.us315
  br label %.sink.split.i.us

.preheader83.us:                                  ; preds = %bb.h
  %i.ab = icmp ult i64 %i.i, %i.ac
  br i1 %i.ab, label %.lr.ph317, label %.loopexit19.thread.i.i.i.us

.lr.ph317:                                        ; preds = %.preheader83.us.preheader, %.preheader83.us
  %.sroa.2.0.i29.us316 = phi i64 [ %i.ac, %.preheader83.us ], [ %.sroa.07.sroa.4.0.copyload, %.preheader83.us.preheader ]
  %i.ac = add i64 %.sroa.2.0.i29.us316, -1        ; 6 uses
  %i.ad = icmp ult i64 %i.ac, %.sroa.07.sroa.15.0.copyload
  br i1 %i.ad, label %bb.g, label %.split137.us

bb.g:                                             ; preds = %.lr.ph317
  %i.ae = add i64 %i.ac, %i.k                     ; 3 uses
  %i.af = icmp ult i64 %i.ae, %.sroa.07.sroa.13.0.copyload
  br i1 %i.af, label %bb.h, label %.split140.us

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %i.ac
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !226, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !225, !noundef !4
  %.not.i30.us = icmp eq i8 %i.ah, %i.aj
  br i1 %.not.i30.us, label %.preheader83.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add i64 %i.k, %.sroa.07.sroa.6.0.copyload
  br label %.sink.split.i.us

bb.j:                                             ; preds = %.lr.ph.i21.us
  %i.al = add i64 %i.k, %.sroa.07.sroa.15.0.copyload
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.j, %bb.i, %bb.f
  %.sink.i.us = phi i64 [ %i.d, %bb.i ], [ 0, %bb.f ], [ 0, %bb.j ]
  %.ph71.i.us = phi i64 [ %i.ak, %bb.i ], [ %i.aa, %bb.f ], [ %i.al, %bb.j ] ; 2 uses
  %i.am = add i64 %.ph71.i.us, %i.c               ; 2 uses
  %i.an = icmp ult i64 %i.am, %.sroa.07.sroa.13.0.copyload
  br i1 %i.an, label %.lr.ph.i21.us, label %.lr.ph.split.i.i

bb.k:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  br i1 %i.h, label %.lr.ph.i16.us, label %.lr.ph.split.i.i

.lr.ph.i16.us:                                    ; preds = %bb.k, %bb.r
  %i.ao = phi i64 [ %i.bp, %bb.r ], [ %i.g, %bb.k ]
  %i.ap = phi i64 [ %i.bo, %bb.r ], [ %.sroa.17.0.us, %bb.k ] ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !227, !noundef !4
  %i.as = and i8 %i.ar, 63
  %i.at = zext nneg i8 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = and i64 %i.au, %.sroa.07.sroa.7.0.copyload
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.q, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i16.us
  br i1 %exitcond.not.i.us319.not, label %.lr.ph321, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.l
  %i.ax = add nuw i64 %.sroa.02.0.i.us320, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ax, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader.us.preheader, label %.lr.ph321

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not82.us322, label %.loopexit19.thread.i.i.i.us, label %.lr.ph324

.lr.ph321:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i.us320 = phi i64 [ %i.ax, %.preheader ], [ %.sroa.07.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.ay = add i64 %.sroa.02.0.i.us320, %i.ap      ; 2 uses
  %i.az = icmp ult i64 %i.ay, %.sroa.07.sroa.13.0.copyload
  br i1 %i.az, label %bb.l, label %.split144.us

bb.l:                                             ; preds = %.lr.ph321
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %.sroa.02.0.i.us320
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !228, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !227, !noundef !4
  %.not21.i.us = icmp eq i8 %i.bb, %i.bd
  br i1 %.not21.i.us, label %.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.reass273.reass = add i64 %i.ap, %invariant.op423
  %i.be = add i64 %.reass273.reass, %.sroa.02.0.i.us320
  br label %bb.r

.preheader.us:                                    ; preds = %bb.o
  %.not82.us = icmp eq i64 %i.bf, 0
  br i1 %.not82.us, label %.loopexit19.thread.i.i.i.us, label %.lr.ph324

.lr.ph324:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i.us323 = phi i64 [ %i.bf, %.preheader.us ], [ %.sroa.07.sroa.4.0.copyload, %.preheader.us.preheader ]
  %i.bf = add i64 %.sroa.2.0.i.us323, -1          ; 5 uses
  br i1 %.first_iter, label %bb.n, label %.split148.us

bb.n:                                             ; preds = %.lr.ph324
  %i.bg = add i64 %i.bf, %i.ap                    ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bh, label %bb.o, label %.split151.us

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.14.0.copyload, i64 %i.bf
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !228, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !227, !noundef !4
  %.not.i.us = icmp eq i8 %i.bj, %i.bl
  br i1 %.not.i.us, label %.preheader.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add i64 %.sroa.07.sroa.6.0.copyload, %i.ap
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i16.us
  %i.bn = add i64 %i.ap, %.sroa.07.sroa.15.0.copyload
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m
  %i.bo = phi i64 [ %i.be, %bb.m ], [ %i.bn, %bb.q ], [ %i.bm, %bb.p ] ; 2 uses
  %i.bp = add i64 %i.bo, %i.c                     ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bq, label %.lr.ph.i16.us, label %.lr.ph.split.i.i

.loopexit19.thread.i.i.i.us:                      ; preds = %.preheader83.us.preheader, %.preheader.us.preheader, %.preheader83.us, %.preheader.us
  %.pn = phi i64 [ %i.ap, %.preheader.us ], [ %i.k, %.preheader83.us ], [ %i.ap, %.preheader.us.preheader ], [ %i.k, %.preheader83.us.preheader ]
  %.sroa.2937.1.ph.us = phi i64 [ -1, %.preheader.us ], [ 0, %.preheader83.us ], [ -1, %.preheader.us.preheader ], [ 0, %.preheader83.us.preheader ]
  %.sroa.11.1.ph.us = add i64 %.pn, %.sroa.07.sroa.15.0.copyload ; 2 uses
  br label %bb.a

.lr.ph.i.split:                                   ; preds = %.lr.ph.i
  %i.br = and i64 %.sroa.07.sroa.6.0.copyload, 65536
  %.not81 = icmp eq i64 %i.br, 0
  br i1 %.not81, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.split.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.split
  %i.bs = trunc i64 %.sroa.07.sroa.6.0.copyload to i1 ; 2 uses
  %i.bt = icmp eq i64 %.sroa.07.sroa.4.0.copyload, 0
  br i1 %i.bt, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.preheader
  %.not.i.i.i.peel.i.i.i.peel = icmp ult i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i.peel, label %bb.t, label %.split.i.i.i.peel.i.i.i.peel

.split.i.i.i.peel.i.i.i.peel:                     ; preds = %bb.s
  %i.bu = icmp eq i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bu, label %bb.u, label %.loopexit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.07.sroa.4.0.copyload
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !229, !noalias !230, !noundef !4
  %i.bx = icmp sgt i8 %i.bw, -65
  br i1 %i.bx, label %bb.u, label %.loopexit.i.i.i

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.peel.i.i.i.peel, %.lr.ph.i.i.i.i.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.07.sroa.4.0.copyload ; 4 uses
  %i.bz = icmp samesign eq i64 %.sroa.07.sroa.4.0.copyload, %.sroa.07.sroa.13.0.copyload
  br i1 %i.bz, label %.loopexit19.i.i.i.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = load i8, ptr %i.by, align 1, !noalias !231, !noundef !4 ; 5 uses
  %i.cb = icmp sgt i8 %i.ca, -1
  br i1 %i.cb, label %bb.w, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i.peel": ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cd = and i8 %i.ca, 31
  %i.ce = zext nneg i8 %i.cd to i32               ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 1
  %i.cg = icmp samesign ne i64 %i.cf, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.cg)
  %i.ch = load i8, ptr %i.cc, align 1, !noalias !231, !noundef !4
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32               ; 2 uses
  %i.cl = or disjoint i32 %i.ci, %i.ck
  %i.cm = icmp samesign ugt i8 %i.ca, -33
  br i1 %i.cm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i.peel", label %bb.x

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i.peel"
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.co = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 2
  %i.cp = icmp samesign ne i64 %i.co, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.cp)
  %i.cq = load i8, ptr %i.cn, align 1, !noalias !231, !noundef !4
  %i.cr = shl nuw nsw i32 %i.ck, 6
  %i.cs = and i8 %i.cq, 63
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cr, %i.ct            ; 2 uses
  %i.cv = shl nuw nsw i32 %i.ce, 12
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = icmp samesign ugt i8 %i.ca, -17
  br i1 %i.cx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i.i.peel", label %bb.x

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i.peel"
  %i.cy = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.cz = add nuw nsw i64 %.sroa.07.sroa.4.0.copyload, 3
  %i.da = icmp samesign ne i64 %i.cz, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.da)
  %i.db = load i8, ptr %i.cy, align 1, !noalias !231, !noundef !4
  %i.dc = shl nuw nsw i32 %i.ce, 18
  %i.dd = and i32 %i.dc, 1835008
  %i.de = shl nuw nsw i32 %i.cu, 6
  %i.df = and i8 %i.db, 63
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = or disjoint i32 %i.de, %i.dg
  %i.di = or disjoint i32 %i.dh, %i.dd
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dj = zext nneg i8 %i.ca to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel = phi i32 [ %i.cw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i.peel" ], [ %i.di, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i.i.peel" ], [ %i.cl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i.peel" ], [ %i.dj, %bb.w ] ; 4 uses
  %i.dk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.dk)
  br i1 %i.bs, label %.lr.ph.i.i.i.i.preheader373, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 128
  br i1 %i.dl, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 2048
  br i1 %i.dm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel, 65536
  %..i.i.peel.i.i.i.peel = select i1 %i.dn, i64 3, i64 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.01.0.i.i.peel.i.i.i.peel = phi i64 [ 2, %bb.z ], [ %..i.i.peel.i.i.i.peel, %bb.aa ], [ 1, %bb.y ]
  %i.do = add i64 %.sroa.01.0.i.i.peel.i.i.i.peel, %.sroa.07.sroa.4.0.copyload ; 12 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i.i.i.peel = icmp ult i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i.peel, label %bb.ad, label %.split.i.i.i.i.i.i.peel

.split.i.i.i.i.i.i.peel:                          ; preds = %bb.ac
  %i.dq = icmp eq i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %i.dq, label %bb.ae, label %.loopexit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.do
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !229, !noalias !232, !noundef !4
  %i.dt = icmp sgt i8 %i.ds, -65
  br i1 %i.dt, label %bb.ae, label %.loopexit.i.i.i

bb.ae:                                            ; preds = %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.ab
  %1 = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.do ; 4 uses
  %i.du = icmp samesign eq i64 %i.do, %.sroa.07.sroa.13.0.copyload
  br i1 %i.du, label %.lr.ph.i.i.i.i.preheader373, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = load i8, ptr %1, align 1, !noalias !233, !noundef !4 ; 5 uses
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %27, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i.peel": ; preds = %bb.af
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %3 = and i8 %i.dv, 31
  %4 = zext nneg i8 %3 to i32                     ; 3 uses
  %i.dx = add nuw nsw i64 %i.do, 1
  %i.dy = icmp samesign ne i64 %i.dx, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.dy)
  %5 = load i8, ptr %2, align 1, !noalias !233, !noundef !4
  %6 = shl nuw nsw i32 %4, 6
  %7 = and i8 %5, 63
  %8 = zext nneg i8 %7 to i32                     ; 2 uses
  %9 = or disjoint i32 %6, %8
  %i.dz = icmp samesign ugt i8 %i.dv, -33
  br i1 %i.dz, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i.peel"
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ea = add nuw nsw i64 %i.do, 2
  %i.eb = icmp samesign ne i64 %i.ea, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.eb)
  %11 = load i8, ptr %10, align 1, !noalias !233, !noundef !4
  %12 = shl nuw nsw i32 %8, 6
  %13 = and i8 %11, 63
  %14 = zext nneg i8 %13 to i32
  %15 = or disjoint i32 %12, %14                  ; 2 uses
  %16 = shl nuw nsw i32 %4, 12
  %17 = or disjoint i32 %15, %16
  %i.ec = icmp samesign ugt i8 %i.dv, -17
  br i1 %i.ec, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i.i.peel", label %.loopexit.i.loopexit.i.i.i.peel

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i.peel"
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ed = add nuw nsw i64 %i.do, 3
  %i.ee = icmp samesign ne i64 %i.ed, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ee)
  %19 = load i8, ptr %18, align 1, !noalias !233, !noundef !4
  %20 = shl nuw nsw i32 %4, 18
  %21 = and i32 %20, 1835008
  %22 = shl nuw nsw i32 %15, 6
  %23 = and i8 %19, 63
  %24 = zext nneg i8 %23 to i32
  %25 = or disjoint i32 %22, %24
  %26 = or disjoint i32 %25, %21
  br label %.loopexit.i.loopexit.i.i.i.peel

27:                                               ; preds = %bb.af
  %28 = zext nneg i8 %i.dv to i32
  br label %.loopexit.i.loopexit.i.i.i.peel

.loopexit.i.loopexit.i.i.i.peel:                  ; preds = %27, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.i.i.i.peel = phi i32 [ %17, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i.peel" ], [ %26, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i.i.peel" ], [ %9, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i.peel" ], [ %28, %27 ]
  %29 = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.peel, 1114112
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit19.i.i.i.peel:                           ; preds = %bb.u
  br i1 %i.bs, label %.lr.ph.i.i.i.i.preheader373, label %.lr.ph.split.i.i

.lr.ph.i.i.i.i.sink.split:                        ; preds = %.loopexit.i.loopexit.i.i.i.peel, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i.i"
  %.sink = phi i1 [ %31, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i.i" ], [ %29, %.loopexit.i.loopexit.i.i.i.peel ]
  %.sroa.4.0157.ph = phi i64 [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i.i" ], [ %i.do, %.loopexit.i.loopexit.i.i.i.peel ]
  call void @llvm.assume(i1 %.sink)
  br label %.lr.ph.i.i.i.i.preheader373

.lr.ph.i.i.i.i.preheader373:                      ; preds = %bb.x, %bb.ae, %.loopexit19.i.i.i.peel, %.lr.ph.i.i.i.i.sink.split
  %.sroa.4.0157.ph374 = phi i64 [ %.sroa.4.0157.ph, %.lr.ph.i.i.i.i.sink.split ], [ %.sroa.07.sroa.4.0.copyload, %.loopexit19.i.i.i.peel ], [ %.sroa.07.sroa.13.0.copyload, %bb.ae ], [ %.sroa.07.sroa.4.0.copyload, %bb.x ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.backedge, %.lr.ph.i.i.i.i.preheader373
  %.sroa.4.0157 = phi i64 [ %.sroa.4.0157.ph374, %.lr.ph.i.i.i.i.preheader373 ], [ %.sroa.4.0157.be, %.lr.ph.i.i.i.i.backedge ] ; 13 uses
  %i.ef = icmp eq i64 %.sroa.4.0157, 0
  br i1 %i.ef, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.i.i = icmp ult i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.i.i, label %bb.ah, label %.split.i.i.i.peel.i.i.i

.split.i.i.i.peel.i.i.i:                          ; preds = %bb.ag
  %i.eg = icmp eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.eg, label %bb.ai, label %.loopexit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !229, !noalias !230, !noundef !4
  %i.ej = icmp sgt i8 %i.ei, -65
  br i1 %i.ej, label %bb.ai, label %.loopexit.i.i.i

bb.ai:                                            ; preds = %bb.ah, %.split.i.i.i.peel.i.i.i, %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.4.0157 ; 4 uses
  %i.el = icmp samesign eq i64 %.sroa.4.0157, %.sroa.07.sroa.13.0.copyload
  br i1 %i.el, label %.lr.ph.split.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = load i8, ptr %i.ek, align 1, !noalias !231, !noundef !4 ; 4 uses
  %i.en = icmp sgt i8 %i.em, -1
  br i1 %i.en, label %.thread, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i": ; preds = %bb.aj
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.ep = and i8 %i.em, 31
  %i.eq = zext nneg i8 %i.ep to i32               ; 3 uses
  %i.er = add nuw nsw i64 %.sroa.4.0157, 1
  %i.es = icmp samesign ne i64 %i.er, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.es)
  %i.et = load i8, ptr %i.eo, align 1, !noalias !231, !noundef !4
  %i.eu = shl nuw nsw i32 %i.eq, 6
  %i.ev = and i8 %i.et, 63
  %i.ew = zext nneg i8 %i.ev to i32               ; 2 uses
  %i.ex = or disjoint i32 %i.eu, %i.ew
  %i.ey = icmp samesign ugt i8 %i.em, -33
  br i1 %i.ey, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i", label %bb.ak

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i"
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.fa = add nuw nsw i64 %.sroa.4.0157, 2
  %i.fb = icmp samesign ne i64 %i.fa, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fb)
  %i.fc = load i8, ptr %i.ez, align 1, !noalias !231, !noundef !4
  %i.fd = shl nuw nsw i32 %i.ew, 6
  %i.fe = and i8 %i.fc, 63
  %i.ff = zext nneg i8 %i.fe to i32
  %i.fg = or disjoint i32 %i.fd, %i.ff            ; 2 uses
  %i.fh = shl nuw nsw i32 %i.eq, 12
  %i.fi = or disjoint i32 %i.fg, %i.fh
  %i.fj = icmp samesign ugt i8 %i.em, -17
  br i1 %i.fj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i.i", label %bb.ak

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i"
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ek, i64 3
  %i.fl = add nuw nsw i64 %.sroa.4.0157, 3
  %i.fm = icmp samesign ne i64 %i.fl, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.fm)
  %i.fn = load i8, ptr %i.fk, align 1, !noalias !231, !noundef !4
  %i.fo = shl nuw nsw i32 %i.eq, 18
  %i.fp = and i32 %i.fo, 1835008
  %i.fq = shl nuw nsw i32 %i.fg, 6
  %i.fr = and i8 %i.fn, 63
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fq, %i.fs
  %i.fu = or disjoint i32 %i.ft, %i.fp
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i.i"
  %.sroa.4.0.i.ph.i.i.peel.i.i.i = phi i32 [ %i.fi, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.peel.i.i.i" ], [ %i.fu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.peel.i.i.i" ], [ %i.ex, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.peel.i.i.i" ] ; 4 uses
  %i.fv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 1114112
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 128
  br i1 %i.fw, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 2048
  br i1 %i.fx, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 65536
  %..i.i.peel.i.i.i = select i1 %i.fy, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.aj, %bb.am, %bb.al, %bb.ak
  %.sroa.01.0.i.i.peel.i.i.i = phi i64 [ 2, %bb.al ], [ %..i.i.peel.i.i.i, %bb.am ], [ 1, %bb.ak ], [ 1, %bb.aj ]
  %i.fz = add i64 %.sroa.01.0.i.i.peel.i.i.i, %.sroa.4.0157 ; 15 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.thread
  %.not.i.i.i.i.i.i = icmp ult i64 %i.fz, %.sroa.07.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.an
  %i.gb = icmp eq i64 %i.fz, %.sroa.07.sroa.13.0.copyload
  br i1 %i.gb, label %bb.ap, label %.loopexit.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.fz
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !229, !noalias !232, !noundef !4
  %i.ge = icmp sgt i8 %i.gd, -65
  br i1 %i.ge, label %bb.ap, label %.loopexit.i.i.i

bb.ap:                                            ; preds = %bb.ao, %.split.i.i.i.i.i.i, %.thread
  %i.gf = icmp samesign eq i64 %i.fz, %.sroa.07.sroa.13.0.copyload
  br i1 %i.gf, label %.lr.ph.i.i.i.i.backedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %i.fz
  %i.gh = load i8, ptr %i.gg, align 1, !noalias !233, !noundef !4 ; 3 uses
  %i.gi = icmp sgt i8 %i.gh, -1
  br i1 %i.gi, label %.lr.ph.i.i.i.i.backedge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i": ; preds = %bb.aq
  %i.gj = add nuw nsw i64 %i.fz, 1
  %i.gk = icmp samesign ne i64 %i.gj, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ugt i8 %i.gh, -33
  br i1 %i.gl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

.lr.ph.i.i.i.i.backedge:                          ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i", %bb.aq, %bb.ap
  %.sroa.4.0157.be = phi i64 [ %.sroa.07.sroa.13.0.copyload, %bb.ap ], [ %i.fz, %bb.aq ], [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i" ], [ %i.fz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit12.i.i.i.i.i.i"
  %i.gm = add nuw nsw i64 %i.fz, 2
  %i.gn = icmp samesign ne i64 %i.gm, %.sroa.07.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp samesign ugt i8 %i.gh, -17
  br i1 %i.go, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.backedge

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8c608d9660f771e5E.exit14.i.i.i.i.i.i"
  %30 = add nuw nsw i64 %i.fz, 3
  %31 = icmp samesign ne i64 %30, %.sroa.07.sroa.13.0.copyload
  br label %.lr.ph.i.i.i.i.sink.split

.loopexit.i.i.i:                                  ; preds = %bb.ao, %.split.i.i.i.i.i.i, %bb.ah, %.split.i.i.i.peel.i.i.i, %bb.ad, %.split.i.i.i.i.i.i.peel, %bb.t, %.split.i.i.i.peel.i.i.i.peel
  %.lcssa12.i.i.i = phi i64 [ %.sroa.07.sroa.4.0.copyload, %.split.i.i.i.peel.i.i.i.peel ], [ %.sroa.07.sroa.4.0.copyload, %bb.t ], [ %i.do, %.split.i.i.i.i.i.i.peel ], [ %i.do, %bb.ad ], [ %.sroa.4.0157, %.split.i.i.i.peel.i.i.i ], [ %.sroa.4.0157, %bb.ah ], [ %i.fz, %.split.i.i.i.i.i.i ], [ %i.fz, %bb.ao ]
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.07.sroa.12.0.copyload, i64 noundef %.sroa.07.sroa.13.0.copyload, i64 noundef %.lcssa12.i.i.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16, !noalias !232
  unreachable

.split137.us:                                     ; preds = %.lr.ph317
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ac, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !234
  unreachable

.split140.us:                                     ; preds = %bb.g
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ae, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16, !noalias !234
  unreachable

.split.us:                                        ; preds = %.lr.ph
  %i.gp = add i64 %i.k, %.sroa.0.0.i.i23.us
  %umax.i27 = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.gp)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i27, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16, !noalias !234
  unreachable

.split148.us:                                     ; preds = %.lr.ph324
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bf, i64 noundef %.sroa.07.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #16, !noalias !235
  unreachable

.split151.us:                                     ; preds = %bb.n
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bg, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16, !noalias !235
  unreachable

.split144.us:                                     ; preds = %.lr.ph321
  %i.gq = add i64 %i.ap, %.sroa.07.sroa.4.0.copyload
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.07.sroa.13.0.copyload, i64 %i.gq)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i, i64 noundef %.sroa.07.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #16, !noalias !235
  unreachable

.lr.ph.split.i.i:                                 ; preds = %bb.ai, %bb.k, %bb.b, %.sink.split.i.us, %bb.r, %.loopexit19.i.i.i.peel, %.lr.ph.i.split
  %.sroa.39.0133 = phi i64 [ 0, %.loopexit19.i.i.i.peel ], [ 0, %.lr.ph.i.split ], [ %.sroa.39.0.us, %.sink.split.i.us ], [ %.sroa.39.0.us, %bb.r ], [ %.sroa.39.0.us, %bb.k ], [ %.sroa.39.0.us, %bb.b ], [ %.sroa.4.0157, %bb.ai ] ; 2 uses
  %i.gr = sub nuw i64 32, %.sroa.39.0133          ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.07.sroa.12.0.copyload, i64 %.sroa.39.0133 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.gt = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.hi, %.backedge.backedge ] ; 5 uses
  %i.gu = sub nuw nsw i64 %i.gr, %i.gt            ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt ; 2 uses
  %i.gw = icmp samesign ult i64 %i.gu, 16
  br i1 %i.gw, label %.preheader.i.i.i, label %bb.ar

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ar:                                            ; preds = %.backedge
  %i.gx = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gv, i64 noundef %i.gu), !noalias !236
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.as, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.gu, %bb.as ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.as ], [ 1, %.lr.ph.i.i.i ]
  %i.gy = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.gz = insertvalue { i64, i64 } %i.gy, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.as
  %.sroa.01.05.i.i.i = phi i64 [ %i.hd, %bb.as ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.01.05.i.i.i
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !237, !noalias !236, !noundef !4
  %i.hc = icmp eq i8 %i.hb, 60
  br i1 %i.hc, label %._crit_edge.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.hd = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.hd, %i.gu
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.ar
  %.merged.i.i.i = phi { i64, i64 } [ %i.gz, %._crit_edge.i.i.i ], [ %i.gx, %bb.ar ] ; 2 uses
  %i.he = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.hf = trunc nuw i64 %i.he to i1
  br i1 %i.hf, label %bb.at, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit"

bb.at:                                            ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.hg = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.hh = add nuw nsw i64 %i.gt, 1
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.hi, %i.gr         ; 2 uses
  %i.hj = add i64 %i.gt, %i.hg
  %or.cond.i.i.not = icmp ult i64 %i.hj, %i.gr
  br i1 %or.cond.i.i.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not14.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.au, %bb.av
  br label %.backedge

bb.av:                                            ; preds = %bb.at
  %i.hk = add i64 %i.gt, %i.hg                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hk
  %lhsc = load i8, ptr %i.hl, align 1
  %i.hm = icmp eq i8 %lhsc, 60                    ; 2 uses
  %brmerge = select i1 %i.hm, i1 true, i1 %.not14.i.i
  br i1 %brmerge, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit.split.loop.exit", label %.backedge.backedge

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit.split.loop.exit": ; preds = %bb.av
  %.mux.le = select i1 %i.hm, i64 %i.hk, i64 %i.gr
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit": ; preds = %bb.au, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit.split.loop.exit"
  %.sroa.4.1.i = phi i64 [ %.mux.le, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h2d9f2486416135f3E.exit.split.loop.exit" ], [ %i.gr, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %i.gr, %bb.au ]
  %i.hn = insertvalue { ptr, i64 } poison, ptr %i.gs, 0
  %i.ho = insertvalue { ptr, i64 } %i.hn, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.ho
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_ZN9ninja_gen8protobuf11check_proto17h22aa7388b7223239E(ptr noalias noundef align 8 dereferenceable(248) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !244 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 13 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.f = load i64, ptr %1, align 8, !range !10, !alias.scope !246, !noundef !4 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775806
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808
  %i.i = icmp slt i64 %i.f, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 2
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %.noexc unwind label %.body.thread18

.noexc:                                           ; preds = %bb.c
  store i64 -9223372036854775808, ptr %i.d, align 8, !alias.scope !245
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h59a9c68dd0603e52E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %.noexc11 unwind label %.body.thread18

.noexc11:                                         ; preds = %bb.d
  store i64 -9223372036854775807, ptr %i.d, align 8, !alias.scope !245
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !248
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %.noexc12 unwind label %.body.thread18, !noalias !249

.noexc12:                                         ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !11, !alias.scope !250, !noundef !4
  %.not.i.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not.i.i, label %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit.i", label %bb.f

bb.f:                                             ; preds = %.noexc12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !248
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.h unwind label %bb.g, !noalias !249

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc709ead19665b683E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #17
          to label %.body.thread unwind label %bb.i, !noalias !249

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !noalias !248
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !248
  br label %"_ZN61_$LT$ninja_gen..input..Glob$u20$as$u20$core..clone..Clone$GT$5clone17h93fc481102d37dbaE.exit.i"

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #18, !noalias !249
  unreachable
end_hunk_0
