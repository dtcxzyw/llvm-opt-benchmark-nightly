Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft_proto-87d3c1e0d4c3ff14.raft_proto.72ee98fef958e700-cgu.6?download=true
inline.NumInlined: 108
inline.NumDeleted: 65
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@2 = private unnamed_addr constant [24 x i8] c"proto/src/confchange.rs\00", align 1
@3 = private unnamed_addr constant [24 x i8] c"\0Cparse token \C0\07 fail: \C0\00", align 1
@4 = private unnamed_addr constant [17 x i8] c"\0Eunknown token \C0\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9RMo4C3Dvu6_10raft_proto, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs9RMo4C3Dvu6_10raft_proto }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\17\00\00\00\00\00\00\00>\00\00\00*\00\00\00" }>, align 8
@8 = private unnamed_addr constant [5 x i8] c"Error", align 1
@9 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@10 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @9, [24 x i8] zeroinitializer }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE7reserveNCINvNtB8_3map11make_hasherBQ_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECslpwiOMB70Kp_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTljEE7reserveNCINvNtB8_3map11make_hasherljNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTljEE14reserve_rehashNCINvNtB8_3map11make_hasherljNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECslpwiOMB70Kp_8protobuf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1l_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecmEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecmEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B1y_B1v_15clone_from_impl0EECs9RMo4C3Dvu6_10raft_proto(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [104 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -104
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(104) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit, label %bb.b

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !16, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !16, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !17
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %.val9.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !20
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.m to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i.i, -1         ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -104
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(104) %i.w), !noalias !16
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i, %bb.b
  %i.y = mul i64 %i.b, 104
  %i.z = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 112                      ; 2 uses
  %i.ac = add nsw i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !12, !nonnull !4, !noundef !4
  %i.ai = sub i64 -112, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !12
  br label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit

_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs9RMo4C3Dvu6_10raft_proto.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs9RMo4C3Dvu6_10raft_proto.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr captures(address) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.8.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !38, !noundef !4 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !42, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.8.val, align 8, !alias.scope !42, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !43
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i, %bb.d
  %.sroa.05.016.i.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.d ], [ %.sroa.05.1.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.d ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i.i.i.i = phi i16 [ %i.k, %bb.d ], [ %i.x, %.noexc.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %bb.d ], [ %i.v, %.noexc.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i.i.i.i.i, %bb.e ]
  %.val9.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !46
  %i.n = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -1664 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.6.1.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i.i.i.i.i, %bb.e ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i.i.i.i.i.i.i.i, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(104) %i.u)
          to label %.noexc.i.i.i unwind label %bb.g

