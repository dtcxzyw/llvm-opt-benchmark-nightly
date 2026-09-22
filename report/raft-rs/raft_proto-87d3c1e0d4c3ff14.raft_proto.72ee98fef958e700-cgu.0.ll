Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.0?download=true
inline.NumInlined: 712
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEBH_:bb.a
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %.body8 unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body8 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit10 unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.body8:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #21
          to label %.body12 unwind label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit10: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit10
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body12 unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit10
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit14 unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.body12:                                          ; preds = %bb.m, %bb.j, %.body8
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body8 ], [ %i.n, %bb.m ], [ %i.k, %bb.j ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #21
          to label %.body16 unwind label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body12

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit14: ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit14
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body16 unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit14
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit18 unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.body16:                                          ; preds = %bb.q, %bb.n, %.body12
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body12 ], [ %i.s, %bb.q ], [ %i.p, %bb.n ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val6 = load ptr, ptr %i.r, align 8, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto(ptr %.val6) #21
          to label %common.resume unwind label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body16

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit18: ; preds = %bb.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.t, align 8, !align !6, !noundef !7 ; 4 uses
  %i.u = icmp eq ptr %.val, null
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit18
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i unwind label %bb.s

common.resume:                                    ; preds = %.body16, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.s ], [ %.pn4, %.body16 ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #22
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %bb.r
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit18, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  ret void

bb.t:                                             ; preds = %.body16, %.body12, %.body8, %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateEBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !align !6, !noundef !7 ; 4 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #22
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.16.val, ptr nofree readonly captures(none) %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.a = load ptr, ptr %.24.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  invoke void %i.a(ptr noundef nonnull %.16.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.24.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc8AccessorECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.24.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !113, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc8AccessorECs9RMo4C3Dvu6_10raft_proto.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.24.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v118FieldAccessorTraitEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit4.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.24.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !113, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v118FieldAccessorTraitEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v118FieldAccessorTraitEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit4.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc8AccessorECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums14EnumDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums19EnumValueDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums19EnumValueDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums19EnumValueDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums19EnumValueDescriptorEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums19EnumValueDescriptorEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit2 unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %eh.lpad-body, %.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTljEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapljEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums19EnumValueDescriptorEECs9RMo4C3Dvu6_10raft_proto.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums19EnumValueDescriptorEECs9RMo4C3Dvu6_10raft_proto.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTljEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
  ret void

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit, %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapljEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5field15FieldDescriptorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %.body6 unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5field15FieldDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9RMo4C3Dvu6_10raft_proto.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5field15FieldDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body6 unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9RMo4C3Dvu6_10raft_proto.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5field15FieldDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5field15FieldDescriptorEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

.body6:                                           ; preds = %bb.h, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.h ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5field15FieldDescriptorEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit8 unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %.body6, %bb.i
  %.pn2 = phi { ptr, i32 } [ %i.l, %bb.i ], [ %.pn, %.body6 ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit9 unwind label %bb.k

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5field15FieldDescriptorEECs9RMo4C3Dvu6_10raft_proto.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit8: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect5field15FieldDescriptorEECs9RMo4C3Dvu6_10raft_proto.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit10 unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit9: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit, %bb.j
  %.pn4 = phi { ptr, i32 } [ %i.o, %bb.j ], [ %.pn2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmjEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.k

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit8
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit9

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit10: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
  ret void

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit, %.body6, %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmjEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit9
  resume { ptr, i32 } %.pn4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtB17_10descriptor19FileDescriptorProtoE3getNCNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb21file_descriptor_proto0E0E0B2I_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [352 x i8], align 8               ; 6 uses
  %i.c = alloca [352 x i8], align 8               ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.j, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.e, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  call void @_RNvYNtNtCslpwiOMB70Kp_8protobuf10descriptor19FileDescriptorProtoNtNtB6_7message7Message16parse_from_bytesCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull sret([352 x i8]) align 8 captures(none) dereferenceable(352) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 10900), !noalias !123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.f = load i64, ptr %i.b, align 8, !range !126, !alias.scope !125, !noalias !127, !noundef !7
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %_RNCNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb21file_descriptor_proto0B7_.exit.i, !prof !12

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !127
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #23
          to label %bb.e unwind label %bb.d, !noalias !128

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf5error13ProtobufErrorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #21
          to label %common.resume.i unwind label %bb.f, !noalias !128

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !128
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.m, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

_RNCNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb21file_descriptor_proto0B7_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(352) %i.b, i64 352, i1 false), !alias.scope !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !130
  %i.k = tail call noundef align 8 dereferenceable_or_null(352) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 352, i64 noundef 8) #22, !noalias !130 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtB9_10descriptor19FileDescriptorProtoE3getNCNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb21file_descriptor_proto0E0B1I_.exit, !prof !12

bb.g:                                             ; preds = %_RNCNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb21file_descriptor_proto0B7_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 352) #23
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf10descriptor19FileDescriptorProtoECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.c) #21
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtB9_10descriptor19FileDescriptorProtoE3getNCNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb21file_descriptor_proto0E0B1I_.exit: ; preds = %_RNCNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb21file_descriptor_proto0B7_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.k, ptr noundef nonnull align 8 dereferenceable(352) %i.c, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.k, ptr %.val, align 8
  ret void

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect5enums14EnumDescriptorE3getNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2I_14ConfChangeTypeNtNtB17_5enums12ProtobufEnum22enum_descriptor_static0E0E0B2M_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !140
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !140
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !141
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB8_14ConfChangeTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bc_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !141
  store ptr %i.c, ptr %i.b, align 8, !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  store ptr %i.b, ptr %i.a, align 8, !noalias !141
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !141
  br label %_RNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB8_14ConfChangeTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bc_.exit.i

_RNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB8_14ConfChangeTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bc_.exit.i: ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !140, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !140
  call void @_RINvMs0_NtNtCslpwiOMB70Kp_8protobuf7reflect5enumsNtB6_14EnumDescriptor11new_pb_nameNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb14ConfChangeTypeEB1p_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 14, ptr noundef nonnull align 8 %i.i), !noalias !139
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !142
  %i.j = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 128, i64 noundef 8) #22, !noalias !142 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect5enums14EnumDescriptorE3getNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1I_14ConfChangeTypeNtNtB9_5enums12ProtobufEnum22enum_descriptor_static0E0B1M_.exit, !prof !12

bb.d:                                             ; preds = %_RNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB8_14ConfChangeTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bc_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #23
          to label %.noexc.i unwind label %bb.e, !noalias !139

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums14EnumDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d) #21
          to label %bb.g unwind label %bb.f, !noalias !139

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !139
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect5enums14EnumDescriptorE3getNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1I_14ConfChangeTypeNtNtB9_5enums12ProtobufEnum22enum_descriptor_static0E0B1M_.exit: ; preds = %_RNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB8_14ConfChangeTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bc_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !139
  %i.n = load ptr, ptr %i.f, align 8, !alias.scope !139, !nonnull !7, !align !6, !noundef !7
  store ptr %i.j, ptr %i.n, align 8, !noalias !139
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect5enums14EnumDescriptorE3getNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2H_9EntryTypeNtNtB17_5enums12ProtobufEnum22enum_descriptor_static0E0E0B2L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !152
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !153
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9EntryTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bb_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !153
  store ptr %i.c, ptr %i.b, align 8, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !153
  store ptr %i.b, ptr %i.a, align 8, !noalias !153
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !153
  br label %_RNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9EntryTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bb_.exit.i

_RNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9EntryTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bb_.exit.i: ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !152, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !152
  call void @_RINvMs0_NtNtCslpwiOMB70Kp_8protobuf7reflect5enumsNtB6_14EnumDescriptor11new_pb_nameNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9EntryTypeEB1p_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 9, ptr noundef nonnull align 8 %i.i), !noalias !151
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !154
  %i.j = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 128, i64 noundef 8) #22, !noalias !154 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect5enums14EnumDescriptorE3getNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1H_9EntryTypeNtNtB9_5enums12ProtobufEnum22enum_descriptor_static0E0B1L_.exit, !prof !12

bb.d:                                             ; preds = %_RNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9EntryTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #23
          to label %.noexc.i unwind label %bb.e, !noalias !151

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect5enums14EnumDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d) #21
          to label %bb.g unwind label %bb.f, !noalias !151

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !151
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect5enums14EnumDescriptorE3getNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1H_9EntryTypeNtNtB9_5enums12ProtobufEnum22enum_descriptor_static0E0B1L_.exit: ; preds = %_RNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9EntryTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bb_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false), !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !151
  %i.n = load ptr, ptr %i.f, align 8, !alias.scope !151, !nonnull !7, !align !6, !noundef !7
  store ptr %i.j, ptr %i.n, align 8, !noalias !151
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect5enums14EnumDescriptorE3getNCNvXsU_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2H_11MessageTypeNtNtB17_5enums12ProtobufEnum22enum_descriptor_static0E0E0B2L_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !164
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !164
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !165
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RNCNvXsU_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_11MessageTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bb_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !165
  store ptr %i.c, ptr %i.b, align 8, !noalias !165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !165
  store ptr %i.b, ptr %i.a, align 8, !noalias !165
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !165
  br label %_RNCNvXsU_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_11MessageTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bb_.exit.i

_RNCNvXsU_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_11MessageTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bb_.exit.i: ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !164, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !164
  call void @_RINvMs0_NtNtCslpwiOMB70Kp_8protobuf7reflect5enumsNtB6_14EnumDescriptor11new_pb_nameNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb11MessageTypeEB1p_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 11, ptr noundef nonnull align 8 %i.i), !noalias !163
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !166
  %i.j = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 128, i64 noundef 8) #22, !noalias !166 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect5enums14EnumDescriptorE3getNCNvXsU_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1H_11MessageTypeNtNtB9_5enums12ProtobufEnum22enum_descriptor_static0E0B1L_.exit, !prof !12

bb.d:                                             ; preds = %_RNCNvXsU_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_11MessageTypeNtNtCslpwiOMB70Kp_8protobuf5enums12ProtobufEnum22enum_descriptor_static0Bb_.exit.i
end_hunk_0
begin_hunk_1_@_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_5EntryNtNtB17_7message7Message17descriptor_static0E0E0B2Q_:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !214
  unreachable

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.as = load ptr, ptr %i.o, align 8, !alias.scope !212, !noalias !214, !nonnull !7, !noundef !7
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !203
  %i.au = add i64 %i.al, 1
  store i64 %i.au, ptr %i.p, align 8, !alias.scope !212, !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !203
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtB8_5types27ProtobufTypeCarllercheBytesEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 4, ptr noundef nonnull @_RNvYNCNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s4_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s5_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.s unwind label %bb.c, !noalias !203

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.av = load i64, ptr %i.p, align 8, !alias.scope !216, !noalias !218, !noundef !7 ; 3 uses
  %i.aw = load i64, ptr %i.k, align 8, !range !11, !alias.scope !216, !noalias !218, !noundef !7
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.w unwind label %bb.u, !noalias !218

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val.i14.i.i = load ptr, ptr %i.az, align 8, !alias.scope !217, !noalias !219
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i15.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !217, !noalias !219, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i14.i.i, ptr nonnull %.val2.i15.i.i) #21
          to label %.body6.i.i unwind label %bb.v, !noalias !218

bb.v:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !218
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.bc = load ptr, ptr %i.o, align 8, !alias.scope !216, !noalias !218, !nonnull !7, !noundef !7
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !203
  %i.be = add i64 %i.av, 1
  store i64 %i.be, ptr %i.p, align 8, !alias.scope !216, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !203
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtB8_5types27ProtobufTypeCarllercheBytesEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 7, ptr noundef nonnull @_RNvYNCNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s6_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s7_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.x unwind label %bb.c, !noalias !203

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.bf = load i64, ptr %i.p, align 8, !alias.scope !220, !noalias !222, !noundef !7 ; 3 uses
  %i.bg = load i64, ptr %i.k, align 8, !range !11, !alias.scope !220, !noalias !222, !noundef !7
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ab unwind label %bb.z, !noalias !222

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i19.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !221, !noalias !223
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2.i20.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !221, !noalias !223, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i19.i.i, ptr nonnull %.val2.i20.i.i) #21
          to label %.body6.i.i unwind label %bb.aa, !noalias !222

bb.aa:                                            ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !222
  unreachable

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.bm = load ptr, ptr %i.o, align 8, !alias.scope !220, !noalias !222, !nonnull !7, !noundef !7
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !203
  %i.bo = add i64 %i.bf, 1
  store i64 %i.bo, ptr %i.p, align 8, !alias.scope !220, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !203
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryNtNtB8_5types16ProtobufTypeBoolEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 8, ptr noundef nonnull @_RNvYNCNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s8_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s9_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.ac unwind label %bb.c, !noalias !203

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.bp = load i64, ptr %i.p, align 8, !alias.scope !224, !noalias !226, !noundef !7 ; 3 uses
  %i.bq = load i64, ptr %i.k, align 8, !range !11, !alias.scope !224, !noalias !226, !noundef !7
  %i.br = icmp eq i64 %i.bp, %i.bq
  br i1 %i.br, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ag unwind label %bb.ae, !noalias !226

bb.ae:                                            ; preds = %bb.ad
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i24.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !225, !noalias !227
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val2.i25.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !225, !noalias !227, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i24.i.i, ptr nonnull %.val2.i25.i.i) #21
          to label %.body6.i.i unwind label %bb.af, !noalias !226

bb.af:                                            ; preds = %bb.ae
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !226
  unreachable

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.bw = load ptr, ptr %i.o, align 8, !alias.scope !224, !noalias !226, !nonnull !7, !noundef !7
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !203
  %i.by = add i64 %i.bp, 1
  store i64 %i.by, ptr %i.p, align 8, !alias.scope !224, !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !203
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !203
  %i.bz = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !228
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_RNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i, label %bb.ah, !prof !13

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !228
  store ptr %i.c, ptr %i.b, align 8, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !228
  store ptr %i.b, ptr %i.a, align 8, !noalias !228
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
          to label %.noexc.i.i unwind label %bb.ai, !noalias !203

.noexc.i.i:                                       ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !228
  br label %_RNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.aj, !noalias !203

bb.aj:                                            ; preds = %.body6.i.i, %bb.ai
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !203
  unreachable

common.resume.i:                                  ; preds = %bb.al, %.body6.i.i, %bb.ai
  %common.resume.op.i = phi { ptr, i32 } [ %i.cb, %bb.ai ], [ %eh.lpad-body.i.i, %.body6.i.i ], [ %i.cg, %bb.al ]
  resume { ptr, i32 } %common.resume.op.i

