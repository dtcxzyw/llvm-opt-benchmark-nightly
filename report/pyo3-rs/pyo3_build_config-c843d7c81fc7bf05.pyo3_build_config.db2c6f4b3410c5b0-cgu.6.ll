Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.6?download=true
inline.NumInlined: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCskKLDkoKarTP_4core4sync6atomic11atomic_loadmKb0_ECsiOEEQt9hBE2_17pyo3_build_config:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @0, ptr nonnull inttoptr (i64 81 to ptr), ptr nonnull align 8 @2) #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %0 acquire, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr nonnull @3, ptr nonnull inttoptr (i64 99 to ptr), ptr nonnull align 8 @4) #24
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %0 seq_cst, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.sroa.0.0 = phi i32 [ %i.a, %bb.c ], [ %i.b, %bb.e ], [ %i.c, %bb.g ]
  ret i32 %.sroa.0.0
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtCsG258MDvU3F_3std4path7PathBufNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsexYYUdYSQU6_5alloc3vec3VecBZ_EECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [4096 x i8], align 8
  %i.d = lshr i64 %1, 1
  %i.e = sub i64 %1, %i.d
  %i.f = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCsiOEEQt9hBE2_17pyo3_build_config(i64 %1, i64 333333) #20
  %i.g = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.e, i64 %i.f) #20
  %i.h = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3maxCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.g, i64 48) #20 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 170                   ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E13with_capacityCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.j = invoke { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.i, label %bb.j, label %bb.i

.thread:                                          ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  %i.n = extractvalue { ptr, i64 } %i.j, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 170, %bb.a ], [ %i.m, %bb.d ]
  %.pn = phi ptr [ %i.c, %bb.a ], [ %i.n, %bb.d ]
  %i.o = icmp ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsG258MDvU3F_3std4path7PathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %.pn, i64 %.sroa.4.0, i1 zeroext %i.o, ptr %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  ret void

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b)
  br label %bb.g

bb.i:                                             ; preds = %bb.j, %bb.c
  %i.p = phi { ptr, i32 } [ %i.q, %bb.j ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %i.p

bb.j:                                             ; preds = %.thread, %bb.c
  %i.q = phi { ptr, i32 } [ %i.l, %.thread ], [ %i.k, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b) #21
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsG258MDvU3F_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr nofree align 8 captures(none) %2, i64 %3, i64 %4, i1 zeroext %5, ptr nofree readonly align 8 captures(none) %6) unnamed_addr #3 {
bb.a:
  %i.a = icmp uge i64 %3, %1
  %.not = icmp ult i64 %4, %1
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.fr = freeze i1 %5                             ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %4 ; 3 uses
  %i.c = getelementptr [24 x i8], ptr %2, i64 %1  ; 5 uses
  %i.d = zext i1 %.fr to i64                      ; 2 uses
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us
  %.sroa.11.0.us = phi i64 [ %i.s, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0.us = phi ptr [ %i.t, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ %0, %bb.b ] ; 3 uses
  %.sroa.21.0.us = phi ptr [ %i.q, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ %i.c, %bb.b ] ; 2 uses
  %.sroa.05.0.us = phi ptr [ %i.r, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ null, %bb.b ]
  %.sroa.0.0.us = phi i64 [ %1, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ %4, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.0.us ; 2 uses
  %i.f = icmp ult ptr %.sroa.3.0.us, %i.e
  br i1 %i.f, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us, label %._crit_edge.us

_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us: ; preds = %.split.us, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us
  %.sroa.21.128.us = phi ptr [ %i.j, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ], [ %.sroa.21.0.us, %.split.us ]
  %.sroa.3.127.us = phi ptr [ %i.n, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ], [ %.sroa.3.0.us, %.split.us ] ; 3 uses
  %.sroa.11.126.us = phi i64 [ %i.m, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ], [ %.sroa.11.0.us, %.split.us ] ; 2 uses
  %i.g = load ptr, ptr %6, align 8
  %i.h = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %i.g, ptr align 8 %i.b, ptr align 8 %.sroa.3.127.us) #20 ; 2 uses
  %i.i = xor i1 %i.h, true
  %i.j = getelementptr inbounds i8, ptr %.sroa.21.128.us, i64 -24 ; 3 uses
  %spec.select.us = select i1 %i.h, ptr %i.j, ptr %2
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %spec.select.us, i64 %.sroa.11.126.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.127.us, i64 24, i1 false)
  %i.l = zext i1 %i.i to i64
  %i.m = add i64 %.sroa.11.126.us, %i.l           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.3.127.us, i64 24 ; 3 uses
  %i.o = icmp ult ptr %i.n, %i.e
  br i1 %i.o, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us, %.split.us
  %.sroa.11.1.lcssa.us = phi i64 [ %.sroa.11.0.us, %.split.us ], [ %i.m, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ] ; 3 uses
  %.sroa.3.1.lcssa.us = phi ptr [ %.sroa.3.0.us, %.split.us ], [ %i.n, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ] ; 2 uses
  %.sroa.21.1.lcssa.us = phi ptr [ %.sroa.21.0.us, %.split.us ], [ %i.j, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ]
  %i.p = icmp eq i64 %.sroa.0.0.us, %1
  br i1 %i.p, label %.split32.us, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us