.noexc.i.i.i:                                     ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i.i
  %i.v = add i64 %.sroa.107.013.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.w = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.x = and i16 %i.w, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i, label %bb.e

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i, %bb.c
  %i.z = mul i64 %i.c, 104
  %i.aa = icmp slt i64 %i.c, 177372539170284150
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 112                      ; 2 uses
  %i.ad = add nsw i64 %i.c, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i
  %i.ai = load ptr, ptr %.8.val, align 8, !alias.scope !38, !nonnull !4, !noundef !4
  %i.aj = sub i64 -112, %i.ab
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !38
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 32, i64 noundef 8) #16
  resume { ptr, i32 } %i.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %bb.f, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i.i.i.i, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %.body4.i unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto.exit.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body4.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit.i unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.body4.i:                                         ; preds = %bb.i, %bb.f, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #17
          to label %.body7.i unwind label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit.i: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body7.i unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit9.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.body7.i:                                         ; preds = %bb.m, %bb.j, %.body4.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body4.i ], [ %i.o, %bb.m ], [ %i.l, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #17
          to label %common.resume.i unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit9.i: ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesECs9RMo4C3Dvu6_10raft_proto.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit9.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume.i:                                  ; preds = %bb.n, %.body7.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.q, %bb.n ], [ %.pn2.i, %.body7.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.p:                                             ; preds = %.body7.i, %.body4.i, %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto.exit9.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs9RMo4C3Dvu6_10raft_proto10confchange17parse_conf_change(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = tail call { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 1        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.p, ptr %i.k, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store i64 %i.n, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i8 0, ptr %.sroa.619.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.ac, %bb.b
  %.promoted16.i = phi i64 [ %.promoted16.i.pre, %bb.ac ], [ %i.n, %bb.b ]
  %.promoted15.i = phi ptr [ %.promoted15.i.pre, %bb.ac ], [ %i.p, %bb.b ]
  %.promoted.i = phi i8 [ %.promoted.i.pre, %bb.ac ], [ 0, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.b, align 8, !noalias !52
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.w = phi i64 [ %i.aj, %.noexc ], [ %.promoted16.i, %bb.d ] ; 5 uses
  %i.x = phi ptr [ %i.ak, %.noexc ], [ %.promoted15.i, %bb.d ] ; 13 uses
  %i.y = phi i8 [ %i.al, %.noexc ], [ %.promoted.i, %bb.d ]
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit106

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  %i.ab = icmp samesign eq i64 %i.w, 0
  br i1 %i.ab, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i
  %.sroa.02.08.i.i.i = phi i64 [ %i.ae, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.ac = phi ptr [ %i.ad, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ac, align 1, !noalias !57, !noundef !4
  switch i8 %.val.i.i.i, label %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i [
    i8 9, label %bb.g
    i8 10, label %bb.g
    i8 12, label %bb.g
    i8 13, label %bb.g
    i8 32, label %bb.g
  ]

_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.sroa.02.08.i.i.i, 1
  %i.af = icmp eq ptr %i.ad, %i.aa
  br i1 %i.af, label %.loopexit.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ag = add nuw i64 %.sroa.02.08.i.i.i, 1       ; 2 uses
  %i.ah = sub nuw i64 %i.w, %i.ag                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag ; 2 uses
  store ptr %i.ai, ptr %i.k, align 8, !alias.scope !60, !noalias !61, !captures !62
  store i64 %i.ah, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !60, !noalias !61
  br label %bb.h

.loopexit.i.i:                                    ; preds = %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceENtNtNtNtBb_4iter6traits8iterator8Iterator4next0Cs9RMo4C3Dvu6_10raft_proto.exit.i.i.i, %bb.f
  store i8 1, ptr %.sroa.619.0..sroa_idx, align 8, !alias.scope !60, !noalias !61
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %bb.g
  %i.aj = phi i64 [ %i.w, %.loopexit.i.i ], [ %i.ah, %bb.g ]
  %i.ak = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.ai, %bb.g ]
  %i.al = phi i8 [ 1, %.loopexit.i.i ], [ 0, %bb.g ]
  %.sroa.5.1.i.ph.i = phi i64 [ %i.w, %.loopexit.i.i ], [ %.sroa.02.08.i.i.i, %bb.g ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  store ptr %i.x, ptr %i.a, align 8, !noalias !63
  store i64 %.sroa.5.1.i.ph.i, ptr %i.t, align 8, !noalias !63
  %i.am = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNtNtBb_3str15BytesIsNotEmptyINtB7_5FnMutTRRShEE8call_mutCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc unwind label %.loopexit105

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  br i1 %i.am, label %bb.i, label %bb.e

.body:                                            ; preds = %.loopexit105, %.loopexit.split-lp, %bb.aa, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.aa ], [ %i.dm, %bb.ah ], [ %lpad.loopexit, %.loopexit105 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #17
          to label %common.resume unwind label %bb.ai

.loopexit105:                                     ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ad, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.loopexit106, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.x, ptr %i.j, align 8, !captures !62
  store i64 %.sroa.5.1.i.ph.i, ptr %i.u, align 8
  %i.an = icmp ult i64 %.sroa.5.1.i.ph.i, 2
  br i1 %i.an, label %bb.n, label %bb.l

.loopexit106:                                     ; preds = %bb.i, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_.exit, %.loopexit106
  ret void

bb.l:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.5.1.i.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.x, align 1, !noalias !67, !noundef !4 ; 5 uses
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.m, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i: ; preds = %bb.l
  %i.at = and i8 %i.ar, 31
  %i.au = zext nneg i8 %i.at to i32               ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.aw = load i8, ptr %i.aq, align 1, !noalias !67, !noundef !4
  %i.ax = shl nuw nsw i32 %i.au, 6
  %i.ay = and i8 %i.aw, 63
  %i.az = zext nneg i8 %i.ay to i32               ; 2 uses
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = icmp samesign ugt i8 %i.ar, -33
  br i1 %i.bb, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bc = zext nneg i8 %i.ar to i32
  br label %bb.o

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i
  %i.bd = icmp samesign ne i64 %.sroa.5.1.i.ph.i, 2
  call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 3 ; 2 uses
  %i.bf = load i8, ptr %i.av, align 1, !noalias !67, !noundef !4
  %i.bg = shl nuw nsw i32 %i.az, 6
  %i.bh = and i8 %i.bf, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi            ; 2 uses
  %i.bk = shl nuw nsw i32 %i.au, 12
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %i.bm = icmp samesign ugt i8 %i.ar, -17
  br i1 %i.bm, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i, label %bb.o

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i
  %i.bn = icmp samesign ne i64 %.sroa.5.1.i.ph.i, 3
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bp = load i8, ptr %i.be, align 1, !noalias !67, !noundef !4
  %i.bq = shl nuw nsw i32 %i.au, 18
  %i.br = and i32 %i.bq, 1835008
  %i.bs = shl nuw nsw i32 %i.bj, 6
  %i.bt = and i8 %i.bp, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = or disjoint i32 %i.bv, %i.br
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9RMo4C3Dvu6_10raft_proto, ptr %.sroa.429.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @4, ptr noundef nonnull %i.h)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i
  %.sroa.073.0.ph = phi ptr [ %i.av, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i ], [ %i.be, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i ], [ %i.bo, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i ], [ %i.aq, %bb.m ] ; 4 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.ba, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit12.i ], [ %i.bl, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit14.i ], [ %i.bw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto.exit16.i ], [ %i.bc, %bb.m ] ; 2 uses
  %i.bx = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.bx)
  switch i32 %.sroa.4.0.i.ph, label %bb.p [
    i32 118, label %bb.s
    i32 108, label %bb.q
    i32 114, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9RMo4C3Dvu6_10raft_proto, ptr %.sroa.441.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @4, ptr noundef nonnull %i.f)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit68 unwind label %bb.ah

bb.q:                                             ; preds = %bb.o
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q
  %.sroa.02.0 = phi i8 [ 1, %bb.r ], [ 2, %bb.q ], [ 0, %bb.o ]
  %i.by = ptrtoint ptr %i.ap to i64
  %i.bz = ptrtoint ptr %.sroa.073.0.ph to i64
  %i.ca = sub nuw i64 %i.by, %i.bz                ; 2 uses
  switch i64 %i.ca, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.cb = load i8, ptr %.sroa.073.0.ph, align 1, !alias.scope !70, !noalias !73, !noundef !4 ; 2 uses
  switch i8 %i.cb, label %bb.u [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.s
  %.pr.i = load i8, ptr %.sroa.073.0.ph, align 1, !alias.scope !70, !noalias !73
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i, %bb.t
  %i.cc = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.cb, %bb.t ]
  %cond.i = icmp eq i8 %i.cc, 43                  ; 2 uses
  %i.cd = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.ca, %i.cd        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i69 = getelementptr inbounds nuw i8, ptr %.sroa.073.0.ph, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.ce = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.ce, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.u
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.x
  %.not52.i = icmp eq i64 %i.cg, 0
  br i1 %.not52.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.u, %.preheader56.i
  %.sroa.0.1.i166 = phi ptr [ %i.cf, %.preheader56.i ], [ %.sroa.0.0.i69, %bb.u ] ; 2 uses
  %.sroa.15.1.i165 = phi i64 [ %i.cg, %.preheader56.i ], [ %.sroa.15.0.i, %bb.u ]
  %.sroa.042.0.i164 = phi i64 [ %i.co, %.preheader56.i ], [ 0, %bb.u ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i166, i64 1
  %i.cg = add nsw i64 %.sroa.15.1.i165, -1        ; 2 uses
  %3 = mul nuw i64 %.sroa.042.0.i164, 10          ; 2 uses
  %4 = icmp ugt i64 %.sroa.042.0.i164, 1844674407370955161
  %i.ch = load i8, ptr %.sroa.0.1.i166, align 1, !alias.scope !70, !noalias !73, !noundef !4 ; 2 uses
  br i1 %4, label %bb.w, label %bb.v, !prof !5

bb.v:                                             ; preds = %.preheader56.i.preheader
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.x, label %.loopexit

bb.w:                                             ; preds = %.preheader56.i.preheader
  %i.cl = add i8 %i.ch, -48
  %i.cm = icmp ult i8 %i.cl, 10
  %spec.select = select i1 %i.cm, i8 2, i8 1
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.cn = zext nneg i32 %i.cj to i64
  %i.co = add i64 %3, %i.cn                       ; 3 uses
  %i.cp = icmp ult i64 %i.co, %3
  br i1 %i.cp, label %.loopexit, label %.preheader56.i, !prof !5

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.y
  %.sroa.0.269.i = phi ptr [ %i.cw, %bb.y ], [ %.sroa.0.0.i69, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.cv, %bb.y ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.cy, %bb.y ], [ 0, %.preheader.i ]
  %i.cq = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !70, !noalias !73, !noundef !4
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, -48                  ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 10
  br i1 %i.ct, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.lr.ph.i
  %i.cu = mul i64 %.sroa.042.267.i, 10
  %i.cv = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.cx = zext nneg i32 %i.cs to i64
  %i.cy = add i64 %i.cu, %i.cx                    ; 2 uses
  %.not53.i = icmp eq i64 %i.cv, 0
  br i1 %.not53.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.s, %bb.t, %bb.t, %bb.v, %bb.x, %.lr.ph.i, %bb.w
  %.sroa.5.0.ph = phi i8 [ 2, %bb.x ], [ %spec.select, %bb.w ], [ 1, %.lr.ph.i ], [ 1, %bb.v ], [ 0, %bb.s ], [ 1, %bb.t ], [ 1, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %.sroa.5.0.ph, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9RMo4C3Dvu6_10raft_proto, ptr %.sroa.447.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.cz, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.451.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @3, ptr noundef nonnull %i.c)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit71 unwind label %bb.ah

_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.y, %.preheader.i
  %.sroa.1281.0 = phi i64 [ %i.cy, %bb.y ], [ 0, %.preheader.i ], [ %i.co, %.preheader56.i ]
  %i.da = load i64, ptr %i.r, align 8, !alias.scope !75, !noalias !78, !noundef !4 ; 3 uses
  %i.db = load i64, ptr %i.l, align 8, !range !80, !alias.scope !75, !noalias !78, !noundef !4
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ac unwind label %bb.aa, !noalias !78

bb.aa:                                            ; preds = %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr null) #17
          to label %.body unwind label %bb.ab, !noalias !78

bb.ab:                                            ; preds = %bb.aa
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !78
  unreachable

bb.ac:                                            ; preds = %bb.z, %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit
  %i.df = load ptr, ptr %i.q, align 8, !alias.scope !75, !noalias !78, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %i.da ; 3 uses
  store i64 %.sroa.1281.0, ptr %i.dg, align 8
  %.sroa.4.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx85, i8 0, i64 16, i1 false)
  store i8 %.sroa.02.0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dh = add i64 %i.da, 1
  store i64 %i.dh, ptr %i.r, align 8, !alias.scope !75, !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.promoted.i.pre = load i8, ptr %.sroa.619.0..sroa_idx, align 8, !alias.scope !60, !noalias !61
  %.promoted15.i.pre = load ptr, ptr %i.k, align 8, !alias.scope !49, !noalias !61
  %.promoted16.i.pre = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !49, !noalias !61
  br label %bb.d

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit71: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit68, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit71
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr null)
          to label %bb.ae unwind label %.loopexit.split-lp

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit68: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.ad

bb.ae:                                            ; preds = %bb.ad, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %.body, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.dk, %bb.af ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEEB1e_.exit: ; preds = %bb.ae
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.k

bb.ah:                                            ; preds = %bb.p, %.loopexit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleEBH_(ptr null) #17
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.body
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs9RMo4C3Dvu6_10raft_proto10confchange21stringify_conf_change(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 288230376151711744) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.idx = shl nuw nsw i64 %2, 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !81
  switch i8 %.pre, label %default.unreachable47 [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel unwind label %.loopexit.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel unwind label %.loopexit.loopexit.split-lp

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel unwind label %.loopexit.loopexit.split-lp

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel: ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ 114, %bb.d ], [ 108, %bb.c ], [ 118, %bb.e ]
  %i.g = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  store i8 %.sink, ptr %i.g, align 1
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.h = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, ptr noundef nonnull @5, ptr noundef nonnull %i.b)
          to label %bb.f unwind label %.loopexit.loopexit.split-lp

