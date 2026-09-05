Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.001?download=true
inline.NumInlined: 26037
inline.NumDeleted: 14227
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3U_4SyncEL_EENtNtNtNtB2f_7runtime4task5error9JoinErrorEECsl8OoimOLbh_6qdrant:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !48, !invariant.load !40, !noalias !2015 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3Q_4SyncEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !49, !invariant.load !40, !noalias !2015
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #15, !noalias !2015
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3Q_4SyncEL_EEECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !48, !invariant.load !40, !noalias !2015 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !49, !invariant.load !40, !noalias !2015
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #15, !noalias !2015
  br label %common.resume

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.y, %bb.p ], [ %i.y, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.p, align 8, !noundef !40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.q, align 8            ; 6 uses
  %i.r = icmp eq ptr %.val, null
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3Q_4SyncEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.s = load ptr, ptr %.val1, align 8, !invariant.load !40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.s(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !48, !invariant.load !40 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3Q_4SyncEL_EEECsl8OoimOLbh_6qdrant.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !49, !invariant.load !40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3Q_4SyncEL_EEECsl8OoimOLbh_6qdrant.exit

bb.o:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !48, !invariant.load !40 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !49, !invariant.load !40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #15
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3Q_4SyncEL_EEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.g, %bb.f, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !59, !noundef !40
  switch i64 %i.a, label %bb.b [
    i64 -2, label %bb.d
    i64 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8, !noundef !40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8            ; 6 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !48, !invariant.load !40 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !49, !invariant.load !40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !48, !invariant.load !40 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit4.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !49, !invariant.load !40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #15
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit4.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit4.i.i.i.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !range !62, !noundef !40
  switch i64 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.preheader [
    i64 -3, label %bb.k
    i64 -2, label %bb.j
    i64 -1, label %bb.g
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.1 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.1: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.1 unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.1: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.2 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.1
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.preheader: ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.preheader
  %.lcssa20 = phi ptr [ %i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.preheader ], [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ], [ %i.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.1 ]
  %.lcssa = phi i64 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.preheader ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ], [ 3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.1 ]
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.lcssa20)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.preheader
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.g = add i64 %.sroa.0.1.i.i.i.i.i.i.i17, 1    ; 2 uses
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %common.resume, label %.lr.ph

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i
  %.lcssa18 = phi i64 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.1 ], [ 3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.2 ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.e, %bb.b
  %i.j = phi i64 [ %.lcssa18, %bb.e ], [ %.lcssa, %bb.b ] ; 2 uses
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = icmp eq i64 %i.j, 3
  br i1 %i.k, label %common.resume, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i.i.i.i, %bb.d
  %.sroa.0.1.i.i.i.i.i.i.i17 = phi i64 [ %i.g, %bb.d ], [ %i.j, %.body.i.i.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.sroa.0.1.i.i.i.i.i.i.i17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #14
          to label %bb.d unwind label %bb.f

common.resume:                                    ; preds = %bb.d, %.body.i.i.i.i.i.i.i, %bb.p, %bb.q, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.p ], [ %i.o, %bb.h ], [ %i.aa, %bb.q ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtB7_6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.r, align 8, !noundef !40 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.s, align 8            ; 6 uses
  %i.t = icmp eq ptr %.val, null
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.u = load ptr, ptr %.val1, align 8, !invariant.load !40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.u(ptr noundef nonnull %.val)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !48, !invariant.load !40 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !49, !invariant.load !40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !48, !invariant.load !40 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !49, !invariant.load !40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #15
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs607s0NAIaWN_7segment5types9SizeStatsNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.2, %bb.o, %bb.n, %bb.k, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringjEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_NtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !40
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2020)
  %i.e = load i32, ptr %i.d, align 8, !range !2021, !alias.scope !2020, !noundef !40
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val.i = load i32, ptr %i.g, align 4, !range !47, !alias.scope !2020, !noundef !40
  %i.h = tail call noundef i32 @close(i32 noundef %.val.i) #15, !noalias !2020 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.i, align 8, !alias.scope !2020, !nonnull !40, !noundef !40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2020
  %i.j = ptrtoint ptr %.val1.i to i64             ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i
    i64 1, label %bb.f
  ], !prof !60

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val1.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !2022, !noalias !2020
  store i8 3, ptr %i.a, align 8, !alias.scope !2022, !noalias !2020
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !2020
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2020
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.d, align 8, !noundef !40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.q, align 8            ; 6 uses
  %i.r = icmp eq ptr %.val, null
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.s = load ptr, ptr %.val1, align 8, !invariant.load !40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.s(ptr noundef nonnull %.val)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !48, !invariant.load !40 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !49, !invariant.load !40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #15
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !48, !invariant.load !40 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant.exit4.i.i.i.i, label %bb.m

end_hunk_0
