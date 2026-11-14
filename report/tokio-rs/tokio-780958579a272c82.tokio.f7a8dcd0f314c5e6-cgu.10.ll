Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.10?download=true
inline.NumInlined: 368
inline.NumDeleted: 208
begin_hunk_0_@_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB4_15LocalOwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_4task5local6SharedEE6removeBa_:bb.a
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load i64, ptr %0, align 8, !range !14, !noundef !4
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.e, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtNtB4_3num7nonzero7NonZeroyEBM_ECslghKHtsL3a4_5tokio(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call noundef ptr @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListINtNtNtB9_7runtime4task4TaskINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB9_4task5local6SharedEEE6removeB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4listINtB4_15LocalOwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtBa_4task5local6SharedEE8is_emptyBa_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not1 = icmp eq ptr %i.d, null
  br i1 %.not1, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtCslghKHtsL3a4_5tokio7process3impNtB5_10ChildStdio13into_owned_fd(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtCslghKHtsL3a4_5tokio7process3imp24convert_to_blocking_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !13, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslghKHtsL3a4_5tokio6signal8registry12globals_init(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i32, i32 } @_RNvXs1_NtNtCslghKHtsL3a4_5tokio6signal4unixNtB5_11OsExtraDataNtNtCs3oUPovFnLWP_4core7default7Default7default() ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.a, 1        ; 2 uses
  %i.d = invoke { ptr, i64 } @_RNvXs_NtNtCslghKHtsL3a4_5tokio6signal4unixNtB4_9OsStorageNtNtCs3oUPovFnLWP_4core7default7Default7default()
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  store i32 %i.b, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.i, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = tail call noundef i32 @close(i32 noundef %i.b) #24 ; 0 uses
  %i.l = tail call noundef i32 @close(i32 noundef %i.c) #24 ; 0 uses
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtCslghKHtsL3a4_5tokio6signal8registry7globals() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCslghKHtsL3a4_5tokio6signal8registry7globals7GLOBALS, i64 24) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE15get_or_try_initNCINvB2_11get_or_initNvBV_12globals_initE0zEBZ_.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE10initializeNCINvB2_11get_or_initNvBV_12globals_initE0zEBZ_(ptr noundef nonnull align 8 @_RNvNvNtNtCslghKHtsL3a4_5tokio6signal8registry7globals7GLOBALS)
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE15get_or_try_initNCINvB2_11get_or_initNvBV_12globals_initE0zEBZ_.exit

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtCslghKHtsL3a4_5tokio6signal8registry7GlobalsE15get_or_try_initNCINvB2_11get_or_initNvBV_12globals_initE0zEBZ_.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNvNtNtCslghKHtsL3a4_5tokio6signal8registry7globals7GLOBALS
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslghKHtsL3a4_5tokio7process3imp11build_child(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 4 captures(none) dead_on_return dereferenceable(28) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.090 = alloca [96 x i8], align 8          ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [160 x i8], align 8               ; 7 uses
  %i.f = alloca [28 x i8], align 4                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 13 uses
  %.sroa.969 = alloca [16 x i8], align 8          ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 18 uses
  %.sroa.939 = alloca [16 x i8], align 8          ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 23 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4 ; 5 uses
  store i32 -1, ptr %i.k, align 4
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = invoke fastcc noundef ptr @_RINvNtNtCslghKHtsL3a4_5tokio7process3imp15set_nonblockingNtB2_4PipeEB6_(i32 range(i32 0, -1) %i.l)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEB6_.exit.thread

_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEB6_.exit.thread: ; preds = %bb.c
  %i.n = tail call noundef i32 @close(i32 noundef range(i32 0, -1) %i.l) #24, !noalias !305 ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !305
  invoke void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtB6_7process3imp4PipeE17new_with_interestB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, i32 noundef range(i32 0, -1) %i.l, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !range !5, !noalias !305, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  br i1 %i.p, label %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEB6_.exit.thread221, label %bb.i

_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEB6_.exit.thread221: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !305
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = tail call noundef i32 @close(i32 noundef range(i32 0, -1) %i.l) #24, !noalias !305 ; 0 uses
  br label %.body.thread

bb.f:                                             ; preds = %bb.a, %bb.i
  %.sroa.7.0 = phi ptr [ %i.r, %bb.i ], [ undef, %bb.a ]
  %.sroa.05.0 = phi i64 [ %i.o, %bb.i ], [ 2, %bb.a ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  store i64 %.sroa.05.0, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.939)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !4 ; 5 uses
  store i32 -1, ptr %i.u, align 4
  %.not141 = icmp eq i32 %i.v, -1
  br i1 %.not141, label %bb.n, label %bb.j

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i191, %bb.g, %.body151
  %.sroa.0102.0 = phi i8 [ %.sroa.0102.1, %bb.g ], [ %.sroa.0102.2, %.body151 ], [ %.sroa.0102.10, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i191 ]
  %.pn147 = phi { ptr, i32 } [ %i.x, %bb.g ], [ %.pn145, %.body151 ], [ %i.dj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i191 ] ; 2 uses
  %i.w = trunc nuw i8 %.sroa.0102.0 to i1
  br i1 %i.w, label %.body.thread, label %bb.bv

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i193, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i, %bb.d
  %.sroa.0102.1 = phi i8 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i ], [ %.sroa.0102.10, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i193 ], [ 1, %bb.d ]
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEB6_.exit.thread221, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEB6_.exit.thread
  %.sroa.6210.1220 = phi ptr [ %i.m, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEB6_.exit.thread ], [ %i.r, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEB6_.exit.thread221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6210.1220, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit

bb.i:                                             ; preds = %.noexc
  %.sroa.9211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9211.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !305
  br label %bb.f

bb.j:                                             ; preds = %bb.f
  %i.z = invoke fastcc noundef ptr @_RINvNtNtCslghKHtsL3a4_5tokio7process3imp15set_nonblockingNtB2_4PipeEB6_(i32 range(i32 0, -1) %i.v)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not.i149 = icmp eq ptr %i.z, null
  br i1 %.not.i149, label %bb.l, label %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEB6_.exit.thread

_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEB6_.exit.thread: ; preds = %bb.k
  %i.aa = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.v) #24, !noalias !306 ; 0 uses
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !306
  invoke void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtB6_7process3imp4PipeE17new_with_interestB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i32 noundef range(i32 0, -1) %i.v, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %.noexc150 unwind label %bb.o

.noexc150:                                        ; preds = %bb.l
  %i.ab = load i64, ptr %i.b, align 8, !range !5, !noalias !306, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  br i1 %i.ac, label %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEB6_.exit.thread227, label %bb.w

_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEB6_.exit.thread227: ; preds = %.noexc150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !306
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.v) #24, !noalias !306 ; 0 uses
  br label %.body151

