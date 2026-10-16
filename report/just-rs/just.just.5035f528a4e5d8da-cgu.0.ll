Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just.just.5035f528a4e5d8da-cgu.0?download=true
inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just:bb.a

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit7.i.i
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !205
  unreachable

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit7.i.i, %bb.b
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 136
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.p = mul nuw i64 %.val2, 136
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.e
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just4line4LineEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4line4LineENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4line4LineENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just4line4LineECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just4line4LineECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.k) #28
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !208
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just4line4LineEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = shl nuw i64 %.val4, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just4line4LineEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4line4LineENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just4line4LineEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4line4LineENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.p = shl nuw i64 %.val2, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just4line4LineEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just4line4LineEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just4line4LineENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just4line4LineEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [448 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9parameter9ParameterECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(448) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [448 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9parameter9ParameterECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(448) %i.k) #28
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !211
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 448
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.p = mul nuw i64 %.val2, 448
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !229, !nonnull !13, !noundef !13
  %1 = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !230
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.l = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !234, !nonnull !13, !noundef !13
  %2 = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !235
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.o = icmp eq i64 %i.l, %.val1
  br i1 %i.o, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.q = icmp eq i64 %.val4, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.r = shl nuw i64 %.val4, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.s = icmp eq i64 %.val2, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.t = shl nuw i64 %.val2, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !239, !nonnull !13, !noundef !13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !239, !noundef !13 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [760 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !238

bb.c:                                             ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [760 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.m) #28
          to label %bb.c unwind label %bb.e, !inline_history !238

bb.e:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !inline_history !238
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 760
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit4, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.r = mul nuw i64 %.val, 760
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit4: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 6 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.val9.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !246 ; 2 uses
  %i.f = icmp eq i64 %.val9.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val10.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !246, !nonnull !13, !noundef !13
  %i.h = shl nuw i64 %.val9.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !246
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val5.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !246 ; 2 uses
  %i.j = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit12.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val6.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !246, !nonnull !13, !noundef !13
  %i.l = shl nuw i64 %.val5.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !246
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit12.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit12.i.i.i: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !246 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupECs6SXwsBSuFuw_4just.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit12.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val2.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !246, !nonnull !13, !noundef !13
  %i.p = shl nuw i64 %.val.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !246
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit12.i.i.i
  %i.q = icmp eq i64 %i.e, %.val1
  br i1 %i.q, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.r = icmp eq i64 %.val2, 0
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupEECs6SXwsBSuFuw_4just.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.s = mul nuw i64 %.val2, 96
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val4, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !range !12, !alias.scope !254, !noundef !13 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !253, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !255
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val5
  br i1 %i.h, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.j = mul nuw i64 %.val, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !273, !nonnull !13, !noundef !13
  %1 = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !274
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.l = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !278, !nonnull !13, !noundef !13
  %2 = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !279
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.o = icmp eq i64 %i.l, %.val1
  br i1 %i.o, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.q = icmp eq i64 %.val4, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.r = shl nuw i64 %.val4, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.s = icmp eq i64 %.val2, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.t = shl nuw i64 %.val2, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionIBC_NtNtB1W_6os_str5OsStrEEEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.013.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.013.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.013.i.i, 1      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 32
  %.val8.i.i = load i64, ptr %i.f, align 8, !range !16, !alias.scope !282, !noundef !13 ; 2 uses
  %i.g = icmp sgt i64 %.val8.i.i, 0
  br i1 %i.g, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr i8, ptr %i.d, i64 40
  %.val9.i.i = load ptr, ptr %i.h, align 8, !alias.scope !282, !nonnull !13, !noundef !13
  %i.i = shl nuw i64 %.val8.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !282
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.k = icmp eq i64 %.val2, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtBG_3vec3VecNtNtB23_6os_str5OsStrEEEEECs6SXwsBSuFuw_4just.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.l = mul nuw i64 %.val2, 56
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtBG_3vec3VecNtNtB23_6os_str5OsStrEEEEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtBG_3vec3VecNtNtB23_6os_str5OsStrEEEEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs6SXwsBSuFuw_4just.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs6SXwsBSuFuw_4just.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs6SXwsBSuFuw_4just.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 8) #26
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !331
  %.sroa.06.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !331 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 320
  %.sroa.58.0.copyload.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !alias.scope !331
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 312
  %.sroa.47.0.copyload.i.i.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !alias.scope !331 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !331
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !331
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink31.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31.i.i.i.i, ptr %i.b, align 8, !noalias !331
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i.i.i, ptr %i.d, align 8, !noalias !331
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i, ptr %i.e, align 8, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !332
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !327

.noexc.i:                                         ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !noalias !332, !noundef !13 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not5.i.i.i.i.i.i, label %.loopexit40.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc25.i, %.lr.ph.i.i.i.i.i.i
  %i.g = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %.noexc25.i ]
  %.sroa.43.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !332
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw [1352 x i8], ptr %i.h, i64 %.sroa.43.0.copyload.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9attribute9AttributeECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(1352) %i.i)
          to label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1I_4name4NameNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i unwind label %bb.e, !noalias !332

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXsy_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB2w_4name4NameNtNtBQ_5alloc6GlobalEECs6SXwsBSuFuw_4just(ptr nonnull align 8 dereferenceable(72) %i.b) #28
          to label %.body.i unwind label %bb.f, !noalias !331