bb.f:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel
  br i1 %i.h, label %.loopexit43, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel, !prof !5

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %._crit_edge, label %.peel.next

.loopexit.loopexit:                               ; preds = %bb.j, %bb.i, %bb.h, %.peel.next, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27
  %lpad.loopexit40 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.c, %bb.d, %bb.e, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit31.peel
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit43
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit40, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp41, %.loopexit.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %bb.m unwind label %bb.l

._crit_edge:                                      ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %.peel.next
  %i.j = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !82, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  store i8 32, ptr %i.k, align 1
  %i.l = add nuw i64 %i.q, 1                      ; 3 uses
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !82
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 24
  %i.n = load i8, ptr %i.m, align 8, !range !81, !noundef !4
  %i.o = icmp sgt i64 %i.l, -1
  call void @llvm.assume(i1 %i.o)
  switch i8 %i.n, label %.unreachabledefault [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

.peel.next:                                       ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit
  %.sroa.0.038 = phi ptr [ %i.p, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit ], [ %i.f, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit.peel ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 32 ; 2 uses
  %i.q = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !82, !noundef !4 ; 4 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.loopexit

.unreachabledefault:                              ; preds = %bb.g
  unreachable

default.unreachable47:                            ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.loopexit

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.loopexit

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27 unwind label %.loopexit.loopexit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27: ; preds = %bb.j, %bb.i, %bb.h
  %.sink51 = phi i8 [ 114, %bb.i ], [ 118, %bb.h ], [ 108, %bb.j ]
  %i.s = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  store i8 %.sink51, ptr %i.t, align 1
  %i.u = add nuw i64 %i.q, 2
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.038, ptr %i.b, align 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.v = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, ptr noundef nonnull @5, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %.loopexit.loopexit

bb.k:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit27
  br i1 %i.v, label %.loopexit43, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit, !prof !5

.loopexit43:                                      ; preds = %bb.k, %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit43
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = icmp eq ptr %i.p, %i.d
  br i1 %i.w, label %._crit_edge, label %.peel.next, !llvm.loop !85

bb.l:                                             ; preds = %.loopexit
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.m:                                             ; preds = %.loopexit
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !87, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !87, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !87, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !87
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !93, !noalias !90, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !93, !noalias !90, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !93, !noalias !90
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !93, !noalias !90
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [28 x i8], align 4        ; 4 uses
  %.sroa.516.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.617.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.7.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %2 = icmp ugt i64 %i.i, 177372539170284150
  br i1 %2, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %3 = mul nuw i64 %i.i, 104
  %i.j = add nuw i64 %3, 8
  %i.k = and i64 %i.j, -16                        ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.l, %i.k                       ; 5 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !97

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.c
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !98
  %i.q = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !98 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !98
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.t = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !98
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.t, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.q, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.k
  %i.v = icmp ult i64 %i.g, 8
  %i.w = lshr i64 %i.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i = select i1 %i.v, i64 %i.g, i64 %i.x
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.f, %bb.g
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.l, %bb.g ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.f ], [ %.sroa.07.0.i.i, %bb.g ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.f ], [ %i.g, %bb.g ]
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %i.u, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.0.0, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !113, !noalias !114, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.y, i64 %.pre-phi, i1 false), !noalias !115
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !113, !noalias !114, !noundef !4 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.y, align 16, !noalias !116
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 4
  %i.af = ptrtoint ptr %i.y to i64
  br label %bb.i

