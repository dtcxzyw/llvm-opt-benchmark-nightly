Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.005?download=true
inline.NumInlined: 10893
inline.NumDeleted: 3937
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common9inference16infer_processingNtB4_18BatchAccumInferred12from_objects0Ba_:bb.a
          to label %.body66 unwind label %bb.jj

bb.jj:                                            ; preds = %.body.i.i63
  %i.xt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference8api_keys16InferenceApiKeysEBJ_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i65, %bb.je
  %i.xu = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.xu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6params15InferenceParamsEBJ_.exit unwind label %bb.jk

.body66:                                          ; preds = %bb.jk, %.body.i.i63, %bb.jp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service16InferenceServiceEEB1h_.exit45
  %.pn35 = phi { ptr, i32 } [ %.pn33, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service16InferenceServiceEEB1h_.exit45 ], [ %.pn33, %bb.jp ], [ %i.xz, %bb.jk ], [ %eh.lpad-body.i.i, %.body.i.i63 ] ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 1546
  store i8 0, ptr %i.xv, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 1547
  %i.xx = load i8, ptr %i.xw, align 1, !range !57, !noundef !20
  %i.xy = trunc nuw i8 %i.xx to i1
  br i1 %i.xy, label %bb.jq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEEB1D_.exit71

bb.jk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference8api_keys16InferenceApiKeysEBJ_.exit.i
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %.body66

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEEB1D_.exit: ; preds = %bb.jl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6params15InferenceParamsEBJ_.exit
  store i8 0, ptr %i.xk, align 1
  br label %bb.im

bb.jl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6params15InferenceParamsEBJ_.exit
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDatauEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ya)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEEB1D_.exit unwind label %bb.jm

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEEB1D_.exit71: ; preds = %bb.jq, %bb.jm, %.body66
  %.pn37 = phi { ptr, i32 } [ %i.yc, %bb.jm ], [ %.pn35, %.body66 ], [ %.pn35, %bb.jq ]
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 1547
  store i8 0, ptr %i.yb, align 1
  store i8 2, ptr %i.bg, align 1
  resume { ptr, i32 } %.pn37

bb.jm:                                            ; preds = %bb.jl
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEEB1D_.exit71

bb.jn:                                            ; preds = %bb.jc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference15inference_input14InferenceInputEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #22
          to label %bb.o unwind label %bb.ja

bb.jo:                                            ; preds = %bb.o
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.yd) #22
          to label %.body61 unwind label %bb.ja

bb.jp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service16InferenceServiceEEB1h_.exit45
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6params15InferenceParamsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.bf) #22
          to label %.body66 unwind label %bb.ja

bb.jq:                                            ; preds = %.body66
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDatauEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ye)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEEB1D_.exit71 unwind label %bb.ja
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common9inference16infer_processingNtB4_18BatchAccumInferred16from_batch_accum0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1608 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !26, !noundef !20
  switch i8 %i.f, label %default.unreachable14 [
    i8 0, label %bb.b
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

default.unreachable14:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1609
  %i.i = load i8, ptr %i.h, align 1, !range !57, !noundef !20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !20, !align !22, !noundef !20 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13955)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13956
  %i.l = load i64, ptr %i.k, align 8, !range !31, !alias.scope !13957, !noundef !20
  %.not.i.i = icmp eq i64 %i.l, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
          to label %.noexc unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8, !noalias !13956
  br label %.noexc

.noexc:                                           ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13956
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBK_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
          to label %bb.h unwind label %bb.e, !noalias !13958

bb.e:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.j unwind label %bb.f, !noalias !13958

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !13958
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13956
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.s = load i32, ptr %i.r, align 8, !range !87, !alias.scope !13954, !noundef !20 ; 2 uses
  %.not.i = icmp eq i32 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !13954
  %.sroa.0.0.i = select i1 %.not.i, i64 undef, i64 %i.u
  %.sroa.08.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.sroa.0.0.i, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8
  %.sroa.08.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 %i.s, ptr %.sroa.08.sroa.8.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1544
  store i8 %i.i, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1545
  store i8 0, ptr %.sroa.810.0..sroa_idx, align 1
  br label %bb.o