_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1I_4name4NameNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !332
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc25.i unwind label %.loopexit.i, !noalias !327
end_hunk_0
begin_hunk_1_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBK_6string6StringEB2m_EECs6SXwsBSuFuw_4just:bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i4.i.i.i.i.i, i64 noundef %.val.i.i3.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !484
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %.val.i.i.i.i2.i.i.i.i = load i64, ptr %i.j, align 8, !range !12, !alias.scope !487, !noalias !470, !noundef !13 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i2.i.i.i.i, 0
  br i1 %i.x, label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2q_NtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i.i.i.i3.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !487, !noalias !470, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i3.i.i.i.i, i64 noundef %.val.i.i.i.i2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !488
  br label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2q_NtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i

_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2q_NtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !470
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB1T_E10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !469
  %i.z = load ptr, ptr %i.a, align 8, !noalias !470, !noundef !13 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMapTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_6string6StringEB1Q_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %bb.d

_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMapTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB8_6string6StringEB1Q_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingTNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBb_6string6StringEB2q_NtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !469
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !509
  %.sroa.06.0.copyload.i.i = load ptr, ptr %0, align 8, !alias.scope !509 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !509
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !509 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !509
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !509
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !509
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !509
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !509
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !509
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink31.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i = phi i64 [ %.sroa.58.0.copyload.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31.i.i, ptr %i.b, align 8, !noalias !509
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i, ptr %i.c, align 8, !noalias !509
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i, ptr %i.d, align 8, !noalias !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !510
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !509
  %i.e = load ptr, ptr %i.a, align 8, !noalias !510, !noundef !13 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBG_7set_val9SetValZSTEECs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.r, %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i ]
  %.sroa.43.0.copyload.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !510
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.sroa.43.0.copyload.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !513, !noalias !510, !nonnull !13, !noundef !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !513, !noalias !510, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.j = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !range !12, !alias.scope !517, !noalias !518, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !517, !noalias !518, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !519
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.o = icmp eq i64 %i.l, %.val1.i.i.i.i.i.i.i
  br i1 %i.o, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !12, !alias.scope !513, !noalias !510, !noundef !13 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i
  %i.q = mul nuw i64 %.val2.i.i.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !518
  br label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i

_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.f, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !510
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !509
  %i.r = load ptr, ptr %i.a, align 8, !noalias !510, !noundef !13 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBG_7set_val9SetValZSTEECs6SXwsBSuFuw_4just.exit, label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtBG_7set_val9SetValZSTEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !509
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !546, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEECs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !548, !noundef !13 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !548, !nonnull !13, !noundef !13 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !549
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.c
  %.sroa.05.016.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i, %bb.d ]
  %.val9.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !550
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i.i.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i.i.i.i, -1     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !555, !noalias !548, !nonnull !13, !noundef !13
  %1 = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !556
  %i.y = icmp eq i64 %1, 1
  br i1 %i.y, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #31, !noalias !548
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.d

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !546, !nonnull !13, !noundef !13
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !546
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberEECs6SXwsBSuFuw_4just(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown3set7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEECs6SXwsBSuFuw_4just.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.8.val, 2
  %i.c = icmp slt i64 %.8.val, 4611686018427387900
  tail call void @llvm.assume(i1 %i.c)
  %i.d = and i64 %i.b, -16                        ; 2 uses
  %i.e = add i64 %i.d, 16                         ; 2 uses
  %i.f = add nsw i64 %.8.val, 17
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = icmp uge i64 %i.g, %i.e
  %i.i = icmp ult i64 %i.g, 9223372036854775793
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown3set7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEECs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.k = sub nuw nsw i64 -16, %i.d
  %i.l = getelementptr inbounds i8, ptr %.0.val, i64 %i.k
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown3set7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown3set7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !568, !nonnull !13, !noundef !13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !568, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i = phi i64 [ %i.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.08.i.i.i.i.i
  %i.f = add nuw nsw i64 %.sroa.0.08.i.i.i.i.i, 1 ; 4 uses
  %.val7.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !569, !noalias !568, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.val7.i.i.i.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i unwind label %.body.i.i.i.i.i, !noalias !570

.body.i.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #26, !noalias !570
  %i.h = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.h, label %.body.i.i.i, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #26, !noalias !570
  %i.i = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.i, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i.i.i.i.i9, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1.i.i.i
  br i1 %i.k, label %.body.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i.i, %bb.b
  %.sroa.0.1.i.i.i.i.i9 = phi i64 [ %i.j, %bb.b ], [ %i.f, %.body.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i9
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !569, !noalias !568, !nonnull !13, !noundef !13
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEECs6SXwsBSuFuw_4just(ptr %.val.i.i.i.i.i) #28
          to label %bb.b unwind label %bb.c, !noalias !570

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !570
  unreachable

.body.i.i.i:                                      ; preds = %bb.b, %.body.i.i.i.i.i
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !range !12, !alias.scope !568, !noundef !13 ; 2 uses
  %i.n = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEEECs6SXwsBSuFuw_4just.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.body.i.i.i
  %i.o = shl nuw i64 %.val4.i.i.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !568
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEEECs6SXwsBSuFuw_4just.exit.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !12, !alias.scope !568, !noundef !13 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1v_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEEEECs6SXwsBSuFuw_4just.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i
  %i.q = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !568
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1v_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEEEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEEECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.d, %.body.i.i.i
  resume { ptr, i32 } %i.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB1v_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEEEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !13 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i
    i64 1, label %bb.d
  ], !prof !15

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !573
  store i8 3, ptr %i.a, align 8, !alias.scope !573
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXsy_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB2w_4name4NameNtNtBQ_5alloc6GlobalEECs6SXwsBSuFuw_4just(ptr nofree nonnull captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just:bb.a
  %i.i = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1  ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.h, align 8, !range !12, !alias.scope !672, !noalias !670, !noundef !13 ; 2 uses
  %i.j = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !671, !noalias !670, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !673
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.l = icmp eq i64 %i.i, %i.f
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !670, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std3sys4args6common4ArgsECs6SXwsBSuFuw_4just.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i
  %i.p = load ptr, ptr %0, align 8, !alias.scope !670, !nonnull !13, !noundef !13
  %i.q = mul nuw i64 %i.n, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !670
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std3sys4args6common4ArgsECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std3sys4args6common4ArgsECs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshTCYgcDtIbU_10serde_json5error5ErrorECs6SXwsBSuFuw_4just(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.b = load i64, ptr %.0.val, align 8, !range !682, !alias.scope !683, !noundef !13
  switch i64 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCshTCYgcDtIbU_10serde_json5error9ErrorImplEECs6SXwsBSuFuw_4just.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !683, !noundef !13 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCshTCYgcDtIbU_10serde_json5error9ErrorImplEECs6SXwsBSuFuw_4just.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !683, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef 1) #26, !noalias !683
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCshTCYgcDtIbU_10serde_json5error9ErrorImplEECs6SXwsBSuFuw_4just.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !683, !nonnull !13, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !683
  %i.g = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i.i.i
    i64 1, label %bb.e
  ], !prof !15

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !684, !noalias !683
  store i8 3, ptr %i.a, align 8, !alias.scope !684, !noalias !683
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i.i.i unwind label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !683
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCshTCYgcDtIbU_10serde_json5error9ErrorImplEECs6SXwsBSuFuw_4just.exit

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #26
  resume { ptr, i32 } %i.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCshTCYgcDtIbU_10serde_json5error9ErrorImplEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a, %bb.b, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #26
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10dependency10DependencyECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !697, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !697, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1.i
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i.i7, 1     ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.e)
          to label %bb.b unwind label %bb.d, !noalias !697

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i.i8, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1.i
  br i1 %i.h, label %.body.i, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1.i
  br i1 %i.j, label %.body.i, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.k) #28
          to label %bb.c unwind label %bb.e, !noalias !697

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !698
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %.val4.i = load i64, ptr %0, align 8, !range !12, !alias.scope !697, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val4.i, 0
  br i1 %i.m, label %.body, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.n = mul nuw i64 %.val4.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !697
  br label %.body

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.b, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !12, !alias.scope !697, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val2.i, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEEECs6SXwsBSuFuw_4just.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i
  %i.p = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !697
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEEECs6SXwsBSuFuw_4just.exit

