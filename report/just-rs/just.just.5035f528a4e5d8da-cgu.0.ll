Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just.just.5035f528a4e5d8da-cgu.0?download=true
inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECs6SXwsBSuFuw_4just:bb.a
; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !13 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathECs6SXwsBSuFuw_4just.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathECs6SXwsBSuFuw_4just.exit: ; preds = %bb.d, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !146, !nonnull !13, !noundef !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !146, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %.val.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !12, !alias.scope !150, !noalias !146, !noundef !13 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !150, !noalias !146, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !151
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.j = icmp eq i64 %i.g, %.val1.i.i
  br i1 %i.j, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.b
  %i.k = icmp eq i64 %i.a, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathECs6SXwsBSuFuw_4just.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i
  %i.l = mul nuw i64 %i.a, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !146
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathECs6SXwsBSuFuw_4just.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !13 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserECs6SXwsBSuFuw_4just.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %switch.i.i = icmp samesign ult i64 %i.a, 4
  br i1 %switch.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserECs6SXwsBSuFuw_4just.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !158 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !158, !nonnull !13, !align !18, !noundef !13 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !13, !noalias !158 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.f, !noalias !158

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !12, !invariant.load !13, !noalias !158 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserECs6SXwsBSuFuw_4just.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !19, !invariant.load !13, !noalias !158
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #26, !noalias !158
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserECs6SXwsBSuFuw_4just.exit

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !12, !invariant.load !13, !noalias !158 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit5.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !19, !invariant.load !13, !noalias !158
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #26, !noalias !158
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit5.i.i.i

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit5.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCskXtk6F4WjxZ_4just6config6ConfigNtNtB11_5error5ErrorEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(552) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !13
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6config6ConfigECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(552) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5error5ErrorECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6SXwsBSuFuw_4just(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit
    i64 1, label %bb.e
  ], !prof !15

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !161
  store i8 3, ptr %i.a, align 8, !alias.scope !161
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6SXwsBSuFuw_4just.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.e)
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
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.k) #28
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !164
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.p = mul nuw i64 %.val2, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val4.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !177, !nonnull !13, !noundef !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val5.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !177, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.h = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.h, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.i, align 8, !range !12, !alias.scope !179, !noalias !177, !noundef !13 ; 2 uses
  %i.k = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !178, !noalias !177, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !180
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.m = icmp eq i64 %i.j, %.val5.i.i.i
  br i1 %i.m, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %.lr.ph.i.i
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !12, !alias.scope !177, !noundef !13 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i
  %i.o = mul nuw i64 %.val.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !177
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.c, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i
  %i.p = icmp eq i64 %i.e, %.val1
  br i1 %i.p, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.q = icmp eq i64 %.val2, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.r = mul nuw i64 %.val2, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 64 dereferenceable(64) %i.e)
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
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 64 dereferenceable(64) %i.k) #28
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !183
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = shl nuw i64 %.val4, 6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 64) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.p = shl nuw i64 %.val2, 6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 64) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtNtNtCsk7w47U2izUG_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !range !12, !alias.scope !193, !noundef !13 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !193, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !193
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs6SXwsBSuFuw_4just.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !range !12, !alias.scope !201, !noundef !13 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !200, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !202
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10dependency10DependencyECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e)
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
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10dependency10DependencyECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k) #28
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 56
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.p = mul nuw i64 %.val2, 56
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just10dependency10DependencyEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [136 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(136) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit.i.i unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentECs6SXwsBSuFuw_4just.exit7.i.i: ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

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
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !230
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !234, !nonnull !13, !noundef !13
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !235
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = shl nuw i64 %.val4, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.v = shl nuw i64 %.val2, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder4util9any_value8AnyValueEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
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
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !274
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !278, !nonnull !13, !noundef !13
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !279
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = shl nuw i64 %.val4, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateECs6SXwsBSuFuw_4just.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !12, !noundef !13 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit
  %i.v = shl nuw i64 %.val2, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
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
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9attribute9AttributeECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(1352) %i.i)
          to label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1I_4name4NameNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i unwind label %bb.e, !noalias !332

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNvXsy_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB2w_4name4NameNtNtBQ_5alloc6GlobalEECs6SXwsBSuFuw_4just(ptr nonnull align 8 dereferenceable(72) %i.b) #28
          to label %.body.i unwind label %bb.f, !noalias !331

end_hunk_0
begin_hunk_1_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just:bb.a
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
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !556
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #31, !noalias !548
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.d

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !546, !nonnull !13, !noundef !13
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !546
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
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_RNvXNvXsy_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB2g_4name4NameNtNtBe_5alloc6GlobalEB1e_4dropCs6SXwsBSuFuw_4just.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.c = phi ptr [ %i.b, %.lr.ph.i ], [ %i.f, %bb.b ]
  %.sroa.41.0.copyload.i = load i64, ptr %.sroa.41.0..sroa_idx.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw [1352 x i8], ptr %i.d, i64 %.sroa.41.0.copyload.i
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9attribute9AttributeECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(1352) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.f = load ptr, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_RNvXNvXsy_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB2g_4name4NameNtNtBe_5alloc6GlobalEB1e_4dropCs6SXwsBSuFuw_4just.exit, label %bb.b