bb.h:                                             ; preds = %.loopexit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %.pn.pn.i.i.i.i, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B1y_B1v_15clone_from_impl0EECs9RMo4C3Dvu6_10raft_proto(i64 %.sroa.011.035.i.i, ptr nonnull align 8 dereferenceable(32) %i.e) #17
          to label %.body unwind label %bb.s, !noalias !113

bb.i:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.011.035.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bj, %bb.r ]
  %.sroa.012.034.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.012.1.i.i, %bb.r ] ; 2 uses
  %.sroa.6.033.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.r ] ; 2 uses
  %.sroa.813.032.i.i = phi i16 [ %i.ad, %.lr.ph.i.i ], [ %i.ap, %bb.r ] ; 2 uses
  %.sroa.1014.031.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %i.as, %bb.r ]
  %.not11.i.i.i = icmp eq i16 %.sroa.813.032.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.033.i.i, %bb.i ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.012.034.i.i, %bb.i ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !119
  %i.aj = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -1664 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.033.i.i, %bb.i ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.034.i.i, %bb.i ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.813.032.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [104 x i8], ptr %.sroa.012.1.i.i, i64 %i.aq ; 6 uses
  %i.as = add i64 %.sroa.1014.031.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -104
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !122, !noalias !125, !noundef !4
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !127
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.av)
          to label %.noexc.i.i unwind label %bb.h, !noalias !115

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !127
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 -72
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.l unwind label %bb.k, !noalias !131