.body:                                            ; preds = %.body.i, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load i64, ptr %i.q, align 8            ; 2 uses
  %i.r = icmp eq i64 %.val3, 0
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4 = load ptr, ptr %i.s, align 8, !nonnull !13, !noundef !13
  %i.t = mul nuw i64 %.val3, 72
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.g, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.u, align 8             ; 2 uses
  %i.v = icmp eq i64 %.val, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit5, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEEECs6SXwsBSuFuw_4just.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.w, align 8, !nonnull !13, !noundef !13
  %i.x = mul nuw i64 %.val, 72
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit5

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit: ; preds = %bb.h, %.body
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !701, !nonnull !13, !noundef !13
  %1 = atomicrmw add ptr %i.z, i64 -1 release, align 8, !noalias !701
  %i.aa = icmp eq i64 %1, 1
  br i1 %i.aa, label %bb.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit unwind label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit5: ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEEECs6SXwsBSuFuw_4just.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !704, !nonnull !13, !noundef !13
  %2 = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !704
  %i.ad = icmp eq i64 %2, 1
  br i1 %i.ad, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit6

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit5
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #31
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit5, %bb.k
  ret void

bb.l:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit, %bb.j
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !796, !noundef !13 ; 5 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775801
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 7
  switch i64 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.f
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.p
    i64 8, label %bb.r
    i64 9, label %bb.t
    i64 10, label %bb.v
    i64 11, label %bb.ac
    i64 12, label %bb.ad
    i64 13, label %bb.af
    i64 14, label %bb.ag
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit: ; preds = %bb.bg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtB1d_14string_literal13StringLiteralEEECs6SXwsBSuFuw_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit104, %bb.aw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit101, %bb.am, %bb.ah, %bb.ag, %bb.ab, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit36, %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit, %bb.e, %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit83, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit80, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit77, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit62, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit59, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit53, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit44, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit31, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !797, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.g)
          to label %bb.ai unwind label %.body, !noalias !797, !inline_history !798

.body:                                            ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 128, i64 noundef 8) #26, !noalias !797
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(8) %i.i) #28
          to label %common.resume unwind label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !799, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.k)
          to label %bb.am unwind label %.body9, !noalias !799, !inline_history !798

.body9:                                           ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 128, i64 noundef 8) #26, !noalias !799
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !800, !align !18, !noundef !13
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %common.resume, label %bb.al

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %.val.i.i = load i64, ptr %i.p, align 8, !range !12, !alias.scope !803, !noundef !13 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.r, align 8, !alias.scope !803, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !803
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !804, !nonnull !13, !noundef !13 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !804, !noundef !13 ; 4 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit, label %.lr.ph171