_RNvXNvXsy_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB2g_4name4NameNtNtBe_5alloc6GlobalEB1e_4dropCs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !624 ; 2 uses
  %i.b = icmp eq i64 %.val.i, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtNtBI_5error7context11ContextKindNtB1y_12ContextValueEECs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !624, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !624
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtNtBI_5error7context11ContextKindNtB1y_12ContextValueEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtNtBI_5error7context11ContextKindNtB1y_12ContextValueEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i14 = load ptr, ptr %i.e, align 8, !alias.scope !625, !nonnull !13, !noundef !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i15 = load i64, ptr %i.f, align 8, !alias.scope !625, !noundef !13 ; 2 uses
  %i.g = icmp eq i64 %.val1.i15, 0
  br i1 %i.g, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder5error7context12ContextValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtNtBI_5error7context11ContextKindNtB1y_12ContextValueEECs6SXwsBSuFuw_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder5error7context12ContextValueECs6SXwsBSuFuw_4just.exit.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder5error7context12ContextValueECs6SXwsBSuFuw_4just.exit.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtNtBI_5error7context11ContextKindNtB1y_12ContextValueEECs6SXwsBSuFuw_4just.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.val.i14, i64 %.sroa.0.07.i.i.i ; 11 uses
  %i.i = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.j = load i8, ptr %i.h, align 8, !range !20, !alias.scope !626, !noalias !625, !noundef !13
  switch i8 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder5error7context12ContextValueECs6SXwsBSuFuw_4just.exit.i.i [
    i8 2, label %bb.c
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.j
  ]

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %.val.i.i.i.i.i = load i64, ptr %i.k, align 8, !range !12, !alias.scope !629, !noalias !625, !noundef !13 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder5error7context12ContextValueECs6SXwsBSuFuw_4just.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !629, !noalias !625, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !630
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder5error7context12ContextValueECs6SXwsBSuFuw_4just.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val.i.i.i.i16 = load ptr, ptr %i.o, align 8, !alias.scope !632, !noalias !625, !nonnull !13, !noundef !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !632, !noalias !625, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.q = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.q, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %i.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i16, i64 %.sroa.0.010.i.i.i.i.i.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !range !12, !alias.scope !636, !noalias !637, !noundef !13 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !636, !noalias !637, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !638
end_hunk_1
begin_hunk_2_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECs6SXwsBSuFuw_4just:bb.a
  %.val7 = load i64, ptr %i.bm, align 8, !range !21, !noundef !13 ; 2 uses
  %i.bn = icmp sgt i64 %.val7, 0
  br i1 %i.bn, label %bb.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEEECs6SXwsBSuFuw_4just.exit13

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs6SXwsBSuFuw_4just.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val8 = load ptr, ptr %i.bo, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %.val7, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !651
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEEECs6SXwsBSuFuw_4just.exit13

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEEECs6SXwsBSuFuw_4just.exit13: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs6SXwsBSuFuw_4just.exit, %bb.t
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.s, %.body
  resume { ptr, i32 } %i.bd
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error5ErrorECs6SXwsBSuFuw_4just(ptr nonnull captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.0.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerEECs6SXwsBSuFuw_4just.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 256, i64 noundef 8) #26
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs2FJGJNE9lTN_12clap_builder5error10ErrorInnerEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 256, i64 noundef 8) #26
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %.val.i = load i64, ptr %0, align 8, !range !12, !alias.scope !654, !noundef !13 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !654, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !654
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std3env6ArgsOsECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !670, !nonnull !13, !noundef !13 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !670, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.g = icmp eq ptr %.val1.i.i.i, %.val.i.i.i
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
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
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !701
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit unwind label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit5: ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCskXtk6F4WjxZ_4just19dependency_argument18DependencyArgumentEEECs6SXwsBSuFuw_4just.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !704, !nonnull !13, !noundef !13
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !704
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit6

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit5
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #31
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEECs6SXwsBSuFuw_4just.exit6: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathECs6SXwsBSuFuw_4just.exit5, %bb.k
  ret void

bb.l:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
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
end_hunk_2
begin_hunk_3_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13compile_error12CompileErrorECs6SXwsBSuFuw_4just:bb.a
  %i.ed = shl nuw i64 %.val20.i.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i.i, i64 noundef %i.ed, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit

bb.br:                                            ; preds = %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val24.i.i = load i64, ptr %i.ee, align 8, !alias.scope !1246 ; 2 uses
  %i.ef = icmp eq i64 %.val24.i.i, 0
  br i1 %i.ef, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val25.i.i = load ptr, ptr %i.eg, align 8, !alias.scope !1246, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i.i, i64 noundef %.val24.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit

bb.bt:                                            ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %.val.i.i77.i.i = load i64, ptr %i.eh, align 8, !range !12, !alias.scope !1354, !noundef !13 ; 2 uses
  %i.ei = icmp eq i64 %.val.i.i77.i.i, 0
  br i1 %i.ei, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i78.i.i = load ptr, ptr %i.ej, align 8, !alias.scope !1354, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i78.i.i, i64 noundef %.val.i.i77.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1355
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit

bb.bv:                                            ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %.val.i.i80.i.i = load i64, ptr %i.ek, align 8, !range !12, !alias.scope !1358, !noundef !13 ; 2 uses
  %i.el = icmp eq i64 %.val.i.i80.i.i, 0
  br i1 %i.el, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.em = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i81.i.i = load ptr, ptr %i.em, align 8, !alias.scope !1358, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i81.i.i, i64 noundef %.val.i.i80.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1359
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit

bb.bx:                                            ; preds = %bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val8.i.i = load i64, ptr %i.en, align 8, !alias.scope !1246 ; 2 uses
  %i.eo = icmp eq i64 %.val8.i.i, 0
  br i1 %i.eo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val9.i.i = load ptr, ptr %i.ep, align 8, !alias.scope !1246, !nonnull !13, !noundef !13
  %i.eq = mul nuw i64 %.val8.i.i, 72
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit

bb.bz:                                            ; preds = %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val6.i.i = load i64, ptr %i.er, align 8, !alias.scope !1246 ; 2 uses
  %i.es = icmp eq i64 %.val6.i.i, 0
  br i1 %i.es, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.et = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val7.i.i = load ptr, ptr %i.et, align 8, !alias.scope !1246, !nonnull !13, !noundef !13
  %i.eu = mul nuw i64 %.val6.i.i, 72
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just18compile_error_kind16CompileErrorKindEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.s, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i21.i.i.i, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just9attribute9AttributeEECs6SXwsBSuFuw_4just.exit.i.i, %bb.au, %bb.av, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just9attribute9AttributeEECs6SXwsBSuFuw_4just.exit53.i.i, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.i.i.i, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 128, i64 noundef 8) #26
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just13search_config12SearchConfigECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !13 ; 4 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 5
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12
    i64 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.a, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load ptr, ptr %i.f, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1362
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12.sink.split: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit, %bb.f, %bb.e, %bb.d
  %.sink16 = phi i64 [ 16, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 32, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit ]
  %.val.sink = phi i64 [ %.val4, %bb.f ], [ %.val10, %bb.e ], [ %.val6, %bb.d ], [ %.val, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sink16
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !13
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12.sink.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit, %bb.f, %bb.e, %bb.d, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i64, ptr %i.h, align 8, !range !12, !alias.scope !23, !noundef !13 ; 2 uses
  %i.i = icmp eq i64 %.val6, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12.sink.split

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load i64, ptr %i.j, align 8, !range !16, !noundef !13 ; 2 uses
  %i.k = icmp sgt i64 %.val10, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12.sink.split, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load i64, ptr %i.l, align 8, !range !12, !alias.scope !23, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.n, align 8, !range !12, !alias.scope !23, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit12.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just21datetime_format_error19DatetimeFormatErrorECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !13 ; 2 uses
  switch i64 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.sink.split [
    i64 -1, label %bb.b
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i64, ptr %i.b, align 8, !range !12, !alias.scope !1367, !noundef !13 ; 2 uses
  %i.c = icmp eq i64 %.val.i.i, 0
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink5 = phi i64 [ 16, %bb.b ], [ 8, %bb.a ]
  %.sink = phi i64 [ %.val.i.i, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink5
  %.val1.i.i2 = load ptr, ptr %i.d, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2, i64 noundef %.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !13
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just4line4LineECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1376, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1376, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i.i, 1    ; 4 uses
  %i.f = load i64, ptr %i.d, align 8, !range !26, !alias.scope !1378, !noalias !1376, !noundef !13
  %.not.i.i.i.i = icmp eq i64 %i.f, -1
  br i1 %.not.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit.i.i.i unwind label %bb.c, !noalias !1376

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.g = icmp eq i64 %i.e, %.val1.i
  br i1 %i.g, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.e, %.val1.i
  br i1 %i.i, label %.body.i, label %.lr.ph13.i.i.i

.lr.ph13.i.i.i:                                   ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit9.i.i.i
  %.sroa.0.111.i.i.i = phi i64 [ %i.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit9.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %.val.i, i64 %.sroa.0.111.i.i.i ; 2 uses
  %i.k = add i64 %.sroa.0.111.i.i.i, 1            ; 2 uses
  %i.l = load i64, ptr %i.j, align 8, !range !26, !alias.scope !1379, !noalias !1376, !noundef !13
  %.not.i7.i.i.i = icmp eq i64 %i.l, -1
  br i1 %.not.i7.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit9.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph13.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit9.i.i.i unwind label %bb.e, !noalias !1376

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit9.i.i.i: ; preds = %bb.d, %.lr.ph13.i.i.i
  %i.m = icmp eq i64 %i.k, %.val1.i
  br i1 %i.m, label %.body.i, label %.lr.ph13.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1380
  unreachable

.body.i:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit9.i.i.i, %bb.c
  %.val4.i = load i64, ptr %0, align 8, !range !12, !alias.scope !1376, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val4.i, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentEECs6SXwsBSuFuw_4just.exit.i, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.p = shl nuw i64 %.val4.i, 7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1376
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentEECs6SXwsBSuFuw_4just.exit.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8fragment8FragmentECs6SXwsBSuFuw_4just.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !12, !alias.scope !1376, !noundef !13 ; 2 uses
  %i.q = icmp eq i64 %.val2.i, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentEECs6SXwsBSuFuw_4just.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i
  %i.r = shl nuw i64 %.val2.i, 7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1376
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just8fragment8FragmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5error5ErrorECs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !13 ; 3 uses
  %i.b = icmp ne i64 %i.a, 58
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -5
  %i.d = icmp samesign ugt i64 %i.a, 4
  %i.e = select i1 %i.d, i64 %i.c, i64 53
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 4, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 5, label %bb.h
    i64 6, label %bb.j
    i64 7, label %bb.k
    i64 8, label %bb.m
    i64 9, label %bb.o
    i64 10, label %bb.q
    i64 11, label %bb.s
    i64 12, label %bb.t
    i64 13, label %bb.v
    i64 14, label %bb.x
    i64 15, label %bb.z
    i64 16, label %bb.ab
    i64 17, label %bb.ad
    i64 18, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 19, label %bb.af
    i64 20, label %bb.ah
    i64 21, label %bb.aj
    i64 22, label %bb.ak
    i64 23, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 24, label %bb.al
    i64 25, label %bb.am
    i64 26, label %bb.an
    i64 27, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 28, label %bb.ao
    i64 29, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 30, label %bb.ap
    i64 31, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 32, label %bb.ar
    i64 33, label %bb.as
    i64 34, label %bb.au
    i64 35, label %bb.aw
    i64 36, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 37, label %bb.ay
    i64 38, label %bb.ba
    i64 39, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 40, label %bb.bc
    i64 41, label %bb.be
    i64 42, label %bb.bf
    i64 43, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 44, label %bb.bh
    i64 45, label %bb.bj
    i64 46, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 47, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 48, label %bb.bk
    i64 49, label %bb.bm
    i64 50, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 51, label %bb.bo
    i64 52, label %bb.bq
    i64 53, label %bb.bs
    i64 54, label %bb.bt
    i64 55, label %bb.bu
    i64 56, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 57, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 58, label %bb.bw
    i64 59, label %bb.by
    i64 60, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 61, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 62, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 63, label %bb.bz
    i64 64, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 65, label %bb.cb
    i64 66, label %bb.cd
    i64 67, label %bb.ce
    i64 68, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 69, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 70, label %bb.cf
    i64 71, label %bb.ch
    i64 72, label %bb.ci
    i64 73, label %bb.ck
    i64 74, label %bb.cl
    i64 75, label %bb.cn
    i64 76, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 77, label %bb.co
    i64 78, label %bb.cp
    i64 79, label %bb.cq
    i64 80, label %bb.cr
    i64 81, label %bb.cs
    i64 82, label %bb.ct
    i64 83, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
    i64 84, label %bb.cu
    i64 85, label %bb.cw
    i64 86, label %bb.cy
    i64 87, label %bb.cz
    i64 88, label %bb.db
    i64 89, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val59 = load i64, ptr %i.f, align 8, !range !12, !alias.scope !23, !noundef !13 ; 2 uses
  %i.g = icmp eq i64 %.val59, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val60 = load ptr, ptr %i.h, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef %.val59, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1533
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  %.val.i.i = load i64, ptr %i.l, align 8, !range !12, !alias.scope !1536, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1536, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1536
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128: ; preds = %bb.ds, %bb.dr, %bb.do, %bb.dn, %bb.dl, %bb.dk, %bb.di, %bb.dh, %bb.df, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit141, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.cg, %bb.cf, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.bx, %bb.bw, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.at, %bb.as, %bb.aa, %bb.z, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit224, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit188, %bb.ce, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit174, %bb.bt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit147, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit146, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit143, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit142, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit140, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit210, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit130, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit129, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit, %bb.d, %bb.cy, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.ck, %bb.cd, %bb.by, %bb.bs, %bb.bj, %bb.ar, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.s, %bb.j, %bb.e, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  %.val.i.i126 = load i64, ptr %i.o, align 8, !range !12, !alias.scope !1539, !noundef !13 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i126, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit128, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i127 = load ptr, ptr %i.q, align 8, !alias.scope !1539, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i127, i64 noundef %.val.i.i126, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1539
end_hunk_3
begin_hunk_4_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6config6ConfigECs6SXwsBSuFuw_4just:bb.a
bb.ac:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i105
  %i.di = mul nuw i64 %i.cx, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i98, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1773
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECs6SXwsBSuFuw_4just.exit106

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECs6SXwsBSuFuw_4just.exit106: ; preds = %bb.ac, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i105, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit97
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10subcommand10SubcommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.val41 = load i64, ptr %i.dk, align 8, !range !16, !noundef !13 ; 2 uses
  %i.dl = icmp sgt i64 %.val41, 0
  br i1 %i.dl, label %bb.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit114

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val44 = load ptr, ptr %i.dm, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val44, i64 noundef %.val43, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1779
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit110

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECs6SXwsBSuFuw_4just.exit106
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.val42 = load ptr, ptr %i.dn, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %.val41, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1780
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit114

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit110: ; preds = %bb.ad, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  %.val.i.i115 = load i64, ptr %i.do, align 8, !range !12, !alias.scope !1783, !noundef !13 ; 2 uses
  %i.dp = icmp eq i64 %.val.i.i115, 0
  br i1 %i.dp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit117, label %bb.af

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit110
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i116 = load ptr, ptr %i.dq, align 8, !alias.scope !1783, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i116, i64 noundef %.val.i.i115, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1783
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit117

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit114: ; preds = %bb.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB12_6string6StringEEECs6SXwsBSuFuw_4just.exit106
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %.val.i.i118 = load i64, ptr %i.dr, align 8, !range !12, !alias.scope !1786, !noundef !13 ; 2 uses
  %i.ds = icmp eq i64 %.val.i.i118, 0
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit120, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit114
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i119 = load ptr, ptr %i.dt, align 8, !alias.scope !1786, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i119, i64 noundef %.val.i.i118, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1786
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit120

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit120: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit114, %bb.ag
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit117: ; preds = %bb.af, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit110
  resume { ptr, i32 } %i.bu
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6loader6LoaderECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1820, !nonnull !13, !noundef !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1820, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  %i.d = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !range !12, !alias.scope !1822, !noalias !1820, !noundef !13 ; 2 uses
  %i.g = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1821, !noalias !1820, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1823
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.i = icmp eq i64 %i.f, %.val1.i.i.i.i.i
  br i1 %i.i, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, %bb.a
  %.val2.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !12, !alias.scope !1820, !noundef !13 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %i.k = mul nuw i64 %.val2.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1820
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.c, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i1.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1825, !nonnull !13, !noundef !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i2.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1825, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %i.o = icmp eq i64 %.val1.i2.i.i.i.i, 0
  br i1 %i.o, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i3.i.i.i.i

.lr.ph.i.i.i3.i.i.i.i:                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val.i1.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1828, !noalias !1825, !nonnull !13, !noundef !13 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !1828, !noalias !1825, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  %i.t = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i3.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i3.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !range !12, !alias.scope !1830, !noalias !1831, !noundef !13 ; 2 uses
  %i.w = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !1829, !noalias !1831, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1832
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.y = icmp eq i64 %i.v, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.y, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i3.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !range !12, !alias.scope !1828, !noalias !1825, !noundef !13 ; 2 uses
  %i.z = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i
  %i.aa = mul nuw i64 %.val2.i.i.i.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1831
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i
  %i.ab = icmp eq i64 %i.q, %.val1.i2.i.i.i.i
  br i1 %i.ab, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i3.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit.i.i.i.i
  %.val2.i4.i.i.i.i = load i64, ptr %i.l, align 8, !range !12, !alias.scope !1825, !noundef !13 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i4.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCscRggLTdVSaO_11typed_arena5ArenaNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %i.ad = mul nuw i64 %.val2.i4.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1825
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCscRggLTdVSaO_11typed_arena5ArenaNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCscRggLTdVSaO_11typed_arena5ArenaNtNtCsaKJjC64KgbL_3std4path7PathBufEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.f, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtCsaKJjC64KgbL_3std4path7PathBufEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCscRggLTdVSaO_11typed_arena5ArenaNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ae)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7pattern7PatternECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1835, !nonnull !13, !noundef !13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1835, !noundef !13 ; 4 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1.i
  br i1 %i.d, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i1 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i1
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i.i1, 1     ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e)
          to label %bb.b unwind label %bb.d, !noalias !1835

bb.c:                                             ; preds = %.lr.ph3
  %i.g = add i64 %.sroa.0.1.i.i.i2, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1.i
  br i1 %i.h, label %.body.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1.i
  br i1 %i.j, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i2
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #28
          to label %bb.c unwind label %bb.e, !noalias !1835

bb.e:                                             ; preds = %.lr.ph3
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1835
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %.val4.i = load i64, ptr %0, align 8, !range !12, !alias.scope !1835, !noundef !13 ; 2 uses
  %i.m = icmp eq i64 %.val4.i, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexEECs6SXwsBSuFuw_4just.exit.i, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.n = shl nuw i64 %.val4.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1835
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexEECs6SXwsBSuFuw_4just.exit.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.b, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !12, !alias.scope !1835, !noundef !13 ; 2 uses
  %i.o = icmp eq i64 %.val2.i, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexEECs6SXwsBSuFuw_4just.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i
  %i.p = shl nuw i64 %.val2.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1835
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2kgGfOW2lp_5regex5regex6string5RegexENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9attribute9AttributeECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(1352) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = load i64, ptr %0, align 8, !range !1944, !noundef !13 ; 3 uses
  %i.d = icmp ne i64 %i.c, 3
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add nsw i64 %i.c, -2
  %i.f = icmp samesign ugt i64 %i.c, 1
  %i.g = select i1 %i.f, i64 %i.e, i64 1
  switch i64 %i.g, label %bb.b [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 1, label %bb.c
    i64 2, label %bb.e
    i64 3, label %bb.g
    i64 4, label %bb.i
    i64 5, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 6, label %bb.l
    i64 7, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 8, label %bb.n
    i64 9, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 10, label %bb.o
    i64 11, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 12, label %bb.q
    i64 13, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 14, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 15, label %bb.s
    i64 16, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 17, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 18, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 19, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 20, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 21, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 22, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 23, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 24, label %bb.v
    i64 25, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 26, label %bb.aa
    i64 27, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
    i64 28, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32: ; preds = %bb.ay, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit66, %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEECs6SXwsBSuFuw_4just.exit59, %bb.ab, %bb.aa, %bb.z, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i, %bb.v, %bb.u, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.h, %bb.g, %bb.ba, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalEECs6SXwsBSuFuw_4just.exit, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val = load i64, ptr %i.i, align 8, !range !16, !noundef !13 ; 2 uses
  %i.j = icmp sgt i64 %.val, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val15 = load ptr, ptr %i.k, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1945
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !26, !alias.scope !1946, !noundef !13
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit unwind label %bb.at

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !26, !alias.scope !1947, !noundef !13
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.o)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1951
  %.sroa.06.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1951 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.58.0.copyload.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !alias.scope !1951
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.47.0.copyload.i.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !alias.scope !1951 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !1951
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1951
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1951
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !1951
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1951
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1951
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink31.i.i.i = phi i64 [ 1, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i, %bb.j ], [ 0, %bb.i ]
  store i64 %.sink31.i.i.i, ptr %i.b, align 8, !noalias !1951
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i.i, ptr %i.s, align 8, !noalias !1951
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i, ptr %i.t, align 8, !noalias !1951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1952
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !1951
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1952, !noundef !13
  %.not3.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not3.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalEECs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1952
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10dying_nextCs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !1951
  %i.v = load ptr, ptr %i.a, align 8, !noalias !1952, !noundef !13
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalEECs6SXwsBSuFuw_4just.exit, label %.lr.ph.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalEECs6SXwsBSuFuw_4just.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1951
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !26, !alias.scope !1953, !noundef !13
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(128) %i.w)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEECs6SXwsBSuFuw_4just.exit32

bb.n:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %i.z)
end_hunk_4
begin_hunk_5_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.val46 = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef %.val45, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2153
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val41 = load i64, ptr %i.d, align 8, !range !16, !noundef !13 ; 2 uses
  %i.e = icmp sgt i64 %.val41, 0
  br i1 %i.e, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit100

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val42 = load ptr, ptr %i.f, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %.val41, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2154
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit100

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit100: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val79 = load i64, ptr %i.g, align 8, !range !16, !noundef !13 ; 2 uses
  %i.h = icmp sgt i64 %.val79, 0
  br i1 %i.h, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit105

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit100
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.val80 = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80, i64 noundef %.val79, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2155
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit105

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit105: ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val75 = load i64, ptr %i.j, align 8, !range !16, !noundef !13 ; 2 uses
  %i.k = icmp sgt i64 %.val75, 0
  br i1 %i.k, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit111

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit105
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val76 = load ptr, ptr %i.l, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val76, i64 noundef %.val75, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2156
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit111

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit111: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit105
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.val71 = load i64, ptr %i.m, align 8, !range !16, !noundef !13 ; 2 uses
  %i.n = icmp sgt i64 %.val71, 0
  br i1 %i.n, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit117

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit111
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.val72 = load ptr, ptr %i.o, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72, i64 noundef %.val71, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2157
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit117

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit117: ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit111
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val67 = load i64, ptr %i.p, align 8, !range !16, !noundef !13 ; 2 uses
  %i.q = icmp sgt i64 %.val67, 0
  br i1 %i.q, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit123

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit117
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val68 = load ptr, ptr %i.r, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68, i64 noundef %.val67, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2158
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit123: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit117
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.val63 = load i64, ptr %i.s, align 8, !range !16, !noundef !13 ; 2 uses
  %i.t = icmp sgt i64 %.val63, 0
  br i1 %i.t, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit129

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit123
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.val64 = load ptr, ptr %i.u, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val64, i64 noundef %.val63, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2159
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit129

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit129: ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit123
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.val59 = load i64, ptr %i.v, align 8, !range !16, !noundef !13 ; 2 uses
  %i.w = icmp sgt i64 %.val59, 0
  br i1 %i.w, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit135

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit129
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val60 = load ptr, ptr %i.x, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef %.val59, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2160
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit135

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit135: ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit129
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val87 = load i64, ptr %i.y, align 8           ; 2 uses
  %i.z = icmp eq i64 %.val87, 0
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit136, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit135
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val88 = load ptr, ptr %i.aa, align 8, !nonnull !13, !noundef !13
  %i.ab = mul nuw i64 %.val87, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val88, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit136

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit136: ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit135
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val91 = load i64, ptr %i.ac, align 8          ; 2 uses
  %i.ad = icmp eq i64 %.val91, 0
  br i1 %i.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECs6SXwsBSuFuw_4just.exit137, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit136
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val92 = load ptr, ptr %i.ae, align 8, !nonnull !13, !noundef !13
  %i.af = shl nuw i64 %.val91, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val92, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECs6SXwsBSuFuw_4just.exit137

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECs6SXwsBSuFuw_4just.exit137: ; preds = %bb.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit136
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val83 = load i64, ptr %i.ag, align 8          ; 2 uses
  %i.ah = icmp eq i64 %.val83, 0
  br i1 %i.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit139, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECs6SXwsBSuFuw_4just.exit137
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val84 = load ptr, ptr %i.ai, align 8, !nonnull !13, !noundef !13
  %i.aj = mul nuw i64 %.val83, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val84, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit139

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit139: ; preds = %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECs6SXwsBSuFuw_4just.exit137
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.val55 = load i64, ptr %i.ak, align 8, !range !16, !noundef !13 ; 2 uses
  %i.al = icmp sgt i64 %.val55, 0
  br i1 %i.al, label %bb.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit145

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit139
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.val56 = load ptr, ptr %i.am, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef %.val55, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2161
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit145

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit145: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3str3StrbEEECs6SXwsBSuFuw_4just.exit139
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.val = load i64, ptr %i.an, align 8, !range !16, !noundef !13 ; 2 uses
  %i.ao = icmp sgt i64 %.val, 0
  br i1 %i.ao, label %bb.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit151

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit145
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.val38 = load ptr, ptr %i.ap, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2162
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit151

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit151: ; preds = %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit145
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.val51 = load i64, ptr %i.aq, align 8, !range !16, !noundef !13 ; 2 uses
  %i.ar = icmp sgt i64 %.val51, 0
  br i1 %i.ar, label %bb.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit157

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit151
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.val52 = load ptr, ptr %i.as, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52, i64 noundef %.val51, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2163
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit157

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit157: ; preds = %bb.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECs6SXwsBSuFuw_4just.exit151
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.val47 = load i64, ptr %i.at, align 8, !range !16, !noundef !13 ; 2 uses
  %i.au = icmp sgt i64 %.val47, 0
  br i1 %i.au, label %bb.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit163

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit157
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.val48 = load ptr, ptr %i.av, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val48, i64 noundef %.val47, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2164
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit163

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit163: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit157
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val.i.i177 = load ptr, ptr %i.ax, align 8, !alias.scope !2167, !nonnull !13, !noundef !13 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val1.i.i178 = load i64, ptr %i.ay, align 8, !alias.scope !2167, !noundef !13 ; 4 uses
  %i.az = icmp eq i64 %.val1.i.i178, 0
  br i1 %i.az, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %i.ba = icmp eq i64 %i.bc, %.val1.i.i178
  br i1 %i.ba, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit163, %bb.q
  %.sroa.0.0.i.i.i.i192 = phi i64 [ %i.bc, %bb.q ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit163 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [640 x i8], ptr %.val.i.i177, i64 %.sroa.0.0.i.i.i.i192
  %i.bc = add nuw nsw i64 %.sroa.0.0.i.i.i.i192, 1 ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(640) %i.bb)
          to label %bb.q unwind label %bb.s, !noalias !2167

