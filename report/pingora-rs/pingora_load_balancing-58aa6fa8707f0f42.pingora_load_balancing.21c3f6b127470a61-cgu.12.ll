Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_load_balancing-58aa6fa8707f0f42.pingora_load_balancing.21c3f6b127470a61-cgu.12?download=true
inline.NumInlined: 270
inline.NumDeleted: 149
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http8response5PartsECs2TJrahNLnPN_22pingora_load_balancing:bb.a
bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.i

bb.h:                                             ; preds = %.body.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.k, %bb.f ], [ %.pn.i, %.body.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1 = load ptr, ptr %i.o, align 8, !align !18, !noundef !9
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs2TJrahNLnPN_22pingora_load_balancing(ptr %.val1) #25
          to label %common.resume unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.p, align 8, !align !18, !noundef !9 ; 4 uses
  %i.q = icmp eq ptr %.val, null
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs2TJrahNLnPN_22pingora_load_balancing.exit
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i unwind label %bb.k

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.k ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #27
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapECs2TJrahNLnPN_22pingora_load_balancing.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i
  ret void

bb.l:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2TJrahNLnPN_22pingora_load_balancing.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2TJrahNLnPN_22pingora_load_balancing.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2TJrahNLnPN_22pingora_load_balancing.exit
    i64 1, label %bb.c
  ], !prof !53

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !54
  store i8 3, ptr %i.a, align 8, !alias.scope !54
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2TJrahNLnPN_22pingora_load_balancing.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error9JoinErrorECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.b, align 8            ; 6 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error4ReprECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !19, !invariant.load !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error4ReprECs2TJrahNLnPN_22pingora_load_balancing.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !20, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, 536870913) %i.i) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error4ReprECs2TJrahNLnPN_22pingora_load_balancing.exit

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !19, !invariant.load !9 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !20, !invariant.load !9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, 536870913) %i.o) #27
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing.exit5.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.e
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5error4ReprECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.a, %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskeugdADtBsi_12pingora_core10connectors2l414bind_to_randomNtNtNtB6_9upstreams4peer9BasicPeerECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 4 captures(none) dereferenceable(40) initializes((0, 39)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(544) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef range(i64 0, 288230376151711744) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 4                ; 4 uses
  %.sroa.0 = alloca [32 x i8], align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.c = load i16, ptr %i.b, align 8, !range !57, !noundef !9 ; 3 uses
  %.not = icmp eq i16 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.e = trunc nuw i16 %i.c to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 258
  %6 = load i32, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 262
  %i.h = load i8, ptr %i.g, align 2, !range !58, !noundef !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %i.c, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  %.sroa.14.sroa.0.0.insert.insert = select i1 %i.e, i32 %6, i32 0
  store i32 %.sroa.14.sroa.0.0.insert.insert, ptr %.sroa.14.0..sroa_idx, align 2
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.j = load i32, ptr %i.i, align 8, !range !59, !noundef !9
  %i.k = trunc nuw i32 %i.j to i1
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.m = load i16, ptr %i.l, align 4, !range !60, !noundef !9
  %i.n = trunc nuw i16 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNvNtNtCskeugdADtBsi_12pingora_core10connectors2l414bind_to_random11bind_to_ips(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvNvNtNtCskeugdADtBsi_12pingora_core10connectors2l414bind_to_random11bind_to_ips(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = load i16, ptr %i.a, align 4, !range !57, !noundef !9
  %.not32 = icmp eq i16 %i.o, 2
  br i1 %.not32, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.c, %bb.i, %bb.g
  %.sroa.8.1 = phi i16 [ 2, %bb.g ], [ 0, %bb.i ], [ 2, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx15, align 4
  %.sroa.14.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i32 0, ptr %.sroa.14.0..sroa_idx18, align 2
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.h, %bb.b
  %.sink = phi i8 [ 0, %bb.h ], [ %i.h, %bb.b ]
  %.sroa.17.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 %.sink, ptr %.sroa.17.0..sroa_idx20, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB14_B2a_EE9from_iterINtNtNtB34_8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set4IterB2a_ENCNvXNtNtB2c_9selection10consistentNtB5P_13KetamaHashingNtB5R_16BackendSelection17build_with_configs_0EEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @19) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  invoke void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_B1V_EE6extendINtNtNtB3B_8adapters3map3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set4IterB1V_ENCNvXNtNtB1X_9selection10consistentNtB6b_13KetamaHashingNtB6d_16BackendSelection17build_with_configs_0EEB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB2D_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46socket10SocketAddrNtCs2TJrahNLnPN_22pingora_load_balancing7BackendEEB2D_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2C_10connection14ConnectionMetaEEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3Z_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECs2TJrahNLnPN_22pingora_load_balancing(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2G_10connection14ConnectionMetaEEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1A_4iter8adapters3map3MapINtNtNtB1A_3ops5range5RangejENCINvBX_15allocate_bucketB1v_E0EE9from_iterCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtCse0v0U5LqnG1_12thread_local5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtCskD7i0qFYELX_3lru8LruCachelINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2q_10connection14ConnectionMetaEEEEE16into_boxed_sliceCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtNtCskeugdADtBsi_12pingora_core9upstreams4peer9BasicPeerNtB5_4Peer10matches_fdlECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(544) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = tail call noundef zeroext i1 @_RINvXs_NtCskeugdADtBsi_12pingora_core9protocolsNtNtNtB5_2l46socket10SocketAddrNtB5_14ConnFdReusable14check_fd_matchlECs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(120) %i.a, i32 noundef %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs9_Cs6SaDaKcgSi6_8arc_swapINtB5_10ArcSwapAnyINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check11HealthInnerEE4swapB1m_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = atomicrmw xchg ptr %0, ptr %i.a seq_cst, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs3_NtNtCs6SaDaKcgSi6_8arc_swap8strategy6hybridINtB5_14HybridStrategyNtB5_13DefaultConfigEINtNtB7_6sealed13InnerStrategyINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs2TJrahNLnPN_22pingora_load_balancing12health_check11HealthInnerEE16wait_for_readersB2z_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, ptr noundef %i.b, ptr noundef nonnull align 8 %0)
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -16
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCs2TJrahNLnPN_22pingora_load_balancing7BackendNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1608) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1608, i64 noundef range(i64 1, -9223372036854775807) 8) #27 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1608) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringINtNtB6_3vec3VechEEE13new_uninit_inCs2TJrahNLnPN_22pingora_load_balancing() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 8) #27 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtCs2TJrahNLnPN_22pingora_load_balancing7BackendNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1r_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(1512) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1512, i64 noundef range(i64 1, -9223372036854775807) 8) #27 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1512) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringINtNtB6_3vec3VechEEE13new_uninit_inCs2TJrahNLnPN_22pingora_load_balancing() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, -9223372036854775807) 8) #27 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdIBx_DNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1E_6marker4SendNtB2X_4SyncEL_EINtNtB1E_4hash18BuildHasherDefaultNtB2f_8IdHasherEEE13new_uninit_inCs2TJrahNLnPN_22pingora_load_balancing() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #27 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

end_hunk_0