bb.g:                                             ; preds = %.lr.ph171
  %i.y = icmp eq i64 %i.aa, %i.w
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i170 = phi i64 [ %i.aa, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw [128 x i8], ptr %i.u, i64 %.sroa.0.0.i.i170
  %i.aa = add i64 %.sroa.0.0.i.i170, 1            ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.z)
          to label %bb.g unwind label %bb.i, !noalias !804, !inline_history !717

bb.h:                                             ; preds = %.lr.ph173
  %i.ab = add i64 %.sroa.0.1.i.i172, 1            ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.w
  br i1 %i.ac, label %.body85, label %.lr.ph173

bb.i:                                             ; preds = %.lr.ph171
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.aa, %i.w
  br i1 %i.ae, label %.body85, label %.lr.ph173

.lr.ph173:                                        ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i172 = phi i64 [ %i.ab, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.u, i64 %.sroa.0.1.i.i172
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.af) #28
          to label %bb.h unwind label %bb.j, !noalias !804, !inline_history !717

bb.j:                                             ; preds = %.lr.ph173
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !804, !inline_history !717
  unreachable

.body85:                                          ; preds = %bb.h, %bb.i
  %.val2.i = load i64, ptr %i.s, align 8, !range !12, !alias.scope !805, !noundef !13 ; 2 uses
  %i.ah = icmp eq i64 %.val2.i, 0
  br i1 %i.ah, label %common.resume, label %bb.k

bb.k:                                             ; preds = %.body85
  %i.ai = shl nuw i64 %.val2.i, 7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %common.resume

common.resume:                                    ; preds = %.body108, %bb.bf, %.body, %.body16, %.body21, %.body89, %.body39, %.body47, %bb.al, %.body9, %bb.av, %.body65, %.body96, %bb.aa, %.body85, %bb.k, %bb.bl, %bb.bj, %bb.bh, %bb.ay, %bb.as, %bb.aq, %bb.ao, %bb.aj, %bb.ae, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.et, %bb.bl ], [ %i.bb, %bb.s ], [ %i.ad, %.body85 ], [ %i.cg, %bb.ae ], [ %i.cq, %bb.aj ], [ %i.bs, %.body96 ], [ %i.cv, %bb.ao ], [ %i.cy, %bb.aq ], [ %i.db, %bb.as ], [ %i.dl, %bb.ay ], [ %.pn, %bb.av ], [ %i.en, %bb.bh ], [ %i.eq, %bb.bj ], [ %i.ad, %bb.k ], [ %i.bs, %bb.aa ], [ %i.h, %.body ], [ %i.cj, %.body47 ], [ %i.an, %.body16 ], [ %i.ar, %.body21 ], [ %i.l, %.body9 ], [ %.pn, %.body65 ], [ %i.bf, %.body89 ], [ %i.cc, %.body39 ], [ %i.l, %bb.al ], [ %i.du, %bb.bf ], [ %i.du, %.body108 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.g, %bb.f
  %.val.i12 = load i64, ptr %i.s, align 8, !range !12, !alias.scope !805, !noundef !13 ; 2 uses
  %i.aj = icmp eq i64 %.val.i12, 0
  br i1 %i.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit
  %i.ak = shl nuw i64 %.val.i12, 7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit

bb.m:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !806, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.am)
          to label %bb.ap unwind label %.body16, !noalias !806, !inline_history !798

.body16:                                          ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef 128, i64 noundef 8) #26, !noalias !806
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ao) #28
          to label %common.resume unwind label %bb.ak

bb.n:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !807, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.aq)
          to label %bb.ar unwind label %.body21, !noalias !807, !inline_history !798

.body21:                                          ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 128, i64 noundef 8) #26, !noalias !807
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(8) %i.as) #28
          to label %common.resume unwind label %bb.ak

bb.o:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !808, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.au)
          to label %bb.at unwind label %.body26, !noalias !808, !inline_history !798
end_hunk_2
begin_hunk_3_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !2171, !nonnull !13, !noundef !13 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !2171, !noundef !13 ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit, label %.lr.ph194

bb.y:                                             ; preds = %.lr.ph194
  %i.cc = icmp eq i64 %i.ce, %i.ca
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit, label %.lr.ph194

.lr.ph194:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder7mkeymap7MKeyMapECs6SXwsBSuFuw_4just.exit, %bb.y
  %.sroa.0.0.i.i193 = phi i64 [ %i.ce, %bb.y ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder7mkeymap7MKeyMapECs6SXwsBSuFuw_4just.exit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [760 x i8], ptr %i.by, i64 %.sroa.0.0.i.i193
  %i.ce = add i64 %.sroa.0.0.i.i193, 1            ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.cd)
          to label %bb.y unwind label %bb.aa, !noalias !2171, !inline_history !2138

bb.z:                                             ; preds = %.lr.ph196
  %i.cf = add i64 %.sroa.0.1.i.i195, 1            ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.ca
  br i1 %i.cg, label %.body171, label %.lr.ph196

bb.aa:                                            ; preds = %.lr.ph194
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = icmp eq i64 %i.ce, %i.ca
  br i1 %i.ci, label %.body171, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.aa, %bb.z
  %.sroa.0.1.i.i195 = phi i64 [ %i.cf, %bb.z ], [ %i.ce, %bb.aa ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [760 x i8], ptr %i.by, i64 %.sroa.0.1.i.i195
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.cj) #28
          to label %bb.z unwind label %bb.ab, !noalias !2171, !inline_history !2138

bb.ab:                                            ; preds = %.lr.ph196
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2171, !inline_history !2138
  unreachable