bb.r:                                             ; preds = %.lr.ph194
  %i.bd = add i64 %.sroa.0.1.i.i.i.i193, 1        ; 2 uses
  %i.be = icmp eq i64 %i.bd, %.val1.i.i178
  br i1 %i.be, label %.body.i.i, label %.lr.ph194

bb.s:                                             ; preds = %.lr.ph
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = icmp eq i64 %i.bc, %.val1.i.i178
  br i1 %i.bg, label %.body.i.i, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.s, %bb.r
  %.sroa.0.1.i.i.i.i193 = phi i64 [ %i.bd, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [640 x i8], ptr %.val.i.i177, i64 %.sroa.0.1.i.i.i.i193
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(640) %i.bh) #28
          to label %bb.r unwind label %bb.t, !noalias !2167

bb.t:                                             ; preds = %.lr.ph194
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2167
  unreachable

.body.i.i:                                        ; preds = %bb.r, %bb.s
  %.val4.i.i = load i64, ptr %i.aw, align 8, !range !12, !alias.scope !2167, !noundef !13 ; 2 uses
  %i.bj = icmp eq i64 %.val4.i.i, 0
  br i1 %i.bj, label %.body.i, label %bb.u

bb.u:                                             ; preds = %.body.i.i
  %i.bk = mul nuw i64 %.val4.i.i, 640
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i177, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2167
  br label %.body.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder10styled_str9StyledStrEECs6SXwsBSuFuw_4just.exit163
  %.val2.i.i = load i64, ptr %i.aw, align 8, !range !12, !alias.scope !2167, !noundef !13 ; 2 uses
  %i.bl = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgEECs6SXwsBSuFuw_4just.exit.i, label %bb.v