.body6.i.i:                                       ; preds = %bb.ae, %bb.z, %bb.u, %bb.p, %bb.k, %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bi, %bb.z ], [ %i.u, %bb.f ], [ %i.ae, %bb.k ], [ %i.ao, %bb.p ], [ %i.ay, %bb.u ], [ %i.q, %bb.c ], [ %i.bs, %bb.ae ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #21
          to label %common.resume.i unwind label %bb.aj, !noalias !203

_RNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i: ; preds = %.noexc.i.i, %bb.ag
  %i.cd = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !203, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !203
  call void @_RNvMs_NtNtCslpwiOMB70Kp_8protobuf7reflect7messageNtB4_17MessageDescriptor26new_non_generic_by_pb_name(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.cd, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !203
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !229
  %i.ce = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 216, i64 noundef 8) #22, !noalias !229 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.ak, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_5EntryNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit, !prof !12

bb.ak:                                            ; preds = %_RNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #23
          to label %.noexc.i unwind label %bb.al

.noexc.i:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.l) #21
          to label %common.resume.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_5EntryNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit: ; preds = %_RNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ce, ptr noundef nonnull align 8 dereferenceable(216) %i.l, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store ptr %i.ce, ptr %.val, align 8
  ret void

bb.an:                                            ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_16SnapshotMetadataNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [216 x i8], align 8               ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.j, align 8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.w, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.k, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !245
  store i64 0, ptr %i.h, align 8, !noalias !245
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !245
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  store i64 0, ptr %i.m, align 8, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !245
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v132make_singular_ptr_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataINtNtB8_5types19ProtobufTypeMessageNtB1k_9ConfStateEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 10, ptr noundef nonnull @_RNvYNCNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.d unwind label %bb.c, !noalias !245

bb.c:                                             ; preds = %bb.k, %._crit_edge19.i.i, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %._crit_edge19.i.i unwind label %bb.e, !noalias !248

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !247, !noalias !249
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !247, !noalias !249, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i.i.i, ptr nonnull %.val2.i.i.i) #21
          to label %.body6.i.i unwind label %bb.f, !noalias !248

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !248
  unreachable

._crit_edge19.i.i:                                ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.l, align 8, !alias.scope !246, !noalias !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.pre.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !245
  store i64 1, ptr %i.m, align 8, !alias.scope !246, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !245
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull @_RNvYNCNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.g unwind label %bb.c, !noalias !245

bb.g:                                             ; preds = %._crit_edge19.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.s = load i64, ptr %i.m, align 8, !alias.scope !250, !noalias !252, !noundef !7 ; 3 uses
  %i.t = load i64, ptr %i.h, align 8, !range !11, !alias.scope !250, !noalias !252, !noundef !7
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.k unwind label %bb.i, !noalias !252

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i4.i.i = load ptr, ptr %i.w, align 8, !alias.scope !251, !noalias !253
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2.i5.i.i = load ptr, ptr %i.x, align 8, !alias.scope !251, !noalias !253, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i4.i.i, ptr nonnull %.val2.i5.i.i) #21
          to label %.body6.i.i unwind label %bb.j, !noalias !252

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !252
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %i.l, align 8, !alias.scope !250, !noalias !252, !nonnull !7, !noundef !7
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !245
  %i.ab = add i64 %i.s, 1
  store i64 %i.ab, ptr %i.m, align 8, !alias.scope !250, !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !245
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4, ptr noundef nonnull @_RNvYNCNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.l unwind label %bb.c, !noalias !245

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.ac = load i64, ptr %i.m, align 8, !alias.scope !254, !noalias !256, !noundef !7 ; 3 uses
  %i.ad = load i64, ptr %i.h, align 8, !range !11, !alias.scope !254, !noalias !256, !noundef !7
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.p unwind label %bb.n, !noalias !256

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i9.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !255, !noalias !257
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val2.i10.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !255, !noalias !257, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i9.i.i, ptr nonnull %.val2.i10.i.i) #21
          to label %.body6.i.i unwind label %bb.o, !noalias !256

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !256
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.aj = load ptr, ptr %i.l, align 8, !alias.scope !254, !noalias !256, !nonnull !7, !noundef !7
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !245
  %i.al = add i64 %i.ac, 1
  store i64 %i.al, ptr %i.m, align 8, !alias.scope !254, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !245
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !245
  %i.am = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !258
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !258
  store ptr %i.c, ptr %i.b, align 8, !noalias !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  store ptr %i.b, ptr %i.a, align 8, !noalias !258
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
          to label %.noexc.i.i unwind label %bb.r, !noalias !245

.noexc.i.i:                                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !258
  br label %_RNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.s, !noalias !245

bb.s:                                             ; preds = %.body6.i.i, %bb.r
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !245
  unreachable

common.resume.i:                                  ; preds = %bb.u, %.body6.i.i, %bb.r
  %common.resume.op.i = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %eh.lpad-body.i.i, %.body6.i.i ], [ %i.at, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i

.body6.i.i:                                       ; preds = %bb.n, %bb.i, %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.o, %bb.e ], [ %i.n, %bb.c ], [ %i.af, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #21
          to label %common.resume.i unwind label %bb.s, !noalias !245

_RNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i: ; preds = %.noexc.i.i, %bb.p
  %i.aq = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !245, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !245
  call void @_RNvMs_NtNtCslpwiOMB70Kp_8protobuf7reflect7messageNtB4_17MessageDescriptor26new_non_generic_by_pb_name(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 16, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !245
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !259
  %i.ar = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 216, i64 noundef 8) #22, !noalias !259 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.t, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_16SnapshotMetadataNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit, !prof !12

bb.t:                                             ; preds = %_RNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #23
          to label %.noexc.i unwind label %bb.u

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.i) #21
          to label %common.resume.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_16SnapshotMetadataNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit: ; preds = %_RNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ar, ptr noundef nonnull align 8 dereferenceable(216) %i.i, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.ar, ptr %.val, align 8
  ret void

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_10ConfChangeNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  %i.j = alloca [216 x i8], align 8               ; 5 uses
  %i.k = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.k, align 8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.ab, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.l, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !278
  store i64 0, ptr %i.i, align 8, !noalias !278
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !278
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 8 uses
  store i64 0, ptr %i.n, align 8, !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !278
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeINtNtB8_5types16ProtobufTypeEnumNtB1e_14ConfChangeTypeEEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 11, ptr noundef nonnull @_RNvYNCNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.d unwind label %bb.c, !noalias !278

bb.c:                                             ; preds = %bb.p, %bb.k, %._crit_edge24.i.i, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %._crit_edge24.i.i unwind label %bb.e, !noalias !281

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !280, !noalias !282
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val2.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !280, !noalias !282, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i.i.i, ptr nonnull %.val2.i.i.i) #21
          to label %.body6.i.i unwind label %bb.f, !noalias !281

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !281
  unreachable

._crit_edge24.i.i:                                ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.m, align 8, !alias.scope !279, !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.pre.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !278
  store i64 1, ptr %i.n, align 8, !alias.scope !279, !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !278
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 7, ptr noundef nonnull @_RNvYNCNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.g unwind label %bb.c, !noalias !278

bb.g:                                             ; preds = %._crit_edge24.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.t = load i64, ptr %i.n, align 8, !alias.scope !283, !noalias !285, !noundef !7 ; 3 uses
  %i.u = load i64, ptr %i.i, align 8, !range !11, !alias.scope !283, !noalias !285, !noundef !7
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.k unwind label %bb.i, !noalias !285

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val.i4.i.i = load ptr, ptr %i.x, align 8, !alias.scope !284, !noalias !286
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i5.i.i = load ptr, ptr %i.y, align 8, !alias.scope !284, !noalias !286, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i4.i.i, ptr nonnull %.val2.i5.i.i) #21
          to label %.body6.i.i unwind label %bb.j, !noalias !285

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !285
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.aa = load ptr, ptr %i.m, align 8, !alias.scope !283, !noalias !285, !nonnull !7, !noundef !7
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !278
  %i.ac = add i64 %i.t, 1
  store i64 %i.ac, ptr %i.n, align 8, !alias.scope !283, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !278
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeNtNtB8_5types27ProtobufTypeCarllercheBytesEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 7, ptr noundef nonnull @_RNvYNCNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.l unwind label %bb.c, !noalias !278

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.ad = load i64, ptr %i.n, align 8, !alias.scope !287, !noalias !289, !noundef !7 ; 3 uses
  %i.ae = load i64, ptr %i.i, align 8, !range !11, !alias.scope !287, !noalias !289, !noundef !7
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.p unwind label %bb.n, !noalias !289

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i9.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !288, !noalias !290
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2.i10.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !288, !noalias !290, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i9.i.i, ptr nonnull %.val2.i10.i.i) #21
          to label %.body6.i.i unwind label %bb.o, !noalias !289

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !289
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.ak = load ptr, ptr %i.m, align 8, !alias.scope !287, !noalias !289, !nonnull !7, !noundef !7
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !278
  %i.am = add i64 %i.ad, 1
  store i64 %i.am, ptr %i.n, align 8, !alias.scope !287, !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !278
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 2, ptr noundef nonnull @_RNvYNCNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s4_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s5_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.q unwind label %bb.c, !noalias !278

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.an = load i64, ptr %i.n, align 8, !alias.scope !291, !noalias !293, !noundef !7 ; 3 uses
  %i.ao = load i64, ptr %i.i, align 8, !range !11, !alias.scope !291, !noalias !293, !noundef !7
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.u unwind label %bb.s, !noalias !293

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i14.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !292, !noalias !294
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val2.i15.i.i = load ptr, ptr %i.as, align 8, !alias.scope !292, !noalias !294, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i14.i.i, ptr nonnull %.val2.i15.i.i) #21
          to label %.body6.i.i unwind label %bb.t, !noalias !293

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !293
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.au = load ptr, ptr %i.m, align 8, !alias.scope !291, !noalias !293, !nonnull !7, !noundef !7
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !278
  %i.aw = add i64 %i.an, 1
  store i64 %i.aw, ptr %i.n, align 8, !alias.scope !291, !noalias !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !278
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !278
  %i.ax = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !295
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_RNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !295
  store ptr %i.c, ptr %i.b, align 8, !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !295
  store ptr %i.b, ptr %i.a, align 8, !noalias !295
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
          to label %.noexc.i.i unwind label %bb.w, !noalias !278

.noexc.i.i:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !295
  br label %_RNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i

bb.w:                                             ; preds = %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.x, !noalias !278

bb.x:                                             ; preds = %.body6.i.i, %bb.w
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !278
  unreachable

common.resume.i:                                  ; preds = %bb.z, %.body6.i.i, %bb.w
  %common.resume.op.i = phi { ptr, i32 } [ %i.az, %bb.w ], [ %eh.lpad-body.i.i, %.body6.i.i ], [ %i.be, %bb.z ]
  resume { ptr, i32 } %common.resume.op.i

.body6.i.i:                                       ; preds = %bb.s, %bb.n, %bb.i, %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.p, %bb.e ], [ %i.w, %bb.i ], [ %i.o, %bb.c ], [ %i.aq, %bb.s ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #21
          to label %common.resume.i unwind label %bb.x, !noalias !278

_RNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i: ; preds = %.noexc.i.i, %bb.u
  %i.bb = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !278, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !278
  call void @_RNvMs_NtNtCslpwiOMB70Kp_8protobuf7reflect7messageNtB4_17MessageDescriptor26new_non_generic_by_pb_name(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 10, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bb, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !278
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !296
  %i.bc = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 216, i64 noundef 8) #22, !noalias !296 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.y, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_10ConfChangeNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit, !prof !12

bb.y:                                             ; preds = %_RNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #23
          to label %.noexc.i unwind label %bb.z

.noexc.i:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.j) #21
          to label %common.resume.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_10ConfChangeNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit: ; preds = %_RNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_10ConfChangeNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bc, ptr noundef nonnull align 8 dereferenceable(216) %i.j, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.bc, ptr %.val, align 8
  ret void

bb.ab:                                            ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_16ConfChangeSingleNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [216 x i8], align 8               ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.i, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.r, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.j, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !309
  store i64 0, ptr %i.g, align 8, !noalias !309
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !noalias !309
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8, !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !309
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleINtNtB8_5types16ProtobufTypeEnumNtB1e_14ConfChangeTypeEEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 11, ptr noundef nonnull @_RNvYNCNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.d unwind label %bb.c, !noalias !309

bb.c:                                             ; preds = %._crit_edge14.i.i, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %._crit_edge14.i.i unwind label %bb.e, !noalias !312

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !311, !noalias !313
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !311, !noalias !313, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i.i.i, ptr nonnull %.val2.i.i.i) #21
          to label %.body6.i.i unwind label %bb.f, !noalias !312

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !312
  unreachable

._crit_edge14.i.i:                                ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.k, align 8, !alias.scope !310, !noalias !312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.pre.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !309
  store i64 1, ptr %i.l, align 8, !alias.scope !310, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !309
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 7, ptr noundef nonnull @_RNvYNCNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.g unwind label %bb.c, !noalias !309

bb.g:                                             ; preds = %._crit_edge14.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.r = load i64, ptr %i.l, align 8, !alias.scope !314, !noalias !316, !noundef !7 ; 3 uses
  %i.s = load i64, ptr %i.g, align 8, !range !11, !alias.scope !314, !noalias !316, !noundef !7
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.k unwind label %bb.i, !noalias !316

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i4.i.i = load ptr, ptr %i.v, align 8, !alias.scope !315, !noalias !317
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val2.i5.i.i = load ptr, ptr %i.w, align 8, !alias.scope !315, !noalias !317, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i4.i.i, ptr nonnull %.val2.i5.i.i) #21
          to label %.body6.i.i unwind label %bb.j, !noalias !316

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !316
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.y = load ptr, ptr %i.k, align 8, !alias.scope !314, !noalias !316, !nonnull !7, !noundef !7
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !309
  %i.aa = add i64 %i.r, 1
  store i64 %i.aa, ptr %i.l, align 8, !alias.scope !314, !noalias !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !309
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !309
  %i.ab = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !318
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !318
  store ptr %i.c, ptr %i.b, align 8, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !318
  store ptr %i.b, ptr %i.a, align 8, !noalias !318
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
          to label %.noexc.i.i unwind label %bb.m, !noalias !309

.noexc.i.i:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !318
  br label %_RNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.n, !noalias !309

bb.n:                                             ; preds = %.body6.i.i, %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !309
  unreachable

common.resume.i:                                  ; preds = %bb.p, %.body6.i.i, %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %eh.lpad-body.i.i, %.body6.i.i ], [ %i.ai, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i

.body6.i.i:                                       ; preds = %bb.i, %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.m, %bb.c ], [ %i.u, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #21
          to label %common.resume.i unwind label %bb.n, !noalias !309

_RNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i: ; preds = %.noexc.i.i, %bb.k
  %i.af = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !309, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !309
  call void @_RNvMs_NtNtCslpwiOMB70Kp_8protobuf7reflect7messageNtB4_17MessageDescriptor26new_non_generic_by_pb_name(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 16, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.af, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !309
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !319
  %i.ag = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 216, i64 noundef 8) #22, !noalias !319 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_16ConfChangeSingleNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit, !prof !12

bb.o:                                             ; preds = %_RNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #23
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.h) #21
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_16ConfChangeSingleNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit: ; preds = %_RNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ag, ptr noundef nonnull align 8 dereferenceable(216) %i.h, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.ag, ptr %.val, align 8
  ret void

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_12ConfChangeV2NtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [216 x i8], align 8               ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.j, align 8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.w, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.k, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !335
  store i64 0, ptr %i.h, align 8, !noalias !335
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !335
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  store i64 0, ptr %i.m, align 8, !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !335
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2INtNtB8_5types16ProtobufTypeEnumNtB1e_20ConfChangeTransitionEEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 10, ptr noundef nonnull @_RNvYNCNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.d unwind label %bb.c, !noalias !335