bb.j:                                             ; preds = %bb.m, %bb.k
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.m ], [ %i.ax, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %.body.i.i unwind label %bb.q, !noalias !131

bb.k:                                             ; preds = %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !127
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 -48
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.o unwind label %bb.n, !noalias !131

bb.m:                                             ; preds = %bb.p, %bb.n
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bb, %bb.p ], [ %i.az, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.j unwind label %bb.q, !noalias !131

bb.n:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  %i.ba = getelementptr inbounds i8, ptr %i.ar, i64 -24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %bb.r unwind label %bb.p, !noalias !131

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.m unwind label %bb.q, !noalias !131

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.j
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !131
  unreachable

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !127
  %i.bd = ptrtoint ptr %i.ar to i64
  %i.be = sub i64 %i.af, %i.bd
  %i.bf = sdiv exact i64 %i.be, 104               ; 2 uses
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [104 x i8], ptr %.sroa.0.0, i64 %i.bg ; 5 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -104
  store i32 %i.au, ptr %i.bi, align 8, !noalias !115
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bh, i64 -100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i, i64 28, i1 false), !noalias !115
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bh, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.i.i, i64 24, i1 false), !noalias !115
  %.sroa.617.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bh, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i, i64 24, i1 false), !noalias !115
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bh, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, i64 24, i1 false), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.bj = add nsw i64 %i.bf, 1
  %i.bk = icmp eq i64 %i.as, 0
  br i1 %i.bk, label %.loopexit, label %bb.i