bb.v:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i
  %i.bm = mul nuw i64 %.val2.i.i, 640
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i177, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2167
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgEECs6SXwsBSuFuw_4just.exit.i

.body.i:                                          ; preds = %bb.u, %.body.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val2.i179 = load i64, ptr %i.bn, align 8, !alias.scope !2165 ; 2 uses
  %i.bo = icmp eq i64 %.val2.i179, 0
  br i1 %i.bo, label %.body183, label %bb.w

bb.w:                                             ; preds = %.body.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3.i180 = load ptr, ptr %i.bp, align 8, !alias.scope !2165, !nonnull !13, !noundef !13
  %i.bq = shl nuw i64 %.val2.i179, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i180, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2165
  br label %.body183

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.v, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.i181 = load i64, ptr %i.br, align 8, !alias.scope !2165 ; 2 uses
  %i.bs = icmp eq i64 %.val.i181, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder7mkeymap7MKeyMapECs6SXwsBSuFuw_4just.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgEECs6SXwsBSuFuw_4just.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1.i182 = load ptr, ptr %i.bt, align 8, !alias.scope !2165, !nonnull !13, !noundef !13
  %i.bu = shl nuw i64 %.val.i181, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i182, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2165
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder7mkeymap7MKeyMapECs6SXwsBSuFuw_4just.exit