_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us: ; preds = %._crit_edge.us
  %i.q = getelementptr inbounds i8, ptr %.sroa.21.1.lcssa.us, i64 -24
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.us ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.1.lcssa.us, i64 24, i1 false)
  %i.s = add i64 %.sroa.11.1.lcssa.us, %i.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.3.1.lcssa.us, i64 24
  br label %.split.us

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.split:                                           ; preds = %bb.b, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12
  %.sroa.11.0 = phi i64 [ %i.ai, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0 = phi ptr [ %i.aj, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ %0, %bb.b ] ; 3 uses
  %.sroa.21.0 = phi ptr [ %i.ag, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ %i.c, %bb.b ] ; 2 uses
  %.sroa.05.0 = phi ptr [ %i.ah, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ null, %bb.b ]
  %.sroa.0.0 = phi i64 [ %1, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ %4, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.0 ; 2 uses
  %i.v = icmp ult ptr %.sroa.3.0, %i.u
  br i1 %i.v, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit, %.split
  %.sroa.11.1.lcssa = phi i64 [ %.sroa.11.0, %.split ], [ %i.ad, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 3 uses
  %.sroa.3.1.lcssa = phi ptr [ %.sroa.3.0, %.split ], [ %i.ae, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 2 uses
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.21.0, %.split ], [ %i.aa, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ]
  %i.w = icmp eq i64 %.sroa.0.0, %1
  br i1 %i.w, label %.split32.us, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12

_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %.split, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit
  %.sroa.21.128 = phi ptr [ %i.aa, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ], [ %.sroa.21.0, %.split ]
  %.sroa.3.127 = phi ptr [ %i.ae, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ], [ %.sroa.3.0, %.split ] ; 3 uses
  %.sroa.11.126 = phi i64 [ %i.ad, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ], [ %.sroa.11.0, %.split ] ; 2 uses
  %i.x = load ptr, ptr %6, align 8
  %i.y = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %i.x, ptr align 8 %i.b, ptr align 8 %.sroa.3.127) #20 ; 2 uses
  %i.z = xor i1 %i.y, true
  %i.aa = getelementptr inbounds i8, ptr %.sroa.21.128, i64 -24 ; 3 uses
  %spec.select = select i1 %i.y, ptr %i.aa, ptr %2
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %spec.select, i64 %.sroa.11.126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.127, i64 24, i1 false)
  %i.ac = zext i1 %i.z to i64
  %i.ad = add i64 %.sroa.11.126, %i.ac            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.3.127, i64 24 ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.u
  br i1 %i.af, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit, label %._crit_edge

_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12: ; preds = %._crit_edge
  %i.ag = getelementptr inbounds i8, ptr %.sroa.21.1.lcssa, i64 -24 ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.sroa.11.1.lcssa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.1.lcssa, i64 24, i1 false)
  %i.ai = add i64 %.sroa.11.1.lcssa, %i.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.3.1.lcssa, i64 24
  br label %.split

