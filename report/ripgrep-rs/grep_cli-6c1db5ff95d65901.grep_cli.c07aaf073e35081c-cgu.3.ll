Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_cli-6c1db5ff95d65901.grep_cli.c07aaf073e35081c-cgu.3?download=true
inline.NumInlined: 173
inline.NumDeleted: 83
begin_hunk_0_@_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgwyS1EwTFAS_8grep_cli:bb.a
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1772
  store ptr %.pn810, ptr %i.n, align 8, !dbg !1772
  br label %bb.g, !dbg !1773

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !1774
  store i64 %.sink11, ptr %i.o, align 8, !dbg !1774
  store i64 %.sink, ptr %0, align 8, !dbg !1774
  ret void, !dbg !1775
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgwyS1EwTFAS_8grep_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !67 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !1808 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !1808 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !1808
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !1809, !prof !216
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !1809, !prof !216

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0, !dbg !1810
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !1810

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1811
  store i64 0, ptr %i.f, align 8, !dbg !1811
  br label %bb.f, !dbg !1812

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !1813
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1814
  store i64 0, ptr %i.h, align 8, !dbg !1814
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1814
  store ptr %i.g, ptr %i.i, align 8, !dbg !1814
  br label %bb.f, !dbg !1815

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !1816
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !1817

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !1818
  ret void, !dbg !1819

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20, !dbg !1820
  br label %bb.h, !dbg !1821

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20, !dbg !1822
  br label %bb.h, !dbg !1823

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null, !dbg !1824
  br i1 %i.l, label %bb.i, label %bb.j, !dbg !1825

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1826
  store i64 %3, ptr %i.m, align 8, !dbg !1826
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1826
  store i64 %i.b, ptr %i.n, align 8, !dbg !1826
  br label %bb.f, !dbg !1827

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1, !dbg !1828
  tail call void @llvm.assume(i1 %i.o), !dbg !1828
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1829
  store i64 %1, ptr %i.p, align 8, !dbg !1829
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1829
  store ptr %.pn9, ptr %i.q, align 8, !dbg !1829
  br label %bb.f, !dbg !1815
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgwyS1EwTFAS_8grep_cli10decompressNtB4_27DecompressionMatcherBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1830 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 19 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 6 uses
  %i.k = alloca [80 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [24 x i8], align 8                ; 15 uses
  %i.n = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !2090
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2091
  %i.p = load i8, ptr %i.o, align 8, !dbg !2091, !range !194, !noundef !95
  %i.q = trunc nuw i8 %i.p to i1, !dbg !2091
  br i1 %i.q, label %bb.c, label %bb.b, !dbg !2091

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.n, align 8, !dbg !2092
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !2092
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !dbg !2092
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !2092
  store i64 0, ptr %i.s, align 8, !dbg !2092
  br label %bb.q, !dbg !2093

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2094, !noalias !2006
  store i64 0, ptr %i.e, align 8, !dbg !2095, !noalias !2006
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2095
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !dbg !2095, !noalias !2006
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2095
  store i64 0, ptr %i.u, align 8, !dbg !2095, !noalias !2006
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @20, i64 noundef 3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.d, !dbg !2096, !noalias !2006

bb.d:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #21
          to label %common.resume unwind label %bb.p, !dbg !2097, !noalias !2006

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @20, i64 noundef 3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.d, !dbg !2098, !noalias !2006

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @24, i64 noundef 3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.d, !dbg !2099, !noalias !2006

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @24, i64 noundef 3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.h unwind label %bb.d, !dbg !2100, !noalias !2006

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @28, i64 noundef 3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.i unwind label %bb.d, !dbg !2101, !noalias !2006

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @28, i64 noundef 3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.j unwind label %bb.d, !dbg !2102, !noalias !2006

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @32, i64 noundef 3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.k unwind label %bb.d, !dbg !2103, !noalias !2006

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @35, i64 noundef 4, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.l unwind label %bb.d, !dbg !2104, !noalias !2006

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @38, i64 noundef 3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.m unwind label %bb.d, !dbg !2105, !noalias !2006

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @42, i64 noundef 4, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %bb.d, !dbg !2106, !noalias !2006

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @42, i64 noundef 4, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.o unwind label %bb.d, !dbg !2107, !noalias !2006

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RNvNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands3add(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @46, i64 noundef 2, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %_RNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands.exit unwind label %bb.d, !dbg !2108, !noalias !2006

bb.p:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !2109, !noalias !2006
  unreachable, !dbg !2109

common.resume.sink.split:                         ; preds = %bb.ba, %bb.aa
  %.val2.i130.sink = phi i64 [ %.val2.i, %bb.aa ], [ %.val2.i130, %bb.ba ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ba, %bb.aa ], [ %i.cf, %bb.ba ]
  %.val3.i131 = load ptr, ptr %i.ac, align 8, !dbg !2008, !nonnull !95, !noundef !95
  %i.x = mul nuw i64 %.val2.i130.sink, 72, !dbg !2110
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i131, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2111
  br label %common.resume, !dbg !2112

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.ba, %bb.aa, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.ba ], [ %i.v, %bb.d ], [ %i.ba, %bb.aa ], [ %.pn105, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !2112

_RNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !2113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2097, !noalias !2006
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !2114
  %.phi.trans.insert151 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre152 = load i64, ptr %.phi.trans.insert151, align 8, !dbg !2115
  br label %bb.q, !dbg !2116

.loopexit:                                        ; preds = %bb.t, %bb.ak, %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body118

.loopexit.split-lp:                               ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1Y_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2E_ENtNtNtB22_6traits8iterator8Iterator4next0EBN_.exit, %bb.v, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body118

.body118:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.at, %bb.am
  %eh.lpad-body119 = phi { ptr, i32 } [ %.pn.i, %bb.am ], [ %i.bw, %bb.at ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #21
          to label %.body115 unwind label %bb.bc, !dbg !2117

bb.q:                                             ; preds = %bb.b, %_RNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands.exit
  %i.y = phi i64 [ 0, %bb.b ], [ %.pre152, %_RNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands.exit ], !dbg !2115
  %i.z = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %.pre, %_RNvNtCsgwyS1EwTFAS_8grep_cli10decompress30default_decompression_commands.exit ], !dbg !2114 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !2118
  store i64 0, ptr %i.m, align 8, !dbg !2119
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !2119 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx, align 8, !dbg !2119
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !2119
  store i64 0, ptr %.sroa.524.0..sroa_idx, align 8, !dbg !2119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !2120
  store i64 0, ptr %i.l, align 8, !dbg !2121
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !2121 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.aa, align 8, !dbg !2121
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !2121 ; 3 uses
  store i64 0, ptr %i.ab, align 8, !dbg !2121
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !2114 ; 2 uses
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.y, !dbg !2122
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2123
  %.val = load ptr, ptr %i.ae, align 8, !dbg !2123, !nonnull !95, !noundef !95 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2123
  %.val107 = load i64, ptr %i.af, align 8, !dbg !2123, !noundef !95
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.val107, !dbg !2124
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  br label %bb.r, !dbg !2125

bb.r:                                             ; preds = %bb.av, %bb.q
  %.sroa.0137.0 = phi ptr [ %i.z, %bb.q ], [ %.sroa.0137.1142.ph, %bb.av ], !dbg !2017 ; 4 uses
  %.sroa.8138.0 = phi ptr [ %.val, %bb.q ], [ %.sroa.8138.1.ph, %bb.av ], !dbg !2017 ; 4 uses
  %.not.i = icmp eq ptr %.sroa.0137.0, null, !dbg !2126
  %i.aj = icmp eq ptr %.sroa.0137.0, %i.ad
  %or.cond = select i1 %.not.i, i1 true, i1 %i.aj, !dbg !2127
  br i1 %or.cond, label %select.unfold, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1y_.exit, !dbg !2127

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1y_.exit: ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0137.0, i64 72
  br label %bb.t, !dbg !2128

select.unfold:                                    ; preds = %bb.r
  %i.al = icmp eq ptr %.sroa.8138.0, %i.ag
  br i1 %i.al, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1Y_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2E_ENtNtNtB22_6traits8iterator8Iterator4next0EBN_.exit, label %bb.s, !dbg !2129

bb.s:                                             ; preds = %select.unfold
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.8138.0, i64 72, !dbg !2130
  br label %bb.t, !dbg !2131

bb.t:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1y_.exit, %bb.s
  %.sroa.0137.1142.ph = phi ptr [ %i.ak, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1y_.exit ], [ null, %bb.s ]
  %.sroa.8138.1.ph = phi ptr [ %.sroa.8138.0, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1y_.exit ], [ %i.am, %bb.s ]
  %.sroa.0.0.i109.ph = phi ptr [ %.sroa.0137.0, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1y_.exit ], [ %.sroa.8138.0, %bb.s ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !2132
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i109.ph, i64 8, !dbg !2133
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !2133, !nonnull !95, !noundef !95
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i109.ph, i64 16, !dbg !2134
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !2134, !noundef !95
  invoke void @_RNvMs9_NtCs8XVSHBVmna6_7globset4globNtB5_4Glob3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq)
          to label %bb.ai unwind label %.loopexit, !dbg !2132

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1Y_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2E_ENtNtNtB22_6traits8iterator8Iterator4next0EBN_.exit: ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !2135
  invoke void @_RNvMs5_Cs8XVSHBVmna6_7globsetNtB5_14GlobSetBuilder5build(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.u unwind label %.loopexit.split-lp, !dbg !2136

bb.u:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1Y_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2E_ENtNtNtB22_6traits8iterator8Iterator4next0EBN_.exit
  %i.ar = load i64, ptr %i.h, align 8, !dbg !2137, !range !211, !noundef !95
  %.not103 = icmp eq i64 %i.ar, -2, !dbg !2137
  br i1 %.not103, label %bb.w, label %bb.v, !dbg !2138

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !2139
  %i.as = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtCs8XVSHBVmna6_7globset5ErrorECsgwyS1EwTFAS_8grep_cli(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.ac unwind label %.loopexit.split-lp, !dbg !2140

bb.w:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !2141
  %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !2141
  %.sroa.464.sroa.4.0.copyload = load ptr, ptr %.sroa.464.sroa.4.0..sroa.464.0..sroa_idx.sroa_idx, align 8, !dbg !2141
  %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !2141
  %.sroa.464.sroa.5.0.copyload = load i64, ptr %.sroa.464.sroa.5.0..sroa.464.0..sroa_idx.sroa_idx, align 8, !dbg !2141
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2142
  %i.au = load <2 x i64>, ptr %i.at, align 8, !dbg !2141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !2144
  store <2 x i64> %i.au, ptr %0, align 8, !dbg !2142
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2142
  store ptr %.sroa.464.sroa.4.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !2142
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2142
  store i64 %.sroa.464.sroa.5.0.copyload, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !2142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !2117
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8XVSHBVmna6_7globset4glob4GlobENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.y unwind label %bb.x, !dbg !2145

bb.x:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.m, align 8, !dbg !2145, !alias.scope !2054 ; 2 uses
  %i.aw = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aw, label %.body, label %.body.sink.split, !dbg !2146

bb.y:                                             ; preds = %bb.w
  %.val.i.i = load i64, ptr %i.m, align 8, !dbg !2145, !alias.scope !2054 ; 2 uses
  %i.ax = icmp eq i64 %.val.i.i, 0
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit, label %bb.z, !dbg !2147

bb.z:                                             ; preds = %bb.y
  %.val1.i.i = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !dbg !2145, !alias.scope !2054, !nonnull !95, !noundef !95
  %i.ay = mul nuw i64 %.val.i.i, 80, !dbg !2148
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ay, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2149
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit, !dbg !2150

.body.sink.split:                                 ; preds = %bb.x, %bb.ax
  %.val2.i.i122.sink = phi i64 [ %.val2.i.i122, %bb.ax ], [ %.val2.i.i, %bb.x ]
  %.pn105.ph = phi { ptr, i32 } [ %i.cb, %bb.ax ], [ %i.av, %bb.x ]
  %.val3.i.i123 = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !dbg !2057, !nonnull !95, !noundef !95
  %i.az = mul nuw i64 %.val2.i.i122.sink, 80, !dbg !2151
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i123, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2152
  br label %.body, !dbg !2007

.body:                                            ; preds = %.body.sink.split, %bb.ax, %bb.x, %.body115
  %.pn105 = phi { ptr, i32 } [ %.pn, %.body115 ], [ %i.av, %bb.x ], [ %i.cb, %bb.ax ], [ %.pn105.ph, %.body.sink.split ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #21
          to label %common.resume unwind label %bb.bc, !dbg !2007

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !2055
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ab unwind label %bb.aa, !dbg !2153

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.n, align 8, !dbg !2153, !alias.scope !2066 ; 2 uses
  %i.bb = icmp eq i64 %.val2.i, 0
  br i1 %i.bb, label %common.resume, label %common.resume.sink.split, !dbg !2154

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit
  %.val.i = load i64, ptr %i.n, align 8, !dbg !2153, !alias.scope !2066 ; 2 uses
  %i.bc = icmp eq i64 %.val.i, 0
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit135, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit135.sink.split, !dbg !2155

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit135.sink.split: ; preds = %bb.ab, %bb.bb
  %.val.i.sink = phi i64 [ %.val.i133, %bb.bb ], [ %.val.i, %bb.ab ]
  %.val1.i = load ptr, ptr %i.ac, align 8, !dbg !2008, !nonnull !95, !noundef !95
  %i.bd = mul nuw i64 %.val.i.sink, 72, !dbg !2110
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2111
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit135, !dbg !2007

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit135: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit135.sink.split, %bb.ab, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !2007
  ret void, !dbg !2156

bb.ac:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2143
  br label %bb.ad, !dbg !2158

bb.ad:                                            ; preds = %bb.aw, %bb.ac
  %.sink = phi ptr [ %i.bm, %bb.aw ], [ %i.as, %bb.ac ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2159
  store i64 -1, ptr %i.be, align 8, !dbg !2159
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2159
  store ptr %.sink, ptr %.sroa.461.0..sroa_idx, align 8, !dbg !2159
  store i64 -1, ptr %0, align 8, !dbg !2159
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ag unwind label %bb.ae, !dbg !2160

bb.ae:                                            ; preds = %bb.ad
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i110 = load i64, ptr %i.l, align 8, !dbg !2160, !alias.scope !2069 ; 2 uses
  %i.bg = icmp eq i64 %.val2.i110, 0
  br i1 %i.bg, label %.body115, label %bb.af, !dbg !2161

bb.af:                                            ; preds = %bb.ae
  %.val3.i111 = load ptr, ptr %i.aa, align 8, !dbg !2160, !alias.scope !2069, !nonnull !95, !noundef !95
  %i.bh = mul nuw i64 %.val2.i110, 72, !dbg !2162
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i111, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2163
  br label %.body115, !dbg !2164

bb.ag:                                            ; preds = %bb.ad
  %.val.i113 = load i64, ptr %i.l, align 8, !dbg !2160, !alias.scope !2069 ; 2 uses
  %i.bi = icmp eq i64 %.val.i113, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit117, label %bb.ah, !dbg !2165

bb.ah:                                            ; preds = %bb.ag
  %.val1.i114 = load ptr, ptr %i.aa, align 8, !dbg !2160, !alias.scope !2069, !nonnull !95, !noundef !95
  %i.bj = mul nuw i64 %.val.i113, 72, !dbg !2166
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i114, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2167
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit117, !dbg !2168

bb.ai:                                            ; preds = %bb.t
  %i.bk = load i64, ptr %i.k, align 8, !dbg !2169, !range !118, !noundef !95 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, -1, !dbg !2169
  br i1 %i.bl, label %bb.aj, label %bb.ak, !dbg !2170

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.426.0..sroa_idx, i64 48, i1 false), !dbg !2171
  %i.bm = invoke noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtCs8XVSHBVmna6_7globset5ErrorECsgwyS1EwTFAS_8grep_cli(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.aw unwind label %.loopexit.split-lp, !dbg !2172

bb.ak:                                            ; preds = %bb.ai
  %.sroa.426.sroa.0.0.copyload = load i64, ptr %.sroa.426.0..sroa_idx, align 8, !dbg !2173
  %.sroa.426.sroa.4.0.copyload = load ptr, ptr %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx, align 8, !dbg !2173
  %.sroa.426.sroa.5.0.copyload = load i64, ptr %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, align 8, !dbg !2173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.527.0..sroa_idx, i64 48, i1 false), !dbg !2173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !2174
  store i64 %i.bk, ptr %i.j, align 8, !dbg !2132
  store i64 %.sroa.426.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx4, align 8, !dbg !2132
  store ptr %.sroa.426.sroa.4.0.copyload, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx4.sroa_idx, align 8, !dbg !2132
  store i64 %.sroa.426.sroa.5.0.copyload, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx4.sroa_idx, align 8, !dbg !2132
  %i.bn = invoke noundef nonnull align 8 ptr @_RNvMs5_Cs8XVSHBVmna6_7globsetNtB5_14GlobSetBuilder3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.j)
          to label %bb.al unwind label %.loopexit, !dbg !2175 ; 0 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !2176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2177, !noalias !2072
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.0.i109.ph)
          to label %.noexc unwind label %.loopexit, !dbg !2177

.noexc:                                           ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2178, !noalias !2072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2179, !noalias !2072
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i109.ph, i64 24, !dbg !2179
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %bb.ao unwind label %bb.an, !dbg !2180, !noalias !2083

bb.am:                                            ; preds = %bb.ap, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.br, %bb.ap ], [ %i.bp, %bb.an ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %.body118 unwind label %bb.aq, !dbg !2181, !noalias !2083

bb.an:                                            ; preds = %.noexc
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !2182, !noalias !2072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2183, !noalias !2072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2184, !noalias !2072
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i109.ph, i64 48, !dbg !2184
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq)
          to label %bb.ar unwind label %bb.ap, !dbg !2184, !noalias !2083

bb.ap:                                            ; preds = %bb.ao
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.am unwind label %bb.aq, !dbg !2181, !noalias !2083

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !2185, !noalias !2083
  unreachable, !dbg !2185

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !2185, !noalias !2084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !2185, !noalias !2084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !2185, !noalias !2084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2181, !noalias !2072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2181, !noalias !2072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2181, !noalias !2072
  call void @llvm.experimental.noalias.scope.decl(metadata !2085), !dbg !2186
  %i.bt = load i64, ptr %i.ab, align 8, !dbg !2187, !alias.scope !2085, !noundef !95 ; 3 uses
  %i.bu = load i64, ptr %i.l, align 8, !dbg !2188, !range !117, !alias.scope !2085, !noundef !95
  %i.bv = icmp eq i64 %i.bt, %i.bu, !dbg !2189
  br i1 %i.bv, label %bb.as, label %bb.av, !dbg !2189

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.av unwind label %bb.at, !dbg !2190, !noalias !2087

bb.at:                                            ; preds = %bb.as
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #21
          to label %.body118 unwind label %bb.au, !dbg !2191, !noalias !2085

bb.au:                                            ; preds = %bb.at
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !2192, !noalias !2085
  unreachable, !dbg !2192

bb.av:                                            ; preds = %bb.as, %bb.ar
  %i.by = load ptr, ptr %i.aa, align 8, !dbg !2193, !alias.scope !2085, !nonnull !95, !noundef !95
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %i.by, i64 %i.bt, !dbg !2194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bz, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !2195, !noalias !2085
  %i.ca = add i64 %i.bt, 1, !dbg !2196
  store i64 %i.ca, ptr %i.ab, align 8, !dbg !2196, !alias.scope !2085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2197
  br label %bb.r, !dbg !2125

bb.aw:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !2174
  br label %bb.ad, !dbg !2158

.body115:                                         ; preds = %bb.af, %bb.ae, %.body118
  %.pn = phi { ptr, i32 } [ %eh.lpad-body119, %.body118 ], [ %i.bf, %bb.ae ], [ %i.bf, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #21
          to label %.body unwind label %bb.bc, !dbg !2055

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit117: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !2117
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8XVSHBVmna6_7globset4glob4GlobENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ay unwind label %bb.ax, !dbg !2199

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit117
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i122 = load i64, ptr %i.m, align 8, !dbg !2199, !alias.scope !2088 ; 2 uses
  %i.cc = icmp eq i64 %.val2.i.i122, 0
  br i1 %i.cc, label %.body, label %.body.sink.split, !dbg !2200

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit117
  %.val.i.i125 = load i64, ptr %i.m, align 8, !dbg !2199, !alias.scope !2088 ; 2 uses
  %i.cd = icmp eq i64 %.val.i.i125, 0
  br i1 %i.cd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit129, label %bb.az, !dbg !2201

bb.az:                                            ; preds = %bb.ay
  %.val1.i.i126 = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !dbg !2199, !alias.scope !2088, !nonnull !95, !noundef !95
  %i.ce = mul nuw i64 %.val.i.i125, 80, !dbg !2202
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i126, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !dbg !2203
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit129, !dbg !2204

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit129: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !2055
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bb unwind label %bb.ba, !dbg !2205

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit129
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i130 = load i64, ptr %i.n, align 8, !dbg !2205, !alias.scope !2089 ; 2 uses
  %i.cg = icmp eq i64 %.val2.i130, 0
  br i1 %i.cg, label %common.resume, label %common.resume.sink.split, !dbg !2206

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8XVSHBVmna6_7globset14GlobSetBuilderECsgwyS1EwTFAS_8grep_cli.exit129
  %.val.i133 = load i64, ptr %i.n, align 8, !dbg !2205, !alias.scope !2089 ; 2 uses
  %i.ch = icmp eq i64 %.val.i133, 0
  br i1 %i.ch, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit135, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgwyS1EwTFAS_8grep_cli10decompress20DecompressionCommandEEB1c_.exit135.sink.split, !dbg !2207

bb.bc:                                            ; preds = %.body115, %.body, %.body118
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !2208
  unreachable, !dbg !2208
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsgwyS1EwTFAS_8grep_cli7process23stderr_to_command_error(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2209 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2245
  store i64 0, ptr %i.a, align 8, !dbg !2246
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2246 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !2246
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2246
  store i64 0, ptr %i.c, align 8, !dbg !2246
  %i.d = invoke { i64, ptr } @_RNvXsd_NtCsG258MDvU3F_3std7processNtB5_11ChildStderrNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !2247 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
          to label %common.resume unwind label %bb.j, !dbg !2248

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.d, 0, !dbg !2249
  %i.g = trunc nuw i64 %i.f to i1, !dbg !2250
  br i1 %i.g, label %bb.d, label %bb.i, !dbg !2250

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { i64, ptr } %i.d, 1, !dbg !2249 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store i64 -1, ptr %0, align 8, !dbg !2251
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2251
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2251
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgwyS1EwTFAS_8grep_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !2252

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.a, align 8, !dbg !2252, !alias.scope !2241 ; 2 uses
  %i.j = icmp eq i64 %.val2.i, 0
  br i1 %i.j, label %common.resume, label %bb.f, !dbg !2253

bb.f:                                             ; preds = %bb.e
  %.val3.i = load ptr, ptr %i.b, align 8, !dbg !2252, !alias.scope !2242, !nonnull !95, !noundef !95
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !2254, !noalias !2243
  br label %common.resume, !dbg !2255

bb.g:                                             ; preds = %bb.d
  %.val.i = load i64, ptr %i.a, align 8, !dbg !2252, !alias.scope !2241 ; 2 uses
  %i.k = icmp eq i64 %.val.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit, label %bb.h, !dbg !2256

bb.h:                                             ; preds = %bb.g
  %.val1.i = load ptr, ptr %i.b, align 8, !dbg !2252, !alias.scope !2242, !nonnull !95, !noundef !95
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !dbg !2257, !noalias !2244
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit, !dbg !2258

common.resume:                                    ; preds = %bb.b, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.i, %bb.f ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !2259

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !2260
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit, !dbg !2248

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgwyS1EwTFAS_8grep_cli.exit: ; preds = %bb.h, %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2248
  ret void, !dbg !2261

end_hunk_0
