Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.3?download=true
inline.NumInlined: 64
inline.NumDeleted: 5
begin_hunk_0_@_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config:bb.a
  %i.o = icmp eq ptr %i.m, %2
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE8merge_upNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr nofree align 8 captures(none) %0, ptr %1, ptr nofree readnone captures(address) %2, ptr %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = icmp ne ptr %i.b, %i.c
  %i.e = icmp ne ptr %1, %2
  %or.cond6 = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.g = phi ptr [ %i.b, %.lr.ph ], [ %i.n, %bb.d ]
  %.sroa.0.07 = phi ptr [ %1, %.lr.ph ], [ %i.p, %bb.d ] ; 3 uses
  %i.h = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %3, ptr align 8 %.sroa.0.07, ptr align 8 %i.g) #23 ; 3 uses
  %i.i = xor i1 %i.h, true
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.05.0 = phi ptr [ %i.j, %bb.c ], [ %.sroa.0.07, %bb.b ]
  %i.k = load ptr, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0, i64 24, i1 false)
  %i.l = load ptr, ptr %0, align 8
  %i.m = zext i1 %i.i to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 3 uses
  store ptr %i.n, ptr %0, align 8
  %i.o = zext i1 %i.h to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.07, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.r, ptr %i.f, align 8
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = icmp ne ptr %i.n, %i.s
  %i.u = icmp ne ptr %i.p, %2
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5emptyTReBR_EECsiOEEQt9hBE2_17pyo3_build_config() unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i64 %4, i1 zeroext %5, ptr %6) unnamed_addr #0 {
bb.a:
  %.not = icmp ult i64 %1, %4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread40, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, %bb.a
  br i1 %5, label %bb.i, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %6, ptr nonnull align 8 %i.b, ptr align 8 %0) #23 ; 2 uses
  %.not26 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader15

.preheader15:                                     ; preds = %bb.d
  br i1 %.not26, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.d
  br i1 %.not26, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread40, label %.lr.ph21

.lr.ph:                                           ; preds = %.preheader15, %bb.e
  %.sroa.01.0.i17 = phi i64 [ %i.g, %bb.e ], [ 2, %.preheader15 ] ; 3 uses
  %i.d = getelementptr [24 x i8], ptr %0, i64 %.sroa.01.0.i17 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %6, ptr nonnull align 8 %i.d, ptr align 8 %i.e) #23
  br i1 %i.f, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.sroa.01.0.i17, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, label %.lr.ph

.lr.ph21:                                         ; preds = %.preheader, %bb.f
  %.sroa.01.1.i20 = phi i64 [ %i.k, %bb.f ], [ 2, %.preheader ] ; 3 uses
  %i.h = getelementptr [24 x i8], ptr %0, i64 %.sroa.01.1.i20 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %6, ptr nonnull align 8 %i.h, ptr align 8 %i.i) #23
  br i1 %i.j, label %bb.f, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.f:                                             ; preds = %.lr.ph21
  %i.k = add nuw i64 %.sroa.01.1.i20, 1           ; 2 uses
  %exitcond29.not = icmp eq i64 %i.k, %1
  br i1 %exitcond29.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, label %.lr.ph21

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %.lr.ph, %bb.e, %.lr.ph21, %bb.f
  %.sroa.0.0.i = phi i64 [ %1, %bb.f ], [ %.sroa.01.1.i20, %.lr.ph21 ], [ %1, %bb.e ], [ %.sroa.01.0.i17, %.lr.ph ] ; 3 uses
  %.not5 = icmp ult i64 %.sroa.0.0.i, %4
  br i1 %.not5, label %bb.b, label %bb.g

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread40: ; preds = %.preheader
  %.not542 = icmp ugt i64 %4, 2
  br i1 %.not542, label %bb.b, label %.thread43

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread: ; preds = %.preheader15
  %.not536 = icmp ugt i64 %4, 2
  br i1 %.not536, label %bb.b, label %.thread

bb.g:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit
  br i1 %i.c, label %.thread43, label %.thread