bb.s:                                             ; preds = %.body.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !115
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false)
  br label %bb.u

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #17
          to label %bb.w unwind label %bb.v

.loopexit:                                        ; preds = %bb.r, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto.exit
  store i64 %i.aa, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !114, !noalias !113
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !113, !noalias !114, !noundef !4
  store i64 %i.bn, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !114, !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.t
  ret void

bb.v:                                             ; preds = %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !133, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringjENtNtB1h_5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !139, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !139, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !140
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !143
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i.i unwind label %bb.e, !noalias !139

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i unwind label %bb.f, !noalias !139

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !139
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs9RMo4C3Dvu6_10raft_proto.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !139
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringjENtNtB1h_5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !133, !nonnull !4, !noundef !4
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !133
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringjENtNtB1h_5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringjENtNtB1h_5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTljEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTljENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTljENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #16
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTljENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTljENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !146, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !152, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !152, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !153
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !156
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -104
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(104) %i.w), !noalias !152
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 104
  %i.z = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 112                      ; 2 uses
  %i.ac = add nsw i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !146, !nonnull !4, !noundef !4
  %i.ai = sub i64 -112, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !146
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmjENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmjENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #16
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmjENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmjENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECslpwiOMB70Kp_8protobuf(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTljEE14reserve_rehashNCINvNtB8_3map11make_hasherljNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECslpwiOMB70Kp_8protobuf(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNtNtBb_3str15BytesIsNotEmptyINtB7_5FnMutTRRShEE8call_mutCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs9RMo4C3Dvu6_10raft_proto(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noinline }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!8 = distinct !{!8, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!11 = distinct !{!11, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto"}
!12 = !{!10, !7}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!15 = distinct !{!15, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto"}
!16 = !{!14, !10, !7}
!17 = !{!18, !14, !10, !7}
!18 = distinct !{!18, !19, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE3newCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!19 = distinct !{!19, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE3newCs9RMo4C3Dvu6_10raft_proto"}
!20 = !{!21, !14, !10, !7}
!21 = distinct !{!21, !22, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!22 = distinct !{!22, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtBK_4hash6random13DefaultHasherEEECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!25 = distinct !{!25, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtBK_4hash6random13DefaultHasherEEECs9RMo4C3Dvu6_10raft_proto"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEEECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!28 = distinct !{!28, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherEEECs9RMo4C3Dvu6_10raft_proto"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!31 = distinct !{!31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEECs9RMo4C3Dvu6_10raft_proto"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!34 = distinct !{!34, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9RMo4C3Dvu6_10raft_proto"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!37 = distinct !{!37, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto"}
!38 = !{!36, !33, !30, !27, !24}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!41 = distinct !{!41, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto"}
!42 = !{!40, !36, !33, !30, !27, !24}
!43 = !{!44, !40, !36, !33, !30, !27, !24}
!44 = distinct !{!44, !45, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE3newCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!45 = distinct !{!45, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE3newCs9RMo4C3Dvu6_10raft_proto"}
!46 = !{!47, !40, !36, !33, !30, !27, !24}
!47 = distinct !{!47, !48, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!48 = distinct !{!48, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1g_4find5checkRShQNtBN_15BytesIsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2r_EECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!51 = distinct !{!51, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1g_4find5checkRShQNtBN_15BytesIsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2r_EECs9RMo4C3Dvu6_10raft_proto"}
!52 = !{!50, !53}
!53 = distinct !{!53, !51, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter5SplithNtNtBa_3str17IsAsciiWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1g_4find5checkRShQNtBN_15BytesIsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2r_EECs9RMo4C3Dvu6_10raft_proto: argument 1"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_RNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNtNtB9_3str17IsAsciiWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!56 = distinct !{!56, !"_RNvXsf_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNtNtB9_3str17IsAsciiWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9RMo4C3Dvu6_10raft_proto"}
!57 = !{!58, !55, !50}
!58 = distinct !{!58, !59, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXsf_B7_INtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceEBS_4next0ECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!59 = distinct !{!59, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvXsf_B7_INtB7_5SplithNtNtBb_3str17IsAsciiWhitespaceEBS_4next0ECs9RMo4C3Dvu6_10raft_proto"}
!60 = !{!55, !50}
!61 = !{!53}
!62 = !{!"address", !"read_provenance"}
!63 = !{!64, !66, !50, !53}
!64 = distinct !{!64, !65, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRShQNtNtBe_3str15BytesIsNotEmptyE0Cs9RMo4C3Dvu6_10raft_proto: argument 0"}
!65 = distinct !{!65, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRShQNtNtBe_3str15BytesIsNotEmptyE0Cs9RMo4C3Dvu6_10raft_proto"}
!66 = distinct !{!66, !65, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRShQNtNtBe_3str15BytesIsNotEmptyE0Cs9RMo4C3Dvu6_10raft_proto: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!69 = distinct !{!69, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9RMo4C3Dvu6_10raft_proto"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl: argument 1"}
!72 = distinct !{!72, !"_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl: argument 0"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE8push_mutBL_: argument 0"}
!77 = distinct !{!77, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE8push_mutBL_"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16ConfChangeSingleE8push_mutBL_: argument 1"}
!80 = !{i64 0, i64 -9223372036854775808}
!81 = !{i8 0, i8 3}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!84 = distinct !{!84, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.peeled.count", i32 1}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!89 = distinct !{!89, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 1"}
!92 = distinct !{!92, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str"}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!95 = distinct !{!95, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs9RMo4C3Dvu6_10raft_proto"}
!96 = distinct !{!96, !92, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 0"}
!97 = !{!"branch_weights", i32 2002, i32 2000}
!98 = !{!99, !101}
!99 = distinct !{!99, !100, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!100 = distinct !{!100, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto"}
!101 = distinct !{!101, !102, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!102 = distinct !{!102, !"_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCs9RMo4C3Dvu6_10raft_proto"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RNvXsc_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtB5_13RawTableClone15clone_from_specCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!105 = distinct !{!105, !"_RNvXsc_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtB5_13RawTableClone15clone_from_specCs9RMo4C3Dvu6_10raft_proto"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_RNvXsc_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtB5_13RawTableClone15clone_from_specCs9RMo4C3Dvu6_10raft_proto: argument 1"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_RNvMse_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE15clone_from_implCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!110 = distinct !{!110, !"_RNvMse_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE15clone_from_implCs9RMo4C3Dvu6_10raft_proto"}
!111 = !{!112}
!112 = distinct !{!112, !110, !"_RNvMse_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE15clone_from_implCs9RMo4C3Dvu6_10raft_proto: argument 1"}
!113 = !{!112, !107}
!114 = !{!109, !104}
!115 = !{!109, !112, !104, !107}
!116 = !{!117, !109, !112, !104, !107}
!117 = distinct !{!117, !118, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE3newCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!118 = distinct !{!118, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE3newCs9RMo4C3Dvu6_10raft_proto"}
!119 = !{!120, !109, !112, !104, !107}
!120 = distinct !{!120, !121, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!121 = distinct !{!121, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RNvYTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto: argument 1"}
!124 = distinct !{!124, !"_RNvYTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto"}
!125 = !{!126, !109, !112, !104, !107}
!126 = distinct !{!126, !124, !"_RNvYTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!127 = !{!128, !130, !126, !123, !109, !112, !104, !107}
!128 = distinct !{!128, !129, !"_RNvXs9_NtCslpwiOMB70Kp_8protobuf7unknownNtB5_13UnknownValuesNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!129 = distinct !{!129, !"_RNvXs9_NtCslpwiOMB70Kp_8protobuf7unknownNtB5_13UnknownValuesNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!130 = distinct !{!130, !129, !"_RNvXs9_NtCslpwiOMB70Kp_8protobuf7unknownNtB5_13UnknownValuesNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!131 = !{!128, !126, !109, !112, !104, !107}
!132 = !{!130, !123, !109, !112, !104, !107}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringjENtNtB1h_5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!135 = distinct !{!135, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringjENtNtB1h_5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!138 = distinct !{!138, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs9RMo4C3Dvu6_10raft_proto"}
!139 = !{!137, !134}
!140 = !{!141, !137, !134}
!141 = distinct !{!141, !142, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE3newCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!142 = distinct !{!142, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE3newCs9RMo4C3Dvu6_10raft_proto"}
!143 = !{!144, !137, !134}
!144 = distinct !{!144, !145, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!145 = distinct !{!145, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringjEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!148 = distinct !{!148, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs9RMo4C3Dvu6_10raft_proto"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!151 = distinct !{!151, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECs9RMo4C3Dvu6_10raft_proto"}
!152 = !{!150, !147}
!153 = !{!154, !150, !147}
!154 = distinct !{!154, !155, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE3newCs9RMo4C3Dvu6_10raft_proto: argument 0"}
!155 = distinct !{!155, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE3newCs9RMo4C3Dvu6_10raft_proto"}
!156 = !{!157, !150, !147}
!157 = distinct !{!157, !158, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto: argument 0"}
!158 = distinct !{!158, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECs9RMo4C3Dvu6_10raft_proto"}
end_hunk_0
