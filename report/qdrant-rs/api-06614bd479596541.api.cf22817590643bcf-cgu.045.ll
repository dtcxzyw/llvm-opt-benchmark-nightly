Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.045?download=true
inline.NumInlined: 148
inline.NumDeleted: 69
begin_hunk_0_@_RNvMsg_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_21TypedMultiDenseVectorfE16try_from_flattenCshMzyYDJGtjv_3api:bb.a
  unreachable

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.x, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @5, ptr noundef nonnull %i.b)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit unwind label %bb.d

bb.m:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.46.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECshMzyYDJGtjv_3api.exit
  ret void

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshMzyYDJGtjv_3api.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 -9223372036854775796, ptr %0, align 8
  br label %bb.h

bb.o:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_21TypedMultiDenseVectorfE18into_multi_vectorsCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [160 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.c = icmp ult i64 %.sroa.5.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.4.0.copyload, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  call void @_RNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfENtCs9XvERIT2X68_9itertools9Itertools6chunksCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_fEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCs9XvERIT2X68_9itertools11groupbylazy6ChunksINtNtB4_9into_iter8IntoIterfEEINvYINtB2f_5ChunkB2Z_ENtNtNtB1v_6traits8iterator8Iterator7collectBU_EEE9from_iterCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9XvERIT2X68_9itertools11groupbylazy10IntoChunksINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(160) %i.b) #10
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEECshMzyYDJGtjv_3api.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBE_9into_iter8IntoIterfEEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #10
          to label %common.resume unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEECshMzyYDJGtjv_3api.exit.i.i.i.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterfEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9XvERIT2X68_9itertools11groupbylazy10IntoChunksINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECshMzyYDJGtjv_3api.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEECshMzyYDJGtjv_3api.exit.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_3vec9into_iter8IntoIterfEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9XvERIT2X68_9itertools11groupbylazy10IntoChunksINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECshMzyYDJGtjv_3api.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEECshMzyYDJGtjv_3api.exit.i.i.i.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_3vec9into_iter8IntoIterfEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCshMzyYDJGtjv_3api4rest11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_6schema6VectorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(208) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = load i64, ptr %1, align 8, !range !8, !noundef !5 ; 3 uses
  %i.e = icmp ne i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -3                     ; 3 uses
  %.inv = icmp slt i64 %i.d, 3
  %i.g = select i1 %.inv, i64 3, i64 %i.f
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.k
    i64 4, label %bb.k
    i64 5, label %bb.k
  ], !prof !84

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !86, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !86, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !87, !noundef !5 ; 2 uses
  %i.r = icmp ult i64 %i.q, 2305843009213693952
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  %i.s = load i64, ptr %i.c, align 8, !range !12, !alias.scope !86, !noundef !5
  %i.t = icmp ult i64 %i.m, 384307168202282326
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.m
  store ptr %i.o, ptr %i.a, align 8, !noalias !87
  %.sroa.06.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %.sroa.06.sroa.4.0..sroa_idx.i, align 8, !noalias !87
  %.sroa.06.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 8, !noalias !87
  %.sroa.06.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.u, ptr %.sroa.06.sroa.6.0..sroa_idx.i, align 8, !noalias !87
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !87
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !87
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.n unwind label %bb.m

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #11
          to label %bb.h unwind label %bb.i, !noalias !87

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_fEEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #10
          to label %.body unwind label %bb.j, !noalias !85

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9, !noalias !85
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 147 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #11
          to label %bb.q unwind label %bb.m

bb.l:                                             ; preds = %bb.n, %bb.d, %bb.c
  %.pre-phi = phi i64 [ %.pre6, %bb.n ], [ %i.f, %bb.d ], [ %i.f, %bb.c ]
  %switch = icmp ult i64 %.pre-phi, 3
  br i1 %switch, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.f, %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.m ], [ %i.v, %bb.i ]
  %i.y = load i64, ptr %1, align 8, !range !8, !noundef !5 ; 2 uses
  %i.z = icmp ne i64 %i.y, 6
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i64 %i.y, -3
  %switch3 = icmp ult i64 %i.aa, 3
  br i1 %switch3, label %bb.s, label %bb.r

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.q, ptr %i.ab, align 8, !alias.scope !85
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  store i64 -9223372036854775806, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre = load i64, ptr %1, align 8, !range !8
  %.pre6 = add nsw i64 %.pre, -3
  br label %bb.l

