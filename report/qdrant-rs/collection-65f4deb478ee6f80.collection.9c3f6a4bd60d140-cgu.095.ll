Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.095?download=true
inline.NumInlined: 491
inline.NumDeleted: 279
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@1 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @0, [24 x i8] zeroinitializer }>, align 8
@_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@2 = private unnamed_addr constant [32 x i8] c"segment::types::PayloadIndexInfo", align 1
@3 = private unnamed_addr constant [48 x i8] c"collection::telemetry::ShardCleanStatusTelemetry", align 1
@4 = private unnamed_addr constant [64 x i8] c"collection::shards::replica_set::replica_set_state::ReplicaState", align 1
@5 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsPYQCUnoTxQ_10collection, align 8
@6 = private unnamed_addr constant [10 x i8] c"\07Map_of_\C0\00", align 1
@7 = private unnamed_addr constant [9 x i8] c"\04Map<\C0\01>\00", align 1
@8 = private unnamed_addr constant [4 x i8] c"uint", align 1

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterEj1_EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !30, !noundef !8 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = icmp eq i64 %i.a, 0
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.c = load i8, ptr %2, align 1, !alias.scope !31
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %i.c, -1
  %or.cond.i.i.i.i = select i1 %1, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit.i.i

bb.c:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %4) #15
          to label %common.resume.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %5, align 8, !range !9, !alias.scope !32, !noundef !8
  %i.f = icmp eq i64 %i.e, -2
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterEEB1J_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsPYQCUnoTxQ_10collection9hash_ring8HashRingmEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %5)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterEEB1J_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsPYQCUnoTxQ_10collection9hash_ring8HashRingmEEBG_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.h) #15
          to label %common.resume.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume.i.i:                                ; preds = %bb.f, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterEEB1J_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit.i.i, %bb.e
  %.sink1.i.i.i = phi i64 [ 80, %bb.e ], [ 8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsPYQCUnoTxQ_10collection.exit.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 %.sink1.i.i.i
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsPYQCUnoTxQ_10collection9hash_ring8HashRingmEEBG_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.k)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueATINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEj1_ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !alias.scope !39, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEECsPYQCUnoTxQ_10collection.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #15
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %.body.i.i
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.g:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs54nuPOFLmP7_8hashring8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEINtNtB4_4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEEECsPYQCUnoTxQ_10collection.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs54nuPOFLmP7_8hashring8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEINtNtB4_4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEEEECsPYQCUnoTxQ_10collection.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEEEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEEEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEEEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs54nuPOFLmP7_8hashring4NodeINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscr48XpBcNGU_8schemars6schema11SingleOrVecNtB10_12InstanceTypeEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !8 ; 2 uses
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscr48XpBcNGU_8schemars6schema11SingleOrVecNtBE_12InstanceTypeEECsPYQCUnoTxQ_10collection.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscr48XpBcNGU_8schemars6schema11SingleOrVecNtBE_12InstanceTypeEECsPYQCUnoTxQ_10collection.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCscr48XpBcNGU_8schemars6schema12InstanceTypeEECsPYQCUnoTxQ_10collection.exit.i, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.c = icmp eq i64 %i.a, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !42, !nonnull !8, !noundef !8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 1, i64 noundef 1) #17, !noalias !42
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscr48XpBcNGU_8schemars6schema11SingleOrVecNtBE_12InstanceTypeEECsPYQCUnoTxQ_10collection.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCscr48XpBcNGU_8schemars6schema12InstanceTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCscr48XpBcNGU_8schemars6schema12InstanceTypeEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCscr48XpBcNGU_8schemars6schema12InstanceTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCscr48XpBcNGU_8schemars6schema12InstanceTypeEECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCscr48XpBcNGU_8schemars6schema12InstanceTypeEECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCscr48XpBcNGU_8schemars6schema12InstanceTypeEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCscr48XpBcNGU_8schemars6schema12InstanceTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCscr48XpBcNGU_8schemars6schema11SingleOrVecNtBE_12InstanceTypeEECsPYQCUnoTxQ_10collection.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECsPYQCUnoTxQ_10collection.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECsPYQCUnoTxQ_10collection.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCscr48XpBcNGU_8schemars6schema6SchemaEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCscr48XpBcNGU_8schemars6schema6SchemaEECsPYQCUnoTxQ_10collection.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCscr48XpBcNGU_8schemars6schema6SchemaENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_0