.split32.us:                                      ; preds = %._crit_edge, %._crit_edge.us
  %.us-phi = phi ptr [ %.sroa.05.0.us, %._crit_edge.us ], [ %.sroa.05.0, %._crit_edge ]
  %.us-phi33 = phi i64 [ %.sroa.11.1.lcssa.us, %._crit_edge.us ], [ %.sroa.11.1.lcssa, %._crit_edge ] ; 5 uses
  %i.ak = tail call zeroext i1 @_RNvXs0_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNtB5_8IsFreeze9is_freezeCsiOEEQt9hBE2_17pyo3_build_config()
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %.split32.us
  %i.al = mul nuw nsw i64 %.us-phi33, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %2, i64 %i.al, i1 false)
  %i.am = sub i64 %1, %.us-phi33                  ; 4 uses
  %.not37 = icmp eq i64 %1, %.us-phi33
  br i1 %.not37, label %._crit_edge36, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.an = getelementptr [24 x i8], ptr %0, i64 %.us-phi33 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.am, -2
  br label %bb.f

bb.e:                                             ; preds = %.split32.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.us-phi, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.d

._crit_edge36.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge36, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge36.loopexit.unr-lcssa, %.lr.ph
  %.sroa.06.034.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.av, %._crit_edge36.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.ap = xor i64 %.sroa.06.034.epil.init, -1
  %i.aq = getelementptr [24 x i8], ptr %i.c, i64 %i.ap
  %i.ar = getelementptr [24 x i8], ptr %i.an, i64 %.sroa.06.034.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %.epil.preheader, %._crit_edge36.loopexit.unr-lcssa, %bb.d
  ret i64 %.us-phi33

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.sroa.06.034 = phi i64 [ 0, %.lr.ph.new ], [ %i.av, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.as = xor i64 %.sroa.06.034, -1
  %i.at = getelementptr [24 x i8], ptr %i.c, i64 %i.as
  %i.au = getelementptr [24 x i8], ptr %i.an, i64 %.sroa.06.034
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  %i.av = add nuw i64 %.sroa.06.034, 2            ; 2 uses
  %i.aw = xor i64 %.sroa.06.034, -2
  %i.ax = getelementptr [24 x i8], ptr %i.c, i64 %i.aw
  %i.ay = getelementptr [24 x i8], ptr %i.an, i64 %.sroa.06.034
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge36.loopexit.unr-lcssa, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsG258MDvU3F_3std4path7PathBufNvYB1d_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr nofree align 8 captures(none) %2, i64 %3, i64 %4, i1 zeroext %5, ptr %6) unnamed_addr #3 {
bb.a:
  %i.a = icmp uge i64 %3, %1
  %.not = icmp ult i64 %4, %1
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.fr = freeze i1 %5                             ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %4 ; 3 uses
  %i.c = getelementptr [24 x i8], ptr %2, i64 %1  ; 5 uses
  %i.d = zext i1 %.fr to i64                      ; 2 uses
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us
  %.sroa.11.0.us = phi i64 [ %i.q, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0.us = phi ptr [ %i.r, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ %0, %bb.b ] ; 3 uses
  %.sroa.21.0.us = phi ptr [ %i.o, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ %i.c, %bb.b ] ; 2 uses
  %.sroa.05.0.us = phi ptr [ %i.p, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ null, %bb.b ]
  %.sroa.0.0.us = phi i64 [ %1, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us ], [ %4, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.0.us ; 2 uses
  %i.f = icmp ult ptr %.sroa.3.0.us, %i.e
  br i1 %i.f, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us, label %._crit_edge.us

_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us: ; preds = %.split.us, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us
  %.sroa.21.128.us = phi ptr [ %i.h, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ], [ %.sroa.21.0.us, %.split.us ]
  %.sroa.3.127.us = phi ptr [ %i.l, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ], [ %.sroa.3.0.us, %.split.us ] ; 3 uses
  %.sroa.11.126.us = phi i64 [ %i.k, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ], [ %.sroa.11.0.us, %.split.us ] ; 2 uses
  %i.g = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %6, ptr align 8 %.sroa.3.127.us, ptr align 8 %i.b) #20 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.21.128.us, i64 -24 ; 3 uses
  %spec.select.us = select i1 %i.g, ptr %2, ptr %i.h
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %spec.select.us, i64 %.sroa.11.126.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.127.us, i64 24, i1 false)
  %i.j = zext i1 %i.g to i64
  %i.k = add i64 %.sroa.11.126.us, %i.j           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.3.127.us, i64 24 ; 3 uses
  %i.m = icmp ult ptr %i.l, %i.e
  br i1 %i.m, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us, %.split.us
  %.sroa.11.1.lcssa.us = phi i64 [ %.sroa.11.0.us, %.split.us ], [ %i.k, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ] ; 3 uses
  %.sroa.3.1.lcssa.us = phi ptr [ %.sroa.3.0.us, %.split.us ], [ %i.l, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ] ; 2 uses
  %.sroa.21.1.lcssa.us = phi ptr [ %.sroa.21.0.us, %.split.us ], [ %i.h, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit.us ]
  %i.n = icmp eq i64 %.sroa.0.0.us, %1
  br i1 %i.n, label %.split32.us, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us