bb.o:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEBH_(ptr noalias nofree noundef align 8 dereferenceable(208) %1)
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  ret void

bb.q:                                             ; preds = %bb.k
  unreachable

bb.r:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEBH_(ptr noalias nofree noundef align 8 dereferenceable(208) %1) #10
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.body, %bb.r
  resume { ptr, i32 } %eh.lpad-body

bb.t:                                             ; preds = %bb.r
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_4grpc6qdrant12VectorOutputE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.621 = alloca [32 x i8], align 8          ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.613 = alloca [32 x i8], align 8          ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load i32, ptr %i.i, align 8, !range !13, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.02.0.copyload = load i64, ptr %i.m, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.not = icmp eq i64 %.sroa.02.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ne i64 %.sroa.02.0.copyload, -9223372036854775807
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %.sroa.02.0.copyload, -9223372036854775808
  %i.p = icmp slt i64 %.sroa.02.0.copyload, 0
  %i.q = select i1 %i.p, i64 %i.o, i64 1
  switch i64 %i.q, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.f, align 8, !range !4, !noundef !5
  %.not65 = icmp eq i64 %i.r, -1
  br i1 %.not65, label %bb.n, label %.thread

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.s, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.02.0.copyload, ptr %.sroa.461.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtB9_4grpc6qdrant16MultiDenseVector11into_matrix(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.r, %bb.q, %bb.i, %bb.g
  %.sroa.034.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.g ], [ 1, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load i64, ptr %i.f, align 8, !range !4, !noundef !5
  %.not67 = icmp eq i64 %i.w, -1
  br i1 %.not67, label %.body, label %bb.af

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMsg_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_21TypedMultiDenseVectorfE15try_from_matrixCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = load i64, ptr %i.e, align 8, !range !14, !noundef !5 ; 2 uses
  %.not68 = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  br i1 %.not68, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.542.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.444.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613, i64 32, i1 false)
  store i64 %i.x, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.f, %bb.k, %bb.l, %bb.u
  %.sroa.034.1 = phi i8 [ 0, %bb.u ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %i.aa = load i64, ptr %i.f, align 8, !range !4, !noundef !5
  %.not69 = icmp eq i64 %i.aa, -1
  br i1 %.not69, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEBH_.exit, label %bb.x

end_hunk_0
begin_hunk_1_@_RNvXs9_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_4grpc6qdrant6VectorE8try_from:bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEBH_.exit unwind label %bb.bc

.body91:                                          ; preds = %bb.bc, %bb.ba, %.body89
  %.sroa.054.4 = phi i8 [ %.sroa.053.0, %.body89 ], [ %.sroa.054.2, %bb.ba ], [ %.sroa.054.2, %bb.bc ]
  %.pn84 = phi { ptr, i32 } [ %.pn, %.body89 ], [ %i.co, %bb.ba ], [ %i.cr, %bb.bc ] ; 2 uses
  %i.cq = trunc nuw i8 %.sroa.054.4 to i1
  br i1 %i.cq, label %.thread94, label %common.resume

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECshMzyYDJGtjv_3api.exit.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body91

bb.bd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEBH_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECshMzyYDJGtjv_3api.exit unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable

common.resume:                                    ; preds = %.body91, %.thread94, %bb.ap, %bb.be
  %common.resume.op = phi { ptr, i32 } [ %i.cs, %bb.be ], [ %.pn8498, %.thread94 ], [ %.pn84, %.body91 ], [ %i.cb, %bb.ap ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECshMzyYDJGtjv_3api.exit: ; preds = %bb.bd
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEBH_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECshMzyYDJGtjv_3api.exit, %.thread, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.bh:                                            ; preds = %.body89
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #10
          to label %.thread94 unwind label %bb.ak

.thread94:                                        ; preds = %bb.bh, %.body91
  %.pn8498 = phi { ptr, i32 } [ %.pn84, %.body91 ], [ %.pn, %bb.bh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #10
          to label %common.resume unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtNtCshMzyYDJGtjv_3api11conversions7vectorsINtNtNtCs607s0NAIaWN_7segment10data_types7vectors21TypedMultiDenseVectorfEINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB9_4grpc6qdrant16MultiDenseVectorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = icmp ult i64 %i.h, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = load i64, ptr %i.b, align 8, !range !12, !noundef !5
  %i.k = icmp ult i64 %i.d, 384307168202282326
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.d
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.j, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  %.sroa.010.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.l, ptr %.sroa.010.sroa.6.0..sroa_idx, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %.sroa.613.0..sroa_idx, align 8
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorEBR_NvYBR_INtNtB1D_7convert4FromB2R_E4fromEE9from_iterB2X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #11
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #10
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsh_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtB9_4grpc6qdrant9RawVectorE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.16.copyload = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.9.16..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.16.copyload = load i64, ptr %.sroa.9.16..sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 6 uses
  %i.d = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %.sroa.0.0.copyload, -9223372036854775808
  %i.f = icmp slt i64 %.sroa.0.0.copyload, 0
  %i.g = select i1 %i.f, i64 %i.e, i64 1
  switch i64 %i.g, label %bb.e [
    i64 0, label %bb.m
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECshMzyYDJGtjv_3api(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 26)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.425.sroa.0.0.copyload44 = load ptr, ptr %i.j, align 8
  %.sroa.425.sroa.4.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.425.sroa.4.0.copyload47 = load i64, ptr %.sroa.425.sroa.4.0..sroa_idx46, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103
  store ptr %.sroa.6.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.7.16.copyload, ptr %.sroa.7.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.9.16.copyload, ptr %.sroa.9.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %.not.i = icmp eq i64 %.sroa.9.16.copyload, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !103, !nonnull !5, !noundef !5 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !103, !noundef !5 ; 2 uses
  %i.o = icmp ult i64 %i.n, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  %i.p = load i64, ptr %i.b, align 8, !range !12, !noalias !103, !noundef !5
  %i.q = icmp ult i64 %.sroa.9.16.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.9.16.copyload
  store ptr %i.l, ptr %i.a, align 8, !noalias !103
  %.sroa.010.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.010.sroa.4.0..sroa_idx.i, align 8, !noalias !103
  %.sroa.010.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.p, ptr %.sroa.010.sroa.5.0..sroa_idx.i, align 8, !noalias !103
  %.sroa.010.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.r, ptr %.sroa.010.sroa.6.0..sroa_idx.i, align 8, !noalias !103
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !103
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %.sroa.613.0..sroa_idx.i, align 8, !noalias !103
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorEBR_NvYBR_INtNtB1D_7convert4FromB2R_E4fromEE9from_iterB2X_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.n, ptr %i.s, align 8, !alias.scope !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !103
  %.sroa.425.sroa.0.0.copyload = load ptr, ptr %i.c, align 8
  %.sroa.425.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.425.sroa.4.0.copyload = load i64, ptr %.sroa.425.sroa.4.0..sroa_idx, align 8
  %.sroa.425.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.425.sroa.5.0.copyload = load i64, ptr %.sroa.425.sroa.5.0..sroa_idx, align 8
  %.sroa.425.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.425.sroa.7.0.copyload = load ptr, ptr %.sroa.425.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #11
          to label %bb.j unwind label %bb.k, !noalias !103

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #10
          to label %.body unwind label %bb.l, !noalias !103

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #9, !noalias !103
  unreachable

bb.m:                                             ; preds = %bb.b, %bb.h, %bb.f
  %.sroa.425.sroa.7.0 = phi ptr [ %.sroa.425.sroa.7.0.copyload, %bb.h ], [ %.sroa.6.sroa.0.0.copyload, %bb.f ], [ undef, %bb.b ]
  %.sroa.425.sroa.5.0 = phi i64 [ %.sroa.425.sroa.5.0.copyload, %bb.h ], [ %.sroa.0.0.copyload, %bb.f ], [ %.sroa.9.16.copyload, %bb.b ]
  %.sroa.425.sroa.4.0 = phi i64 [ %.sroa.425.sroa.4.0.copyload, %bb.h ], [ %.sroa.425.sroa.4.0.copyload47, %bb.f ], [ %.sroa.7.16.copyload, %bb.b ]
  %.sroa.425.sroa.0.0 = phi ptr [ %.sroa.425.sroa.0.0.copyload, %bb.h ], [ %.sroa.425.sroa.0.0.copyload44, %bb.f ], [ %.sroa.6.sroa.0.0.copyload, %bb.b ]
  %.sroa.621.0 = phi i64 [ undef, %bb.h ], [ %.sroa.7.16.copyload, %bb.f ], [ undef, %bb.b ]
  %.sroa.017.0 = phi i64 [ -9223372036854775806, %bb.h ], [ %.sroa.9.16.copyload, %bb.f ], [ -9223372036854775808, %bb.b ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.419.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.425.sroa.0.0, ptr %.sroa.419.0..sroa_idx20, align 8
  %.sroa.425.sroa.4.0..sroa.419.0..sroa_idx20.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.425.sroa.4.0, ptr %.sroa.425.sroa.4.0..sroa.419.0..sroa_idx20.sroa_idx, align 8
  %.sroa.425.sroa.5.0..sroa.419.0..sroa_idx20.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.425.sroa.5.0, ptr %.sroa.425.sroa.5.0..sroa.419.0..sroa_idx20.sroa_idx, align 8
  %.sroa.425.sroa.7.0..sroa.419.0..sroa_idx20.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.425.sroa.7.0, ptr %.sroa.425.sroa.7.0..sroa.419.0..sroa_idx20.sroa_idx, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.621.0, ptr %.sroa.621.0..sroa_idx22, align 8
  br label %bb.d

.body:                                            ; preds = %bb.k
  resume { ptr, i32 } %i.t
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB5_9into_iter8IntoIterfEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecfEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtB7_3vec9into_iter8IntoIterfEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1x_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCs607s0NAIaWN_7segment6common15operation_errorNtB5_14OperationErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(i8 noundef range(i8 0, 17), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs1cB7FFWPEsq_9validator12display_implNtNtB6_5types16ValidationErrorsNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecfEINtB2_12SpecFromIterfINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtB4_9into_iter8IntoIterBK_EEE9from_iterCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfENtCs9XvERIT2X68_9itertools9Itertools6chunksCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(none) dereferenceable(160), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecIBL_fEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCs9XvERIT2X68_9itertools11groupbylazy6ChunksINtNtB4_9into_iter8IntoIterfEEINvYINtB2f_5ChunkB2Z_ENtNtNtB1v_6traits8iterator8Iterator7collectBU_EEE9from_iterCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtB9_4grpc6qdrant16MultiDenseVector11into_matrix(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorOutputNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB1v_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorOutputENCNvXs6_NtNtB2J_11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors20VectorStructInternalINtNtB6_7convert7TryFromNtB2F_13VectorsOutputE8try_from0ETB21_NtB45_14VectorInternalEINtNtB6_6result6ResultzNtNtNtB49_6common15operation_error14OperationErrorENCINvXso_B6B_IB6z_INtB19_7HashMapB21_B6b_EB6V_EINtNtNtB4_6traits7collect12FromIteratorIB6z_B66_B6V_EE9from_iterBQ_E0B82_EB2J_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVector3new(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECshMzyYDJGtjv_3api(i8 noundef range(i8 0, 17), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsjpNT60X9mgn_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtB8_5alloc5inner6GlobalECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11DenseVectorEBR_NvYBR_INtNtB1D_7convert4FromB2R_E4fromEE9from_iterB2X_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 -1, i64 3}
!7 = !{i64 0, i64 2}
!8 = !{i64 -1, i64 9}
!9 = !{i64 0, i64 6}
!10 = !{i64 0, i64 -9223372036854775807}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = !{i32 0, i32 2}
!14 = !{i64 -1, i64 -9223372036854775788}
!15 = distinct !{!15, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceECshMzyYDJGtjv_3api"}
!16 = distinct !{!16, !15, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceECshMzyYDJGtjv_3api: argument 0"}
!17 = distinct !{!17, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index12StopwordsSetECshMzyYDJGtjv_3api"}
!18 = distinct !{!18, !17, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index12StopwordsSetECshMzyYDJGtjv_3api: argument 0"}
!19 = distinct !{!19, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api"}
!20 = distinct !{!20, !19, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api: argument 0"}
!21 = distinct !{!21, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api"}
!22 = distinct !{!22, !21, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api: argument 0"}
!23 = !{!20, !18, !16}
!24 = !{!22, !18, !16}
!25 = !{i8 -2, i8 7}
!26 = distinct !{!26, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema15DocumentOptionsEBH_"}
!27 = distinct !{!27, !26, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema15DocumentOptionsEBH_: argument 0"}
!28 = distinct !{!28, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema10Bm25ConfigEBH_"}
!29 = distinct !{!29, !28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema10Bm25ConfigEBH_: argument 0"}
!30 = distinct !{!30, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema23TextPreprocessingConfigEBH_"}
!31 = distinct !{!31, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema23TextPreprocessingConfigEBH_: argument 0"}
!32 = distinct !{!32, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshMzyYDJGtjv_3api"}
!33 = distinct !{!33, !32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshMzyYDJGtjv_3api: argument 0"}
!34 = distinct !{!34, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api"}
!35 = distinct !{!35, !34, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceEECshMzyYDJGtjv_3api: argument 0"}
!36 = distinct !{!36, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceECshMzyYDJGtjv_3api"}
!37 = distinct !{!37, !36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index18StopwordsInterfaceECshMzyYDJGtjv_3api: argument 0"}
!38 = distinct !{!38, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index12StopwordsSetECshMzyYDJGtjv_3api"}
!39 = distinct !{!39, !38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types5index12StopwordsSetECshMzyYDJGtjv_3api: argument 0"}
!40 = distinct !{!40, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api"}
!41 = distinct !{!41, !40, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api: argument 0"}
!42 = distinct !{!42, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api"}
!43 = distinct !{!43, !42, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set8BTreeSetNtNtB16_6string6StringEEECshMzyYDJGtjv_3api: argument 0"}
!44 = !{!33, !31, !29, !27}
!45 = !{!35, !31, !29, !27}
!46 = !{!41, !39, !37, !35, !31, !29, !27}
!47 = !{!43, !39, !37, !35, !31, !29, !27}
!48 = !{i64 0, i64 -9223372036854775803}
!49 = distinct !{!49, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshMzyYDJGtjv_3api"}
!50 = distinct !{!50, !49, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshMzyYDJGtjv_3api: argument 0"}
!51 = !{i64 0, i64 -9223372036854775788}
!52 = !{!50}
!53 = distinct !{!53, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema15InferenceObjectEBH_"}
!54 = distinct !{!54, !53, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema15InferenceObjectEBH_: argument 0"}
!55 = distinct !{!55, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema7OptionsEBH_"}
!56 = distinct !{!56, !55, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema7OptionsEBH_: argument 0"}
!57 = distinct !{!57, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api"}
!58 = distinct !{!58, !57, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api: argument 0"}
!59 = distinct !{!59, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema7OptionsEBH_"}
!60 = distinct !{!60, !59, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema7OptionsEBH_: argument 0"}
!61 = distinct !{!61, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api"}
!62 = distinct !{!62, !61, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api: argument 0"}
!63 = distinct !{!63, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema5ImageEBH_"}
!64 = distinct !{!64, !63, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema5ImageEBH_: argument 0"}
!65 = distinct !{!65, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema7OptionsEBH_"}
!66 = distinct !{!66, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema7OptionsEBH_: argument 0"}
!67 = distinct !{!67, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api"}
!68 = distinct !{!68, !67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api: argument 0"}
!69 = distinct !{!69, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema7OptionsEBH_"}
!70 = distinct !{!70, !69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema7OptionsEBH_: argument 0"}
!71 = distinct !{!71, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api"}
!72 = distinct !{!72, !71, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECshMzyYDJGtjv_3api: argument 0"}
!73 = !{!58, !56, !54}
!74 = !{!62, !60, !54}
!75 = !{!68, !66, !64}
!76 = !{!72, !70, !64}
!77 = distinct !{!77, i1 true, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecfEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsg_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB2i_21TypedMultiDenseVectorfE15try_from_matrix0ECshMzyYDJGtjv_3api"}
!78 = distinct !{!78, !77, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecfEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsg_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB2i_21TypedMultiDenseVectorfE15try_from_matrix0ECshMzyYDJGtjv_3api: argument 1"}
!79 = distinct !{!79, !77, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecfEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsg_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB2i_21TypedMultiDenseVectorfE15try_from_matrix0ECshMzyYDJGtjv_3api: argument 0"}
!80 = !{!79, !78}
!81 = distinct !{!81, i1 true, !"_RNvMsi_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_21TypedMultiDenseVectorfE13new_uncheckedCshMzyYDJGtjv_3api"}
!82 = distinct !{!82, !81, !"_RNvMsi_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_21TypedMultiDenseVectorfE13new_uncheckedCshMzyYDJGtjv_3api: argument 0"}
!83 = distinct !{!83, !81, !"_RNvMsi_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_21TypedMultiDenseVectorfE13new_uncheckedCshMzyYDJGtjv_3api: argument 1"}
!84 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 1, i32 1, i32 1}
!85 = !{!82}
!86 = !{!83}
!87 = !{!82, !83}
!88 = distinct !{!88, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEEB13_"}
!89 = distinct !{!89, !88, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEEB13_: argument 0"}
!90 = distinct !{!90, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEEB13_"}
!91 = distinct !{!91, !90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEEB13_: argument 0"}
!92 = !{!89}
!93 = !{!91}
!94 = distinct !{!94, i1 true, !"_RNCNvXs9_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtBb_4grpc6qdrant6VectorE8try_from0Bb_"}
!95 = distinct !{!95, !94, !"_RNCNvXs9_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtBb_4grpc6qdrant6VectorE8try_from0Bb_: argument 0"}
!96 = distinct !{!96, i1 true, !"_RNCNvXs9_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtBb_4grpc6qdrant6VectorE8try_froms_0Bb_"}
!97 = distinct !{!97, !96, !"_RNCNvXs9_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtBb_4grpc6qdrant6VectorE8try_froms_0Bb_: argument 0"}
!98 = !{!95}
!99 = !{!97}
!100 = distinct !{!100, i1 true, !"_RNvXsf_NtNtCshMzyYDJGtjv_3api11conversions7vectorsINtNtNtCs607s0NAIaWN_7segment10data_types7vectors21TypedMultiDenseVectorfEINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB9_4grpc6qdrant16MultiDenseVectorE4from"}
!101 = distinct !{!101, !100, !"_RNvXsf_NtNtCshMzyYDJGtjv_3api11conversions7vectorsINtNtNtCs607s0NAIaWN_7segment10data_types7vectors21TypedMultiDenseVectorfEINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB9_4grpc6qdrant16MultiDenseVectorE4from: argument 1"}
!102 = distinct !{!102, !100, !"_RNvXsf_NtNtCshMzyYDJGtjv_3api11conversions7vectorsINtNtNtCs607s0NAIaWN_7segment10data_types7vectors21TypedMultiDenseVectorfEINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB9_4grpc6qdrant16MultiDenseVectorE4from: argument 0"}
!103 = !{!102, !101}
!104 = !{!102}
end_hunk_1