.body171:                                         ; preds = %bb.z, %bb.aa
  %.val2.i = load i64, ptr %i.bw, align 8, !range !12, !alias.scope !2172, !noundef !13 ; 2 uses
  %i.cl = icmp eq i64 %.val2.i, 0
  br i1 %i.cl, label %.body, label %bb.ac

bb.ac:                                            ; preds = %.body171
  %i.cm = mul nuw i64 %.val2.i, 760
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.y, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder7mkeymap7MKeyMapECs6SXwsBSuFuw_4just.exit
  %.val.i = load i64, ptr %i.bw, align 8, !range !12, !alias.scope !2172, !noundef !13 ; 2 uses
  %i.cn = icmp eq i64 %.val.i, 0
  br i1 %i.cn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit
  %i.co = mul nuw i64 %.val.i, 760
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit

.body:                                            ; preds = %bb.ac, %.body171, %.body181
  %.pn30 = phi { ptr, i32 } [ %i.bf, %.body181 ], [ %i.ch, %.body171 ], [ %i.ch, %bb.ac ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp) #28
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq) #28
          to label %.body164 unwind label %bb.an

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.ad, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  %i.ct = load i64, ptr %i.cs, align 8, !range !17, !alias.scope !2173, !noundef !13 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  %switch.i.i.i = icmp samesign ult i64 %i.ct, 4
  br i1 %switch.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !2176 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !2176, !nonnull !13, !align !18, !noundef !13 ; 5 uses
  %i.cx = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !13, !noalias !2176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.cx(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ah unwind label %bb.ai, !noalias !2176

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !12, !invariant.load !13, !noalias !2176 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !19, !invariant.load !13, !noalias !2176
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) %i.dc) #26, !noalias !2176
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !12, !invariant.load !13, !noalias !2176 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %.body164, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !19, !invariant.load !13, !noalias !2176
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) %i.di) #26, !noalias !2176
  br label %.body164

.body164:                                         ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.ai, %.body
  %.pn34 = phi { ptr, i32 } [ %.pn30, %.body ], [ %i.dd, %bb.ai ], [ %i.dd, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3ext10ExtensionsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dj) #28
          to label %bb.ak unwind label %bb.an

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.ah, %bb.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  %.val.i.i = load i64, ptr %i.dk, align 8, !alias.scope !2179 ; 2 uses
  %i.dl = icmp eq i64 %.val.i.i, 0
  br i1 %i.dl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_9any_value10AnyValueIdNtB1y_8AnyValueEECs6SXwsBSuFuw_4just.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val1.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !2179, !nonnull !13, !noundef !13
  %i.dn = shl nuw i64 %.val.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2179
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_9any_value10AnyValueIdNtB1y_8AnyValueEECs6SXwsBSuFuw_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_9any_value10AnyValueIdNtB1y_8AnyValueEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.aj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3ext10ExtensionsECs6SXwsBSuFuw_4just.exit unwind label %bb.al

bb.ak:                                            ; preds = %bb.al, %.body164
  %.pn36 = phi { ptr, i32 } [ %i.dq, %bb.al ], [ %.pn34, %.body164 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3ext10ExtensionsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dp) #28
          to label %bb.ao unwind label %bb.an

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_9any_value10AnyValueIdNtB1y_8AnyValueEECs6SXwsBSuFuw_4just.exit.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3ext10ExtensionsECs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_9any_value10AnyValueIdNtB1y_8AnyValueEECs6SXwsBSuFuw_4just.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2181)
  %.val.i.i166 = load i64, ptr %i.dr, align 8, !alias.scope !2182 ; 2 uses
  %i.ds = icmp eq i64 %.val.i.i166, 0
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3ext10ExtensionsECs6SXwsBSuFuw_4just.exit169, label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3ext10ExtensionsECs6SXwsBSuFuw_4just.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1.i.i167 = load ptr, ptr %i.dt, align 8, !alias.scope !2182, !nonnull !13, !noundef !13
  %i.du = shl nuw i64 %.val.i.i166, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i167, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2182
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3ext10ExtensionsECs6SXwsBSuFuw_4just.exit169

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3ext10ExtensionsECs6SXwsBSuFuw_4just.exit169: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3ext10ExtensionsECs6SXwsBSuFuw_4just.exit, %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.dv)
  ret void