_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12.us: ; preds = %._crit_edge.us
  %i.o = getelementptr inbounds i8, ptr %.sroa.21.1.lcssa.us, i64 -24
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.us ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.1.lcssa.us, i64 24, i1 false)
  %i.q = add i64 %.sroa.11.1.lcssa.us, %i.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.3.1.lcssa.us, i64 24
  br label %.split.us

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.split:                                           ; preds = %bb.b, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12
  %.sroa.11.0 = phi i64 [ %i.ae, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0 = phi ptr [ %i.af, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ %0, %bb.b ] ; 3 uses
  %.sroa.21.0 = phi ptr [ %i.ac, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ %i.c, %bb.b ] ; 2 uses
  %.sroa.05.0 = phi ptr [ %i.ad, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ null, %bb.b ]
  %.sroa.0.0 = phi i64 [ %1, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12 ], [ %4, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.0 ; 2 uses
  %i.t = icmp ult ptr %.sroa.3.0, %i.s
  br i1 %i.t, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit, %.split
  %.sroa.11.1.lcssa = phi i64 [ %.sroa.11.0, %.split ], [ %i.z, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 3 uses
  %.sroa.3.1.lcssa = phi ptr [ %.sroa.3.0, %.split ], [ %i.aa, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 2 uses
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.21.0, %.split ], [ %i.w, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ]
  %i.u = icmp eq i64 %.sroa.0.0, %1
  br i1 %i.u, label %.split32.us, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12

_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %.split, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit
  %.sroa.21.128 = phi ptr [ %i.w, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ], [ %.sroa.21.0, %.split ]
  %.sroa.3.127 = phi ptr [ %i.aa, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ], [ %.sroa.3.0, %.split ] ; 3 uses
  %.sroa.11.126 = phi i64 [ %i.z, %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit ], [ %.sroa.11.0, %.split ] ; 2 uses
  %i.v = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %6, ptr align 8 %.sroa.3.127, ptr align 8 %i.b) #20 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.21.128, i64 -24 ; 3 uses
  %spec.select = select i1 %i.v, ptr %2, ptr %i.w
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %spec.select, i64 %.sroa.11.126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.127, i64 24, i1 false)
  %i.y = zext i1 %i.v to i64
  %i.z = add i64 %.sroa.11.126, %i.y              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.3.127, i64 24 ; 3 uses
  %i.ab = icmp ult ptr %i.aa, %i.s
  br i1 %i.ab, label %_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit, label %._crit_edge

_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsG258MDvU3F_3std4path7PathBufE13partition_oneCsiOEEQt9hBE2_17pyo3_build_config.exit12: ; preds = %._crit_edge
  %i.ac = getelementptr inbounds i8, ptr %.sroa.21.1.lcssa, i64 -24 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.sroa.11.1.lcssa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.1.lcssa, i64 24, i1 false)
  %i.ae = add i64 %.sroa.11.1.lcssa, %i.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.3.1.lcssa, i64 24
  br label %.split

