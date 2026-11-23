Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.000?download=true
inline.NumInlined: 13187
inline.NumDeleted: 6664
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment:bb.a
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 128102389400760776) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !noalias !23272
  %i.j = load i64, ptr %i.a, align 8, !range !24, !noalias !23272, !noundef !14
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !56, !noalias !23272, !noundef !14 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !23272
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #37, !noalias !23272
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !23272, !nonnull !14, !noundef !14 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q), !noalias !23272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23272
  store i64 %i.m, ptr %i.e, align 8, !noalias !23272
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !23272
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.i
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs8O45qwFIwQX_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.13.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.13.8..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %.sroa.03.035 = phi ptr [ %i.h, %.lr.ph ], [ %i.x, %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ] ; 9 uses
  %.sroa.7.034 = phi i64 [ 0, %.lr.ph ], [ %i.y, %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.033 = phi i64 [ %i.m, %.lr.ph ], [ %i.v, %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ]
  %i.v = add i64 %.sroa.10.033, -1                ; 2 uses
  %i.w = icmp eq ptr %.sroa.03.035, %i.t
  br i1 %i.w, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs8O45qwFIwQX_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.035, i64 72
  %i.y = add nuw nsw i64 %.sroa.7.034, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23273)
  %i.z = load i64, ptr %.sroa.03.035, align 8, !range !30, !alias.scope !23273, !noalias !23274, !noundef !14 ; 2 uses
  %i.aa = xor i64 %i.z, -9223372036854775808
  %i.ab = icmp slt i64 %i.z, 0
  %i.ac = select i1 %i.ab, i64 %i.aa, i64 5
  switch i64 %i.ac, label %bb.e [
    i64 0, label %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.035, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !range !60, !alias.scope !23273, !noalias !23274, !noundef !14
  br label %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.035, i64 8
  %.sroa.022.0.copyload = load i8, ptr %i.af, align 8, !noalias !23275
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.035, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.423.0..sroa_idx, i64 15, i1 false), !noalias !23274
  br label %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.035, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23276
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %.noexc unwind label %bb.l, !inline_history !23270

.noexc:                                           ; preds = %bb.h
  %.sroa.9.8.copyload8 = load i8, ptr %i.d, align 8, !noalias !23277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.13.8..sroa_idx11, i64 23, i1 false), !noalias !23277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23276
  br label %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.035, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23276
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
          to label %.noexc1 unwind label %bb.l, !inline_history !23270

.noexc1:                                          ; preds = %bb.i
  %.sroa.9.8.copyload = load i8, ptr %i.c, align 8, !noalias !23277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.13.8..sroa_idx, i64 23, i1 false), !noalias !23277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23276
  br label %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23276
  invoke void @_RNvXNtCshqfBqtY9aGF_8indexmap3mapINtB2_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.03.035)
          to label %.noexc2 unwind label %bb.l, !inline_history !23270

.noexc2:                                          ; preds = %bb.j
  %.sroa.04.0.copyload5 = load i64, ptr %i.b, align 8, !noalias !23277
  %.sroa.9.0.copyload7 = load i8, ptr %.sroa.9.0..sroa_idx6, align 8, !noalias !23277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.13.0..sroa_idx10, i64 63, i1 false), !noalias !23277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23276
  br label %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %.noexc2, %.noexc1, %.noexc, %bb.g, %bb.f, %bb.d
  %.sroa.9.0 = phi i8 [ %.sroa.9.0.copyload7, %.noexc2 ], [ %i.ae, %bb.f ], [ %.sroa.022.0.copyload, %bb.g ], [ %.sroa.9.8.copyload8, %.noexc ], [ %.sroa.9.8.copyload, %.noexc1 ], [ undef, %bb.d ]
  %.sroa.04.0 = phi i64 [ %.sroa.04.0.copyload5, %.noexc2 ], [ -9223372036854775807, %bb.f ], [ -9223372036854775806, %bb.g ], [ -9223372036854775805, %.noexc ], [ -9223372036854775804, %.noexc1 ], [ -9223372036854775808, %bb.d ]
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.7.034 ; 3 uses
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.13, i64 63, i1 false), !noalias !23274
  store i64 %.sroa.04.0, ptr %i.ai, align 8, !noalias !23274
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 %.sroa.9.0, ptr %.sroa.420.0..sroa_idx, align 8, !noalias !23274
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.aj = icmp eq i64 %i.v, 0
  br i1 %i.aj, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs8O45qwFIwQX_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %bb.c

