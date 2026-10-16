Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_ls.yara_x_ls.375707425faaecf2-cgu.11?download=true
inline.NumInlined: 2062
inline.NumDeleted: 975
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNSNvYNCNvNtNtCs4KzxGwe94yc_9yara_x_ls8features11diagnostics20compiler_diagnosticss3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4MetaEE9call_once6vtableBc_:bb.a
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNSNvYNCNvNtNtCs4KzxGwe94yc_9yara_x_ls8features11diagnostics20compiler_diagnosticss_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4MetaEE9call_once6vtableBc_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8, !range !28, !alias.scope !1229, !noundef !4
  %i.a = icmp eq i64 %.val, -9223372036854775805
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2_9LineIndex13span_to_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = zext i32 %2 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8, !noalias !1234
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1234, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1234, !noundef !4 ; 6 uses
  %i.h = call noundef i64 @_RINvMNtCskKLDkoKarTP_4core5sliceSj15partition_pointNCNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtBS_9LineIndex18offset_to_position0EBW_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !1234
  %i.i = add i64 %i.h, -1                         ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2_9LineIndex18offset_to_position.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #35, !noalias !1234
  unreachable

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2_9LineIndex18offset_to_position.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.i
  %i.l = load i64, ptr %i.k, align 8, !noalias !1234, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = zext i32 %3 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.a, align 8, !noalias !1235
  %i.n = call noundef i64 @_RINvMNtCskKLDkoKarTP_4core5sliceSj15partition_pointNCNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtBS_9LineIndex18offset_to_position0EBW_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !1235
  %i.o = add i64 %i.n, -1                         ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.g
  br i1 %i.p, label %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2_9LineIndex18offset_to_position.exit1, label %bb.c

bb.c:                                             ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2_9LineIndex18offset_to_position.exit
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #35, !noalias !1235
  unreachable

_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2_9LineIndex18offset_to_position.exit1: ; preds = %_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2_9LineIndex18offset_to_position.exit
  %i.q = trunc i64 %i.l to i32
  %i.r = sub i32 %2, %i.q
  %i.s = trunc i64 %i.i to i32
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.o
  %i.u = load i64, ptr %i.t, align 8, !noalias !1235, !noundef !4
  %i.v = trunc i64 %i.o to i32
  %i.w = trunc i64 %i.u to i32
  %i.x = sub i32 %3, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.s, ptr %0, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.r, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.v, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.x, ptr %i.aa, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2_9LineIndex18offset_to_position(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.f = call noundef i64 @_RINvMNtCskKLDkoKarTP_4core5sliceSj15partition_pointNCNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtBS_9LineIndex18offset_to_position0EBW_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  %i.g = add i64 %i.f, -1                         ; 4 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = sub i64 %1, %i.j
  %i.l = trunc i64 %i.g to i32
  %i.m = trunc i64 %i.k to i32
  %i.n = insertvalue { i32, i32 } poison, i32 %i.l, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %i.m, 1
  ret { i32, i32 } %i.o

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2_9LineIndex3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.c = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1529) 8, i64 noundef range(i64 1, 9) 8) #32 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #33
  unreachable

bb.c:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.c, align 8
  store i64 1, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %2, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 10, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 10, ptr %.sroa.814.0..sroa_idx, align 4
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 1, ptr %.sroa.915.0..sroa_idx, align 8
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecjE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB19_3str4iter12MatchIndicescENCNvMNtNtCs4KzxGwe94yc_9yara_x_ls5utils10line_indexNtB2t_9LineIndex3new0EEB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.g:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEE10or_defaultCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.b ]
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.pn, i64 -24
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !21, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = call noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCs6SHYdBec2sV_3url3UrlINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs2w2nn1AeeqK_9lsp_types8TextEditEEE14insert_no_growCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCs4KzxGwe94yc_9yara_x_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 3 uses
  %i.k = icmp ult i64 %i.j, 144115188075855872
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !23, !alias.scope !1244, !noundef !4
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECs4KzxGwe94yc_9yara_x_ls.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = inttoptr i64 %2 to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.s, align 8
  store i64 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.u, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit22: ; preds = %bb.v, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, %bb.r, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheE3newCs4KzxGwe94yc_9yara_x_ls.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECs4KzxGwe94yc_9yara_x_ls.exit
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.t ], [ %i.q, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #35
  unreachable

4:                                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit32
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #33
          to label %.noexc15 unwind label %5

.noexc15:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.a) #34
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheE3newCs4KzxGwe94yc_9yara_x_ls.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.by, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit22

bb.h:                                             ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %14 = urem i64 %2, %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %14
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEE8try_lockCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !13, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %12, align 8, !nonnull !4, !align !21, !noundef !4 ; 9 uses
  %i.ab = load i8, ptr %13, align 8, !range !10, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = trunc nuw i8 %i.ab to i1
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc19, !prof !15

.noexc19:                                         ; preds = %bb.k
  %i.ak = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ak, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc19
  store atomic i8 1, ptr %i.af monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc19, %bb.k, %bb.j
  %i.al = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit, !prof !9

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = add nsw i64 %i.ad, -1                   ; 3 uses
  store i64 %i.ao, ptr %i.ac, align 8
  %i.ap = load i64, ptr %i.an, align 8, !range !7, !noundef !4
  %i.aq = icmp samesign ult i64 %i.ao, %i.ap
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %i.at = icmp ult i64 %i.ad, 1152921504606846977
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !align !21, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.aw, align 8
  store i64 0, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ba = trunc nuw i8 %i.ab to i1
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bc = and i64 %i.bb, 9223372036854775807
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.p, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.be = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.be, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bf = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit22, !prof !9

