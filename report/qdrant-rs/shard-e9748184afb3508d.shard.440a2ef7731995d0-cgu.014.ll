Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.014?download=true
inline.NumInlined: 340
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCs5QaNqjAn6vc_5shard, align 8
@1 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@2 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @1, [24 x i8] zeroinitializer }>, align 8
@_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@3 = private unnamed_addr constant [31 x i8] c"\1CMalformed raw payload blob: \C0\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"))", align 1
@5 = private unnamed_addr constant [9 x i8] c"\C0\02: \C0\02, \00", align 1
@6 = private unnamed_addr constant <{ [9 x i8], [15 x i8] }> <{ [9 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\01", [15 x i8] undef }>, align 8
@7 = private unnamed_addr constant [6 x i8] c"points", align 1
@8 = private unnamed_addr constant [9 x i8] c"shard_key", align 1
@9 = private unnamed_addr constant [12 x i8] c"PointIdsList", align 1
@10 = private unnamed_addr constant [18 x i8] c"variant identifier", align 1
@11 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@12 = private unnamed_addr constant [15 x i8] c"Vector is empty", align 1
@13 = private unnamed_addr constant [15 x i8] c"enum UpdateMode", align 1
@14 = private unnamed_addr constant [19 x i8] c"struct PointIdsList", align 1
@15 = private unnamed_addr constant [20 x i8] c"enum PointOperations", align 1
@16 = private unnamed_addr constant [34 x i8] c"enum PointInsertOperationsInternal", align 1
@17 = private unnamed_addr constant [41 x i8] c"struct ConditionalInsertOperationInternal", align 1
@18 = private unnamed_addr constant [25 x i8] c"struct PointSyncOperation", align 1
@19 = private unnamed_addr constant [28 x i8] c"struct PointSyncRawOperation", align 1
@20 = private unnamed_addr constant [30 x i8] c"struct PointStructRawPersisted", align 1
@21 = private unnamed_addr constant [21 x i8] c"struct BatchPersisted", align 1
@22 = private unnamed_addr constant [27 x i8] c"struct PointStructPersisted", align 1
@23 = private unnamed_addr constant [44 x i8] c"struct variant PointOperations::DeletePoints", align 1
@24 = private unnamed_addr constant [32 x i8] c"PointOperationsDiscriminantsIter", align 1
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@26 = private unnamed_addr constant [3 x i8] c"len", align 1
@27 = private unnamed_addr constant [46 x i8] c"PointInsertOperationsInternalDiscriminantsIter", align 1
@28 = private unnamed_addr constant [23 x i8] c"Empty id is not allowed", align 1
@29 = private unnamed_addr constant [2 x i8] c", ", align 1
@30 = private unnamed_addr constant [64 x i8] c"\1EPointStructRawPersisted { id: \C0\0C, vectors: [\C0\0C], payload: \C0\02 }\00", align 1
@31 = private unnamed_addr constant [4 x i8] c"None", align 1
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs607s0NAIaWN_7segment5types7PayloadNtB6_5Debug3fmtCs5QaNqjAn6vc_5shard }>, align 8
@33 = private unnamed_addr constant [4 x i8] c"Some", align 1
@34 = private unnamed_addr constant [24 x i8] c"\08Single([\C0\08, ... x \C0\02])\00", align 1
@35 = private unnamed_addr constant [27 x i8] c"\0CMultiDense([\C0\08, ... x \C0\01)\00", align 1
@36 = private unnamed_addr constant [8 x i8] c"Named(( ", align 1
@37 = private unnamed_addr constant [23 x i8] c"\07Dense([\C0\08, ... x \C0\02])\00", align 1
@38 = private unnamed_addr constant [23 x i8] c"\08Sparse([\C0\08, ... x \C0\01)\00", align 1
@switch.table._RNvMsi_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_21VectorStructPersisted8is_empty = private unnamed_addr constant [3 x i8] c"\18\10\18", align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtBa_6update6points6upsert32retain_conditional_upsert_points0EBa_(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 12 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.n, align 8
  %i.o = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops20PointStructPersistedE6retainNCINvMs0_BH_NtBH_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtBL_6update6points6upsert32retain_conditional_upsert_points0Es3_0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.r = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0) ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.s, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %i.t, ptr %.sroa.54.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.n, ptr %i.j, align 8, !noalias !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.v, align 8, !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !34
  store i64 0, ptr %i.i, align 8, !noalias !34
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE6retainNCINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexBF_NCINvMs0_B1F_NtB1F_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB1J_6update6points6upsert32retain_conditional_upsert_points0E0E0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.j, %bb.n, %bb.f, %bb.e, %bb.c, %bb.g
  %lpad.loopexit.split-lp13 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs5QaNqjAn6vc_5shard.exit unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.w = load i64, ptr %0, align 8, !range !6, !noundef !5
  switch i64 %i.w, label %default.unreachable12 [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable12:                            ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.m, ptr %i.h, align 8, !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35
  store i64 0, ptr %i.g, align 8, !noalias !35
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_fEE6retainNCINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexBF_NCINvMs0_BY_NtBY_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB12_6update6points6upsert32retain_conditional_upsert_points0Es_0E0EB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexINtNtCsexYYUdYSQU6_5alloc3vec3VecfENCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es_0EB6_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexINtNtCsexYYUdYSQU6_5alloc3vec3VecfENCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es_0EB6_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8, !noalias !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36
  store i64 0, ptr %i.e, align 8, !noalias !36
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_IBw_fEEE6retainNCINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexBF_NCINvMs0_B13_NtB13_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB17_6update6points6upsert32retain_conditional_upsert_points0Es0_0E0EB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexINtNtCsexYYUdYSQU6_5alloc3vec3VecIB16_fEENCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es0_0EB6_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexINtNtCsexYYUdYSQU6_5alloc3vec3VecIB16_fEENCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es0_0EB6_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBR_3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE8iter_mutB1L_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexINtNtCsexYYUdYSQU6_5alloc3vec3VecIB16_fEENCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es0_0EB6_.exit, %_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexINtNtCsexYYUdYSQU6_5alloc3vec3VecfENCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es_0EB6_.exit, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !noundef !5
  %.not10 = icmp eq i64 %i.ab, -1
  br i1 %.not10, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexNtB2_15VectorPersistedNCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es1_0EB6_.exit, %bb.i
  %i.ac = invoke { ptr, ptr } @_RNvXsK_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7IterMutNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBR_3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8, !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37
  store i64 0, ptr %i.c, align 8, !noalias !37
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedE6retainNCINvBH_17retain_with_indexBF_NCINvMs0_BH_NtBH_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtBL_6update6points6upsert32retain_conditional_upsert_points0Es1_0E0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexNtB2_15VectorPersistedNCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es1_0EB6_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexNtB2_15VectorPersistedNCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es1_0EB6_.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.h

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  store i64 0, ptr %i.a, align 8, !noalias !38
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadEE6retainNCINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexBF_NCINvMs0_B29_NtB29_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB2d_6update6points6upsert32retain_conditional_upsert_points0Es2_0E0EB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadENCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es2_0EB6_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadENCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es2_0EB6_.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtNtCs5QaNqjAn6vc_5shard10operations9point_ops17retain_with_indexINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types7PayloadENCINvMs0_B2_NtB2_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtB6_6update6points6upsert32retain_conditional_upsert_points0Es2_0EB6_.exit, %bb.h
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.o
  ret void

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjEECs5QaNqjAn6vc_5shard.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp13
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtBa_6update6points6upsert32retain_conditional_upsert_pointss0_0EBa_(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %2, ptr %i.o, align 8
  %i.p = load i64, ptr %0, align 8, !range !4, !noundef !5
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops20PointStructPersistedE6retainNCINvMs0_BH_NtBH_29PointInsertOperationsInternal16retain_point_idsNCNvNtNtNtBL_6update6points6upsert32retain_conditional_upsert_pointss0_0Es3_0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
  br label %bb.p
end_hunk_0
begin_hunk_1_@_RNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_20PointStructPersisted11is_equal_to:bb.a
  %i.by = icmp eq i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.w, label %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !379, !noalias !380, !nonnull !5, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !378, !noalias !380, !nonnull !5, !noundef !5
  %i.cd = shl nuw i64 %i.bv, 2
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.cc, ptr nonnull %i.ca, i64 %i.cd), !noalias !381
  %i.ce = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ce, label %bb.x, label %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.val6.i, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !378, !noalias !380, !noundef !5 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !379, !noalias !380, !noundef !5
  %i.cj = icmp eq i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.y, label %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !379, !noalias !380, !nonnull !5, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !378, !noalias !380, !nonnull !5, !noundef !5
  br label %.invoke

bb.z:                                             ; preds = %bb.s
  %i.co = load i64, ptr %i.ap, align 8, !alias.scope !376, !noundef !5
  %i.cp = icmp eq i64 %i.co, %.sroa.9.0
  br i1 %i.cp, label %bb.aa, label %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %i.aq, align 8, !alias.scope !376, !nonnull !5, !align !377, !noundef !5
  %i.cr = invoke noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpfINtB5_14SlicePartialEqfE17equal_same_lengthCs5QaNqjAn6vc_5shard(ptr noundef nonnull %i.cq, ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.9.0)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.aa
  %i.cs = load i64, ptr %i.ar, align 8
  %i.ct = icmp eq i64 %i.cs, %.sroa.10.0
  %or.cond = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %or.cond, label %bb.ab, label %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.v, %bb.w, %bb.x, %bb.z, %bb.r, %bb.t, %.noexc30, %bb.q, %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.sink.split

_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %.invoke
  br i1 %i.bt, label %bb.ab, label %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.ab:                                            ; preds = %.noexc30, %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cu = icmp eq ptr %i.as, %i.an
  br i1 %i.cu, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.ab, %bb.k, %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !range !7, !noundef !5
  %.not24 = icmp eq i64 %i.cw, -1
  br i1 %.not24, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit.thread, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit

bb.ac:                                            ; preds = %bb.f
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !5 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 128102389400760776
  tail call void @llvm.assume(i1 %i.cz)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.f
  %i.da = load i16, ptr %i.b, align 8, !noundef !5
  %i.db = zext i16 %i.da to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.017.0 = phi i64 [ %i.cy, %bb.ac ], [ %i.db, %bb.ad ]
  %i.dc = icmp eq i64 %.sroa.017.0, 0
  br i1 %i.dc, label %.loopexit, label %.sink.split

.sink.split:                                      ; preds = %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %bb.i, %bb.ae, %bb.ag, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_tos_0EB1H_.exit.thread53, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit.thread, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_tos_0EB1H_.exit, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit
  %.sroa.0.1.ph = phi i1 [ %.not3.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit ], [ %.not3.i3156, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_tos_0EB1H_.exit.thread53 ], [ true, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit.thread ], [ %i.do, %bb.ag ], [ %.not3.i31.mux, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_tos_0EB1H_.exit ], [ false, %bb.ae ], [ false, %bb.i ], [ false, %_RNvXsY_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_9VectorRefNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(224) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %.split, %bb.c, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.c ], [ false, %.split ], [ false, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit: ; preds = %.loopexit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !382, !noundef !5 ; 2 uses
  %.not3.i = icmp eq i64 %i.de, 0                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !range !7, !noundef !5
  %.not25 = icmp eq i64 %i.dg, -1
  br i1 %.not25, label %.sink.split, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_tos_0EB1H_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit.thread: ; preds = %.loopexit
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.di = load i64, ptr %i.dh, align 8, !range !7, !noundef !5
  %.not2546 = icmp eq i64 %i.di, -1
  br i1 %.not2546, label %.sink.split, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_tos_0EB1H_.exit.thread53

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_tos_0EB1H_.exit.thread53: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !383, !noundef !5
  %.not3.i3156 = icmp eq i64 %i.dk, 0
  br label %.sink.split

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_tos_0EB1H_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_to0EB1H_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !383, !noundef !5 ; 2 uses
  %.not3.i31 = icmp eq i64 %i.dm, 0
  %brmerge = or i1 %.not3.i, %.not3.i31
  %i.dn = or i64 %i.de, %i.dm
  %.not3.i31.mux = icmp eq i64 %i.dn, 0
  br i1 %brmerge, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtCs607s0NAIaWN_7segment5types7PayloadE6filterNCNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB1D_20PointStructPersisted11is_equal_tos_0EB1H_.exit
  %i.do = invoke noundef zeroext i1 @_RNvXse_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.df)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ai:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp72
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsf_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_21VectorStructPersisted19retain_vector_names(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6retainNCNvMsf_B1s_NtB1s_21VectorStructPersisted19retain_vector_names0EB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsi_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_21VectorStructPersisted8is_empty(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !5
  switch i64 %i.b, label %default.unreachable3 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = icmp ult i64 %i.d, 2305843009213693952
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterB1v_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k)
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.d
  %i.l = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %.not.i.i = icmp eq ptr %i.m, null
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 3 uses
  %.not5.i = icmp eq ptr %i.n, null
  %.not.i.not = select i1 %.not.i.i, i1 true, i1 %.not5.i ; 2 uses
  br i1 %.not.i.not, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2C_3all5checkRB1y_NCNvMsi_B1A_NtB1A_21VectorStructPersisted8is_empty0E0INtNtNtB2K_3ops12control_flow11ControlFlowuEEB1E_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.e
  %i.o = load i64, ptr %i.n, align 8, !range !15, !alias.scope !388, !noundef !5 ; 3 uses
  %i.p = icmp ne i64 %i.o, -9223372036854775807
  call void @llvm.assume(i1 %i.p)
  %i.q = xor i64 %i.o, -9223372036854775808
  %i.r = icmp slt i64 %i.o, 0
  %i.s = select i1 %i.r, i64 %i.q, i64 1
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvMsi_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_21VectorStructPersisted8is_empty, i64 %i.s
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %switch.ext
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !388, !noundef !5
  %.sroa.0.0.in.i.i.not.i = icmp eq i64 %i.u, 0
  br i1 %.sroa.0.0.in.i.i.not.i, label %bb.e, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2C_3all5checkRB1y_NCNvMsi_B1A_NtB1A_21VectorStructPersisted8is_empty0E0INtNtNtB2K_3ops12control_flow11ControlFlowuEEB1E_.exit

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2C_3all5checkRB1y_NCNvMsi_B1A_NtB1A_21VectorStructPersisted8is_empty0E0INtNtNtB2K_3ops12control_flow11ControlFlowuEEB1E_.exit: ; preds = %bb.e, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2C_3all5checkRB1y_NCNvMsi_B1A_NtB1A_21VectorStructPersisted8is_empty0E0INtNtNtB2K_3ops12control_flow11ControlFlowuEEB1E_.exit, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %.not.i.not, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2C_3all5checkRB1y_NCNvMsi_B1A_NtB1A_21VectorStructPersisted8is_empty0E0INtNtNtB2K_3ops12control_flow11ControlFlowuEEB1E_.exit ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs1cB7FFWPEsq_9validator6traitsRNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedNtB2_8Validate8validateBG_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.b = load i64, ptr %i.a, align 8, !range !15, !alias.scope !393, !noundef !5 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775807
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808
  %i.e = icmp slt i64 %i.b, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 1
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !alias.scope !392
  br label %_RNvXss_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15VectorPersistedNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvXs4_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVectorNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  br label %_RNvXss_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15VectorPersistedNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !393, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !393, !noundef !5
  tail call void @_RINvNtCslmvYCXbQjWR_6common10validation21validate_multi_vectorfECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.j), !noalias !393
  br label %_RNvXss_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15VectorPersistedNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate.exit

_RNvXss_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15VectorPersistedNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCs5QaNqjAn6vc_5shard6update6points4syncNtNtNtB8_10operations9point_ops20PointStructPersistedNtB2_11PointToSync11is_equal_to(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_20PointStructPersisted11is_equal_to(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs5QaNqjAn6vc_5shard6update6points4syncNtNtNtB8_10operations9point_ops20PointStructPersistedNtB2_11PointToSync15retrieve_stored(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(328) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 384307168202282326) %4, ptr noundef nonnull align 8 %5, ptr noundef nonnull %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.b, align 8
  store i64 2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.d(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6, ptr noundef nonnull align 8 %5, ptr noundef nonnull %6, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11WithPayloadECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11WithPayloadECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs5QaNqjAn6vc_5shard6update6points6upsertNtNtNtB8_10operations9point_ops20PointStructPersistedNtB2_13PointToUpsert11upsert_into(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 9)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2, i64 noundef %3, ptr noundef nonnull align 8 %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [224 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [96 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %2, align 8, !nonnull !5, !align !9, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !16, !invariant.load !5
  %i.k = add nsw i64 %i.j, -1
  %i.l = and i64 %i.k, -8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_20PointStructPersisted11get_vectors(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !nonnull !5
  call void %i.q(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.e, ptr noundef nonnull %i.n, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(224) %i.c, ptr noundef nonnull align 8 %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = load i64, ptr %i.e, align 8, !range !17, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.r, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i8, ptr %i.s, align 8               ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.524.0..sroa_idx, i64 87, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.r, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.t, ptr %.sroa.426.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !7, !noundef !5
  %.not37 = icmp eq i64 %i.v, -1
  %. = select i1 %.not37, ptr null, ptr %i.u
  call void @_RNvNtNtNtCs5QaNqjAn6vc_5shard6update6points6upsert25set_full_or_clear_payload(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %., ptr noundef nonnull align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load i64, ptr %i.b, align 8, !range !17, !noundef !5 ; 2 uses
  %.not38 = icmp eq i64 %i.w, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load i8, ptr %i.x, align 8               ; 2 uses
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.536.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.533.0..sroa_idx, i64 87, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.w, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.y, ptr %.sroa.435.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = and i8 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs5QaNqjAn6vc_5shard6update6points6upsertNtNtNtB8_10operations9point_ops20PointStructPersistedNtB2_13PointToUpsert11write_moved(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(224) %2, ptr noalias nofree noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [224 x i8], align 8               ; 5 uses
  tail call void @_RNvMsd_Csct6HaUIs3yu_8smallvecINtB5_8SmallVecATNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBN_3vec3VechEEj1_E8truncateCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsc_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_20PointStructPersisted11get_vectors(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(224) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(224) %i.b, i64 224, i1 false)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(224) %i.b, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !7, !noundef !5
end_hunk_1