bb.k:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !23274, !inline_history !23271
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.034, ptr %i.s, align 8, !noalias !23274
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #30
          to label %bb.m unwind label %bb.k, !noalias !23274, !inline_history !23271

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs8O45qwFIwQX_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit: ; preds = %_RNvXs3_NtCs8O45qwFIwQX_10serde_json5valueNtB5_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit
  store i64 %i.i, ptr %i.s, align 8, !noalias !23272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !23278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23272
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !14 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23289
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !23289
  %i.g = load i64, ptr %i.a, align 8, !range !24, !noalias !23289, !noundef !14
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !56, !noalias !23289, !noundef !14 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !23289
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #37, !noalias !23289
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !23289, !nonnull !14, !noundef !14 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23289
  store i64 %i.j, ptr %i.b, align 8, !noalias !23289
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !23289
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i, %_RNvXsD_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %.sroa.013.032.i = phi ptr [ %i.u, %_RNvXsD_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.e, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i ] ; 5 uses
  %.sroa.7.031.i = phi i64 [ %i.v, %_RNvXsD_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i ] ; 3 uses
  %.sroa.10.030.i = phi i64 [ %i.s, %_RNvXsD_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.j, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i ]
  %i.s = add i64 %.sroa.10.030.i, -1              ; 2 uses
  %i.t = icmp eq ptr %.sroa.013.032.i, %i.q
  br i1 %i.t, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 16
  %i.v = add nuw nsw i64 %.sroa.7.031.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23292)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 15
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !23293, !noundef !14
  %.not.i.i.i = icmp slt i8 %i.x, 0
  %.val.i.i.i = load ptr, ptr %.sroa.013.032.i, align 8, !alias.scope !23294 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 8
  %.val10.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !23294 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.i, label %_RNvXsD_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !23295
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_RNvXsD_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECs607s0NAIaWN_7segment(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val10.i.i.i) #37
          to label %.noexc.i unwind label %bb.g, !noalias !23289

.noexc.i:                                         ; preds = %bb.e
  unreachable

_RNvXsD_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.7.031.i ; 2 uses
  store ptr %.val.i.i.i, ptr %i.ac, align 8, !noalias !23289
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.val10.i.i.i, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !23289
  %i.ad = icmp eq i64 %i.s, 0
  br i1 %i.ad, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !23289
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.031.i, ptr %i.p, align 8, !noalias !23289
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.h unwind label %bb.f, !noalias !23289

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.af

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit: ; preds = %.lr.ph.i, %_RNvXsD_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !23289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !23288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23289
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCseUPaKcRZYeZ_4half8binary163f16ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %i.e = load i64, ptr %i.b, align 8, !noundef !14 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23300
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4611686018427387904) %i.e, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !noalias !23300
  %i.f = load i64, ptr %i.a, align 8, !range !24, !noalias !23300, !noundef !14
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !56, !noalias !23300, !noundef !14 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !23300
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37, !noalias !23300
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !23300, !nonnull !14, !noundef !14 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23300
  store i64 %i.i, ptr %0, align 8, !alias.scope !23299
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !23299
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !23299
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCseUPaKcRZYeZ_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i
  %i.p = shl nuw nsw i64 %i.e, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.l, ptr nonnull readonly align 2 %i.d, i64 %i.p, i1 false), !noalias !23299
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !23299
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCseUPaKcRZYeZ_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCseUPaKcRZYeZ_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs4ByaKcm8ifS_6sparse5index12posting_list11PostingListENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !14 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23311)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23312
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !23312
  %i.h = load i64, ptr %i.b, align 8, !range !24, !noalias !23312, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !56, !noalias !23312, !noundef !14 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !23312
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #37, !noalias !23312
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !23312, !nonnull !14, !noundef !14 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23312
  store i64 %i.k, ptr %i.c, align 8, !noalias !23312
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !23312
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs4ByaKcm8ifS_6sparse5index12posting_list11PostingListNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtCs4ByaKcm8ifS_6sparse5index12posting_listNtB5_11PostingListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.015.041.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %_RNvXs5_NtNtCs4ByaKcm8ifS_6sparse5index12posting_listNtB5_11PostingListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 4 uses
  %.sroa.7.040.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %_RNvXs5_NtNtCs4ByaKcm8ifS_6sparse5index12posting_listNtB5_11PostingListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.039.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.v, %_RNvXs5_NtNtCs4ByaKcm8ifS_6sparse5index12posting_listNtB5_11PostingListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.v = add i64 %.sroa.10.039.i, -1              ; 2 uses
  %i.w = icmp eq ptr %.sroa.015.041.i, %i.r
  br i1 %i.w, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs4ByaKcm8ifS_6sparse5index12posting_list11PostingListNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.041.i, i64 24
  %i.y = add nuw nsw i64 %.sroa.7.040.i, 1
  %i.z = getelementptr i8, ptr %.sroa.015.041.i, i64 8
  %.val12.i = load ptr, ptr %i.z, align 8, !alias.scope !23311, !nonnull !14, !noundef !14 ; 2 uses
  %i.aa = getelementptr i8, ptr %.sroa.015.041.i, i64 16
  %.val13.i = load i64, ptr %i.aa, align 8, !alias.scope !23311, !noundef !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23313
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 768614336404564651) %.val13.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12)
          to label %.noexc.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !23312