bb.c:                                             ; preds = %bb.k, %._crit_edge19.i.i, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %._crit_edge19.i.i unwind label %bb.e, !noalias !338

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !337, !noalias !339
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !337, !noalias !339, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i.i.i, ptr nonnull %.val2.i.i.i) #21
          to label %.body6.i.i unwind label %bb.f, !noalias !338

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !338
  unreachable

._crit_edge19.i.i:                                ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.l, align 8, !alias.scope !336, !noalias !338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.pre.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !335
  store i64 1, ptr %i.m, align 8, !alias.scope !336, !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !335
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v128make_repeated_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2INtNtB8_5types19ProtobufTypeMessageNtB1g_16ConfChangeSingleEEB1k_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 7, ptr noundef nonnull @_RNvYNCNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.g unwind label %bb.c, !noalias !335

bb.g:                                             ; preds = %._crit_edge19.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.s = load i64, ptr %i.m, align 8, !alias.scope !340, !noalias !342, !noundef !7 ; 3 uses
  %i.t = load i64, ptr %i.h, align 8, !range !11, !alias.scope !340, !noalias !342, !noundef !7
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.k unwind label %bb.i, !noalias !342

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i4.i.i = load ptr, ptr %i.w, align 8, !alias.scope !341, !noalias !343
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2.i5.i.i = load ptr, ptr %i.x, align 8, !alias.scope !341, !noalias !343, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i4.i.i, ptr nonnull %.val2.i5.i.i) #21
          to label %.body6.i.i unwind label %bb.j, !noalias !342

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !342
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %i.l, align 8, !alias.scope !340, !noalias !342, !nonnull !7, !noundef !7
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !335
  %i.ab = add i64 %i.s, 1
  store i64 %i.ab, ptr %i.m, align 8, !alias.scope !340, !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !335
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtB8_5types27ProtobufTypeCarllercheBytesEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 7, ptr noundef nonnull @_RNvYNCNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.l unwind label %bb.c, !noalias !335

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.ac = load i64, ptr %i.m, align 8, !alias.scope !344, !noalias !346, !noundef !7 ; 3 uses
  %i.ad = load i64, ptr %i.h, align 8, !range !11, !alias.scope !344, !noalias !346, !noundef !7
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.p unwind label %bb.n, !noalias !346

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i9.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !345, !noalias !347
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val2.i10.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !345, !noalias !347, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i9.i.i, ptr nonnull %.val2.i10.i.i) #21
          to label %.body6.i.i unwind label %bb.o, !noalias !346

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !346
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.aj = load ptr, ptr %i.l, align 8, !alias.scope !344, !noalias !346, !nonnull !7, !noundef !7
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !335
  %i.al = add i64 %i.ac, 1
  store i64 %i.al, ptr %i.m, align 8, !alias.scope !344, !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !335
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !335
  %i.am = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !348
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !348
  store ptr %i.c, ptr %i.b, align 8, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !348
  store ptr %i.b, ptr %i.a, align 8, !noalias !348
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
          to label %.noexc.i.i unwind label %bb.r, !noalias !335

.noexc.i.i:                                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !348
  br label %_RNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.s, !noalias !335

bb.s:                                             ; preds = %.body6.i.i, %bb.r
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !335
  unreachable

common.resume.i:                                  ; preds = %bb.u, %.body6.i.i, %bb.r
  %common.resume.op.i = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %eh.lpad-body.i.i, %.body6.i.i ], [ %i.at, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i

.body6.i.i:                                       ; preds = %bb.n, %bb.i, %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.o, %bb.e ], [ %i.n, %bb.c ], [ %i.af, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #21
          to label %common.resume.i unwind label %bb.s, !noalias !335

_RNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i: ; preds = %.noexc.i.i, %bb.p
  %i.aq = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !335, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !335
  call void @_RNvMs_NtNtCslpwiOMB70Kp_8protobuf7reflect7messageNtB4_17MessageDescriptor26new_non_generic_by_pb_name(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 12, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !335
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !349
  %i.ar = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 216, i64 noundef 8) #22, !noalias !349 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.t, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_12ConfChangeV2NtNtB9_7message7Message17descriptor_static0E0B1Q_.exit, !prof !12

bb.t:                                             ; preds = %_RNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #23
          to label %.noexc.i unwind label %bb.u

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.i) #21
          to label %common.resume.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_12ConfChangeV2NtNtB9_7message7Message17descriptor_static0E0B1Q_.exit: ; preds = %_RNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ar, ptr noundef nonnull align 8 dereferenceable(216) %i.i, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.ar, ptr %.val, align 8
  ret void

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_8SnapshotNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [216 x i8], align 8               ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.i, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.r, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.j, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !362
  store i64 0, ptr %i.g, align 8, !noalias !362
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !noalias !362
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !362
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotNtNtB8_5types27ProtobufTypeCarllercheBytesEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 4, ptr noundef nonnull @_RNvYNCNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.d unwind label %bb.c, !noalias !362

bb.c:                                             ; preds = %._crit_edge14.i.i, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %._crit_edge14.i.i unwind label %bb.e, !noalias !365

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !364, !noalias !366
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !364, !noalias !366, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i.i.i, ptr nonnull %.val2.i.i.i) #21
          to label %.body6.i.i unwind label %bb.f, !noalias !365

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !365
  unreachable

._crit_edge14.i.i:                                ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.k, align 8, !alias.scope !363, !noalias !365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.pre.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !362
  store i64 1, ptr %i.l, align 8, !alias.scope !363, !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !362
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v132make_singular_ptr_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotINtNtB8_5types19ProtobufTypeMessageNtB1k_16SnapshotMetadataEEB1o_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 8, ptr noundef nonnull @_RNvYNCNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.g unwind label %bb.c, !noalias !362

bb.g:                                             ; preds = %._crit_edge14.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.r = load i64, ptr %i.l, align 8, !alias.scope !367, !noalias !369, !noundef !7 ; 3 uses
  %i.s = load i64, ptr %i.g, align 8, !range !11, !alias.scope !367, !noalias !369, !noundef !7
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.k unwind label %bb.i, !noalias !369

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i4.i.i = load ptr, ptr %i.v, align 8, !alias.scope !368, !noalias !370
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val2.i5.i.i = load ptr, ptr %i.w, align 8, !alias.scope !368, !noalias !370, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i4.i.i, ptr nonnull %.val2.i5.i.i) #21
          to label %.body6.i.i unwind label %bb.j, !noalias !369

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !369
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.y = load ptr, ptr %i.k, align 8, !alias.scope !367, !noalias !369, !nonnull !7, !noundef !7
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !362
  %i.aa = add i64 %i.r, 1
  store i64 %i.aa, ptr %i.l, align 8, !alias.scope !367, !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !362
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !362
  %i.ab = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !371
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_RNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !371
  store ptr %i.c, ptr %i.b, align 8, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !371
  store ptr %i.b, ptr %i.a, align 8, !noalias !371
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
          to label %.noexc.i.i unwind label %bb.m, !noalias !362

.noexc.i.i:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !371
  br label %_RNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.n, !noalias !362

bb.n:                                             ; preds = %.body6.i.i, %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !362
  unreachable

common.resume.i:                                  ; preds = %bb.p, %.body6.i.i, %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %eh.lpad-body.i.i, %.body6.i.i ], [ %i.ai, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i

.body6.i.i:                                       ; preds = %bb.i, %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.m, %bb.c ], [ %i.u, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #21
          to label %common.resume.i unwind label %bb.n, !noalias !362

_RNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i: ; preds = %.noexc.i.i, %bb.k
  %i.af = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !362, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !362
  call void @_RNvMs_NtNtCslpwiOMB70Kp_8protobuf7reflect7messageNtB4_17MessageDescriptor26new_non_generic_by_pb_name(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 8, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.af, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !362
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !372
  %i.ag = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 216, i64 noundef 8) #22, !noalias !372 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_8SnapshotNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit, !prof !12

bb.o:                                             ; preds = %_RNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #23
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.h) #21
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_8SnapshotNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit: ; preds = %_RNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ag, ptr noundef nonnull align 8 dereferenceable(216) %i.h, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %i.ag, ptr %.val, align 8
  ret void

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_7MessageNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 39 uses
  %i.v = alloca [216 x i8], align 8               ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.w, align 8
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.cl, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !427
  store i64 0, ptr %i.u, align 8, !noalias !427
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 17 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !noalias !427
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 33 uses
  store i64 0, ptr %i.z, align 8, !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !427
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageINtNtB8_5types16ProtobufTypeEnumNtB1e_11MessageTypeEEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 8, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.d unwind label %bb.c, !noalias !427

bb.c:                                             ; preds = %bb.bz, %bb.bu, %bb.bp, %bb.bk, %bb.bf, %bb.ba, %bb.av, %bb.aq, %bb.al, %bb.ag, %bb.ab, %bb.w, %bb.r, %bb.m, %bb.h, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.ab = load i64, ptr %i.z, align 8, !alias.scope !428, !noalias !430, !noundef !7 ; 3 uses
  %i.ac = load i64, ptr %i.u, align 8, !range !11, !alias.scope !428, !noalias !430, !noundef !7
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.h unwind label %bb.f, !noalias !430

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !429, !noalias !431
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.val2.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !429, !noalias !431, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i.i.i, ptr nonnull %.val2.i.i.i) #21
          to label %.body6.i.i unwind label %bb.g, !noalias !430

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !430
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ai = load ptr, ptr %i.y, align 8, !alias.scope !428, !noalias !430, !nonnull !7, !noundef !7
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !427
  %i.ak = add i64 %i.ab, 1
  store i64 %i.ak, ptr %i.z, align 8, !alias.scope !428, !noalias !430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !427
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 2, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.i unwind label %bb.c, !noalias !427

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.al = load i64, ptr %i.z, align 8, !alias.scope !432, !noalias !434, !noundef !7 ; 3 uses
  %i.am = load i64, ptr %i.u, align 8, !range !11, !alias.scope !432, !noalias !434, !noundef !7
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.m unwind label %bb.k, !noalias !434

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val.i4.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !433, !noalias !435
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.val2.i5.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !433, !noalias !435, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i4.i.i, ptr nonnull %.val2.i5.i.i) #21
          to label %.body6.i.i unwind label %bb.l, !noalias !434

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !434
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.as = load ptr, ptr %i.y, align 8, !alias.scope !432, !noalias !434, !nonnull !7, !noundef !7
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !427
  %i.au = add i64 %i.al, 1
  store i64 %i.au, ptr %i.z, align 8, !alias.scope !432, !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !427
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 4, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.n unwind label %bb.c, !noalias !427

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.av = load i64, ptr %i.z, align 8, !alias.scope !436, !noalias !438, !noundef !7 ; 3 uses
  %i.aw = load i64, ptr %i.u, align 8, !range !11, !alias.scope !436, !noalias !438, !noundef !7
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.r unwind label %bb.p, !noalias !438

bb.p:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val.i9.i.i = load ptr, ptr %i.az, align 8, !alias.scope !437, !noalias !439
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.val2.i10.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !437, !noalias !439, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i9.i.i, ptr nonnull %.val2.i10.i.i) #21
          to label %.body6.i.i unwind label %bb.q, !noalias !438

bb.q:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !438
  unreachable

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bc = load ptr, ptr %i.y, align 8, !alias.scope !436, !noalias !438, !nonnull !7, !noundef !7
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !427
  %i.be = add i64 %i.av, 1
  store i64 %i.be, ptr %i.z, align 8, !alias.scope !436, !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !427
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s4_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s5_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.s unwind label %bb.c, !noalias !427

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.bf = load i64, ptr %i.z, align 8, !alias.scope !440, !noalias !442, !noundef !7 ; 3 uses
  %i.bg = load i64, ptr %i.u, align 8, !range !11, !alias.scope !440, !noalias !442, !noundef !7
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.w unwind label %bb.u, !noalias !442

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val.i14.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !441, !noalias !443
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.val2.i15.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !441, !noalias !443, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i14.i.i, ptr nonnull %.val2.i15.i.i) #21
          to label %.body6.i.i unwind label %bb.v, !noalias !442

bb.v:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !442
end_hunk_1
begin_hunk_2_@_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_7MessageNtNtB17_7message7Message17descriptor_static0E0E0B2Q_:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !478
  unreachable

bb.bp:                                            ; preds = %bb.bm, %bb.bl
  %i.ey = load ptr, ptr %i.y, align 8, !alias.scope !476, !noalias !478, !nonnull !7, !noundef !7
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %i.ey, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ez, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !427
  %i.fa = add i64 %i.er, 1
  store i64 %i.fa, ptr %i.z, align 8, !alias.scope !476, !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !427
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtB8_5types27ProtobufTypeCarllercheBytesEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 7, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0so_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0sp_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.bq unwind label %bb.c, !noalias !427

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.fb = load i64, ptr %i.z, align 8, !alias.scope !480, !noalias !482, !noundef !7 ; 3 uses
  %i.fc = load i64, ptr %i.u, align 8, !range !11, !alias.scope !480, !noalias !482, !noundef !7
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bu unwind label %bb.bs, !noalias !482

bb.bs:                                            ; preds = %bb.br
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val.i64.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !481, !noalias !483
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i65.i.i = load ptr, ptr %i.fg, align 8, !alias.scope !481, !noalias !483, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i64.i.i, ptr nonnull %.val2.i65.i.i) #21
          to label %.body6.i.i unwind label %bb.bt, !noalias !482

bb.bt:                                            ; preds = %bb.bs
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !482
  unreachable

bb.bu:                                            ; preds = %bb.br, %bb.bq
  %i.fi = load ptr, ptr %i.y, align 8, !alias.scope !480, !noalias !482, !nonnull !7, !noundef !7
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !427
  %i.fk = add i64 %i.fb, 1
  store i64 %i.fk, ptr %i.z, align 8, !alias.scope !480, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !427
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 19, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0sq_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0sr_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.bv unwind label %bb.c, !noalias !427

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.fl = load i64, ptr %i.z, align 8, !alias.scope !484, !noalias !486, !noundef !7 ; 3 uses
  %i.fm = load i64, ptr %i.u, align 8, !range !11, !alias.scope !484, !noalias !486, !noundef !7
  %i.fn = icmp eq i64 %i.fl, %i.fm
  br i1 %i.fn, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bz unwind label %bb.bx, !noalias !486

bb.bx:                                            ; preds = %bb.bw
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i69.i.i = load ptr, ptr %i.fp, align 8, !alias.scope !485, !noalias !487
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2.i70.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !485, !noalias !487, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i69.i.i, ptr nonnull %.val2.i70.i.i) #21
          to label %.body6.i.i unwind label %bb.by, !noalias !486