.split32.us:                                      ; preds = %._crit_edge, %._crit_edge.us
  %.us-phi = phi ptr [ %.sroa.05.0.us, %._crit_edge.us ], [ %.sroa.05.0, %._crit_edge ]
  %.us-phi33 = phi i64 [ %.sroa.11.1.lcssa.us, %._crit_edge.us ], [ %.sroa.11.1.lcssa, %._crit_edge ] ; 5 uses
  %i.ag = tail call zeroext i1 @_RNvXs0_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNtB5_8IsFreeze9is_freezeCsiOEEQt9hBE2_17pyo3_build_config()
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %.split32.us
  %i.ah = mul nuw nsw i64 %.us-phi33, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %2, i64 %i.ah, i1 false)
  %i.ai = sub i64 %1, %.us-phi33                  ; 4 uses
  %.not37 = icmp eq i64 %1, %.us-phi33
  br i1 %.not37, label %._crit_edge36, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aj = getelementptr [24 x i8], ptr %0, i64 %.us-phi33 ; 3 uses
  %xtraiter = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ai, -2
  br label %bb.f

bb.e:                                             ; preds = %.split32.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.us-phi, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.d

._crit_edge36.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge36, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge36.loopexit.unr-lcssa, %.lr.ph
  %.sroa.06.034.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ar, %._crit_edge36.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.al = xor i64 %.sroa.06.034.epil.init, -1
  %i.am = getelementptr [24 x i8], ptr %i.c, i64 %i.al
  %i.an = getelementptr [24 x i8], ptr %i.aj, i64 %.sroa.06.034.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %.epil.preheader, %._crit_edge36.loopexit.unr-lcssa, %bb.d
  ret i64 %.us-phi33

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.sroa.06.034 = phi i64 [ 0, %.lr.ph.new ], [ %i.ar, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.ao = xor i64 %.sroa.06.034, -1
  %i.ap = getelementptr [24 x i8], ptr %i.c, i64 %i.ao
  %i.aq = getelementptr [24 x i8], ptr %i.aj, i64 %.sroa.06.034
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  %i.ar = add nuw i64 %.sroa.06.034, 2            ; 2 uses
  %i.as = xor i64 %.sroa.06.034, -2
  %i.at = getelementptr [24 x i8], ptr %i.c, i64 %i.as
  %i.au = getelementptr [24 x i8], ptr %i.aj, i64 %.sroa.06.034
  %i.av = getelementptr i8, ptr %i.au, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge36.loopexit.unr-lcssa, label %bb.f
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i32 %4, ptr align 8 %5, ptr %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, 33
  br i1 %i.d, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.fr = freeze ptr %5
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph69 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.am, %.outer ] ; 4 uses
  %.sroa.16.0.ph68 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.al, %.outer ] ; 4 uses
  %.sroa.025.0.ph67 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %.us-phi60, %.outer ] ; 3 uses
  %.sroa.028.0.ph66 = phi ptr [ %.fr, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %.not = icmp eq ptr %.sroa.028.0.ph66, null
  %i.h = icmp eq i32 %.sroa.025.0.ph67, 0         ; 2 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.h, label %.split.us, label %.lr.ph200

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.h, label %.split.us, label %.lr.ph207

.lr.ph.split.us:                                  ; preds = %bb.c
  %i.i = icmp eq i32 %i.j, 0
  br i1 %i.i, label %.split.us, label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.sroa.025.049.us206 = phi i32 [ %i.j, %.lr.ph.split.us ], [ %.sroa.025.0.ph67, %.lr.ph.split.us.preheader ]
  %.sroa.16.050.us205 = phi i64 [ %i.r, %.lr.ph.split.us ], [ %.sroa.16.0.ph68, %.lr.ph.split.us.preheader ] ; 6 uses
  %.sroa.0.051.us204 = phi ptr [ %i.q, %.lr.ph.split.us ], [ %.sroa.0.0.ph69, %.lr.ph.split.us.preheader ] ; 5 uses
  %i.j = add i32 %.sroa.025.049.us206, -1         ; 4 uses
  %i.k = call i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %.sroa.0.051.us204, i64 %.sroa.16.050.us205, ptr %6) #20 ; 5 uses
  %i.l = icmp ult i64 %i.k, %.sroa.16.050.us205
  br i1 %i.l, label %bb.b, label %.split57.us