bb.n:                                             ; preds = %bb.f, %bb.w
  %.sroa.734.0 = phi ptr [ %i.ae, %bb.w ], [ undef, %bb.f ]
  %.sroa.031.0 = phi i64 [ %i.ab, %bb.w ], [ 2, %bb.f ]
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.553.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  store i64 %.sroa.031.0, ptr %i.i, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.734.0, ptr %.sroa.452.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.969)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !4 ; 5 uses
  store i32 -1, ptr %i.ah, align 4
  %.not142 = icmp eq i32 %i.ai, -1
  br i1 %.not142, label %bb.ab, label %bb.x

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i174, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i164, %bb.l
  %.sroa.0102.3 = phi i8 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i164 ], [ %.sroa.0102.7, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i174 ], [ 1, %bb.l ]
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body151

bb.p:                                             ; preds = %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEB6_.exit.thread227, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEB6_.exit.thread
  %.sroa.6213.1226 = phi ptr [ %i.z, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEB6_.exit.thread ], [ %i.ae, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEB6_.exit.thread227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.939)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6213.1226, ptr %i.ak, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.al = load i64, ptr %i.j, align 8, !range !5, !alias.scope !307, !noundef !4
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtB9_7process3imp4PipeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val2.i.i.i = load i32, ptr %i.ao, align 8, !alias.scope !308, !noundef !4 ; 2 uses
  %i.ap = icmp eq i32 %.val2.i.i.i, -1
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = call noundef i32 @close(i32 noundef %.val2.i.i.i) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i

bb.t:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val.i.i.i = load i32, ptr %i.ar, align 8, !alias.scope !308, !noundef !4 ; 2 uses
  %i.as = icmp eq i32 %.val.i.i.i, -1
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = call noundef i32 @close(i32 noundef %.val.i.i.i) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i: ; preds = %bb.s, %bb.r
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #25
          to label %.body.thread unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i: ; preds = %bb.u, %bb.t
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit unwind label %bb.g

bb.w:                                             ; preds = %.noexc150
  %.sroa.9214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9214.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !306
  br label %bb.n

bb.x:                                             ; preds = %bb.n
  %i.av = invoke fastcc noundef ptr @_RINvNtNtCslghKHtsL3a4_5tokio7process3imp15set_nonblockingNtB2_4PipeEB6_(i32 range(i32 0, -1) %i.ai)
          to label %bb.y unwind label %bb.aa      ; 2 uses