bb.by:                                            ; preds = %bb.bx
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !486
  unreachable

bb.bz:                                            ; preds = %bb.bw, %bb.bv
  %i.fs = load ptr, ptr %i.y, align 8, !alias.scope !484, !noalias !486, !nonnull !7, !noundef !7
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !427
  %i.fu = add i64 %i.fl, 1
  store i64 %i.fu, ptr %i.z, align 8, !alias.scope !484, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !427
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtB8_5types17ProtobufTypeInt64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 8, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0ss_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0st_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.ca unwind label %bb.c, !noalias !427

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.fv = load i64, ptr %i.z, align 8, !alias.scope !488, !noalias !490, !noundef !7 ; 3 uses
  %i.fw = load i64, ptr %i.u, align 8, !range !11, !alias.scope !488, !noalias !490, !noundef !7
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.ce unwind label %bb.cc, !noalias !490

bb.cc:                                            ; preds = %bb.cb
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i74.i.i = load ptr, ptr %i.fz, align 8, !alias.scope !489, !noalias !491
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val2.i75.i.i = load ptr, ptr %i.ga, align 8, !alias.scope !489, !noalias !491, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i74.i.i, ptr nonnull %.val2.i75.i.i) #21
          to label %.body6.i.i unwind label %bb.cd, !noalias !490

bb.cd:                                            ; preds = %bb.cc
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !490
  unreachable

bb.ce:                                            ; preds = %bb.cb, %bb.ca
  %i.gc = load ptr, ptr %i.y, align 8, !alias.scope !488, !noalias !490, !nonnull !7, !noundef !7
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !427
  %i.ge = add i64 %i.fv, 1
  store i64 %i.ge, ptr %i.z, align 8, !alias.scope !488, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !427
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !427
  %i.gf = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !492
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %_RNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i, label %bb.cf, !prof !13

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !492
  store ptr %i.c, ptr %i.b, align 8, !noalias !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !492
  store ptr %i.b, ptr %i.a, align 8, !noalias !492
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
          to label %.noexc.i.i unwind label %bb.cg, !noalias !427

.noexc.i.i:                                       ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !492
  br label %_RNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.ch, !noalias !427

bb.ch:                                            ; preds = %.body6.i.i, %bb.cg
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !427
  unreachable

common.resume.i:                                  ; preds = %bb.cj, %.body6.i.i, %bb.cg
  %common.resume.op.i = phi { ptr, i32 } [ %i.gh, %bb.cg ], [ %eh.lpad-body.i.i, %.body6.i.i ], [ %i.gm, %bb.cj ]
  resume { ptr, i32 } %common.resume.op.i

.body6.i.i:                                       ; preds = %bb.cc, %bb.bx, %bb.bs, %bb.bn, %bb.bi, %bb.bd, %bb.ay, %bb.at, %bb.ao, %bb.aj, %bb.ae, %bb.z, %bb.u, %bb.p, %bb.k, %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fo, %bb.bx ], [ %i.ae, %bb.f ], [ %i.ao, %bb.k ], [ %i.ay, %bb.p ], [ %i.bi, %bb.u ], [ %i.bs, %bb.z ], [ %i.cc, %bb.ae ], [ %i.cm, %bb.aj ], [ %i.cw, %bb.ao ], [ %i.dg, %bb.at ], [ %i.dq, %bb.ay ], [ %i.ea, %bb.bd ], [ %i.ek, %bb.bi ], [ %i.eu, %bb.bn ], [ %i.fe, %bb.bs ], [ %i.aa, %bb.c ], [ %i.fy, %bb.cc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #21
          to label %common.resume.i unwind label %bb.ch, !noalias !427

_RNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i: ; preds = %.noexc.i.i, %bb.ce
  %i.gj = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !427, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !427
  call void @_RNvMs_NtNtCslpwiOMB70Kp_8protobuf7reflect7messageNtB4_17MessageDescriptor26new_non_generic_by_pb_name(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 7, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.gj, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !427
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !493
  %i.gk = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 216, i64 noundef 8) #22, !noalias !493 ; 3 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.ci, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_7MessageNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit, !prof !12

bb.ci:                                            ; preds = %_RNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #23
          to label %.noexc.i unwind label %bb.cj

.noexc.i:                                         ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %bb.ci
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.v) #21
          to label %common.resume.i unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_7MessageNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit: ; preds = %_RNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.gk, ptr noundef nonnull align 8 dereferenceable(216) %i.v, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store ptr %i.gk, ptr %.val, align 8
  ret void

bb.cl:                                            ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_9HardStateNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [216 x i8], align 8               ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.j, align 8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.w, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.k, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !509
  store i64 0, ptr %i.h, align 8, !noalias !509
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !509
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  store i64 0, ptr %i.m, align 8, !noalias !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !509
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4, ptr noundef nonnull @_RNvYNCNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.d unwind label %bb.c, !noalias !509

bb.c:                                             ; preds = %bb.k, %._crit_edge19.i.i, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %._crit_edge19.i.i unwind label %bb.e, !noalias !512

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !511, !noalias !513
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !511, !noalias !513, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i.i.i, ptr nonnull %.val2.i.i.i) #21
          to label %.body6.i.i unwind label %bb.f, !noalias !512

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !512
  unreachable

._crit_edge19.i.i:                                ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.l, align 8, !alias.scope !510, !noalias !512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.pre.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !509
  store i64 1, ptr %i.m, align 8, !alias.scope !510, !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !509
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 4, ptr noundef nonnull @_RNvYNCNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.g unwind label %bb.c, !noalias !509

bb.g:                                             ; preds = %._crit_edge19.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.s = load i64, ptr %i.m, align 8, !alias.scope !514, !noalias !516, !noundef !7 ; 3 uses
  %i.t = load i64, ptr %i.h, align 8, !range !11, !alias.scope !514, !noalias !516, !noundef !7
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.k unwind label %bb.i, !noalias !516

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i4.i.i = load ptr, ptr %i.w, align 8, !alias.scope !515, !noalias !517
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2.i5.i.i = load ptr, ptr %i.x, align 8, !alias.scope !515, !noalias !517, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i4.i.i, ptr nonnull %.val2.i5.i.i) #21
          to label %.body6.i.i unwind label %bb.j, !noalias !516

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !516
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %i.l, align 8, !alias.scope !514, !noalias !516, !nonnull !7, !noundef !7
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !509
  %i.ab = add i64 %i.s, 1
  store i64 %i.ab, ptr %i.m, align 8, !alias.scope !514, !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !509
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateNtNtB8_5types18ProtobufTypeUint64EB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 6, ptr noundef nonnull @_RNvYNCNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.l unwind label %bb.c, !noalias !509

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.ac = load i64, ptr %i.m, align 8, !alias.scope !518, !noalias !520, !noundef !7 ; 3 uses
  %i.ad = load i64, ptr %i.h, align 8, !range !11, !alias.scope !518, !noalias !520, !noundef !7
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.p unwind label %bb.n, !noalias !520

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i9.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !519, !noalias !521
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val2.i10.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !519, !noalias !521, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i9.i.i, ptr nonnull %.val2.i10.i.i) #21
          to label %.body6.i.i unwind label %bb.o, !noalias !520

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !520
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.aj = load ptr, ptr %i.l, align 8, !alias.scope !518, !noalias !520, !nonnull !7, !noundef !7
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !509
  %i.al = add i64 %i.ac, 1
  store i64 %i.al, ptr %i.m, align 8, !alias.scope !518, !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !509
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !509
  %i.am = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !522
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !522
  store ptr %i.c, ptr %i.b, align 8, !noalias !522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !522
  store ptr %i.b, ptr %i.a, align 8, !noalias !522
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
          to label %.noexc.i.i unwind label %bb.r, !noalias !509

.noexc.i.i:                                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !522
  br label %_RNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.s, !noalias !509

bb.s:                                             ; preds = %.body6.i.i, %bb.r
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !509
  unreachable

common.resume.i:                                  ; preds = %bb.u, %.body6.i.i, %bb.r
  %common.resume.op.i = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %eh.lpad-body.i.i, %.body6.i.i ], [ %i.at, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i

.body6.i.i:                                       ; preds = %bb.n, %bb.i, %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.o, %bb.e ], [ %i.n, %bb.c ], [ %i.af, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #21
          to label %common.resume.i unwind label %bb.s, !noalias !509

_RNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i: ; preds = %.noexc.i.i, %bb.p
  %i.aq = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !509, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !509
  call void @_RNvMs_NtNtCslpwiOMB70Kp_8protobuf7reflect7messageNtB4_17MessageDescriptor26new_non_generic_by_pb_name(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 9, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @71)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !509
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !523
  %i.ar = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 216, i64 noundef 8) #22, !noalias !523 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.t, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_9HardStateNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit, !prof !12

bb.t:                                             ; preds = %_RNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #23
          to label %.noexc.i unwind label %bb.u

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.i) #21
          to label %common.resume.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_9HardStateNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit: ; preds = %_RNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9HardStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ar, ptr noundef nonnull align 8 dereferenceable(216) %i.i, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.ar, ptr %.val, align 8
  ret void

bb.w:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_9ConfStateNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 17 uses
  %i.k = alloca [216 x i8], align 8               ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.l, align 8
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.ai, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.m, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !545
  store i64 0, ptr %i.j, align 8, !noalias !545
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8, !noalias !545
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 11 uses
  store i64 0, ptr %i.o, align 8, !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !545
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v117make_vec_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateNtNtB8_5types18ProtobufTypeUint64EB19_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 6, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.d unwind label %bb.c, !noalias !545

bb.c:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.q = load i64, ptr %i.o, align 8, !alias.scope !546, !noalias !548, !noundef !7 ; 3 uses
  %i.r = load i64, ptr %i.j, align 8, !range !11, !alias.scope !546, !noalias !548, !noundef !7
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.h unwind label %bb.f, !noalias !548

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !547, !noalias !549
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val2.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !547, !noalias !549, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i.i.i, ptr nonnull %.val2.i.i.i) #21
          to label %.body6.i.i unwind label %bb.g, !noalias !548

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !548
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.x = load ptr, ptr %i.n, align 8, !alias.scope !546, !noalias !548, !nonnull !7, !noundef !7
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !545
  %i.z = add i64 %i.q, 1
  store i64 %i.z, ptr %i.o, align 8, !alias.scope !546, !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !545
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v117make_vec_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateNtNtB8_5types18ProtobufTypeUint64EB19_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 8, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s0_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s1_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.i unwind label %bb.c, !noalias !545

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.aa = load i64, ptr %i.o, align 8, !alias.scope !550, !noalias !552, !noundef !7 ; 3 uses
  %i.ab = load i64, ptr %i.j, align 8, !range !11, !alias.scope !550, !noalias !552, !noundef !7
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.m unwind label %bb.k, !noalias !552

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val.i4.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !551, !noalias !553
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val2.i5.i.i = load ptr, ptr %i.af, align 8, !alias.scope !551, !noalias !553, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i4.i.i, ptr nonnull %.val2.i5.i.i) #21
          to label %.body6.i.i unwind label %bb.l, !noalias !552

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !552
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.ah = load ptr, ptr %i.n, align 8, !alias.scope !550, !noalias !552, !nonnull !7, !noundef !7
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !545
  %i.aj = add i64 %i.aa, 1
  store i64 %i.aj, ptr %i.o, align 8, !alias.scope !550, !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !545
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v117make_vec_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateNtNtB8_5types18ProtobufTypeUint64EB19_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 15, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s2_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s3_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.n unwind label %bb.c, !noalias !545

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.ak = load i64, ptr %i.o, align 8, !alias.scope !554, !noalias !556, !noundef !7 ; 3 uses
  %i.al = load i64, ptr %i.j, align 8, !range !11, !alias.scope !554, !noalias !556, !noundef !7
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.r unwind label %bb.p, !noalias !556

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val.i9.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !555, !noalias !557
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i10.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !555, !noalias !557, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i9.i.i, ptr nonnull %.val2.i10.i.i) #21
          to label %.body6.i.i unwind label %bb.q, !noalias !556

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !556
  unreachable

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.ar = load ptr, ptr %i.n, align 8, !alias.scope !554, !noalias !556, !nonnull !7, !noundef !7
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !545
  %i.at = add i64 %i.ak, 1
  store i64 %i.at, ptr %i.o, align 8, !alias.scope !554, !noalias !556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !545
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v117make_vec_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateNtNtB8_5types18ProtobufTypeUint64EB19_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 13, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s4_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s5_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.s unwind label %bb.c, !noalias !545

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.au = load i64, ptr %i.o, align 8, !alias.scope !558, !noalias !560, !noundef !7 ; 3 uses
  %i.av = load i64, ptr %i.j, align 8, !range !11, !alias.scope !558, !noalias !560, !noundef !7
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.w unwind label %bb.u, !noalias !560

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i14.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !559, !noalias !561
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val2.i15.i.i = load ptr, ptr %i.az, align 8, !alias.scope !559, !noalias !561, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i14.i.i, ptr nonnull %.val2.i15.i.i) #21
          to label %.body6.i.i unwind label %bb.v, !noalias !560

bb.v:                                             ; preds = %bb.u
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !560
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.bb = load ptr, ptr %i.n, align 8, !alias.scope !558, !noalias !560, !nonnull !7, !noundef !7
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !545
  %i.bd = add i64 %i.au, 1
  store i64 %i.bd, ptr %i.o, align 8, !alias.scope !558, !noalias !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !545
  invoke void @_RINvNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc2v126make_simple_field_accessorNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateNtNtB8_5types16ProtobufTypeBoolEB1i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 10, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s6_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRBV_EE9call_onceBg_, ptr noundef nonnull @_RNvYNCNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtBc_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0s7_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQBV_EE9call_onceBg_)
          to label %bb.x unwind label %bb.c, !noalias !545

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.be = load i64, ptr %i.o, align 8, !alias.scope !562, !noalias !564, !noundef !7 ; 3 uses
  %i.bf = load i64, ptr %i.j, align 8, !range !11, !alias.scope !562, !noalias !564, !noundef !7
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ab unwind label %bb.z, !noalias !564

bb.z:                                             ; preds = %bb.y
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val.i19.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !563, !noalias !565
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val2.i20.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !563, !noalias !565, !nonnull !7, !align !6, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorECs9RMo4C3Dvu6_10raft_proto(ptr %.val.i19.i.i, ptr nonnull %.val2.i20.i.i) #21
          to label %.body6.i.i unwind label %bb.aa, !noalias !564

bb.aa:                                            ; preds = %bb.z
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !564
  unreachable

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.bl = load ptr, ptr %i.n, align 8, !alias.scope !562, !noalias !564, !nonnull !7, !noundef !7
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !545
  %i.bn = add i64 %i.be, 1
  store i64 %i.bn, ptr %i.o, align 8, !alias.scope !562, !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !545
  store ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, ptr %i.c, align 8, !noalias !545
  %i.bo = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8) acquire, align 8, !noalias !566
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !566
  store ptr %i.c, ptr %i.b, align 8, !noalias !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !566
  store ptr %i.b, ptr %i.a, align 8, !noalias !566
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
          to label %.noexc.i.i unwind label %bb.ad, !noalias !545