bb.b:                                             ; preds = %.lr.ph207
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.051.us204, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.n = call zeroext i1 @_RNvXs0_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNtB5_8IsFreeze9is_freezeCsiOEEQt9hBE2_17pyo3_build_config()
  %i.o = call i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsG258MDvU3F_3std4path7PathBufNvYB1d_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %.sroa.0.051.us204, i64 %.sroa.16.050.us205, ptr align 8 %2, i64 %3, i64 %i.k, i1 zeroext false, ptr %6) ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %..us = select i1 %i.n, ptr %i.c, ptr null
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsG258MDvU3F_3std4path7PathBuf12split_at_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %.sroa.0.051.us204, i64 %.sroa.16.050.us205, i64 %i.o, ptr nonnull align 8 @7) #20
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = load i64, ptr %i.e, align 8              ; 4 uses
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = load i64, ptr %i.g, align 8
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.s, i64 %i.t, ptr align 8 %2, i64 %3, i32 %i.j, ptr align 8 %..us, ptr %6) #23
  %i.u = icmp ult i64 %i.r, 33
  br i1 %i.u, label %.outer._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %bb.g
  %i.v = icmp eq i32 %i.w, 0
  br i1 %i.v, label %.split.us, label %.lr.ph200

.outer._crit_edge:                                ; preds = %.outer, %bb.g, %bb.c, %bb.a
  %.sroa.16.0.lcssa = phi i64 [ %i.r, %bb.c ], [ %1, %bb.a ], [ %i.af, %bb.g ], [ %i.al, %.outer ]
  %.sroa.0.0.lcssa = phi ptr [ %i.q, %bb.c ], [ %0, %bb.a ], [ %i.ae, %bb.g ], [ %i.am, %.outer ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsG258MDvU3F_3std4path7PathBufNvYB1s_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %.sroa.0.0.lcssa, i64 range(i64 0, 33) %.sroa.16.0.lcssa, ptr align 8 %2, i64 %3, ptr %6)
  br label %bb.d

.split.us:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split.us.preheader, %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.af, %.lr.ph.split ], [ %i.r, %.lr.ph.split.us ], [ %.sroa.16.0.ph68, %.lr.ph.split.us.preheader ], [ %.sroa.16.0.ph68, %.lr.ph.split.preheader ]
  %.us-phi55 = phi ptr [ %i.ae, %.lr.ph.split ], [ %i.q, %.lr.ph.split.us ], [ %.sroa.0.0.ph69, %.lr.ph.split.us.preheader ], [ %.sroa.0.0.ph69, %.lr.ph.split.preheader ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsG258MDvU3F_3std4path7PathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %.us-phi55, i64 %.us-phi, ptr align 8 %2, i64 %3, i1 zeroext true, ptr %6)
  br label %bb.d

.lr.ph200:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.sroa.025.049199 = phi i32 [ %i.w, %.lr.ph.split ], [ %.sroa.025.0.ph67, %.lr.ph.split.preheader ]
  %.sroa.16.050198 = phi i64 [ %i.af, %.lr.ph.split ], [ %.sroa.16.0.ph68, %.lr.ph.split.preheader ] ; 7 uses
  %.sroa.0.051197 = phi ptr [ %i.ae, %.lr.ph.split ], [ %.sroa.0.0.ph69, %.lr.ph.split.preheader ] ; 6 uses
  %i.w = add i32 %.sroa.025.049199, -1            ; 5 uses
  %i.x = call i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %.sroa.0.051197, i64 %.sroa.16.050198, ptr %6) #20 ; 6 uses
  %i.y = icmp ult i64 %i.x, %.sroa.16.050198
  br i1 %i.y, label %bb.e, label %.split57.us