bb.y:                                             ; preds = %bb.x
  %.not.i157 = icmp eq ptr %i.av, null
  br i1 %.not.i157, label %bb.z, label %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEB6_.exit.thread

_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEB6_.exit.thread: ; preds = %bb.y
  %i.aw = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.ai) #24, !noalias !309 ; 0 uses
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  invoke void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtB6_7process3imp4PipeE17new_with_interestB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i32 noundef range(i32 0, -1) %i.ai, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %.noexc158 unwind label %bb.ac

.noexc158:                                        ; preds = %bb.z
  %i.ax = load i64, ptr %i.a, align 8, !range !5, !noalias !309, !noundef !4 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  br i1 %i.ay, label %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEB6_.exit.thread233, label %bb.ak

_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEB6_.exit.thread233: ; preds = %.noexc158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  br label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = call noundef i32 @close(i32 noundef range(i32 0, -1) %i.ai) #24, !noalias !309 ; 0 uses
  br label %.body159

bb.ab:                                            ; preds = %bb.n, %bb.ak
  %.sroa.764.0 = phi ptr [ %i.ba, %bb.ak ], [ undef, %bb.n ]
  %.sroa.061.0 = phi i64 [ %i.ax, %bb.ak ], [ 2, %bb.n ]
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.583.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.969, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.969)
  store i64 %.sroa.061.0, ptr %i.h, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.764.0, ptr %.sroa.482.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.f, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false)
  invoke void @_RNvMs3_NtNtNtCslghKHtsL3a4_5tokio7process3imp12pidfd_reaperINtB5_11PidfdReaperNtNtCsaL1QbXo9JQH_3std7process5ChildNtB7_17GlobalOrphanQueueE3newBb_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(28) %i.f)
          to label %bb.am unwind label %bb.al

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i184, %bb.z, %bb.av
  %.sroa.0102.5 = phi i8 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i184 ], [ 1, %bb.av ], [ 1, %bb.z ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body159

bb.ad:                                            ; preds = %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEB6_.exit.thread233, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEB6_.exit.thread
  %.sroa.6216.1232 = phi ptr [ %i.av, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEB6_.exit.thread ], [ %i.ba, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp5stdioNtNtCsaL1QbXo9JQH_3std7process11ChildStderrEB6_.exit.thread233 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.969)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6216.1232, ptr %i.be, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bf = load i64, ptr %i.i, align 8, !range !5, !alias.scope !310, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvNtNtCslghKHtsL3a4_5tokio7process3imp11build_child:bb.a

bb.az:                                            ; preds = %bb.ay
  %i.co = call noundef i32 @close(i32 noundef %.val2.i.i.i171) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i172

bb.ba:                                            ; preds = %bb.ax
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val.i.i.i173 = load i32, ptr %i.cp, align 8, !alias.scope !314, !noundef !4 ; 2 uses
  %i.cq = icmp eq i32 %.val.i.i.i173, -1
  br i1 %i.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i174, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cr = call noundef i32 @close(i32 noundef %.val.i.i.i173) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i174

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i172: ; preds = %bb.az, %bb.ay
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #25
          to label %.body151 unwind label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i172
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i174: ; preds = %bb.bb, %bb.ba
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit170 unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit: ; preds = %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ct = load i64, ptr %i.h, align 8, !range !5, !alias.scope !315, !noundef !4
  %i.cu = icmp eq i64 %i.ct, 2
  br i1 %i.cu, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit
  invoke void @_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtB9_7process3imp4PipeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val2.i.i.i181 = load i32, ptr %i.cw, align 8, !alias.scope !316, !noundef !4 ; 2 uses
  %i.cx = icmp eq i32 %.val2.i.i.i181, -1
  br i1 %i.cx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i182, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cy = call noundef i32 @close(i32 noundef %.val2.i.i.i181) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i182

bb.bg:                                            ; preds = %bb.bd
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val.i.i.i183 = load i32, ptr %i.cz, align 8, !alias.scope !316, !noundef !4 ; 2 uses
  %i.da = icmp eq i32 %.val.i.i.i183, -1
  br i1 %i.da, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i184, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.db = call noundef i32 @close(i32 noundef %.val.i.i.i183) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i184

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i182: ; preds = %bb.bf, %bb.be
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #25
          to label %.body159 unwind label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i182
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i184: ; preds = %bb.bh, %bb.bg
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.thread unwind label %bb.ac

.thread239:                                       ; preds = %bb.am
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dd, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit206

.noexc197:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i193, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dg = trunc nuw i8 %.sroa.0102.10 to i1
  br i1 %i.dg, label %bb.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit206

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit170: ; preds = %.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i174, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i164, %bb.ad
  %.sroa.0102.10 = phi i8 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i164 ], [ 1, %bb.ad ], [ %.sroa.0102.7, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i174 ], [ %.sroa.0102.7, %.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dh = load i64, ptr %i.j, align 8, !range !5, !alias.scope !317, !noundef !4
  %i.di = icmp eq i64 %i.dh, 2
  br i1 %i.di, label %.noexc197, label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit170
  invoke void @_RNvXs3_NtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtB9_7process3imp4PipeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.bm unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val2.i.i.i190 = load i32, ptr %i.dk, align 8, !alias.scope !318, !noundef !4 ; 2 uses
  %i.dl = icmp eq i32 %.val2.i.i.i190, -1
  br i1 %i.dl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i191, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dm = call noundef i32 @close(i32 noundef %.val2.i.i.i190) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i191

bb.bm:                                            ; preds = %bb.bj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.val.i.i.i192 = load i32, ptr %i.dn, align 8, !alias.scope !318, !noundef !4 ; 2 uses
  %i.do = icmp eq i32 %.val.i.i.i192, -1
  br i1 %i.do, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i193, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dp = call noundef i32 @close(i32 noundef %.val.i.i.i192) #24 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i193

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i191: ; preds = %bb.bl, %bb.bk
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #25
          to label %.body unwind label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i191
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i193: ; preds = %bb.bn, %bb.bm
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12registration12RegistrationEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.noexc197 unwind label %bb.g

bb.bp:                                            ; preds = %.body151, %.body159, %bb.al
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit, %.noexc197
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.i199 = load i32, ptr %i.ds, align 4, !alias.scope !319, !noundef !4 ; 2 uses
  %i.dt = icmp eq i32 %.val.i199, -1
  br i1 %i.dt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i200, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.du = call noundef i32 @close(i32 noundef %.val.i199) #24, !noalias !319 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i200

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i200: ; preds = %bb.br, %bb.bq
  %.val4.i201 = load i32, ptr %i.k, align 4, !alias.scope !319, !noundef !4 ; 2 uses
  %i.dv = icmp eq i32 %.val4.i201, -1
  br i1 %i.dv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i202, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i200
  %i.dw = call noundef i32 @close(i32 noundef %.val4.i201) #24, !noalias !319 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i202

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i202: ; preds = %bb.bs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix4unix7ProcessECslghKHtsL3a4_5tokio.exit.i200
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val6.i203 = load i32, ptr %i.dx, align 4, !alias.scope !319, !noundef !4 ; 2 uses
  %i.dy = icmp eq i32 %.val6.i203, -1
  br i1 %i.dy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i204, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i202
  %i.dz = call noundef i32 @close(i32 noundef %.val6.i203) #24, !noalias !319 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i204

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i204: ; preds = %bb.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process10ChildStdinEECslghKHtsL3a4_5tokio.exit10.i202
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val8.i205 = load i32, ptr %i.ea, align 4, !alias.scope !319, !noundef !4 ; 2 uses
  %i.eb = icmp eq i32 %.val8.i205, -1
  br i1 %i.eb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit206, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std7process11ChildStdoutEECslghKHtsL3a4_5tokio.exit11.i204
  %i.ec = call noundef i32 @close(i32 noundef %.val8.i205) #24, !noalias !319 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio.exit206

.body159:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i182, %bb.aa, %bb.ac, %bb.al
  %.sroa.0102.4 = phi i8 [ %.sroa.0102.6, %bb.al ], [ 1, %bb.aa ], [ %.sroa.0102.5, %bb.ac ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i182 ]
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.al ], [ %i.bb, %bb.aa ], [ %i.bd, %bb.ac ], [ %i.cv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i182 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #25
          to label %.body151 unwind label %bb.bp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_.exit: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEBH_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bq

.body151:                                         ; preds = %bb.m, %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i162, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i172, %.body159
  %.sroa.0102.2 = phi i8 [ %.sroa.0102.4, %.body159 ], [ 1, %bb.m ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i162 ], [ %.sroa.0102.3, %bb.o ], [ %.sroa.0102.7, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i172 ]
  %.pn145 = phi { ptr, i32 } [ %.pn, %.body159 ], [ %i.af, %bb.m ], [ %i.bh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i162 ], [ %i.aj, %bb.o ], [ %i.cl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i172 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp10ChildStdioEEB13_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #25
          to label %.body unwind label %bb.bp

bb.bv:                                            ; preds = %.body.thread, %.body
  %.pn147243 = phi { ptr, i32 } [ %.pn147244, %.body.thread ], [ %.pn147, %.body ]
  resume { ptr, i32 } %.pn147243

.body.thread:                                     ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i, %.body
  %.pn147244 = phi { ptr, i32 } [ %.pn147, %.body ], [ %i.s, %bb.e ], [ %i.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7process3imp4PipeEEB13_.exit.i.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process5ChildECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 4 dereferenceable(28) %1) #25
  br label %bb.bv
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCslghKHtsL3a4_5tokio7process3imp16convert_to_stdio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 12)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtNtCslghKHtsL3a4_5tokio7process3imp24convert_to_blocking_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1)
  %i.b = load i32, ptr %i.a, align 8, !range !11, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !13, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCslghKHtsL3a4_5tokio7process3imp24convert_to_blocking_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvMNtNtCslghKHtsL3a4_5tokio2io12poll_eventedINtB2_11PollEventedNtNtNtB6_7process3imp4PipeE10into_innerB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i32, ptr %i.b, align 8, !range !11, !noundef !4
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i32 1, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !range !13, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = call noundef i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #24 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @__errno_location() #24
  %i.m = load i32, ptr %i.l, align 4, !noundef !4 ; 2 uses
  %i.n = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i.i = icmp eq ptr %i.n, @7
  br i1 %.not.i.i, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.o = and i32 %i.j, -2049
  %i.p = call noundef i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 4, i32 noundef %i.o) #24
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp15set_nonblockingNtNtCsaL1QbXo9JQH_3std2fs4FileEB6_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = tail call noundef ptr @__errno_location() #24
  %i.s = load i32, ptr %i.r, align 4, !noundef !4 ; 2 uses
  %i.t = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i2.i = icmp eq ptr %i.t, @7
  br i1 %.not.i2.i, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i unwind label %bb.j

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i: ; preds = %bb.g, %bb.h, %bb.d, %bb.e
  %.sroa.0.0.i.ph.in.in.in.in = phi i32 [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.s, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.0.0.i.ph.in.in.in = sext i32 %.sroa.0.0.i.ph.in.in.in.in to i64
  %.sroa.0.0.i.ph.in.in = shl nsw i64 %.sroa.0.0.i.ph.in.in.in, 32
  %.sroa.0.0.i.ph.in = or disjoint i64 %.sroa.0.0.i.ph.in.in, 2
  %.sroa.0.0.i.ph = inttoptr i64 %.sroa.0.0.i.ph.in to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.u, align 8
  store i32 1, ptr %0, align 8
  %i.v = call noundef i32 @close(i32 noundef %i.i) #24 ; 0 uses
  br label %bb.i

_RINvNtNtCslghKHtsL3a4_5tokio7process3imp15set_nonblockingNtNtCsaL1QbXo9JQH_3std2fs4FileEB6_.exit: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.w, align 4
  store i32 0, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit.i, %_RINvNtNtCslghKHtsL3a4_5tokio7process3imp15set_nonblockingNtNtCsaL1QbXo9JQH_3std2fs4FileEB6_.exit
  ret void

bb.j:                                             ; preds = %bb.e, %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = call noundef i32 @close(i32 noundef %i.i) #24 ; 0 uses
  resume { ptr, i32 } %i.x
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util20vec_with_initialized19into_read_buf_parts(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %.not = icmp ugt i64 %i.e, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !prof !320

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %.not5 = icmp ugt i64 %i.g, %i.c
  br i1 %.not5, label %bb.d, label %bb.e, !prof !320

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %i.a, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #4 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys2io5error4unix17decode_error_kind, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtB13_4util11linked_list10LinkedListINtNtNtB13_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2z_9scheduler14current_thread6HandleEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4take4TakeINtNtNtB4u_7sources11repeat_with10RepeatWithNCNvMNtB1U_12sharded_listINtB60_11ShardedListB2u_E3new0EEE9from_iterB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !329
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !329
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noalias !329, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !18, !noalias !329, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexINtNtNtBN_4util11linked_list10LinkedListINtNtNtBN_7runtime4task4TaskINtNtB6_4sync3ArcNtNtNtB2i_9scheduler14current_thread6HandleEEEEE7reserveBN_.exit.i.i.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !329
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #29, !noalias !329
end_hunk_1