bb.r:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i21
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit22

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.m, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1245
  %i.bi = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1529) 1400, i64 noundef range(i64 1, 9) 8) #32, !noalias !1245 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.s, label %bb.v, !prof !6

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1400) #33
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.b) #34
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bi, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bm, align 8
  store i64 0, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bo, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit22

bb.w:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %.val.i25 = load ptr, ptr %12, align 8, !alias.scope !1246 ; 4 uses
  %.val3.i26 = load i8, ptr %13, align 8, !range !29, !alias.scope !1246, !noundef !4 ; 2 uses
  %.not.i.i27 = icmp eq i8 %.val3.i26, 2
  br i1 %.not.i.i27, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit32, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i25) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i25, i64 4
  %i.bq = trunc nuw i8 %.val3.i26 to i1
  br i1 %i.bq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1246
  %i.bs = and i64 %i.br, 9223372036854775807
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.z, !prof !15

bb.z:                                             ; preds = %bb.y
  %i.bu = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !1246
  br i1 %i.bu, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bp monotonic, align 1, !noalias !1246
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.bv = atomicrmw xchg ptr %.val.i25, i32 0 release, align 4, !noalias !1246
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit.sink.split.i29, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit32, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit.sink.split.i29: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i25), !noalias !1246
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit32: ; preds = %bb.w, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit.sink.split.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1247
  %i.by = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1529) 1400, i64 noundef range(i64 1, 9) 8) #32, !noalias !1247 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %4, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheE3newCs4KzxGwe94yc_9yara_x_ls.exit9, !prof !6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE9put_valueCs4KzxGwe94yc_9yara_x_ls(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 43 uses
  %i.b = invoke noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE9put_value0jECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @95)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp ult i64 %i.d, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #33
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.g, %bb.c
  unreachable

common.resume:                                    ; preds = %bb.ch, %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.w, %.body ], [ %lpad.phi, %bb.ch ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.9
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #32
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECs4KzxGwe94yc_9yara_x_ls.exit
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = urem i64 %i.b, %i.d                      ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEE8try_lockCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.m)
          to label %bb.h unwind label %.loopexit

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26
  %.lcssa = phi i64 [ %i.fb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.8 ], [ %i.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26 ], [ %i.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.1 ], [ %i.bv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.2 ], [ %i.cj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.3 ], [ %i.cx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.4 ], [ %i.dl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.5 ], [ %i.dz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.6 ], [ %i.en, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.7 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #33
          to label %bb.d unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.cb, %bb.bu, %bb.bn, %bb.bg, %bb.az, %bb.as, %bb.al, %bb.ae, %bb.x, %bb.h
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !4, !align !21, !noundef !4 ; 7 uses
  %i.q = load i8, ptr %i.k, align 8, !range !10, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1271, !noundef !4 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !7, !alias.scope !1271, !noundef !4
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.m unwind label %bb.k, !noalias !1272

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEECs4KzxGwe94yc_9yara_x_ls(ptr nonnull align 8 %1) #34
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

.body:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls(ptr nonnull %i.p, i8 %i.q) #34
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1271, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t
  store ptr %1, ptr %i.aa, align 8, !noalias !1272
  %i.ab = add i64 %i.t, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !1271
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = trunc nuw i8 %i.q to i1
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc14, !prof !15

.noexc14:                                         ; preds = %bb.n
  %i.ah = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ah, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc14
  store atomic i8 1, ptr %i.ac monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc14, %bb.n, %bb.m
  %i.ai = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit, !prof !9

bb.p:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit

bb.q:                                             ; preds = %bb.ch, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.r:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %.val.i16 = load ptr, ptr %i.j, align 8, !alias.scope !1273 ; 4 uses
  %.val3.i17 = load i8, ptr %i.k, align 8, !range !29, !alias.scope !1273, !noundef !4 ; 2 uses
  %.not.i.i18 = icmp eq i8 %.val3.i17, 2
  br i1 %.not.i.i18, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i16, i64 4
  %i.am = trunc nuw i8 %.val3.i17 to i1
  br i1 %i.am, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1273
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.u, !prof !15

bb.u:                                             ; preds = %bb.t
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #36
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.u
  br i1 %i.aq, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.v

bb.v:                                             ; preds = %.noexc24
  store atomic i8 1, ptr %i.al monotonic, align 1, !noalias !1273
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19: ; preds = %bb.v, %.noexc24, %bb.t, %bb.s
  %i.ar = atomicrmw xchg ptr %.val.i16, i32 0 release, align 4, !noalias !1273
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit.sink.split.i20, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26, !prof !9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit.sink.split.i20: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26 unwind label %.loopexit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEECs4KzxGwe94yc_9yara_x_ls.exit.sink.split.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.au = icmp ult i64 %i.h, %i.at
  br i1 %i.au, label %bb.w, label %bb.g

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26
  %i.av = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEE8try_lockCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.aw)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.ax = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.y, label %bb.i

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %.val.i16.1 = load ptr, ptr %i.j, align 8, !alias.scope !1274 ; 4 uses
  %.val3.i17.1 = load i8, ptr %i.k, align 8, !range !29, !alias.scope !1274, !noundef !4 ; 2 uses
  %.not.i.i18.1 = icmp eq i8 %.val3.i17.1, 2
  br i1 %.not.i.i18.1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs4KzxGwe94yc_9yara_x_ls.exit26.1, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16.1) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i16.1, i64 4
end_hunk_0