bb.d:                                             ; preds = %.split.us, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %.lr.ph200
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.051197, i64 %i.x ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.aa = call zeroext i1 @_RNvXs0_NtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNtB5_8IsFreeze9is_freezeCsiOEEQt9hBE2_17pyo3_build_config()
  %. = select i1 %i.aa, ptr %i.c, ptr null
  %i.ab = call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %6, ptr nonnull align 8 %.sroa.028.0.ph66, ptr nonnull align 8 %i.z) #20
  br i1 %i.ab, label %bb.f, label %.thread

.split57.us:                                      ; preds = %.lr.ph200, %.lr.ph207
  %.us-phi58 = phi i64 [ %i.k, %.lr.ph207 ], [ %i.x, %.lr.ph200 ]
  %.us-phi59 = phi i64 [ %.sroa.16.050.us205, %.lr.ph207 ], [ %.sroa.16.050198, %.lr.ph200 ]
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 %.us-phi58, i64 %.us-phi59, ptr nonnull align 8 @6) #24
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ac = call i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsG258MDvU3F_3std4path7PathBufNvYB1d_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %.sroa.0.051197, i64 %.sroa.16.050198, ptr align 8 %2, i64 %3, i64 %i.x, i1 zeroext false, ptr %6) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsG258MDvU3F_3std4path7PathBuf12split_at_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %.sroa.0.051197, i64 %.sroa.16.050198, i64 %i.ac, ptr nonnull align 8 @7) #20
  %i.ae = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.af = load i64, ptr %i.e, align 8             ; 4 uses
  %i.ag = load ptr, ptr %i.f, align 8
  %i.ah = load i64, ptr %i.g, align 8
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.ag, i64 %i.ah, ptr align 8 %2, i64 %3, i32 %i.w, ptr align 8 %., ptr %6) #23
  %i.ai = icmp ult i64 %i.af, 33
  br i1 %i.ai, label %.outer._crit_edge, label %.lr.ph.split

.thread:                                          ; preds = %bb.f, %bb.e, %bb.b
  %.us-phi60 = phi i32 [ %i.j, %bb.b ], [ %i.w, %bb.e ], [ %i.w, %bb.f ]
  %.us-phi61 = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.e ], [ %i.x, %bb.f ]
  %.us-phi62 = phi i64 [ %.sroa.16.050.us205, %bb.b ], [ %.sroa.16.050198, %bb.e ], [ %.sroa.16.050198, %bb.f ] ; 5 uses
  %.us-phi63 = phi ptr [ %.sroa.0.051.us204, %bb.b ], [ %.sroa.0.051197, %bb.e ], [ %.sroa.0.051197, %bb.f ] ; 2 uses
  store ptr %6, ptr %i.b, align 8
  %i.aj = call i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsG258MDvU3F_3std4path7PathBufNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %.us-phi63, i64 %.us-phi62, ptr align 8 %2, i64 %3, i64 %.us-phi61, i1 zeroext true, ptr nonnull align 8 %i.b) ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, %.us-phi62
  br i1 %i.ak, label %bb.h, label %.outer

.outer:                                           ; preds = %.thread
  %i.al = sub nuw i64 %.us-phi62, %i.aj           ; 3 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.us-phi63, i64 %i.aj ; 2 uses
  %i.an = icmp ult i64 %i.al, 33
  br i1 %i.an, label %.outer._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %.thread
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 %i.aj, i64 %.us-phi62, i64 %.us-phi62, ptr nonnull align 8 @8) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapNtNtCsG258MDvU3F_3std4path7PathBufECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i64 %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsG258MDvU3F_3std4path7PathBuf12split_at_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr align 8 %0, i64 %1, i64 %4, ptr nonnull align 8 @10) #20
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsG258MDvU3F_3std4path7PathBuf12split_at_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %2, i64 %3, i64 %4, ptr nonnull align 8 @11) #20
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
end_hunk_0