.body183:                                         ; preds = %.body.i, %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bv) #28
          to label %.body unwind label %bb.an

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder7mkeymap7MKeyMapECs6SXwsBSuFuw_4just.exit: ; preds = %bb.x, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder3arg3ArgEECs6SXwsBSuFuw_4just.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !2168, !nonnull !13, !noundef !13 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !2168, !noundef !13 ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit, label %.lr.ph196

bb.y:                                             ; preds = %.lr.ph196
  %i.cc = icmp eq i64 %i.ce, %i.ca
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit, label %.lr.ph196

.lr.ph196:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder7mkeymap7MKeyMapECs6SXwsBSuFuw_4just.exit, %bb.y
  %.sroa.0.0.i.i195 = phi i64 [ %i.ce, %bb.y ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder7mkeymap7MKeyMapECs6SXwsBSuFuw_4just.exit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [760 x i8], ptr %i.by, i64 %.sroa.0.0.i.i195
  %i.ce = add i64 %.sroa.0.0.i.i195, 1            ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.cd)
          to label %bb.y unwind label %bb.aa, !noalias !2168, !inline_history !2136

bb.z:                                             ; preds = %.lr.ph198
  %i.cf = add i64 %.sroa.0.1.i.i197, 1            ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.ca
  br i1 %i.cg, label %.body171, label %.lr.ph198