bb.h:                                             ; preds = %bb.b
  %i.l = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCsiOEEQt9hBE2_17pyo3_build_config(i64 %4, i64 %1) #23
  %i.m = shl i64 %i.l, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  %i.n = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCsiOEEQt9hBE2_17pyo3_build_config(i64 32, i64 %1) #23 ; 4 uses
  %.not6 = icmp ugt i64 %i.n, %1
  br i1 %.not6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %i.n, ptr align 8 %2, i64 %3, i32 0, ptr align 8 null, ptr %6) #24
  %i.o = shl i64 %i.n, 1
  %i.p = or disjoint i64 %i.o, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 0, i64 %i.n, i64 %1, ptr nonnull align 8 @1) #25
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.j, %.thread
  %.sroa.0.0 = phi i64 [ %i.r, %.thread ], [ %i.p, %bb.j ], [ %i.m, %bb.h ]
  ret i64 %.sroa.0.0

.thread:                                          ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread, %bb.c, %.thread43, %bb.g
  %.sroa.0.0.i1114 = phi i64 [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.0.i3745, %.thread43 ], [ %1, %bb.c ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread ]
  %i.q = shl i64 %.sroa.0.0.i1114, 1
  %i.r = or disjoint i64 %i.q, 1
  br label %bb.l

.thread43:                                        ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread40, %bb.g
  %.sroa.0.0.i3745 = phi i64 [ %.sroa.0.0.i, %bb.g ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.thread40 ] ; 2 uses
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsG258MDvU3F_3std4path7PathBuf7reverseCsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %.sroa.0.0.i3745) #23
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift16stable_quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB19_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr %4) unnamed_addr #0 {
bb.a:
  %i.a = or i64 %1, 1
  %i.b = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 1
  %i.e = xor i32 %i.d, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i32 %i.e, ptr align 8 null, ptr %4) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsG258MDvU3F_3std4path7PathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i1 zeroext %4, ptr %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [66 x i8], align 1                ; 2 uses
  %i.c = alloca [528 x i8], align 8               ; 2 uses
  %i.d = icmp ult i64 %1, 2
  br i1 %i.d, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i64 4611686018427387904, %1
  %i.f = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.e, %i.g         ; 2 uses
  %i.h = icmp ult i64 %1, 4097
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = lshr i64 %1, 1
  %i.k = sub nuw nsw i64 %1, %i.j
  %i.l = tail call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.k, i64 64) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.l, %bb.d ], [ %i.i, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.u, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.u ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cr, %bb.u ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cp, %bb.u ] ; 3 uses
  %i.o = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %.sroa.021.0 = phi i8 [ %i.ac, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %i.t, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %i.p = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = sub nuw i64 %1, %.sroa.09.0
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0
  %i.t = call i64 @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCsG258MDvU3F_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.s, i64 %i.r, ptr align 8 %2, i64 %3, i64 %.sroa.01.0, i1 zeroext %4, ptr %5) ; 2 uses
  %i.u = lshr i64 %.sroa.023.0, 1
  %i.v = lshr i64 %i.t, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.w = sub i64 %factor, %i.u
  %i.x = add i64 %i.v, %factor
  %i.y = mul i64 %i.w, %.sroa.0.0
  %i.z = mul i64 %i.x, %.sroa.0.0
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 false)
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  br label %bb.g