bb.i:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.n, %bb.e ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDatauEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.p
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.l:                                             ; preds = %bb.s, %bb.p, %bb.i
  %.pn5 = phi { ptr, i32 } [ %i.z, %bb.s ], [ %i.w, %bb.p ], [ %eh.lpad-body, %bb.i ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn5

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #25
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #25
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.h
  invoke fastcc void @_RNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common9inference16infer_processingNtB4_18BatchAccumInferred12from_objects0Ba_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common9inference16infer_processingNtBG_18BatchAccumInferred12from_objects0EBM_(ptr noundef nonnull align 8 %1) #22
          to label %bb.l unwind label %bb.k

bb.q:                                             ; preds = %bb.o
  %i.x = load i64, ptr %0, align 8, !range !28, !noundef !20
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %3, label %bb.r

common.ret:                                       ; preds = %bb.r, %3
  %storemerge = phi i8 [ 3, %3 ], [ 1, %bb.r ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

3:                                                ; preds = %bb.q
  store i64 1, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsl8OoimOLbh_6qdrant6common9inference16infer_processingNtBG_18BatchAccumInferred12from_objects0EBM_(ptr noundef nonnull align 8 %1)
          to label %common.ret unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !26, !noundef !20
  switch i8 %i.b, label %default.unreachable23 [
    i8 0, label %.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable23:                            ; preds = %bb.d, %bb.a
  unreachable

.body17:                                          ; preds = %.body
  store i8 2, ptr %i.a, align 8
  resume { ptr, i32 } %eh.lpad-body

.thread:                                          ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !20, !align !22, !noundef !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %.sroa.822.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !26, !noalias !13961
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  switch i8 %.pre, label %default.unreachable23 [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.e:                                             ; preds = %.thread, %bb.d
  %i.i = phi ptr [ %i.f, %.thread ], [ %i.h, %bb.d ]
  %i.j = phi ptr [ %i.e, %.thread ], [ %i.g, %bb.d ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !13961, !nonnull !20, !align !22, !noundef !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !noalias !13961
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.715.0..sroa_idx.i, align 8, !noalias !13961
  %i.m = getelementptr i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !13961
  %.sroa.917.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1, ptr %.sroa.917.0..sroa_idx.i, align 8, !noalias !13961
  %.sroa.1018.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %.sroa.1018.0..sroa_idx.i, align 8, !noalias !13961
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !13961
  br label %bb.h

.body.i:                                          ; preds = %bb.q, %bb.m, %bb.l, %bb.i
  %.pn9.i = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.r, %bb.i ], [ %i.af, %bb.q ], [ %i.t, %bb.m ]
  store i8 2, ptr %i.n, align 8, !noalias !13961
  br label %.body

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #25
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #25
          to label %.noexc11 unwind label %bb.t

.noexc11:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  %i.o = phi ptr [ %i.g, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = invoke noundef i8 @_RNvXs1_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.p) #22
          to label %.body.i unwind label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.s = icmp eq i8 %i.q, 2
  br i1 %i.s, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.p)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.u, align 8, !noalias !13961, !align !22, !noundef !20 ; 2 uses
  %i.v = icmp eq ptr %.val2.i.i, null
  br i1 %i.v, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.w, align 8, !noalias !13961
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !20, !noundef !20
  invoke void %i.y(ptr noundef %.val3.i.i)
          to label %.body.i unwind label %bb.p, !inline_history !4

bb.n:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.z, align 8, !noalias !13961, !align !22, !noundef !20 ; 2 uses
  %i.aa = icmp eq ptr %.val.i.i, null
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr i8, ptr %0, i64 32
  %.val1.i.i = load ptr, ptr %i.ab, align 8, !noalias !13961
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !20, !noundef !20
  invoke void %i.ad(ptr noundef %.val1.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.q, !inline_history !61

bb.p:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.q:                                             ; preds = %bb.r, %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.o, %bb.n
  %i.ag = trunc nuw i8 %i.q to i1
  br i1 %i.ag, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read00ECsl8OoimOLbh_6qdrant.exit

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #25
          to label %.noexc13.i unwind label %bb.q

.noexc13.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.t:                                             ; preds = %bb.g, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.t
  %i.aj = phi ptr [ %i.g, %bb.t ], [ %i.o, %.body.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.t ], [ %.pn9.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read00ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aj) #22
          to label %.body17 unwind label %bb.v

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read00ECsl8OoimOLbh_6qdrant.exit, %bb.u
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read00ECsl8OoimOLbh_6qdrant.exit ], [ 3, %bb.u ]
  %common.ret.op = phi { ptr, ptr } [ %i.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read00ECsl8OoimOLbh_6qdrant.exit ], [ { ptr null, ptr undef }, %bb.u ]
  store i8 %storemerge, ptr %i.a, align 8
  ret { ptr, ptr } %common.ret.op

bb.u:                                             ; preds = %bb.j
  store i8 3, ptr %i.n, align 8, !noalias !13961
  br label %common.ret

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read00ECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i
  %i.ak = load ptr, ptr %i.o, align 8, !noalias !13961, !nonnull !20, !align !22, !noundef !20 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i8 1, ptr %i.n, align 8, !noalias !13961
end_hunk_0