bb.aa:                                            ; preds = %.lr.ph196
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = icmp eq i64 %i.ce, %i.ca
  br i1 %i.ci, label %.body171, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.aa, %bb.z
  %.sroa.0.1.i.i197 = phi i64 [ %i.cf, %bb.z ], [ %i.ce, %bb.aa ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [760 x i8], ptr %i.by, i64 %.sroa.0.1.i.i197
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.cj) #28
          to label %bb.z unwind label %bb.ab, !noalias !2168, !inline_history !2136

bb.ab:                                            ; preds = %.lr.ph198
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2168, !inline_history !2136
  unreachable

.body171:                                         ; preds = %bb.z, %bb.aa
  %.val2.i = load i64, ptr %i.bw, align 8, !range !12, !alias.scope !2169, !noundef !13 ; 2 uses
  %i.cl = icmp eq i64 %.val2.i, 0
  br i1 %i.cl, label %.body, label %bb.ac

bb.ac:                                            ; preds = %.body171
  %i.cm = mul nuw i64 %.val2.i, 760
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.y, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs2FJGJNE9lTN_12clap_builder7mkeymap7MKeyMapECs6SXwsBSuFuw_4just.exit
  %.val.i = load i64, ptr %i.bw, align 8, !range !12, !alias.scope !2169, !noundef !13 ; 2 uses
  %i.cn = icmp eq i64 %.val.i, 0
  br i1 %i.cn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit
  %i.co = mul nuw i64 %.val.i, 760
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit

.body:                                            ; preds = %bb.ac, %.body171, %.body183
  %.pn30 = phi { ptr, i32 } [ %i.bf, %.body183 ], [ %i.ch, %.body171 ], [ %i.ch, %bb.ac ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp) #28
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cq) #28
          to label %.body164 unwind label %bb.an

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.ad, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder9arg_group8ArgGroupEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %i.ct = load i64, ptr %i.cs, align 8, !range !17, !alias.scope !2170, !noundef !13 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandEECs6SXwsBSuFuw_4just.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  %switch.i.i.i = icmp samesign ult i64 %i.ct, 4
  br i1 %switch.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !2173 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !2173, !nonnull !13, !align !18, !noundef !13 ; 5 uses
  %i.cx = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !13, !noalias !2173 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.cx(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ah unwind label %bb.ai, !noalias !2173

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !12, !invariant.load !13, !noalias !2173 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !19, !invariant.load !13, !noalias !2173
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) %i.dc) #26, !noalias !2173
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2FJGJNE9lTN_12clap_builder7builder12value_parser11ValueParserEECs6SXwsBSuFuw_4just.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !12, !invariant.load !13, !noalias !2173 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %.body164, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !19, !invariant.load !13, !noalias !2173
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) %i.di) #26, !noalias !2173
  br label %.body164

end_hunk_5
begin_hunk_6_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa5CacheECs6SXwsBSuFuw_4just:bb.a
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit, label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.j, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  %.val4.i.i = load i64, ptr %i.bd, align 8, !alias.scope !2352 ; 2 uses
  %i.be = icmp eq i64 %.val4.i.i, 0
  br i1 %i.be, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val5.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !2352, !nonnull !13, !noundef !13
  %i.bg = shl nuw i64 %.val4.i.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2352
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs6SXwsBSuFuw_4just.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load i64, ptr %i.bh, align 8, !alias.scope !2352 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i, 0
  br i1 %i.bi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !2352, !nonnull !13, !noundef !13
  %i.bk = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2352
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2353)
  %.val4.i1.i = load i64, ptr %i.bl, align 8, !alias.scope !2354 ; 2 uses
  %i.bm = icmp eq i64 %.val4.i1.i, 0
  br i1 %i.bm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val5.i2.i = load ptr, ptr %i.bn, align 8, !alias.scope !2354, !nonnull !13, !noundef !13
  %i.bo = shl nuw i64 %.val4.i1.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i2.i, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2354
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i: ; preds = %bb.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set9SparseSetECs6SXwsBSuFuw_4just.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val.i4.i = load i64, ptr %i.bp, align 8, !alias.scope !2354 ; 2 uses
  %i.bq = icmp eq i64 %.val.i4.i, 0
  br i1 %i.bq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1.i5.i = load ptr, ptr %i.br, align 8, !alias.scope !2354, !nonnull !13, !noundef !13
  %i.bs = shl nuw i64 %.val.i4.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !2354
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit

bb.q:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val14 = load ptr, ptr %i.bt, align 8, !nonnull !13, !noundef !13
  %i.bu = shl nuw i64 %.val13, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit.i3.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bw = icmp eq i64 %.val, 0
  br i1 %i.bw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val12 = load ptr, ptr %i.bx, align 8, !nonnull !13, !noundef !13
  %i.by = shl nuw i64 %.val, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit: ; preds = %bb.q, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val23 = load i64, ptr %i.bz, align 8, !range !12, !alias.scope !2355, !noundef !13 ; 2 uses
  %i.ca = icmp eq i64 %.val23, 0
  br i1 %i.ca, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val24 = load ptr, ptr %i.cb, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %.val23, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2356
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27: ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata4util10sparse_set10SparseSetsECs6SXwsBSuFuw_4just.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val21 = load i64, ptr %i.cc, align 8, !range !12, !alias.scope !2355, !noundef !13 ; 2 uses
  %i.cd = icmp eq i64 %.val21, 0
  br i1 %i.cd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val22 = load ptr, ptr %i.ce, align 8, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %.val21, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2357
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit: ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  %i.cg = load i32, ptr %i.cf, align 8, !range !2359, !alias.scope !2358, !noundef !13
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !2363, !nonnull !13, !noundef !13
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !2363
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ci) #31
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit unwind label %bb.y

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28: ; preds = %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsk7w47U2izUG_14regex_automata4util10primitives7StateIDEECs6SXwsBSuFuw_4just.exit27
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  %i.cn = load i32, ptr %i.cm, align 8, !range !2359, !alias.scope !2364, !noundef !13
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit30

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !2368, !nonnull !13, !noundef !13
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !2368
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit30

bb.x:                                             ; preds = %bb.w
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcShE9drop_slowCsk7w47U2izUG_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cp) #31
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit30

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit30: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit28, %bb.w, %bb.x
  ret void

bb.y:                                             ; preds = %bb.v, %bb.d
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsk7w47U2izUG_14regex_automata6hybrid3dfa10StateSaverECs6SXwsBSuFuw_4just.exit: ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsk7w47U2izUG_14regex_automata4util11determinize5state17StateBuilderEmptyECs6SXwsBSuFuw_4just.exit, %bb.v
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !2388 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !2388, !nonnull !13, !noundef !13
  %i.c = shl nuw i64 %.val.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2388
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i2 = load ptr, ptr %i.e, align 8, !alias.scope !2389, !nonnull !13, !noundef !13 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i3 = load i64, ptr %i.f, align 8, !alias.scope !2389, !noundef !13 ; 4 uses
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
          to label %bb.c unwind label %bb.e, !noalias !2389

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
          to label %bb.d unwind label %bb.f, !noalias !2389

bb.f:                                             ; preds = %.lr.ph9
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !2390
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  %.val4.i = load i64, ptr %i.d, align 8, !range !12, !alias.scope !2389, !noundef !13 ; 2 uses
  %i.q = icmp eq i64 %.val4.i, 0
  br i1 %i.q, label %.body, label %bb.g

bb.g:                                             ; preds = %.body.i
  %i.r = mul nuw i64 %.val4.i, 104
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2389
  br label %.body

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs2FJGJNE9lTN_12clap_builder4util2id2IdEECs6SXwsBSuFuw_4just.exit.i
  %.val2.i = load i64, ptr %i.d, align 8, !range !12, !alias.scope !2389, !noundef !13 ; 2 uses
  %i.s = icmp eq i64 %.val2.i, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs6SXwsBSuFuw_4just.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i
  %i.t = mul nuw i64 %.val2.i, 104
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2389
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs6SXwsBSuFuw_4just.exit

.body:                                            ; preds = %.body.i, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2391, !align !18, !noundef !13
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %common.resume, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %common.resume unwind label %bb.l, !inline_history !2377

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2392, !align !18, !noundef !13 ; 6 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEEECs6SXwsBSuFuw_4just.exit1, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs2FJGJNE9lTN_12clap_builder4util8flat_map7FlatMapNtNtBG_2id2IdNtNtNtNtBI_6parser7matches11matched_arg10MatchedArgEECs6SXwsBSuFuw_4just.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2394), !noalias !2395
  %.val.i.i = load i64, ptr %i.y, align 8, !range !12, !alias.scope !2396, !noalias !2395, !noundef !13 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i, 0
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val1.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !2396, !noalias !2395, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2397
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit: ; preds = %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10ArgMatchesECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ac)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEECs6SXwsBSuFuw_4just.exit unwind label %.body.i4, !noalias !2395, !inline_history !2386

.body.i4:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 80, i64 noundef 8) #26, !noalias !2395, !inline_history !2387
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %.body, %.body.i4
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %.body.i4 ], [ %i.m, %.body ], [ %i.m, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCs2FJGJNE9lTN_12clap_builder6parser7matches11arg_matches10SubCommandEECs6SXwsBSuFuw_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs6SXwsBSuFuw_4just.exit
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 80, i64 noundef 8) #26, !noalias !2395, !inline_history !2387
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !2410, !nonnull !13, !noundef !13 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load i64, ptr %i.j, align 8, !alias.scope !2410, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  %i.k = icmp eq i64 %.val1.i, 0
  br i1 %i.k, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.m = add nuw nsw i64 %.sroa.0.07.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val4.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !2413, !noalias !2410, !nonnull !13, !noundef !13 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val5.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !2413, !noalias !2410, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  %i.p = icmp eq i64 %.val5.i.i.i.i, 0
  br i1 %i.p, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !12, !alias.scope !2415, !noalias !2416, !noundef !13 ; 2 uses
  %i.s = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !2414, !noalias !2416, !nonnull !13, !noundef !13
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2417
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.u = icmp eq i64 %i.r, %.val5.i.i.i.i
  br i1 %i.u, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.l, align 8, !range !12, !alias.scope !2413, !noalias !2410, !noundef !13 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.w = mul nuw i64 %.val.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2416
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.f, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.x = icmp eq i64 %i.m, %.val1.i
  br i1 %i.x, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i.i, %bb.d
  %.val2.i = load i64, ptr %i.h, align 8, !range !12, !alias.scope !2410, !noundef !13 ; 2 uses
  %i.y = icmp eq i64 %.val2.i, 0
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i
  %i.z = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2410
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECs6SXwsBSuFuw_4just.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs6SXwsBSuFuw_4just.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCskXtk6F4WjxZ_4just10expression10ExpressionNtNtBG_14string_literal13StringLiteralEECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10expression10ExpressionECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(128) %0)
end_hunk_6