bb.i:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit
  %.sroa.02.139 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.ad, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 2 uses
  %.sroa.023.138 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 3 uses
  %i.ad = add i64 %.sroa.02.139, -1               ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %.not28 = icmp ult i8 %i.af, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, %bb.i, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.138, %bb.i ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.139, %bb.i ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ah, align 1
  br i1 %i.o, label %bb.u, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = lshr i64 %i.aj, 1                       ; 9 uses
  %i.al = lshr i64 %.sroa.023.138, 1              ; 7 uses
  %i.am = add nuw i64 %i.ak, %i.al                ; 4 uses
  %i.an = sub i64 %.sroa.09.0, %i.am
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.an ; 5 uses
  %i.ap = icmp ugt i64 %i.am, %3
  %i.aq = trunc i64 %i.aj to i1                   ; 2 uses
  %or.cond.i = or i1 %i.ap, %i.aq
  %i.ar = trunc i64 %.sroa.023.138 to i1          ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.ar
  br i1 %or.cond3.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.aq, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.as = shl i64 %i.am, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.m:                                             ; preds = %bb.n, %bb.k
  br i1 %i.ar, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.at = or i64 %i.ak, 1
  %i.au = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 1
  %i.ax = xor i32 %i.aw, 126
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.ao, i64 %i.ak, ptr align 8 %2, i64 %3, i32 %i.ax, ptr align 8 null, ptr %5) #24
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ak
  %i.az = or i64 %i.al, 1
  %i.ba = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.az, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 1
  %i.bd = xor i32 %i.bc, 126
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsG258MDvU3F_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %i.ay, i64 %i.al, ptr align 8 %2, i64 %3, i32 %i.bd, ptr align 8 null, ptr %5) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.be = icmp eq i64 %i.ak, 0
  %i.bf = icmp eq i64 %i.al, 0
  %or.cond.i31 = or i1 %i.bf, %i.be
  br i1 %or.cond.i31, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = call i64 @_RNvYjNtNtCskKLDkoKarTP_4core3cmp3Ord3minCsiOEEQt9hBE2_17pyo3_build_config(i64 %i.ak, i64 %i.al) #23
  %i.bh = icmp ult i64 %3, %i.bg
  br i1 %i.bh, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ak ; 3 uses
  %.not.i32 = icmp samesign ugt i64 %i.ak, %i.al  ; 2 uses
  %spec.select.i = select i1 %.not.i32, ptr %i.bi, ptr %i.ao ; 2 uses
  %spec.select16.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.al)
  %i.bj = mul nuw nsw i64 %spec.select16.i, 24    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %spec.select.i, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %i.bj ; 2 uses
  store ptr %2, ptr %i.a, align 8
  store ptr %i.bk, ptr %i.m, align 8
  store ptr %spec.select.i, ptr %i.n, align 8
  br i1 %.not.i32, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %i.bl = phi ptr [ %i.bv, %.noexc.i ], [ %i.bk, %.critedge.i ]
  %i.bm = phi ptr [ %i.bt, %.noexc.i ], [ %i.bi, %.critedge.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.bq, %.noexc.i ], [ %i.q, %.critedge.i ]
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -24 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 -24 ; 3 uses
  %i.bp = invoke zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %5, ptr nonnull align 8 %i.bo, ptr nonnull align 8 %i.bn) #23
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -24 ; 2 uses
  %..i.i = select i1 %i.bp, ptr %i.bn, ptr %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false)
  %i.br = xor i1 %i.bp, true
  %i.bs = zext i1 %i.br to i64
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bs ; 3 uses
  store ptr %i.bt, ptr %i.n, align 8
  %i.bu = zext i1 %i.bp to i64
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bu ; 3 uses
  store ptr %i.bv, ptr %i.m, align 8
  %i.bw = icmp eq ptr %i.bt, %i.ao
  %i.bx = icmp eq ptr %i.bv, %2
  %or.cond.i.i = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc18.i
  %i.by = phi ptr [ %i.ce, %.noexc18.i ], [ %2, %.critedge.i ]
  %.sroa.0.07.i.i = phi ptr [ %i.cg, %.noexc18.i ], [ %i.bi, %.critedge.i ] ; 3 uses
  %i.bz = invoke zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %5, ptr align 8 %.sroa.0.07.i.i, ptr align 8 %i.by) #23
          to label %.noexc18.i unwind label %.loopexit.split-lp.i ; 3 uses

.noexc18.i:                                       ; preds = %.lr.ph.i.i
  %i.ca = xor i1 %i.bz, true
  %i.cb = load ptr, ptr %i.a, align 8             ; 2 uses
  %spec.select19.i = select i1 %i.bz, ptr %.sroa.0.07.i.i, ptr %i.cb
  %i.cc = load ptr, ptr %i.n, align 8             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %spec.select19.i, i64 24, i1 false)
  %i.cd = zext i1 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.cd ; 3 uses
  store ptr %i.ce, ptr %i.a, align 8
  %i.cf = zext i1 %i.bz to i64
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.07.i.i, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.ch, ptr %i.n, align 8
  %i.ci = load ptr, ptr %i.m, align 8
  %i.cj = icmp ne ptr %i.ce, %i.ci
  %i.ck = icmp ne ptr %i.cg, %i.q
  %or.cond.i17.i = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond.i17.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.i

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #26
          to label %bb.t unwind label %bb.s

_RINvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit.i: ; preds = %.noexc18.i, %.noexc.i
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.s:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
end_hunk_0