.noexc.i:                                         ; preds = %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !range !24, !noalias !23313, !noundef !14
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load i64, ptr %i.t, align 8, !range !56, !noalias !23313, !noundef !14 ; 5 uses
  br i1 %i.ac, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.i, !prof !16

bb.e:                                             ; preds = %.noexc.i
  %i.ae = load i64, ptr %i.u, align 8, !noalias !23313
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.ae) #37
          to label %.noexc14.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !23312

.noexc14.i:                                       ; preds = %bb.e
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.i: ; preds = %.noexc.i
  %i.af = load ptr, ptr %i.u, align 8, !noalias !23313, !nonnull !14, !noundef !14 ; 2 uses
  %i.ag = icmp ule i64 %.val13.i, %i.ad
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23313
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %.val12.i, i64 %.val13.i
  %i.ai = icmp eq i64 %i.ad, 0
  br i1 %i.ai, label %_RNvXs5_NtNtCs4ByaKcm8ifS_6sparse5index12posting_listNtB5_11PostingListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.i, %bb.f
  %.sroa.012.021.i.i.i.i = phi ptr [ %i.am, %bb.f ], [ %.val12.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.i ] ; 3 uses
  %.sroa.7.020.i.i.i.i = phi i64 [ %i.al, %bb.f ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.i ] ; 2 uses
  %.sroa.10.019.i.i.i.i = phi i64 [ %i.ak, %bb.f ], [ %i.ad, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.i ]
  %i.aj = icmp eq ptr %.sroa.012.021.i.i.i.i, %i.ah
  br i1 %i.aj, label %_RNvXs5_NtNtCs4ByaKcm8ifS_6sparse5index12posting_listNtB5_11PostingListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i64 %.sroa.10.019.i.i.i.i, -1       ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.7.020.i.i.i.i, 1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.021.i.i.i.i, i64 12
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %.sroa.7.020.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.012.021.i.i.i.i, i64 12, i1 false), !noalias !23314
  %i.ao = icmp eq i64 %i.ak, 0
  br i1 %i.ao, label %_RNvXs5_NtNtCs4ByaKcm8ifS_6sparse5index12posting_listNtB5_11PostingListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %.lr.ph.i.i.i.i

_RNvXs5_NtNtCs4ByaKcm8ifS_6sparse5index12posting_listNtB5_11PostingListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs607s0NAIaWN_7segment.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.7.040.i ; 3 uses
  store i64 %i.ad, ptr %i.ap, align 8, !noalias !23312
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.af, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !23312
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.val13.i, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !23312
  %i.aq = icmp eq i64 %i.v, 0
  br i1 %i.aq, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs4ByaKcm8ifS_6sparse5index12posting_list11PostingListNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs607s0NAIaWN_7segment.exit, label %bb.c

bb.g:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !23312
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.040.i, ptr %i.q, align 8, !noalias !23312
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs4ByaKcm8ifS_6sparse5index12posting_list11PostingListEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #30
          to label %bb.h unwind label %bb.g, !noalias !23312

bb.h:                                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
end_hunk_0