bb.an:                                            ; preds = %bb.ak, %.body164, %.body, %.body181
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ao:                                            ; preds = %bb.ak
  resume { ptr, i32 } %.pn36
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2200, !nonnull !13, !noundef !13
  %1 = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !2200
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex6RegexIEECs6SXwsBSuFuw_4just.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex6RegexIEECs6SXwsBSuFuw_4just.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !2197, !nonnull !13, !noundef !13
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsk7w47U2izUG_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe10UnwindSafeNtB37_13RefUnwindSafeNtNtB4_6marker4SendNtB46_4SyncEL_EEECs6SXwsBSuFuw_4just(ptr nonnull %.val1.i) #28
          to label %.body unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex6RegexIEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !2197, !nonnull !13, !noundef !13
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsk7w47U2izUG_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtNtB4_5panic11unwind_safe10UnwindSafeNtB37_13RefUnwindSafeNtNtB4_6marker4SendNtB46_4SyncEL_EEECs6SXwsBSuFuw_4just(ptr nonnull %.val.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5RegexECs6SXwsBSuFuw_4just.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex6RegexIEECs6SXwsBSuFuw_4just.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.c, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2203, !nonnull !13, !noundef !13
  %2 = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !2203
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs6SXwsBSuFuw_4just.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs6SXwsBSuFuw_4just.exit unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5RegexECs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex6RegexIEECs6SXwsBSuFuw_4just.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2206, !nonnull !13, !noundef !13
  %3 = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !2206
  %i.m = icmp eq i64 %3, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs6SXwsBSuFuw_4just.exit1

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5RegexECs6SXwsBSuFuw_4just.exit
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArceE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #31
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs6SXwsBSuFuw_4just.exit1

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs6SXwsBSuFuw_4just.exit1: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5RegexECs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArceEECs6SXwsBSuFuw_4just.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta5regex5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2237, !nonnull !13, !noundef !13
  %1 = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !2237
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECs6SXwsBSuFuw_4just.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsk7w47U2izUG_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECs6SXwsBSuFuw_4just.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !2233 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !2233, !nonnull !13, !noundef !13
  %i.h = shl nuw i64 %.val2.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !2233 ; 2 uses
  %i.i = icmp eq i64 %.val.i, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures8CapturesECs6SXwsBSuFuw_4just.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECs6SXwsBSuFuw_4just.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !2233, !nonnull !13, !noundef !13
  %i.k = shl nuw i64 %.val.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures8CapturesECs6SXwsBSuFuw_4just.exit

.body:                                            ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11PikeVMCacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(216) %i.l) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val9 = load i64, ptr %i.n, align 8, !range !16, !noundef !13 ; 2 uses
  %i.o = icmp sgt i64 %.val9, 0
  br i1 %i.o, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures8CapturesECs6SXwsBSuFuw_4just.exit: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures9GroupInfoECs6SXwsBSuFuw_4just.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11PikeVMCacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(216) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  %i.r = load i64, ptr %i.q, align 8, !range !16, !alias.scope !2240, !noundef !13 ; 3 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures8CapturesECs6SXwsBSuFuw_4just.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %.val1.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !2242, !nonnull !13, !noundef !13
  %i.v = shl nuw i64 %i.r, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2242
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %.val2.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !2242 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs6SXwsBSuFuw_4just.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %.val3.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !2242, !nonnull !13, !noundef !13
  %i.z = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2242
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs6SXwsBSuFuw_4just.exit

bb.i:                                             ; preds = %.body
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val10 = load ptr, ptr %i.aa, align 8, !nonnull !13, !noundef !13
  %i.ab = shl nuw i64 %.val9, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs6SXwsBSuFuw_4just.exit: ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util8captures8CapturesECs6SXwsBSuFuw_4just.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val = load i64, ptr %i.ac, align 8, !range !16, !noundef !13 ; 2 uses
  %i.ad = icmp sgt i64 %.val, 0
  br i1 %i.ad, label %bb.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit13

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs6SXwsBSuFuw_4just.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val8 = load ptr, ptr %i.ae, align 8, !nonnull !13, !noundef !13
  %i.af = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit13

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit: ; preds = %bb.i, %.body
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11HybridCacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(704) %0) #28
          to label %.body14 unwind label %bb.q

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit13: ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs6SXwsBSuFuw_4just.exit
  %i.ag = load i64, ptr %0, align 8, !range !14, !alias.scope !2243, !noundef !13
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11HybridCacheECs6SXwsBSuFuw_4just.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit13
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid5regex5CacheECs6SXwsBSuFuw_4just.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(352) %i.aj) #28
          to label %.body14 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid5regex5CacheECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(352) %i.al)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11HybridCacheECs6SXwsBSuFuw_4just.exit unwind label %bb.o

.body14:                                          ; preds = %bb.o, %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit
  %.pn6 = phi { ptr, i32 } [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit ], [ %i.ap, %bb.o ], [ %i.ai, %bb.l ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !14, !alias.scope !2244, !noundef !13
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers18ReverseHybridCacheECs6SXwsBSuFuw_4just.exit, label %bb.n

bb.n:                                             ; preds = %.body14
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.am)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers18ReverseHybridCacheECs6SXwsBSuFuw_4just.exit unwind label %bb.q

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid5regex5CacheECs6SXwsBSuFuw_4just.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body14

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11HybridCacheECs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit13, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid5regex5CacheECs6SXwsBSuFuw_4just.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !14, !alias.scope !2245, !noundef !13
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers18ReverseHybridCacheECs6SXwsBSuFuw_4just.exit17, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11HybridCacheECs6SXwsBSuFuw_4just.exit
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.aq)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers18ReverseHybridCacheECs6SXwsBSuFuw_4just.exit17

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers18ReverseHybridCacheECs6SXwsBSuFuw_4just.exit17: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11HybridCacheECs6SXwsBSuFuw_4just.exit, %bb.p
  ret void