.noexc.i.i:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !566
  br label %_RNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume.i unwind label %bb.ae, !noalias !545

bb.ae:                                            ; preds = %.body6.i.i, %bb.ad
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !545
  unreachable

common.resume.i:                                  ; preds = %bb.ag, %.body6.i.i, %bb.ad
  %common.resume.op.i = phi { ptr, i32 } [ %i.bq, %bb.ad ], [ %eh.lpad-body.i.i, %.body6.i.i ], [ %i.bv, %bb.ag ]
  resume { ptr, i32 } %common.resume.op.i

.body6.i.i:                                       ; preds = %bb.z, %bb.u, %bb.p, %bb.k, %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.t, %bb.f ], [ %i.ad, %bb.k ], [ %i.an, %bb.p ], [ %i.p, %bb.c ], [ %i.bh, %bb.z ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCslpwiOMB70Kp_8protobuf7reflect3acc13FieldAccessorEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #21
          to label %common.resume.i unwind label %bb.ae, !noalias !545

_RNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i: ; preds = %.noexc.i.i, %bb.ab
  %i.bs = load ptr, ptr @_RNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb26file_descriptor_proto_lazy, align 8, !noalias !545, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !545
  call void @_RNvMs_NtNtCslpwiOMB70Kp_8protobuf7reflect7messageNtB4_17MessageDescriptor26new_non_generic_by_pb_name(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 9, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bs, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !545
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !567
  %i.bt = call noundef align 8 dereferenceable_or_null(216) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 216, i64 noundef 8) #22, !noalias !567 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.af, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_9ConfStateNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit, !prof !12

bb.af:                                            ; preds = %_RNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 216) #23
          to label %.noexc.i unwind label %bb.ag

.noexc.i:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslpwiOMB70Kp_8protobuf7reflect7message17MessageDescriptorECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.k) #21
          to label %common.resume.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtB9_7reflect7message17MessageDescriptorE3getNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB1M_9ConfStateNtNtB9_7message7Message17descriptor_static0E0B1Q_.exit: ; preds = %_RNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_9ConfStateNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static0Bb_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bt, ptr noundef nonnull align 8 dereferenceable(216) %i.k, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.bt, ptr %.val, align 8
  ret void

bb.ai:                                            ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE3getNvMsz_B1S_B1Q_3newE0E0B1W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.d, align 8, !alias.scope !574
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.e, align 8, !alias.scope !574
  store ptr @92, ptr %i.a, align 8, !alias.scope !574
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !574
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !alias.scope !574
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !575
  %i.g = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 72, i64 noundef 8) #22, !noalias !575 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE3getNvMsz_BT_BR_3newE0BX_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE3getNvMsz_BT_BR_3newE0BX_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1S_B1Q_3newE0E0B1W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.d, align 8, !alias.scope !582
  store i64 0, ptr %i.a, align 8, !alias.scope !582
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !582
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !582
  store ptr @92, ptr %i.e, align 8, !alias.scope !582
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !582
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 32, i1 false), !alias.scope !582
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !583
  %i.f = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 88, i64 noundef 8) #22, !noalias !583 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_BT_BR_3newE0BX_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_BT_BR_3newE0BX_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE3getNvMsF_B1S_B1Q_3newE0E0B1W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 25, i1 false), !alias.scope !590
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !591
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 32, i64 noundef 8) #22, !noalias !591 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE3getNvMsF_BT_BR_3newE0BX_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE3getNvMsF_BT_BR_3newE0BX_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.d, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataE3getNvMs5_B1S_B1Q_3newE0E0B1W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 41, i1 false), !alias.scope !598
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !599
  %i.d = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 48, i64 noundef 8) #22, !noalias !599 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataE3getNvMs5_BT_BR_3newE0BX_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataE3getNvMs5_BT_BR_3newE0BX_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.d, i8 0, i64 41, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE3getNvMs_B1S_B1Q_3newE0E0B1W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 14 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 0, ptr %i.d, align 8, !alias.scope !606
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !606
  store ptr @92, ptr %i.a, align 8, !alias.scope !606
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !606
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !606
  store ptr @92, ptr %i.f, align 8, !alias.scope !606
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !606
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  store i8 0, ptr %i.g, align 1, !alias.scope !606
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !606
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !alias.scope !606
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !607
  %i.i = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 104, i64 noundef 8) #22, !noalias !607 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE3getNvMs_BT_BR_3newE0BX_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE3getNvMs_BT_BR_3newE0BX_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1S_B1Q_3newE0E0B1W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 15 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 185
  store i8 0, ptr %i.d, align 1, !alias.scope !614
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.a, align 8, !alias.scope !614
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false), !alias.scope !614
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !614
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 0, ptr %i.g, align 8, !alias.scope !614
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 25, i1 false), !alias.scope !614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !alias.scope !614
  store ptr @92, ptr %i.h, align 8, !alias.scope !614
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !614
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !alias.scope !614
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !615
  %i.j = tail call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 192, i64 noundef 8) #22, !noalias !615 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_BT_BR_3newE0BX_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_BT_BR_3newE0BX_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.j, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotE3getNvMsb_B1S_B1Q_3newE0E0B1W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @92, ptr %i.a, align 8, !alias.scope !622
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !622
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 41, i1 false), !alias.scope !622
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !623
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 64, i64 noundef 8) #22, !noalias !623 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotE3getNvMsb_BT_BR_3newE0BX_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotE3getNvMsb_BT_BR_3newE0BX_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE3getNvMst_B1S_B1Q_3newE0E0B1W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 13 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !630
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !630
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !630
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !630
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !630
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !alias.scope !630
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !630
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !630
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.59.0..sroa_idx.i.i.i, i8 0, i64 25, i1 false), !alias.scope !630
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !631
  %i.d = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 120, i64 noundef 8) #22, !noalias !631 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE3getNvMst_BT_BR_3newE0BX_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE3getNvMst_BT_BR_3newE0BX_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateE3getNvMsn_B1S_B1Q_3newE0E0B1W_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false), !alias.scope !638
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !639
  %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i = tail call align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 40, i64 8) ; 2 uses
  %i.d = icmp eq ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, null
  br i1 %i.d, label %bb.c, label %_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateE3getNvMsn_BT_BR_3newE0BX_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #23
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

_RNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB7_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateE3getNvMsn_BT_BR_3newE0BX_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i, ptr %.val, align 8
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtB1c_10descriptor19FileDescriptorProtoE3getNCNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb21file_descriptor_proto0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2N_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !642
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtB17_10descriptor19FileDescriptorProtoE3getNCNvNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb21file_descriptor_proto0E0E0B2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect5enums14EnumDescriptorE3getNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2N_14ConfChangeTypeNtNtB1c_5enums12ProtobufEnum22enum_descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2R_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !645
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect5enums14EnumDescriptorE3getNCNvXs12_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2I_14ConfChangeTypeNtNtB17_5enums12ProtobufEnum22enum_descriptor_static0E0E0B2M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect5enums14EnumDescriptorE3getNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_9EntryTypeNtNtB1c_5enums12ProtobufEnum22enum_descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2Q_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !648
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect5enums14EnumDescriptorE3getNCNvXsQ_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2H_9EntryTypeNtNtB17_5enums12ProtobufEnum22enum_descriptor_static0E0E0B2L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect5enums14EnumDescriptorE3getNCNvXsU_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_11MessageTypeNtNtB1c_5enums12ProtobufEnum22enum_descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2Q_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !651
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect5enums14EnumDescriptorE3getNCNvXsU_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2H_11MessageTypeNtNtB17_5enums12ProtobufEnum22enum_descriptor_static0E0E0B2L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect5enums14EnumDescriptorE3getNCNvXsY_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_20ConfChangeTransitionNtNtB1c_5enums12ProtobufEnum22enum_descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2Q_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !654
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect5enums14EnumDescriptorE3getNCNvXsY_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2H_20ConfChangeTransitionNtNtB17_5enums12ProtobufEnum22enum_descriptor_static0E0E0B2L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect7message17MessageDescriptorE3getNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2R_5EntryNtNtB1c_7message7Message17descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2V_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !657
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_5EntryNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect7message17MessageDescriptorE3getNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2R_16SnapshotMetadataNtNtB1c_7message7Message17descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2V_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !660
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_16SnapshotMetadataNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect7message17MessageDescriptorE3getNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2R_10ConfChangeNtNtB1c_7message7Message17descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2V_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !663
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsA_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_10ConfChangeNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect7message17MessageDescriptorE3getNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2R_16ConfChangeSingleNtNtB1c_7message7Message17descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2V_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !666
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_16ConfChangeSingleNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2R_12ConfChangeV2NtNtB1c_7message7Message17descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2V_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !669
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_12ConfChangeV2NtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect7message17MessageDescriptorE3getNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2R_8SnapshotNtNtB1c_7message7Message17descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2V_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !672
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_8SnapshotNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2R_7MessageNtNtB1c_7message7Message17descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2V_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !675
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_7MessageNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect7message17MessageDescriptorE3getNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2R_9HardStateNtNtB1c_7message7Message17descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2V_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !678
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXso_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_9HardStateNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtB1c_7reflect7message17MessageDescriptorE3getNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2R_9ConfStateNtNtB1c_7message7Message17descriptor_static0E0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2V_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !681
  call void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB15_6LazyV2NtNtNtB17_7reflect7message17MessageDescriptorE3getNCNvXsu_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2M_9ConfStateNtNtB17_7message7Message17descriptor_static0E0E0B2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE3getNvMsz_B1X_B1V_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB21_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !692, !noalias !693, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !692, !noalias !693
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !694 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !694
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.d, align 8, !alias.scope !695, !noalias !694
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.e, align 8, !alias.scope !695, !noalias !694
  store ptr @92, ptr %i.a, align 8, !alias.scope !695, !noalias !694
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !695, !noalias !694
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !695, !noalias !694
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !alias.scope !695, !noalias !694
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !696
  %i.g = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 72, i64 noundef 8) #22, !noalias !696 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE3getNvMsz_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #23
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !694

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !694

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !694
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !694
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb10ConfChangeE3getNvMsz_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !694
  store ptr %i.g, ptr %.val.i.i, align 8, !noalias !694
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1X_B1V_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB21_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 11 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !707, !noalias !708, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !707, !noalias !708
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !709 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !709
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 0, ptr %i.d, align 8, !alias.scope !710, !noalias !709
  store i64 0, ptr %i.a, align 8, !alias.scope !710, !noalias !709
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !710, !noalias !709
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !710, !noalias !709
  store ptr @92, ptr %i.e, align 8, !alias.scope !710, !noalias !709
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !710, !noalias !709
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i, i8 0, i64 32, i1 false), !alias.scope !710, !noalias !709
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !711
  %i.f = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 88, i64 noundef 8) #22, !noalias !711 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #23
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !709

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2EBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !709

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !709
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !709
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !709
  store ptr %i.f, ptr %.val.i.i, align 8, !noalias !709
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE3getNvMsF_B1X_B1V_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB21_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !722, !noalias !723, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !722, !noalias !723
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !724 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !724
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 25, i1 false), !alias.scope !725, !noalias !724
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !726
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 32, i64 noundef 8) #22, !noalias !726 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE3getNvMsF_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #23
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !724

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !724

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !724
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !724
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE3getNvMsF_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.d, i8 0, i64 25, i1 false), !noalias !724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !724
  store ptr %i.d, ptr %.val.i.i, align 8, !noalias !724
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataE3getNvMs5_B1X_B1V_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB21_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !737, !noalias !738, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !737, !noalias !738
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !739 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !739
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 41, i1 false), !alias.scope !740, !noalias !739
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !741
  %i.d = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 48, i64 noundef 8) #22, !noalias !741 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataE3getNvMs5_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #23
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !739

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !739

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !739
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !739
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataE3getNvMs5_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.d, i8 0, i64 41, i1 false), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !739
  store ptr %i.d, ptr %.val.i.i, align 8, !noalias !739
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE3getNvMs_B1X_B1V_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB21_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 14 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !752, !noalias !753, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !752, !noalias !753
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !754 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !754
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 0, ptr %i.d, align 8, !alias.scope !755, !noalias !754
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !755, !noalias !754
  store ptr @92, ptr %i.a, align 8, !alias.scope !755, !noalias !754
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !755, !noalias !754
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !755, !noalias !754
  store ptr @92, ptr %i.f, align 8, !alias.scope !755, !noalias !754
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !755, !noalias !754
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  store i8 0, ptr %i.g, align 1, !alias.scope !755, !noalias !754
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !755, !noalias !754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !alias.scope !755, !noalias !754
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !756
  %i.i = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 104, i64 noundef 8) #22, !noalias !756 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE3getNvMs_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #23
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !754

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !754

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !754
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !754
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE3getNvMs_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !754
  store ptr %i.i, ptr %.val.i.i, align 8, !noalias !754
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1X_B1V_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB21_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 15 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !767, !noalias !768, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !767, !noalias !768
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !769 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !769
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 185
  store i8 0, ptr %i.d, align 1, !alias.scope !770, !noalias !769
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.a, align 8, !alias.scope !770, !noalias !769
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false), !alias.scope !770, !noalias !769
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !770, !noalias !769
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 0, ptr %i.g, align 8, !alias.scope !770, !noalias !769
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, i8 0, i64 25, i1 false), !alias.scope !770, !noalias !769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !alias.scope !770, !noalias !769
  store ptr @92, ptr %i.h, align 8, !alias.scope !770, !noalias !769
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !770, !noalias !769
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !770, !noalias !769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !alias.scope !770, !noalias !769
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !771
  %i.j = tail call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 192, i64 noundef 8) #22, !noalias !771 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #23
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !769

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !769

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !769
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !769
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.j, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false), !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !769
  store ptr %i.j, ptr %.val.i.i, align 8, !noalias !769
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotE3getNvMsb_B1X_B1V_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB21_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !782, !noalias !783, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !782, !noalias !783
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !784 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !784
  store ptr @92, ptr %i.a, align 8, !alias.scope !785, !noalias !784
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !785, !noalias !784
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.sroa.5.0..sroa_idx.i.i.i.i.i, i8 0, i64 41, i1 false), !alias.scope !785, !noalias !784
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !786
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 64, i64 noundef 8) #22, !noalias !786 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotE3getNvMsb_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #23
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !784

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !784

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !784
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !784
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotE3getNvMsb_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !784
  store ptr %i.d, ptr %.val.i.i, align 8, !noalias !784
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE3getNvMst_B1X_B1V_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB21_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 13 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !797, !noalias !798, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !797, !noalias !798
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !799 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !799
  store i64 0, ptr %i.a, align 8, !alias.scope !800, !noalias !799
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !800, !noalias !799
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !800, !noalias !799
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !800, !noalias !799
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.45.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !800, !noalias !799
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !800, !noalias !799
  %.sroa.56.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !800, !noalias !799
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !800, !noalias !799
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.59.0..sroa_idx.i.i.i.i.i, i8 0, i64 25, i1 false), !alias.scope !800, !noalias !799
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !801
  %i.d = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 353) 120, i64 noundef 8) #22, !noalias !801 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE3getNvMst_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #23
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !799

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !799

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !799
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !799
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateE3getNvMst_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false), !noalias !799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !799
  store ptr %i.d, ptr %.val.i.i, align 8, !noalias !799
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB1a_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateE3getNvMsn_B1X_B1V_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB21_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !812, !noalias !813, !align !6, !noundef !7 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !812, !noalias !813
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !814 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !814
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false), !alias.scope !815, !noalias !814
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !816
  %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i.i.i = tail call align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 40, i64 8), !noalias !814 ; 2 uses
  %i.d = icmp eq ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i.i.i, null
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateE3getNvMsn_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #23
          to label %.noexc.i.i.i unwind label %bb.d, !noalias !814

.noexc.i.i.i:                                     ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #21
          to label %bb.f unwind label %bb.e, !noalias !814

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !814
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !814
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB18_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9HardStateE3getNvMsn_B1V_B1T_3newE0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1Z_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !814
  store ptr %_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed.i.i.i, ptr %.val.i.i, align 8, !noalias !814
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs9RMo4C3Dvu6_10raft_proto6protosNtNtB2_7eraftpb8Snapshot8is_empty(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i8, ptr %i.d, align 8, !range !14, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, ptr %i.c, align 8
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8) acquire, align 8, !noalias !819
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !819
  store ptr %i.c, ptr %i.b, align 8, !noalias !819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !819
  store ptr %i.b, ptr %i.a, align 8, !noalias !819
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !819
  br label %_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i

_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i: ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr @_RNvNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMsb_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8Snapshot12get_metadata.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %_RNvMsb_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8Snapshot12get_metadata.exit, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

_RNvMsb_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8Snapshot12get_metadata.exit: ; preds = %_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.i, %_RNvXs6_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16SnapshotMetadataNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance.exit.i ], [ %i.k, %bb.d ]
  %i.l = load i64, ptr %.sroa.0.0.i, align 8, !noundef !7
  %i.m = icmp eq i64 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream8read_tag(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !824, !noalias !823, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !824, !noalias !823, !noundef !7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !824, !noalias !823, !noundef !7 ; 2 uses
  %i.g = sub i64 %i.f, %i.d                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 10 uses
  %.not.i = icmp eq i64 %i.f, %i.d
  br i1 %.not.i, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !noalias !825, !noundef !7 ; 4 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1
  br i1 %i.k, label %bb.e, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.d:                                             ; preds = %bb.e
  %i.l = icmp ugt i64 %i.g, 9
  br i1 %i.l, label %.preheader.2, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.n = load i8, ptr %i.m, align 1, !noalias !825, !noundef !7 ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.d

_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread36: ; preds = %.preheader.9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !823, !noalias !824
  br label %bb.i

.preheader.2:                                     ; preds = %bb.d
  %i.p = and i8 %i.n, 127
  %i.q = zext nneg i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 7
  %i.s = and i8 %i.i, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.w = load i8, ptr %i.v, align 1, !noalias !825, !noundef !7 ; 2 uses
  %i.x = and i8 %i.w, 127
  %i.y = zext nneg i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 14
  %i.aa = or disjoint i64 %i.z, %i.u              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !825, !noundef !7 ; 2 uses
  %i.ae = and i8 %i.ad, 127
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 21
  %i.ah = or disjoint i64 %i.ag, %i.aa            ; 2 uses
  %i.ai = icmp sgt i8 %i.ad, -1
  br i1 %i.ai, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !825, !noundef !7 ; 2 uses
  %i.al = and i8 %i.ak, 127
  %i.am = zext nneg i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 28
  %i.ao = or disjoint i64 %i.an, %i.ah            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !825, !noundef !7 ; 2 uses
  %i.as = and i8 %i.ar, 127
  %i.at = zext nneg i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 35
  %i.av = or i64 %i.au, %i.ao                     ; 2 uses
  %i.aw = icmp sgt i8 %i.ar, -1
  br i1 %i.aw, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !825, !noundef !7 ; 2 uses
  %i.az = and i8 %i.ay, 127
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 42
  %i.bc = or i64 %i.bb, %i.av                     ; 2 uses
  %i.bd = icmp sgt i8 %i.ay, -1
  br i1 %i.bd, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.bf = load i8, ptr %i.be, align 1, !noalias !825, !noundef !7 ; 2 uses
  %i.bg = and i8 %i.bf, 127
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 49
  %i.bj = or i64 %i.bi, %i.bc                     ; 2 uses
  %i.bk = icmp sgt i8 %i.bf, -1
  br i1 %i.bk, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !825, !noundef !7 ; 2 uses
  %i.bn = and i8 %i.bm, 127
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 56
  %i.bq = or i64 %i.bp, %i.bj                     ; 2 uses
  %i.br = icmp sgt i8 %i.bm, -1
  br i1 %i.br, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !825, !noundef !7 ; 2 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl i64 %i.bu, 63
  %i.bw = or i64 %i.bv, %i.bq
  %i.bx = icmp sgt i8 %i.bt, -1
  br i1 %i.bx, label %.loopexit, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread36

bb.f:                                             ; preds = %bb.e
  %i.by = and i8 %i.i, 127
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = zext nneg i8 %i.n to i64
  %i.cb = shl nuw nsw i64 %i.ca, 7
  %i.cc = or disjoint i64 %i.cb, %i.bz
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.g, %bb.f
  %.sroa.02.1.i = phi i64 [ 1, %bb.g ], [ 2, %bb.f ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.cd, %bb.g ], [ %i.cc, %bb.f ], [ %i.bq, %.preheader.8 ], [ %i.bw, %.preheader.9 ], [ %i.aa, %.preheader.2 ], [ %i.ah, %.preheader.3 ], [ %i.ao, %.preheader.4 ], [ %i.av, %.preheader.5 ], [ %i.bc, %.preheader.6 ], [ %i.bj, %.preheader.7 ]
  %.not13.i = icmp ugt i64 %.sroa.02.1.i, %i.g
  br i1 %.not13.i, label %bb.h, label %_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64.exit.thread, !prof !12

bb.g:                                             ; preds = %bb.b
  %i.cd = zext nneg i8 %i.i to i64
  br label %.loopexit

bb.h:                                             ; preds = %.loopexit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #24, !noalias !825
end_hunk_2
begin_hunk_3_@_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message10descriptor:bb.a
_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.o = load i64, ptr %i.g, align 8, !alias.scope !1127, !noalias !1128, !noundef !7
  %i.p = load i64, ptr %i.h, align 8, !alias.scope !1127, !noalias !1128, !noundef !7
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1130
  call void @_RNvMs_NtCslpwiOMB70Kp_8protobuf13buf_read_iterNtB4_11BufReadIter11do_fill_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %2), !noalias !1131
  %i.r = load i32, ptr %i.a, align 8, !range !18, !noalias !1130, !noundef !7 ; 2 uses
  %.not.i82 = icmp eq i32 %i.r, -1
  br i1 %.not.i82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4101.0.copyload = load i32, ptr %.sroa.4101.0..sroa_idx, align 4, !noalias !1130
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5102.0.copyload = load ptr, ptr %.sroa.5102.0..sroa_idx, align 8, !noalias !1130
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6103.0.copyload = load i64, ptr %.sroa.6103.0..sroa_idx, align 8, !noalias !1130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1130
  store i32 %i.r, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4101.0.copyload, ptr %.sroa.447.0..sroa_idx, align 4
  %.sroa.548.sroa.4.0..sroa.548.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5102.0.copyload, ptr %.sroa.548.sroa.4.0..sroa.548.0..sroa_idx.sroa_idx, align 8
  %.sroa.548.sroa.5.0..sroa.548.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6103.0.copyload, ptr %.sroa.548.sroa.5.0..sroa.548.0..sroa_idx.sroa_idx, align 8
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1130
  %i.s = load i64, ptr %i.g, align 8, !alias.scope !1129, !noalias !1131, !noundef !7
  %i.t = load i64, ptr %i.h, align 8, !alias.scope !1129, !noalias !1131, !noundef !7
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream8read_tag(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(112) %2) #25
  %i.v = load i32, ptr %i.b, align 8, !range !18, !noundef !7 ; 2 uses
  %.not77 = icmp eq i32 %i.v, -1
  %i.w = load i32, ptr %i.i, align 4              ; 3 uses
  %i.x = load i8, ptr %i.j, align 8               ; 6 uses
  br i1 %.not77, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %0, align 8
  br label %bb.w

bb.g:                                             ; preds = %.thread
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.664.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.652.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 %i.v, ptr %0, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.w, ptr %.sroa.462.0..sroa_idx, align 4
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.x, ptr %.sroa.563.0..sroa_idx, align 8
  br label %bb.w

bb.h:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i32 %i.w, label %bb.i [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCslpwiOMB70Kp_8protobuf2rt26read_unknown_or_skip_group(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.w, i8 noundef %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.y = load i32, ptr %i.c, align 8, !range !18, !noundef !7
  %.not81 = icmp eq i32 %i.y, -1
  br i1 %.not81, label %bb.v, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.z = icmp eq i8 %i.x, 0
  br i1 %i.z, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvNtCslpwiOMB70Kp_8protobuf2rt26read_repeated_message_intoNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEB12_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i8 noundef %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.aa = load i32, ptr %i.e, align 8, !range !18, !noundef !7
  %.not79 = icmp eq i32 %i.aa, -1
  br i1 %.not79, label %bb.r, label %bb.q

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCslpwiOMB70Kp_8protobuf2rt42read_singular_proto3_carllerche_bytes_into(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i8 noundef %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
  %i.ab = load i32, ptr %i.d, align 8, !range !18, !noundef !7
  %.not78 = icmp eq i32 %i.ab, -1
  br i1 %.not78, label %bb.t, label %bb.s

bb.m:                                             ; preds = %bb.j
  %i.ac = zext nneg i8 %i.x to i64
  %.sroa.475.0.insert.shift = shl nuw nsw i64 %i.ac, 8
  %.sroa.074.0.insert.insert = or disjoint i64 %.sroa.475.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.074.0.insert.insert, ptr %.sroa.438.0..sroa_idx, align 4
  br label %bb.w

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB3_16CodedInputStream9read_enumNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb20ConfChangeTransitionEB1p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
  %i.ad = load i32, ptr %i.f, align 8, !range !18, !noundef !7 ; 2 uses
  %.not80 = icmp eq i32 %i.ad, -1
  %i.ae = load i8, ptr %i.l, align 4              ; 2 uses
  br i1 %.not80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.573.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.570.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 %i.ad, ptr %0, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ae, ptr %.sroa.472.0..sroa_idx, align 4
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 %i.ae, ptr %i.m, align 8
  br label %.backedge

bb.q:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge

bb.s:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

bb.u:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.v:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge

.backedge:                                        ; preds = %bb.v, %bb.t, %bb.r, %bb.p
  br label %bb.b

bb.w:                                             ; preds = %bb.q, %bb.s, %bb.u, %bb.o, %bb.m, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 3 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d), "nonnull"(ptr %i.e) ]
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt9enum_sizeNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb20ConfChangeTransitionEBK_(i32 noundef 1, i8 noundef %i.b)
  br label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit
  %.sroa.0.110 = phi i32 [ %i.w, %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit ], [ %.sroa.0.0, %bb.b ]
  %.sroa.06.09 = phi ptr [ %i.h, %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit ], [ %i.d, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 24
  %i.j = load i8, ptr %i.i, align 8, !range !15, !noundef !7 ; 2 uses
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.0.0.i = phi i32 [ %i.m, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = load i64, ptr %.sroa.06.09, align 8, !noundef !7 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.m = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt9enum_sizeNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb14ConfChangeTypeEBK_(i32 noundef 1, i8 noundef %i.j)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 2, i64 noundef %i.k, i8 noundef 0)
  %i.o = add i32 %i.n, %.sroa.0.0.i
  br label %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit

_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit: ; preds = %bb.d, %bb.f
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.i, %bb.d ], [ %i.o, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 8
  %i.q = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
  %i.r = add i32 %i.q, %.sroa.0.1.i               ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 16
  tail call void @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.s, i32 noundef %i.r)
  %i.t = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt25compute_raw_varint32_size(i32 noundef %i.r)
  %i.u = add i32 %.sroa.0.110, 1
  %i.v = add i32 %i.u, %i.r
  %i.w = add i32 %i.v, %i.t                       ; 2 uses
  %i.x = icmp eq ptr %i.h, %i.e
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit, %bb.b
  %.sroa.0.1.lcssa = phi i32 [ %.sroa.0.0, %bb.b ], [ %i.w, %_RNvXsG_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_16ConfChangeSingleNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !noundef !7 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !noundef !7
  %i.ad = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt10bytes_size(i32 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.z)
  %i.ae = add i32 %i.ad, %.sroa.0.1.lcssa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.0.2 = phi i32 [ %.sroa.0.1.lcssa, %._crit_edge ], [ %i.ae, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
  %i.ah = add i32 %i.ag, %.sroa.0.2               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.ai, i32 noundef %i.ah)
  ret i32 %i.ah
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 0 uses
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message15get_cached_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = tail call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8) acquire, align 8, !noalias !1134
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1Q_B1O_3newE0EB1U_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1134
  store ptr %i.c, ptr %i.b, align 8, !noalias !1134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1134
  store ptr %i.b, ptr %i.a, align 8, !noalias !1134
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1134
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1Q_B1O_3newE0EB1U_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2E3getNvMsL_B1Q_B1O_3newE0EB1U_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8) acquire, align 8, !noalias !1137
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_12ConfChangeV2NtNtB15_7message7Message17descriptor_static0E0EB2O_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1137
  store ptr %i.c, ptr %i.b, align 8, !noalias !1137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1137
  store ptr %i.b, ptr %i.a, align 8, !noalias !1137
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1137
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_12ConfChangeV2NtNtB15_7message7Message17descriptor_static0E0EB2O_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_12ConfChangeV2NtNtB15_7message7Message17descriptor_static0E0EB2O_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message18get_unknown_fields(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message18mut_unknown_fields(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(88) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.9 = alloca [20 x i8], align 4            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !range !15, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.k = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.o = zext nneg i8 %i.j to i32
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream10write_enum(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 1, i32 noundef %i.o)
  %i.p = load i32, ptr %i.h, align 8, !range !18, !noundef !7
  %.not2 = icmp eq i32 %i.p, -1
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

.lr.ph:                                           ; preds = %bb.b, %bb.t
  %.sroa.0.028 = phi ptr [ %i.q, %bb.t ], [ %i.l, %bb.b ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9write_tag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 2, i8 noundef 2)
  %i.r = load i32, ptr %i.g, align 8, !range !18, !noundef !7
  %.not3 = icmp eq i32 %i.r, -1
  br i1 %.not3, label %bb.g, label %bb.f

._crit_edge:                                      ; preds = %bb.t, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.w, label %bb.v

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 16
  %i.w = call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.v)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.w)
  %i.x = load i32, ptr %i.f, align 8, !range !18, !noundef !7
  %.not4 = icmp eq i32 %i.x, -1
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 24
  %i.z = load i8, ptr %i.y, align 8, !range !15, !noalias !1141, !noundef !7 ; 2 uses
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.aa = load i64, ptr %.sroa.0.028, align 8, !noalias !1141, !noundef !7 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.o, label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1141
  %i.ac = zext nneg i8 %i.z to i32
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream10write_enum(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 1, i32 noundef %i.ac), !noalias !1142
  %i.ad = load i32, ptr %i.c, align 8, !range !18, !noalias !1141, !noundef !7 ; 2 uses
  %.not1.i = icmp eq i32 %i.ad, -1
  br i1 %.not1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.9.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx11, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1141
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1141
  br label %bb.j

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1141
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 2, i64 noundef %i.aa), !noalias !1142
  %i.ae = load i32, ptr %i.b, align 8, !range !18, !noalias !1141, !noundef !7 ; 2 uses
  %.not2.i = icmp eq i32 %i.ae, -1
  br i1 %.not2.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.q, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1141
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 8
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af), !noalias !1142
  %i.ag = load i32, ptr %i.a, align 8, !range !18, !noalias !1141, !noundef !7 ; 2 uses
  %.not3.i = icmp eq i32 %i.ag, -1
  br i1 %.not3.i, label %bb.t, label %bb.r