bb.q:                                             ; preds = %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers12OnePassCacheECs6SXwsBSuFuw_4just.exit
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers18ReverseHybridCacheECs6SXwsBSuFuw_4just.exit: ; preds = %.body14, %bb.n
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11HybridCacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !alias.scope !2248, !noundef !13
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk7w47U2izUG_14regex_automata6hybrid5regex5CacheEECs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid5regex5CacheECs6SXwsBSuFuw_4just.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(352) %i.d) #28
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid5regex5CacheECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(352) %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk7w47U2izUG_14regex_automata6hybrid5regex5CacheEECs6SXwsBSuFuw_4just.exit
end_hunk_3
begin_hunk_4_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers11PikeVMCacheECs6SXwsBSuFuw_4just:bb.a

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  %i.a = load i64, ptr %0, align 8, !range !16, !alias.scope !2276, !noundef !13 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5CacheEECs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2278, !nonnull !13, !noundef !13
  %i.e = shl nuw i64 %i.a, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2278
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i64, ptr %i.f, align 8, !alias.scope !2278 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5CacheEECs6SXwsBSuFuw_4just.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2278, !nonnull !13, !noundef !13
  %i.i = shl nuw i64 %.val2.i.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2278
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5CacheEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5CacheEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata3nfa8thompson9backtrack5FrameEECs6SXwsBSuFuw_4just.exit.i.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  %.val4.i = load i64, ptr %0, align 8, !alias.scope !2283 ; 2 uses
  %i.a = icmp eq i64 %.val4.i, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load ptr, ptr %i.b, align 8, !alias.scope !2283, !nonnull !13, !noundef !13
  %i.c = shl nuw i64 %.val4.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2283
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !2283 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !2283, !nonnull !13, !noundef !13
  %i.g = shl nuw i64 %.val.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2283
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  %.val4.i1 = load i64, ptr %i.h, align 8, !alias.scope !2284 ; 2 uses
  %i.i = icmp eq i64 %.val4.i1, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val5.i2 = load ptr, ptr %i.j, align 8, !alias.scope !2284, !nonnull !13, !noundef !13
  %i.k = shl nuw i64 %.val4.i1, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i2, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2284
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3: ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i4 = load i64, ptr %i.l, align 8, !alias.scope !2284 ; 2 uses
  %i.m = icmp eq i64 %.val.i4, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit6, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i5 = load ptr, ptr %i.n, align 8, !alias.scope !2284, !nonnull !13, !noundef !13
  %i.o = shl nuw i64 %.val.i4, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2284
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit6: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val19 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = icmp eq i64 %.val19, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val20 = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13
  %i.d = shl nuw i64 %.val19, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val15 = load i64, ptr %i.e, align 8           ; 2 uses
  %i.f = icmp eq i64 %.val15, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit26, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val16 = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13
  %i.h = shl nuw i64 %.val15, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit26

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit26: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit26
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #28
          to label %bb.k unwind label %bb.y

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2342, !noundef !13 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2344, !noundef !13 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.l, align 8, !alias.scope !2344, !nonnull !13, !noundef !13 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !2345
  %i.t = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = bitcast <16 x i1> %i.t to i16
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, %bb.g
  %.sroa.05.016.i.i.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.05.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i = phi i16 [ %i.v, %bb.g ], [ %i.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i = phi i64 [ %i.q, %bb.g ], [ %i.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %i.w = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i.i, %bb.h ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !2346
  %i.y = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -384 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.y to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i.i, %bb.h ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i.i, %bb.h ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i.i, %bb.h ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ab = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = and i16 %i.ab, %.lcssa.i.i.i.i.i.i.i
  %i.af = sub nsw i64 0, %i.ad
  %i.ag = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i.i.i.i.i, i64 %i.af
  %i.ah = add i64 %.sroa.107.013.i.i.i.i.i.i, -1  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2351, !noalias !2344, !nonnull !13, !noundef !13
  %1 = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !2352
  %i.ak = icmp eq i64 %1, 1
  br i1 %i.ak, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i unwind label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %bb.i, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %bb.h

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, %bb.f
  %i.am = mul i64 %i.n, 24
  %i.an = icmp slt i64 %i.n, 768614336404564650
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = and i64 %i.am, -16                      ; 2 uses
  %i.ap = add i64 %i.ao, 32                       ; 2 uses
  %i.aq = add nsw i64 %i.n, 17
  %i.ar = add i64 %i.aq, %i.ap                    ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %i.av = load ptr, ptr %i.l, align 8, !alias.scope !2342, !nonnull !13, !noundef !13
  %i.aw = sub i64 -32, %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2342
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit

bb.k:                                             ; preds = %bb.l, %bb.d
  %.pn4 = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.j, %bb.d ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ay) #28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val13 = load i64, ptr %i.az, align 8          ; 2 uses
  %i.ba = icmp eq i64 %.val13, 0
  br i1 %i.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit, label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.j, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  %.val4.i.i = load i64, ptr %i.bc, align 8, !alias.scope !2355 ; 2 uses
  %i.bd = icmp eq i64 %.val4.i.i, 0
  br i1 %i.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val5.i.i = load ptr, ptr %i.be, align 8, !alias.scope !2355, !nonnull !13, !noundef !13
  %i.bf = shl nuw i64 %.val4.i.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2355
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load i64, ptr %i.bg, align 8, !alias.scope !2355 ; 2 uses
  %i.bh = icmp eq i64 %.val.i.i, 0
  br i1 %i.bh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !2355, !nonnull !13, !noundef !13
  %i.bj = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2355
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2356)
  %.val4.i1.i = load i64, ptr %i.bk, align 8, !alias.scope !2357 ; 2 uses
  %i.bl = icmp eq i64 %.val4.i1.i, 0
  br i1 %i.bl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val5.i2.i = load ptr, ptr %i.bm, align 8, !alias.scope !2357, !nonnull !13, !noundef !13
  %i.bn = shl nuw i64 %.val4.i1.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i2.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2357
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i: ; preds = %bb.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val.i4.i = load i64, ptr %i.bo, align 8, !alias.scope !2357 ; 2 uses
  %i.bp = icmp eq i64 %.val.i4.i, 0
  br i1 %i.bp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1.i5.i = load ptr, ptr %i.bq, align 8, !alias.scope !2357, !nonnull !13, !noundef !13
  %i.br = shl nuw i64 %.val.i4.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2357
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit

bb.q:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val14 = load ptr, ptr %i.bs, align 8, !nonnull !13, !noundef !13
  %i.bt = shl nuw i64 %.val13, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bv = icmp eq i64 %.val, 0
  br i1 %i.bv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val12 = load ptr, ptr %i.bw, align 8, !nonnull !13, !noundef !13
  %i.bx = shl nuw i64 %.val, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.q, %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val23 = load i64, ptr %i.by, align 8, !range !12, !alias.scope !2358, !noundef !13 ; 2 uses
  %i.bz = icmp eq i64 %.val23, 0
  br i1 %i.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val24 = load ptr, ptr %i.ca, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %.val23, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2359
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27: ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val21 = load i64, ptr %i.cb, align 8, !range !12, !alias.scope !2358, !noundef !13 ; 2 uses
  %i.cc = icmp eq i64 %.val21, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val22 = load ptr, ptr %i.cd, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %.val21, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2360
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit: ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  %i.cf = load i32, ptr %i.ce, align 8, !range !2362, !alias.scope !2361, !noundef !13
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !2366, !nonnull !13, !noundef !13
  %2 = atomicrmw add ptr %i.ci, i64 -1 release, align 8, !noalias !2366
  %i.cj = icmp eq i64 %2, 1
  br i1 %i.cj, label %bb.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ch) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit unwind label %bb.y

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28: ; preds = %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %i.cl = load i32, ptr %i.ck, align 8, !range !2362, !alias.scope !2367, !noundef !13
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit30

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !2371, !nonnull !13, !noundef !13
  %3 = atomicrmw add ptr %i.co, i64 -1 release, align 8, !noalias !2371
  %i.cp = icmp eq i64 %3, 1
  br i1 %i.cp, label %bb.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit30

bb.x:                                             ; preds = %bb.w
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cn) #31
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit30

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit30: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28, %bb.w, %bb.x
  ret void

bb.y:                                             ; preds = %bb.v, %bb.d
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit: ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit, %bb.v
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !2391 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !2391, !nonnull !13, !noundef !13
  %i.c = shl nuw i64 %.val.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2391
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i2 = load ptr, ptr %i.e, align 8, !alias.scope !2392, !nonnull !13, !noundef !13 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i3 = load i64, ptr %i.f, align 8, !alias.scope !2392, !noundef !13 ; 4 uses
  %i.g = icmp eq i64 %.val1.i3, 0
  br i1 %i.g, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.val1.i3
  br i1 %i.h, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i, %bb.c
  %.sroa.0.0.i.i.i7 = phi i64 [ %i.j, %bb.c ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %.val.i2, i64 %.sroa.0.0.i.i.i7
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i7, 1     ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(104) %i.i)
          to label %bb.c unwind label %bb.e, !noalias !2392

bb.d:                                             ; preds = %.lr.ph9
  %i.k = add i64 %.sroa.0.1.i.i.i8, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %.val1.i3
  br i1 %i.l, label %.body.i, label %.lr.ph9

bb.e:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %i.j, %.val1.i3
  br i1 %i.n, label %.body.i, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i8 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %.val.i2, i64 %.sroa.0.1.i.i.i8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(104) %i.o) #28
          to label %bb.d unwind label %bb.f, !noalias !2392

bb.f:                                             ; preds = %.lr.ph9
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2393
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  %.val4.i = load i64, ptr %i.d, align 8, !range !12, !alias.scope !2392, !noundef !13 ; 2 uses
  %i.q = icmp eq i64 %.val4.i, 0
  br i1 %i.q, label %.body, label %bb.g

bb.g:                                             ; preds = %.body.i
  %i.r = mul nuw i64 %.val4.i, 104
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2392
  br label %.body

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i
  %.val2.i = load i64, ptr %i.d, align 8, !range !12, !alias.scope !2392, !noundef !13 ; 2 uses
  %i.s = icmp eq i64 %.val2.i, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs6SXwsBSuFuw_4just.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i
  %i.t = mul nuw i64 %.val2.i, 104
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2392
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs6SXwsBSuFuw_4just.exit

.body:                                            ; preds = %.body.i, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2394, !align !18, !noundef !13
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %common.resume, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %common.resume unwind label %bb.l, !inline_history !2380

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2395, !align !18, !noundef !13 ; 6 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEEECs6SXwsBSuFuw_4just.exit1, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs6SXwsBSuFuw_4just.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397), !noalias !2398
  %.val.i.i = load i64, ptr %i.y, align 8, !range !12, !alias.scope !2399, !noalias !2398, !noundef !13 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i, 0
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val1.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2399, !noalias !2398, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2400
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit: ; preds = %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ac)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEECs6SXwsBSuFuw_4just.exit unwind label %.body.i4, !noalias !2398, !inline_history !2389

.body.i4:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 80, i64 noundef 8) #26, !noalias !2398, !inline_history !2390
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %.body, %.body.i4
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %.body.i4 ], [ %i.m, %.body ], [ %i.m, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEECs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 80, i64 noundef 8) #26, !noalias !2398, !inline_history !2390
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEEECs6SXwsBSuFuw_4just.exit1

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEEECs6SXwsBSuFuw_4just.exit1: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs6SXwsBSuFuw_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEECs6SXwsBSuFuw_4just.exit
  ret void

bb.l:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13
  %i.d = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #28
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECs6SXwsBSuFuw_4just.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !2413, !nonnull !13, !noundef !13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load i64, ptr %i.j, align 8, !alias.scope !2413, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  %i.k = icmp eq i64 %.val1.i, 0
  br i1 %i.k, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.m = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
end_hunk_4