bb.p:                                             ; preds = %bb.n
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx12, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1141
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1141
  br label %bb.o

bb.r:                                             ; preds = %bb.o
  %.sroa.9.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9.0..sroa_idx13, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1141
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.l
  %.sroa.0.022.ph = phi i32 [ %i.ad, %bb.l ], [ %i.ae, %bb.p ], [ %i.ag, %bb.r ]
  store i32 %.sroa.0.022.ph, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9, i64 20, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1141
  %i.ah = icmp eq ptr %i.q, %i.m
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %bb.f, %bb.h, %bb.s, %bb.aa, %bb.z, %bb.x, %bb.d
  ret void

bb.v:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !7
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream11write_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.t)
  %i.ak = load i32, ptr %i.e, align 8, !range !18, !noundef !7
  %.not6 = icmp eq i32 %i.ak, -1
  br i1 %.not6, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.y, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream20write_unknown_fields(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
  %i.am = load i32, ptr %i.d, align 8, !range !18, !noundef !7
  %.not7 = icmp eq i32 %i.am, -1
  br i1 %.not7, label %bb.aa, label %bb.z

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.z:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 -1, ptr %0, align 8
  br label %bb.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message6as_any(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @129, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message8into_any(ptr noalias noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @129, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsN_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf5clear5Clear5clear(ptr noalias nofree noundef align 8 dereferenceable(88) initializes((24, 32), (80, 81)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1149, !noundef !7
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_RNvMNtCs1eA6bChxBZF_5bytes5bytesNtB2_5Bytes8truncate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from:bb.a
  %.not472 = icmp eq i32 %i.db, -1
  br i1 %.not472, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.v
  %i.dc = zext nneg i8 %i.bj to i64
  %.sroa.4421.0.insert.shift = shl nuw nsw i64 %i.dc, 8
  %.sroa.0420.0.insert.insert = or disjoint i64 %.sroa.4421.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0420.0.insert.insert, ptr %.sroa.4198.0..sroa_idx, align 4
  br label %bb.ch

bb.bt:                                            ; preds = %bb.br
  %.sroa.4428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.4428.0.copyload = load i32, ptr %.sroa.4428.0..sroa_idx, align 4
  %.sroa.4432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load <2 x i64>, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 %i.db, ptr %0, align 8
  store i32 %.sroa.4428.0.copyload, ptr %.sroa.4432.0..sroa_idx, align 4
  store <2 x i64> %i.dd, ptr %.sroa.5433.0..sroa_idx, align 8
  br label %bb.ch

bb.bu:                                            ; preds = %bb.br
  %i.de = load i64, ptr %i.ac, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.de, ptr %i.ad, align 8
  br label %.backedge

bb.bv:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ch

bb.bw:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.backedge

bb.bx:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream11read_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
  %i.df = load i32, ptr %i.e, align 8, !range !18, !noundef !7 ; 2 uses
  %.not469 = icmp eq i32 %i.df, -1
  br i1 %.not469, label %bb.ca, label %bb.bz

bb.by:                                            ; preds = %bb.x
  %i.dg = zext nneg i8 %i.bj to i64
  %.sroa.4436.0.insert.shift = shl nuw nsw i64 %i.dg, 8
  %.sroa.0435.0.insert.insert = or disjoint i64 %.sroa.4436.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0435.0.insert.insert, ptr %.sroa.4216.0..sroa_idx, align 4
  br label %bb.ch

bb.bz:                                            ; preds = %bb.bx
  %.sroa.4443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4443.0.copyload = load i32, ptr %.sroa.4443.0..sroa_idx, align 4
  %.sroa.4447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load <2 x i64>, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.df, ptr %0, align 8
  store i32 %.sroa.4443.0.copyload, ptr %.sroa.4447.0..sroa_idx, align 4
  store <2 x i64> %i.dh, ptr %.sroa.5448.0..sroa_idx, align 8
  br label %bb.ch

bb.ca:                                            ; preds = %bb.bx
  %i.di = load i64, ptr %i.z, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.di, ptr %i.aa, align 8
  br label %.backedge

bb.cb:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCslpwiOMB70Kp_8protobuf18coded_input_streamNtB2_16CodedInputStream10read_int64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %2)
  %i.dj = load i32, ptr %i.d, align 8, !range !18, !noundef !7 ; 2 uses
  %.not467 = icmp eq i32 %i.dj, -1
  br i1 %.not467, label %bb.ce, label %bb.cd

bb.cc:                                            ; preds = %bb.y
  %i.dk = zext nneg i8 %i.bj to i64
  %.sroa.4451.0.insert.shift = shl nuw nsw i64 %i.dk, 8
  %.sroa.0450.0.insert.insert = or disjoint i64 %.sroa.4451.0.insert.shift, 1
  store i32 1, ptr %0, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0450.0.insert.insert, ptr %.sroa.4234.0..sroa_idx, align 4
  br label %bb.ch

bb.cd:                                            ; preds = %bb.cb
  %.sroa.4458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.4458.0.copyload = load i32, ptr %.sroa.4458.0..sroa_idx, align 4
  %.sroa.4462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = load <2 x i64>, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.dj, ptr %0, align 8
  store i32 %.sroa.4458.0.copyload, ptr %.sroa.4462.0..sroa_idx, align 4
  store <2 x i64> %i.dl, ptr %.sroa.5463.0..sroa_idx, align 8
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cb
  %i.dm = load i64, ptr %i.x, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.dm, ptr %i.y, align 8
  br label %.backedge

bb.cf:                                            ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ch

bb.cg:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge

.backedge:                                        ; preds = %bb.cg, %bb.ce, %bb.ca, %bb.bw, %bb.bu, %bb.bq, %bb.bm, %bb.bi, %bb.bg, %bb.bc, %bb.ay, %bb.aw, %bb.as, %bb.ao, %bb.ak, %bb.ag, %bb.ac
  br label %bb.b

bb.ch:                                            ; preds = %bb.ae, %bb.af, %bb.ai, %bb.aj, %bb.am, %bb.an, %bb.aq, %bb.ar, %bb.au, %bb.av, %bb.ax, %bb.ba, %bb.bb, %bb.be, %bb.bf, %bb.bh, %bb.bk, %bb.bl, %bb.bo, %bb.bp, %bb.bs, %bb.bt, %bb.bv, %bb.by, %bb.bz, %bb.cc, %bb.cd, %bb.cf, %bb.ab, %bb.z, %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.b = load i8, ptr %i.a, align 1, !range !19, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt9enum_sizeNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb11MessageTypeEBK_(i32 noundef 1, i8 noundef %i.b)
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 2, i64 noundef %i.d, i8 noundef 0)
  %i.h = add i32 %i.g, %.sroa.0.0
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 3, i64 noundef %i.j, i8 noundef 0)
  %i.m = add i32 %i.l, %.sroa.0.1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i64, ptr %i.n, align 8, !noundef !7 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 4, i64 noundef %i.o, i8 noundef 0)
  %i.r = add i32 %i.q, %.sroa.0.2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0.3 = phi i32 [ %.sroa.0.2, %bb.g ], [ %i.r, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 5, i64 noundef %i.t, i8 noundef 0)
  %i.w = add i32 %i.v, %.sroa.0.3
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %bb.i ], [ %i.w, %bb.j ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i64, ptr %i.x, align 8, !noundef !7 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 6, i64 noundef %i.y, i8 noundef 0)
  %i.ab = add i32 %i.aa, %.sroa.0.4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.0.5 = phi i32 [ %.sroa.0.4, %bb.k ], [ %i.ab, %bb.l ] ; 2 uses
  %i.ac = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 3 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad), "nonnull"(ptr %i.ae) ]
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.sroa.0.636 = phi i32 [ %i.al, %.lr.ph ], [ %.sroa.0.5, %bb.m ]
  %.sroa.019.035 = phi ptr [ %i.ag, %.lr.ph ], [ %i.ad, %bb.m ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 104 ; 2 uses
  %i.ah = tail call noundef i32 @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %.sroa.019.035) ; 2 uses
  %i.ai = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt25compute_raw_varint32_size(i32 noundef %i.ah)
  %i.aj = add i32 %.sroa.0.636, 1
  %i.ak = add i32 %i.aj, %i.ah
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = icmp eq ptr %i.ag, %i.ae
  br i1 %i.am, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  %.sroa.0.6.lcssa = phi i32 [ %.sroa.0.5, %bb.m ], [ %i.al, %.lr.ph ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load i64, ptr %i.an, align 8, !noundef !7 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.aq = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 8, i64 noundef %i.ao, i8 noundef 0)
  %i.ar = add i32 %i.aq, %.sroa.0.6.lcssa
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %.sroa.0.7 = phi i32 [ %.sroa.0.6.lcssa, %._crit_edge ], [ %i.ar, %bb.n ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = load i64, ptr %i.as, align 8, !noundef !7 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 15, i64 noundef %i.at, i8 noundef 0)
  %i.aw = add i32 %i.av, %.sroa.0.7
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sroa.0.8 = phi i32 [ %.sroa.0.7, %bb.o ], [ %i.aw, %bb.p ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load i8, ptr %i.ax, align 8, !range !14, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !align !6, !noundef !7 ; 2 uses
  %.not34 = icmp eq ptr %i.bb, null
  br i1 %.not34, label %bb.u, label %bb.t, !prof !12

bb.s:                                             ; preds = %bb.q, %bb.t
  %.sroa.0.9 = phi i32 [ %i.bj, %bb.t ], [ %.sroa.0.8, %bb.q ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !7 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bf = tail call noundef i32 @_RNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %i.bb) ; 2 uses
  %i.bg = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt25compute_raw_varint32_size(i32 noundef %i.bf)
  %i.bh = add i32 %.sroa.0.8, 1
  %i.bi = add i32 %i.bh, %i.bf
  %i.bj = add i32 %i.bi, %i.bg
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bk = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 13, i64 noundef %i.bd, i8 noundef 0)
  %i.bl = add i32 %i.bk, %.sroa.0.9
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v
  %.sroa.0.10 = phi i32 [ %.sroa.0.9, %bb.s ], [ %i.bl, %bb.v ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bn = load i8, ptr %i.bm, align 8, !range !14, !noundef !7
  %i.bo = shl nuw nsw i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i32
  %spec.select = add i32 %.sroa.0.10, %i.bp       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.br = load i64, ptr %i.bq, align 8, !noundef !7 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 11, i64 noundef %i.br, i8 noundef 0)
  %i.bu = add i32 %i.bt, %spec.select
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.0.12 = phi i32 [ %spec.select, %bb.w ], [ %i.bu, %bb.x ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !7 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !noundef !7
  %i.ca = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt10bytes_size(i32 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.bw)
  %i.cb = add i32 %i.ca, %.sroa.0.12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.0.13 = phi i32 [ %.sroa.0.12, %bb.y ], [ %i.cb, %bb.z ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !7 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizeyECs9RMo4C3Dvu6_10raft_proto(i32 noundef 14, i64 noundef %i.cd, i8 noundef 0)
  %i.cg = add i32 %i.cf, %.sroa.0.13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sroa.0.14 = phi i32 [ %.sroa.0.13, %bb.aa ], [ %i.cg, %bb.ab ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !7 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = tail call noundef i32 @_RINvNtCslpwiOMB70Kp_8protobuf2rt10value_sizexECs9RMo4C3Dvu6_10raft_proto(i32 noundef 16, i64 noundef %i.ci, i8 noundef 0)
  %i.cl = add i32 %i.ck, %.sroa.0.14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sroa.0.15 = phi i32 [ %.sroa.0.14, %bb.ac ], [ %i.cl, %bb.ad ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cn = tail call noundef i32 @_RNvNtCslpwiOMB70Kp_8protobuf2rt19unknown_fields_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm)
  %i.co = add i32 %i.cn, %.sroa.0.15              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3set(ptr noundef nonnull align 8 %i.cp, i32 noundef %i.co)
  ret i32 %i.co
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !align !6, !noundef !7 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %.lr.ph.split.us, !prof !12

.lr.ph.split.us:                                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !14, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 3 uses
  %.not.i.us = icmp eq ptr %i.k, null
  br i1 %.not.i.us, label %.split.us, label %.lr.ph.split.us.i.us, !prof !12

.lr.ph.split.us.i.us:                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !14, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph.split.us.i.us
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !align !6, !noundef !7
  %.not.i.us.i.us = icmp eq ptr %i.p, null
  br i1 %.not.i.us.i.us, label %.split.us.i, label %._crit_edge, !prof !12

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

.split.us:                                        ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

.split.us.i:                                      ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

._crit_edge:                                      ; preds = %bb.a, %.lr.ph.split.us, %.lr.ph.split.us.i.us, %bb.d
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message15get_cached_size(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8) acquire, align 8, !noalias !1226
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1Q_B1O_3newE0EB1U_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1226
  store ptr %i.c, ptr %i.b, align 8, !noalias !1226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1226
  store ptr %i.b, ptr %i.a, align 8, !noalias !1226
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1226
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1Q_B1O_3newE0EB1U_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageE3getNvMsh_B1Q_B1O_3newE0EB1U_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16default_instance8instance, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, ptr %i.c, align 8
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8) acquire, align 8, !noalias !1229
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_7MessageNtNtB15_7message7Message17descriptor_static0E0EB2O_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1229
  store ptr %i.c, ptr %i.b, align 8, !noalias !1229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1229
  store ptr %i.b, ptr %i.a, align 8, !noalias !1229
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, i64 8), i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1229
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_7MessageNtNtB15_7message7Message17descriptor_static0E0EB2O_.exit

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once9call_onceNCINvMs_NtCslpwiOMB70Kp_8protobuf7lazy_v2INtB13_6LazyV2NtNtNtB15_7reflect7message17MessageDescriptorE3getNCNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB2K_7MessageNtNtB15_7message7Message17descriptor_static0E0EB2O_.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr @_RNvNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB7_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17descriptor_static10descriptor, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message18get_unknown_fields(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message18mut_unknown_fields(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(192) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.w = load i8, ptr %i.v, align 1, !range !19, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load i64, ptr %i.x, align 8, !noundef !7 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aa = zext nneg i8 %i.w to i32
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream10write_enum(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 1, i32 noundef %i.aa)
  %i.ab = load i32, ptr %i.u, align 8, !range !18, !noundef !7
  %.not4 = icmp eq i32 %i.ab, -1
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.b

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 2, i64 noundef %i.y)
  %i.ac = load i32, ptr %i.t, align 8, !range !18, !noundef !7
  %.not5 = icmp eq i32 %i.ac, -1
  br i1 %.not5, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !7 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.af

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.g

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 3, i64 noundef %i.ae)
  %i.ag = load i32, ptr %i.s, align 8, !range !18, !noundef !7
  %.not6 = icmp eq i32 %i.ag, -1
  br i1 %.not6, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !7 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.af

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.k

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 4, i64 noundef %i.ai)
  %i.ak = load i32, ptr %i.r, align 8, !range !18, !noundef !7
  %.not7 = icmp eq i32 %i.ak, -1
  br i1 %.not7, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = load i64, ptr %i.al, align 8, !noundef !7 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.af

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.o

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 5, i64 noundef %i.am)
  %i.ao = load i32, ptr %i.q, align 8, !range !18, !noundef !7
  %.not8 = icmp eq i32 %i.ao, -1
  br i1 %.not8, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.o, %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !7 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.w, label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.af

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.s

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 6, i64 noundef %i.aq)
  %i.as = load i32, ptr %i.p, align 8, !range !18, !noundef !7
  %.not9 = icmp eq i32 %i.as, -1
  br i1 %.not9, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.y
  %i.at = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 2 uses
  %i.au = extractvalue { ptr, ptr } %i.at, 0      ; 3 uses
  %i.av = extractvalue { ptr, ptr } %i.at, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au), "nonnull"(ptr %i.av) ]
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.af

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.w

.lr.ph:                                           ; preds = %bb.w, %bb.ae
  %.sroa.0.026 = phi ptr [ %i.ax, %bb.ae ], [ %i.au, %bb.w ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.026, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9write_tag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 7, i8 noundef 2)
  %i.ay = load i32, ptr %i.o, align 8, !range !18, !noundef !7
  %.not10 = icmp eq i32 %i.ay, -1
  br i1 %.not10, label %bb.aa, label %bb.z

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ba = load i64, ptr %i.az, align 8, !noundef !7 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.ah, label %bb.ag

bb.z:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.026, i64 88
  %i.bd = call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.bc)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.bd)
  %i.be = load i32, ptr %i.n, align 8, !range !18, !noundef !7
  %.not11 = icmp eq i32 %i.be, -1
  br i1 %.not11, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXs0_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_5EntryNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %.sroa.0.026, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
  %i.bf = load i32, ptr %i.m, align 8, !range !18, !noundef !7
  %.not12 = icmp eq i32 %i.bf, -1
  br i1 %.not12, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bg = icmp eq ptr %i.ax, %i.av
  br i1 %i.bg, label %._crit_edge, label %.lr.ph

bb.af:                                            ; preds = %bb.as, %bb.au, %bb.aw, %bb.z, %bb.ab, %bb.ad, %bb.bx, %bb.bw, %bb.bu, %bb.bq, %bb.bm, %bb.bi, %bb.be, %bb.ba, %bb.am, %bb.ai, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h, %bb.d
  ret void

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 8, i64 noundef %i.ba)
  %i.bh = load i32, ptr %i.l, align 8, !range !18, !noundef !7
  %.not13 = icmp eq i32 %i.bh, -1
  br i1 %.not13, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge, %bb.aj
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !7 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.al, label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 15, i64 noundef %i.bj)
  %i.bl = load i32, ptr %i.k, align 8, !range !18, !noundef !7
  %.not14 = icmp eq i32 %i.bl, -1
  br i1 %.not14, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.ah, %bb.an
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load i8, ptr %i.bm, align 8, !range !14, !noundef !7
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.ao, label %bb.ap

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.af

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.al

bb.ao:                                            ; preds = %bb.al
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !align !6, !noundef !7 ; 3 uses
  %.not15 = icmp eq ptr %i.bq, null
  br i1 %.not15, label %bb.ar, label %bb.aq, !prof !12

bb.ap:                                            ; preds = %bb.al, %bb.ax
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i64, ptr %i.br, align 8, !noundef !7 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.az, label %bb.ay

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9write_tag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 9, i8 noundef 2)
  %i.bu = load i32, ptr %i.j, align 8, !range !18, !noundef !7
  %.not16 = icmp eq i32 %i.bu, -1
  br i1 %.not16, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.af

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bw = call noundef i32 @_RNvMNtCslpwiOMB70Kp_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.bv)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.bw)
  %i.bx = load i32, ptr %i.i, align 8, !range !18, !noundef !7
  %.not17 = icmp eq i32 %i.bx, -1
  br i1 %.not17, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.af

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXsc_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8SnapshotNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
  %i.by = load i32, ptr %i.h, align 8, !range !18, !noundef !7
  %.not18 = icmp eq i32 %i.by, -1
  br i1 %.not18, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.af

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ap

bb.ay:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream12write_uint64(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 13, i64 noundef %i.bs)
  %i.bz = load i32, ptr %i.g, align 8, !range !18, !noundef !7
  %.not19 = icmp eq i32 %i.bz, -1
  br i1 %.not19, label %bb.bb, label %bb.ba

bb.az:                                            ; preds = %bb.ap, %bb.bb
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cb = load i8, ptr %i.ca, align 8, !range !14, !noundef !7
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.bc, label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.af

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.az

bb.bc:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream10write_bool(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 10, i1 noundef zeroext true)
  %i.cd = load i32, ptr %i.f, align 8, !range !18, !noundef !7
  %.not20 = icmp eq i32 %i.cd, -1
  br i1 %.not20, label %bb.bf, label %bb.be
end_hunk_4
begin_hunk_5_@_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message14write_to_bytesB8_:bb.a
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.o

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9check_eof(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1374, !noundef !7
  %i.ac = icmp sgt i64 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5: ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9 unwind label %bb.o

.body:                                            ; preds = %bb.h, %bb.m, %bb.o, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.z, %bb.h ], [ %i.af, %bb.o ], [ %i.ad, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.s

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9: ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.p

bb.s:                                             ; preds = %.body, %bb.d
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message15write_to_writerB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvXNtCslpwiOMB70Kp_8protobuf19coded_output_streamQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteEL_NtB3_21WithCodedOutputStream24with_coded_output_streamuNCNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtB5_7message7Message15write_to_writer0EB2A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message16merge_from_bytesB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 -1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store i64 %3, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i8 3, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 100, ptr %i.c, align 4
  invoke void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(112) %i.a) #21
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtCslpwiOMB70Kp_8protobuf13buf_read_iterNtB2_11BufReadIterNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.f = load i8, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !range !8, !alias.scope !1387, !noundef !7 ; 2 uses
  %i.g = icmp samesign ult i8 %i.f, 3
  br i1 %i.g, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %.not.i.i = icmp eq i8 %i.f, 2
  br i1 %.not.i.i, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !alias.scope !1389, !noundef !7 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i.i = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1389, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #22, !noalias !1389
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.i = load i8, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !range !8, !alias.scope !1391, !noundef !7 ; 2 uses
  %i.j = icmp samesign ult i8 %i.i, 3
  br i1 %i.j, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %.not.i.i.i.i = icmp eq i8 %i.i, 2
  br i1 %.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i.i.i = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !alias.scope !1393, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1393, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #22, !noalias !1394
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message17check_initializedB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 0 uses
  store i32 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message25write_length_delimited_toB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call noundef i32 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.c)
  %i.d = load i32, ptr %i.b, align 8, !range !18, !noundef !7
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
  %i.e = load i32, ptr %i.a, align 8, !range !18, !noundef !7
  %.not1 = icmp eq i32 %i.e, -1
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message29write_length_delimited_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [20 x i8], align 4            ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775808, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = invoke noundef i32 @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1406
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i32 noundef %i.g)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %.noexc
  %i.h = load i32, ptr %i.b, align 8, !range !18, !noalias !1406, !noundef !7 ; 2 uses
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc4
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx11, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1406
  br label %bb.f

bb.c:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1406
  invoke void @_RNvXsM_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.c
  %i.i = load i32, ptr %i.a, align 8, !range !18, !noalias !1406, !noundef !7 ; 2 uses
  %.not1.i = icmp eq i32 %i.i, -1
  br i1 %.not1.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc5
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx12, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1406
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc, %bb.a, %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #21
          to label %common.resume unwind label %bb.r

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.ph = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.d ]
  store i32 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, i64 20, i1 false)
  br label %bb.n

bb.g:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream5flush(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.k = load i32, ptr %i.c, align 8, !range !18, !noundef !7
  %.not3 = icmp eq i32 %i.k, -1
  br i1 %.not3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 8
  %i.l = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1407, !noundef !7
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.p, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.p ], [ %i.n, %bb.l ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split: ; preds = %bb.k, %bb.o
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split, %bb.j, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.i, %bb.f
  %i.p = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1408, !noundef !7
  %i.q = icmp sgt i64 %i.p, -1
  br i1 %i.q, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.r:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message31write_length_delimited_to_bytesB8_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvNtCslpwiOMB70Kp_8protobuf19coded_output_stream33with_coded_output_stream_to_bytesNCNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtB4_7message7Message31write_length_delimited_to_bytes0EB1w_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb12ConfChangeV2NtNtCslpwiOMB70Kp_8protobuf7message7Message32write_length_delimited_to_writerB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #0 {
end_hunk_5
begin_hunk_6_@_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14write_to_bytesB8_:bb.a
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.s

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream9check_eof(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  %i.aq = load i64, ptr %i.c, align 8, !range !9, !alias.scope !1639, !noundef !7
  %i.ar = icmp sgt i64 %i.aq, -1
  br i1 %i.ar, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9 unwind label %bb.s

.body:                                            ; preds = %bb.l, %bb.q, %bb.s, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ao, %bb.l ], [ %i.au, %bb.s ], [ %i.as, %bb.q ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.w

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9: ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.u ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.t

bb.w:                                             ; preds = %.body, %bb.h
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message15write_to_writerB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvXNtCslpwiOMB70Kp_8protobuf19coded_output_streamQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteEL_NtB3_21WithCodedOutputStream24with_coded_output_streamuNCNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtB5_7message7Message15write_to_writer0EB2A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message16merge_from_bytesB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 -1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store i64 %3, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i8 3, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 100, ptr %i.c, align 4
  invoke void @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message10merge_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(112) %i.a) #21
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtCslpwiOMB70Kp_8protobuf13buf_read_iterNtB2_11BufReadIterNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1652)
  %i.f = load i8, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !range !8, !alias.scope !1652, !noundef !7 ; 2 uses
  %i.g = icmp samesign ult i8 %i.f, 3
  br i1 %i.g, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  %.not.i.i = icmp eq i8 %i.f, 2
  br i1 %.not.i.i, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !alias.scope !1654, !noundef !7 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i.i = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1654, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #22, !noalias !1654
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  %i.i = load i8, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !range !8, !alias.scope !1656, !noundef !7 ; 2 uses
  %i.j = icmp samesign ult i8 %i.i, 3
  br i1 %i.j, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  %.not.i.i.i.i = icmp eq i8 %i.i, 2
  br i1 %.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i.i.i = load i64, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8, !alias.scope !1658, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1658, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #22, !noalias !1659
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf18coded_input_stream16CodedInputStreamECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message17check_initializedB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs9_NtCslpwiOMB70Kp_8protobuf8repeatedRINtB5_13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !align !6, !noundef !7 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %.lr.ph.split.us.i, !prof !12

.lr.ph.split.us.i:                                ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !14, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !align !6, !noundef !7 ; 3 uses
  %.not.i.us.i = icmp eq ptr %i.k, null
  br i1 %.not.i.us.i, label %.split.us.i, label %.lr.ph.split.us.i.us.i, !prof !12

.lr.ph.split.us.i.us.i:                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !14, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit

bb.d:                                             ; preds = %.lr.ph.split.us.i.us.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !align !6, !noundef !7
  %.not.i.us.i.us.i = icmp eq ptr %i.p, null
  br i1 %.not.i.us.i.us.i, label %.split.us.i.i, label %_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit, !prof !12

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

.split.us.i:                                      ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

.split.us.i.i:                                    ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #24
  unreachable

_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message14is_initialized.exit: ; preds = %bb.a, %.lr.ph.split.us.i, %.lr.ph.split.us.i.us.i, %bb.d
  store i32 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message25write_length_delimited_toB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = tail call noundef i32 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.c)
  %i.d = load i32, ptr %i.b, align 8, !range !18, !noundef !7
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2)
  %i.e = load i32, ptr %i.a, align 8, !range !18, !noundef !7
  %.not1 = icmp eq i32 %i.e, -1
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message29write_length_delimited_to_vecB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [20 x i8], align 4            ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -9223372036854775808, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = invoke noundef i32 @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message12compute_size(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1671
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream18write_raw_varint32(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, i32 noundef %i.g)
          to label %.noexc4 unwind label %bb.e

.noexc4:                                          ; preds = %.noexc
  %i.h = load i32, ptr %i.b, align 8, !range !18, !noalias !1671, !noundef !7 ; 2 uses
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc4
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx11, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1671
  br label %bb.f

bb.c:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1671
  invoke void @_RNvXsi_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_7MessageNtNtCslpwiOMB70Kp_8protobuf7message7Message26write_to_with_cached_sizes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.c
  %i.i = load i32, ptr %i.a, align 8, !range !18, !noalias !1671, !noundef !7 ; 2 uses
  %.not1.i = icmp eq i32 %i.i, -1
  br i1 %.not1.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.noexc5
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8.0..sroa_idx12, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1671
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc, %bb.a, %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #21
          to label %common.resume unwind label %bb.r

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.ph = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.d ]
  store i32 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8, i64 20, i1 false)
  br label %bb.n

bb.g:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCslpwiOMB70Kp_8protobuf19coded_output_streamNtB5_17CodedOutputStream5flush(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.k = load i32, ptr %i.c, align 8, !range !18, !noundef !7
  %.not3 = icmp eq i32 %i.k, -1
  br i1 %.not3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 8
  %i.l = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1672, !noundef !7
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf19coded_output_stream17CodedOutputStreamECs9RMo4C3Dvu6_10raft_proto.exit8.sink.split unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.p, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.p ], [ %i.n, %bb.l ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op
end_hunk_6
