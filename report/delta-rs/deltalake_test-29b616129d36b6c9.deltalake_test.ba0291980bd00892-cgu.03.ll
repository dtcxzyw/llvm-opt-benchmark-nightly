inline.NumInlined: 371
inline.NumDeleted: 174
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test:bb.a
          to label %.body.i unwind label %bb.f, !noalias !13, !inline_history !16

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !13, !inline_history !16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.g, !noalias !13, !inline_history !16

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.i, !inline_history !16

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.e, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16) %i.i) #18
          to label %bb.j unwind label %bb.h, !noalias !13, !inline_history !16

bb.h:                                             ; preds = %.body.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !13, !inline_history !16
  unreachable

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

common.resume:                                    ; preds = %bb.u, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %bb.j ], [ %eh.lpad-body10, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 48, i64 noundef 8) #19, !noalias !13
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 48, i64 noundef 8) #19, !noalias !13
  br label %bb.c

bb.k:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECsfY7SmN0bPrO_14deltalake_test(ptr %.val)
  br label %bb.c

bb.l:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !17, !nonnull !3, !noundef !3 ; 9 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i7 unwind label %bb.m, !noalias !17, !inline_history !20

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.body.i5 unwind label %bb.n, !noalias !17, !inline_history !20

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !17, !inline_history !20
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i7: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i8 unwind label %bb.o, !noalias !17, !inline_history !20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i8: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i7
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16) %i.q)
          to label %bb.r unwind label %bb.q, !noalias !17, !inline_history !20

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i.i7
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i5

.body.i5:                                         ; preds = %bb.m, %bb.o
  %eh.lpad-body.i6 = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.o, %bb.m ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16) %i.s) #18
          to label %bb.p unwind label %bb.s, !noalias !17, !inline_history !20

bb.p:                                             ; preds = %bb.q, %.body.i5
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.q ], [ %eh.lpad-body.i6, %.body.i5 ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16) %i.t) #18
          to label %bb.u unwind label %bb.s, !noalias !17, !inline_history !20

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i8
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(16) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.t, !inline_history !20

bb.s:                                             ; preds = %bb.p, %.body.i5
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !17, !inline_history !20
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.x, %bb.t ], [ %.pn.i, %bb.p ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #19, !noalias !17
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.r
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #19, !noalias !17
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !3
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsfY7SmN0bPrO_14deltalake_test.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i.i, %bb.e, %bb.d, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #19
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsfY7SmN0bPrO_14deltalake_test.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = ptrtoint ptr %.val2 to i64
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsfY7SmN0bPrO_14deltalake_test.exit
    i64 3, label %bb.e
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsfY7SmN0bPrO_14deltalake_test.exit
    i64 1, label %bb.f
  ], !prof !22

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ult ptr %.val2, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsfY7SmN0bPrO_14deltalake_test.exit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.val2, i64 -1     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8   ; 5 uses
  %i.j = getelementptr i8, ptr %.val2, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.j, align 8, !nonnull !3, !align !23, !noundef !3 ; 5 uses
  %i.k = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.k(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !24, !invariant.load !3 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !25, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #19
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !24, !invariant.load !3 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !25, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #19
  resume { ptr, i32 } %i.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 24, i64 noundef 8) #19
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxeEECsfY7SmN0bPrO_14deltalake_test.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCseqDwI8vvjGQ_10serde_json2de11from_readerNtNtCs2pqxYH9ZEk8_3std2fs4FileNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEB1k_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 -9223372036854775808, ptr %i.e, align 8, !noalias !26
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store i64 1, ptr %.sroa.44.0..sroa_idx, align 8, !noalias !26
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5, i8 0, i64 16, i1 false)
  store i32 %1, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !26
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  store i8 0, ptr %.sroa.87.0..sroa_idx, align 8, !noalias !26
  store i64 0, ptr %i.d, align 8, !noalias !29
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !29
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i8 -128, ptr %i.f, align 8, !noalias !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29
  invoke void @_RINvXNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4metas3_1__NtB5_20TableVersionMetaDataNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtB2u_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEEEB9_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.c unwind label %bb.b, !noalias !31

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.i: ; preds = %bb.i, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %lpad.phi.i, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtBL_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(96) %i.d) #18
          to label %bb.m unwind label %bb.l, !noalias !29

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !alias.scope !26, !noalias !31, !noundef !3
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_traitINtNtB4_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEB1E_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !noalias !31
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 81 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.noexc5.i

.noexc5.i:                                        ; preds = %bb.g, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.m = load i8, ptr %.sroa.87.0..sroa_idx, align 8, !range !41, !alias.scope !42, !noalias !43, !noundef !3
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.thread.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46
  invoke void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesNtNtB13_2fs4FileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.44.0..sroa_idx)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !29

.noexc.i:                                         ; preds = %bb.e
  %i.o = load i8, ptr %i.a, align 8, !range !47, !noalias !46, !noundef !3
  switch i8 %i.o, label %bb.h [
    i8 2, label %bb.k
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  ], !prof !48

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i: ; preds = %.noexc.i
  %i.p = load i8, ptr %i.k, align 1, !noalias !46, !noundef !3 ; 2 uses
  store i8 1, ptr %.sroa.87.0..sroa_idx, align 8, !alias.scope !42, !noalias !43
  store i8 %i.p, ptr %i.j, align 1, !alias.scope !42, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46
  br label %bb.f

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.thread.i.i: ; preds = %.noexc5.i
  %i.q = load i8, ptr %i.j, align 1, !alias.scope !42, !noalias !43, !noundef !3
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.thread.i.i, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %i.r = phi i8 [ %i.q, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.thread.i.i ], [ %i.p, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i ]
  switch i8 %i.r, label %.thread.i.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  invoke void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.noexc5.i unwind label %.loopexit.i, !noalias !29

bb.h:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %i.l, align 8, !noalias !46, !nonnull !3, !noundef !3
  %i.t = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.s)
          to label %.noexc6.i unwind label %.loopexit.split-lp.i, !noalias !29

.noexc6.i:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46
  br label %bb.j

.thread.i.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49
  store i64 22, ptr %i.b, align 8, !noalias !49
  %.val.i.i = load i64, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !32, !noalias !29, !noundef !3
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx5, align 8, !alias.scope !32, !noalias !29, !noundef !3
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val.i.i, i64 noundef %.val1.i.i)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i, !noalias !29

.noexc7.i:                                        ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !49
  br label %bb.j

.loopexit.i:                                      ; preds = %bb.g, %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %.thread.i.i, %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.i unwind label %bb.l, !noalias !29

bb.j:                                             ; preds = %.noexc7.i, %.noexc6.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.u, %.noexc7.i ], [ %i.t, %.noexc6.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.v, align 8, !alias.scope !26, !noalias !31
  store ptr null, ptr %0, align 8, !alias.scope !26, !noalias !31
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_traitINtNtB4_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEB1E_.exit unwind label %bb.b, !noalias !29

bb.k:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !31
  br label %_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_traitINtNtB4_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEB1E_.exit

bb.l:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !29
  unreachable

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_traitINtNtB4_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEB1E_.exit: ; preds = %bb.c, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !29
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerINtNtBL_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(96) %i.d), !noalias !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !3, !align !23, !noundef !3 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4metas3_1__NtB2Y_20TableVersionMetaDataNtB1O_11Deserialize11deserialize9___VisitorEB32_:bb.a
_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEE10peek_errorCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !353
  br label %bb.au

bb.av:                                            ; preds = %bb.at
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.aw:                                            ; preds = %bb.bc, %bb.l
  %.sink1245 = phi ptr [ %i.fz, %bb.bc ], [ %i.bw, %bb.l ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1245, ptr %i.fl, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.fs

.loopexit:                                        ; preds = %bb.al, %bb.an
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ao, %bb.ap, %.loopexit.i, %.loopexit25.i, %.loopexit26.i, %.noexc55, %bb.au
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.at
  %eh.lpad-body = phi { ptr, i32 } [ %i.fh, %bb.at ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB18_(ptr noalias noundef align 8 dereferenceable(64) %i.ar) #18
          to label %common.resume unwind label %bb.ay

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEE7end_seqCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.noexc57, %.noexc53, %.noexc52, %.noexc51
  %.sroa.0.2.i = phi ptr [ %i.eq, %.noexc51 ], [ %i.eu, %.noexc53 ], [ %i.es, %.noexc52 ], [ %.sroa.0.1.i, %.noexc57 ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store ptr %.sroa.0.2.i, ptr %i.fm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.fn = load ptr, ptr %i.as, align 8, !noundef !3
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.az, label %bb.ax

_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEE7end_seqCsfY7SmN0bPrO_14deltalake_test.exit.thread: ; preds = %.loopexit25.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.fp = load ptr, ptr %i.as, align 8, !noundef !3 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  %i.fr = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  br i1 %i.fq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread870, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread866

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread870: ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEE7end_seqCsfY7SmN0bPrO_14deltalake_test.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1175)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread866: ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEE7end_seqCsfY7SmN0bPrO_14deltalake_test.exit.thread
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1175)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread

bb.ax:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEE7end_seqCsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1175)
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread

bb.ay:                                            ; preds = %bb.fj, %.body
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread870, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread866, %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsfY7SmN0bPrO_14deltalake_test.exit
  %.sroa.09.0106 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread870 ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsfY7SmN0bPrO_14deltalake_test.exit ], [ null, %bb.ax ], [ %i.fp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread866 ]
  %.sroa.10.0105 = phi ptr [ %i.fs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread870 ], [ %i.fv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsfY7SmN0bPrO_14deltalake_test.exit ], [ %.sroa.0.2.i, %bb.ax ], [ %i.fs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread866 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.bb

bb.az:                                            ; preds = %_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEE7end_seqCsfY7SmN0bPrO_14deltalake_test.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !3, !align !23, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1175)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorCodeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.sroa.0.2.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.az
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i, i64 noundef 40, i64 noundef 8) #19
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit65.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread
  %.sroa.10.1 = phi ptr [ %.sroa.10.0105, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread ], [ %.sroa.10.2111, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit65.thread ] ; 2 uses
  %.sroa.09.1 = phi ptr [ %.sroa.09.0106, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit.thread ], [ %.sroa.09.2112, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4meta20TableVersionMetaDataEBM_.exit65.thread ] ; 2 uses
  %i.fx = icmp eq ptr %.sroa.09.1, null
  br i1 %i.fx, label %bb.fp, label %bb.fq, !prof !163

bb.bc:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store i64 24, ptr %i.aq, align 8
  %.val42 = load i64, ptr %i.ay, align 8, !noundef !3
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val43 = load i64, ptr %i.fy, align 8, !noundef !3
  %i.fz = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef %.val42, i64 noundef %.val43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.aw

bb.bd:                                            ; preds = %bb.k
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %1, ptr %i.x, align 8, !noalias !367
  %i.ga = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 1, ptr %i.ga, align 8, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !367
  store ptr null, ptr %i.w, align 8, !noalias !367
  %i.gb = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.680.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.625.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer: ; preds = %bb.ej, %bb.bd
  %.sroa.439.0.i.ph = phi i32 [ %i.px, %bb.ej ], [ undef, %bb.bd ]
  %.not1590 = phi i1 [ false, %bb.ej ], [ true, %bb.bd ]
  %.sroa.037.0.i.ph = phi i1 [ true, %bb.ej ], [ false, %bb.bd ]
  %.sroa.431.0.i.ph = phi i32 [ %.sroa.431.0.i.ph1607, %bb.ej ], [ undef, %bb.bd ]
  %.sroa.029.0.i.ph = phi i32 [ %.sroa.029.0.i.ph1608, %bb.ej ], [ 0, %bb.bd ]
  %.sroa.4.0.i.ph = phi i64 [ %.sroa.4.0.i.ph1615, %bb.ej ], [ undef, %bb.bd ]
  %.sroa.07.0.i.ph = phi i64 [ %.sroa.07.0.i.ph1616, %bb.ej ], [ 0, %bb.bd ]
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer1606

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer1606: ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer, %bb.eg
  %.sroa.431.0.i.ph1607 = phi i32 [ %.sroa.431.0.i.ph, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer ], [ %i.pq, %bb.eg ] ; 2 uses
  %.sroa.029.0.i.ph1608 = phi i32 [ %.sroa.029.0.i.ph, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer ], [ 1, %bb.eg ] ; 3 uses
  %.sroa.4.0.i.ph1609 = phi i64 [ %.sroa.4.0.i.ph, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer ], [ %.sroa.4.0.i.ph1615, %bb.eg ]
  %.sroa.07.0.i.ph1610 = phi i64 [ %.sroa.07.0.i.ph, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer ], [ %.sroa.07.0.i.ph1616, %bb.eg ]
  br label %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer1614

_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.backedge, %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i.outer1614
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !377
  invoke fastcc void @_RINvNvXs9_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9MapAccesspENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess13next_key_seed12has_next_keyINtNtBa_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %.noexc.i59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit, !noalias !380

.noexc.i59:                                       ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.gn = load i8, ptr %i.o, align 8, !range !41, !noalias !377, !noundef !3
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.noexc.i59
  %i.gp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !377, !nonnull !3, !align !23, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !377
  br label %.loopexit199.i

bb.bf:                                            ; preds = %.noexc.i59
  %i.gr = load i8, ptr %i.gb, align 1, !range !41, !noalias !377, !noundef !3
  %i.gs = trunc nuw i8 %i.gr to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !377
  br i1 %i.gs, label %bb.bg, label %bb.bt

bb.bg:                                            ; preds = %bb.bf
  %i.gt = load ptr, ptr %i.x, align 8, !alias.scope !381, !noalias !382, !nonnull !3, !align !23, !noundef !3 ; 31 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24 ; 18 uses
  invoke void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gu)
          to label %.noexc95.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit, !noalias !380

.noexc95.i:                                       ; preds = %bb.bg
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 5 uses
  store i64 0, ptr %i.gv, align 8, !alias.scope !395, !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !401
  invoke void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read9parse_strCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gu, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.gt)
          to label %.noexc96.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit, !noalias !380

.noexc96.i:                                       ; preds = %.noexc95.i
  %i.gw = load i64, ptr %i.n, align 8, !range !285, !noalias !401, !noundef !3 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 2
  %i.gy = load ptr, ptr %i.gc, align 8, !noalias !401, !nonnull !3, !noundef !3 ; 17 uses
  br i1 %i.gx, label %bb.bs, label %bb.bh

bb.bh:                                            ; preds = %.noexc96.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !401 ; 2 uses
  %i.gz = trunc nuw i64 %i.gw to i1
  br i1 %i.gz, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.by [
    i64 7, label %bb.bj
    i64 10, label %bb.bk
    i64 18, label %bb.bl
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.ha = load i32, ptr %i.gy, align 1
  %i.hb = xor i32 %i.ha, 1936876918
  %i.hc = getelementptr i8, ptr %i.gy, i64 3
  %i.hd = load i32, ptr %i.hc, align 1
  %i.he = xor i32 %i.hd, 1852795251
  %i.hf = or i32 %i.hb, %i.he
  %i.hg = icmp ne i32 %i.hf, 0
  %i.hh = zext i1 %i.hg to i32
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.bu, label %bb.by

bb.bk:                                            ; preds = %bb.bi
  %i.hj = load i64, ptr %i.gy, align 1
  %i.hk = xor i64 %i.hj, 7598824251284484720
  %i.hl = getelementptr i8, ptr %i.gy, i64 8
  %i.hm = load i16, ptr %i.hl, align 1
  %i.hn = zext i16 %i.hm to i64
  %i.ho = xor i64 %i.hn, 29541
  %i.hp = or i64 %i.hk, %i.ho
  %i.hq = icmp ne i64 %i.hp, 0
  %i.hr = zext i1 %i.hq to i32
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.bv, label %bb.by

bb.bl:                                            ; preds = %bb.bi
  %i.ht = load i128, ptr %i.gy, align 1
  %i.hu = xor i128 %i.ht, 140168373929521521395222655825657882989
  %i.hv = getelementptr i8, ptr %i.gy, i64 16
  %i.hw = load i16, ptr %i.hv, align 1
  %i.hx = zext i16 %i.hw to i128
  %i.hy = xor i128 %i.hx, 28271
  %i.hz = or i128 %i.hu, %i.hy
  %i.ia = icmp ne i128 %i.hz, 0
  %i.ib = zext i1 %i.ia to i32
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.bw, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.id = load i128, ptr %i.gy, align 1
  %i.ie = xor i128 %i.id, 140168373929521521396377843445204412781
  %i.if = getelementptr i8, ptr %i.gy, i64 16
  %i.ig = load i16, ptr %i.if, align 1
  %i.ih = zext i16 %i.ig to i128
  %i.ii = xor i128 %i.ih, 28271
  %i.ij = or i128 %i.ie, %i.ii
  %i.ik = icmp ne i128 %i.ij, 0
  %i.il = zext i1 %i.ik to i32
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.bx, label %bb.by

bb.bn:                                            ; preds = %bb.bh
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.by [
    i64 7, label %bb.bo
    i64 10, label %bb.bp
    i64 18, label %bb.bq
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.in = load i32, ptr %i.gy, align 1
  %i.io = xor i32 %i.in, 1936876918
  %i.ip = getelementptr i8, ptr %i.gy, i64 3
  %i.iq = load i32, ptr %i.ip, align 1
  %i.ir = xor i32 %i.iq, 1852795251
  %i.is = or i32 %i.io, %i.ir
  %i.it = icmp ne i32 %i.is, 0
  %i.iu = zext i1 %i.it to i32
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.bu, label %bb.by

bb.bp:                                            ; preds = %bb.bn
  %i.iw = load i64, ptr %i.gy, align 1
  %i.ix = xor i64 %i.iw, 7598824251284484720
  %i.iy = getelementptr i8, ptr %i.gy, i64 8
  %i.iz = load i16, ptr %i.iy, align 1
  %i.ja = zext i16 %i.iz to i64
  %i.jb = xor i64 %i.ja, 29541
  %i.jc = or i64 %i.ix, %i.jb
  %i.jd = icmp ne i64 %i.jc, 0
  %i.je = zext i1 %i.jd to i32
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.bv, label %bb.by

bb.bq:                                            ; preds = %bb.bn
  %i.jg = load i128, ptr %i.gy, align 1
  %i.jh = xor i128 %i.jg, 140168373929521521395222655825657882989
  %i.ji = getelementptr i8, ptr %i.gy, i64 16
  %i.jj = load i16, ptr %i.ji, align 1
  %i.jk = zext i16 %i.jj to i128
  %i.jl = xor i128 %i.jk, 28271
  %i.jm = or i128 %i.jh, %i.jl
  %i.jn = icmp ne i128 %i.jm, 0
  %i.jo = zext i1 %i.jn to i32
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jq = load i128, ptr %i.gy, align 1
  %i.jr = xor i128 %i.jq, 140168373929521521396377843445204412781
  %i.js = getelementptr i8, ptr %i.gy, i64 16
  %i.jt = load i16, ptr %i.js, align 1
  %i.ju = zext i16 %i.jt to i128
  %i.jv = xor i128 %i.ju, 28271
  %i.jw = or i128 %i.jr, %i.jv
  %i.jx = icmp ne i128 %i.jw, 0
  %i.jy = zext i1 %i.jx to i32
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.bx, label %bb.by

bb.bs:                                            ; preds = %.noexc96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !401
  br label %.loopexit199.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp, %bb.ev, %bb.ed, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i62
  %.sroa.076.1.i = phi i8 [ %.sroa.076.4.i, %bb.ev ], [ 1, %bb.ed ], [ 1, %.loopexit.i62 ], [ 1, %.loopexit.split-lp.loopexit.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %.sroa.076.2.ph.ph.ph.ph.ph.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp ]
  %.pn.i = phi { ptr, i32 } [ %i.qk, %bb.ev ], [ %i.pm, %bb.ed ], [ %lpad.loopexit.i, %.loopexit.i62 ], [ %lpad.loopexit185.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit188.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit191.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit194.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp1596, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit1595, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp1603, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit.split-lp1612, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp ], [ %lpad.loopexit1617, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit ], [ %lpad.loopexit.split-lp1618, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp ] ; 2 uses
  %i.ka = load ptr, ptr %i.w, align 8, !noalias !367, !noundef !3
  %i.kb = icmp ne ptr %i.ka, null
  %i.kc = trunc nuw i8 %.sroa.076.1.i to i1
  %or.cond3.i = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond3.i, label %bb.fi, label %common.resume

.loopexit.i62:                                    ; preds = %bb.cl, %bb.cj
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.dn, %bb.dm, %.peel.next381.i.i.i.i.i.i.i
  %lpad.loopexit185.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.da, %bb.cz, %.peel.next.i.i.i.i.i.i.i
  %lpad.loopexit188.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.cr
  %lpad.loopexit191.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.cc, %bb.ca
  %lpad.loopexit194.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit: ; preds = %.loopexit146.i.i.i.i.i.i.i, %.noexc102.i, %.loopexit147.i.i.i.i.i.i.i, %.noexc104.i, %.loopexit148.i.i.i.i.i.i.i, %.noexc106.i, %.loopexit149.i.i.i.i.i.i.i, %.noexc108.i, %.loopexit150.i.i.i.i.i.i.i, %.noexc110.i, %.loopexit151.i.i.i.i.i.i.i, %.noexc112.i, %bb.ci, %bb.cq
  %lpad.loopexit1595 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp: ; preds = %bb.ct, %bb.cv, %.loopexit141.i.i.i.i.i.i.i, %.noexc129.i, %bb.dg, %bb.di, %.loopexit139.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp1596 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit: ; preds = %_RINvYINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessINtNtB8_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEENtNtCs1gOyXocuPRE_10serde_core2de9MapAccess10next_valueNtNtB1D_11ignored_any10IgnoredAnyECsfY7SmN0bPrO_14deltalake_test.exit.i, %bb.bg, %.noexc95.i, %bb.by, %bb.dz, %bb.ea
  %lpad.loopexit1617 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp: ; preds = %bb.dv, %bb.dx
  %lpad.loopexit.split-lp1618 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp: ; preds = %bb.ef, %bb.ee
  %lpad.loopexit.split-lp1612 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp: ; preds = %bb.eh, %bb.ei
  %lpad.loopexit.split-lp1603 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke, %bb.fa, %bb.ep, %bb.ek, %bb.du, %.loopexit138.i.i.i.i.i.i.i, %bb.ds, %.loopexit140.i.i.i.i.i.i.i, %bb.df, %bb.cp, %.invoke.i63, %bb.cm, %bb.ch, %bb.ce, %bb.cd
  %.sroa.076.2.ph.ph.ph.ph.ph.ph.ph.i = phi i8 [ 1, %bb.ep ], [ %.sroa.076.4.i, %bb.fa ], [ 1, %bb.ce ], [ 1, %bb.du ], [ 1, %bb.cd ], [ 1, %bb.cp ], [ 1, %.invoke.i63 ], [ 1, %bb.cm ], [ 1, %.loopexit140.i.i.i.i.i.i.i ], [ 1, %bb.ds ], [ 1, %.loopexit138.i.i.i.i.i.i.i ], [ 1, %bb.ch ], [ 1, %bb.ek ], [ 1, %.invoke ], [ 1, %bb.df ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit.i

bb.bt:                                            ; preds = %bb.bf
  %i.kd = trunc nuw i64 %.sroa.07.0.i.ph1616 to i1
  br i1 %i.kd, label %bb.en, label %bb.ek

bb.bu:                                            ; preds = %bb.bo, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !401
  %.not1592 = icmp eq i64 %.sroa.07.0.i.ph1616, 0
  br i1 %.not1592, label %bb.dv, label %.invoke, !prof !62

bb.bv:                                            ; preds = %bb.bp, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !401
  %i.ke = load ptr, ptr %i.w, align 8, !noalias !367, !noundef !3
  %.not87.i = icmp eq ptr %i.ke, null
  br i1 %.not87.i, label %bb.dz, label %.invoke, !prof !62

bb.bw:                                            ; preds = %bb.bq, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !401
  %.not1591 = icmp eq i32 %.sroa.029.0.i.ph1608, 0
  br i1 %.not1591, label %bb.ee, label %.invoke, !prof !62

bb.bx:                                            ; preds = %bb.br, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !401
  br i1 %.not1590, label %bb.eh, label %.invoke, !prof !62

bb.by:                                            ; preds = %bb.br, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !401
  %i.kf = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileEE18parse_object_colonCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.gt)
          to label %.noexc97.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit, !noalias !380 ; 2 uses

.noexc97.i:                                       ; preds = %bb.by
  %.not.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i, label %bb.bz, label %.loopexit199.i

bb.bz:                                            ; preds = %.noexc97.i
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  store i64 0, ptr %i.gv, align 8, !alias.scope !414, !noalias !380
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gt, i64 80 ; 12 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gt, i64 81 ; 12 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gt, i64 48 ; 14 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  br label %.noexc138.i.outer

.noexc138.i.outer:                                ; preds = %.loopexit139.i.i.i.i.i.i.i, %bb.bz
  %.sroa.11108.0.i.i.i.i.i.i.i.ph = phi ptr [ %i.nk, %.loopexit139.i.i.i.i.i.i.i ], [ undef, %bb.bz ] ; 3 uses
  %.sroa.11115.0.i.i.i.i.i.i.i.ph = phi ptr [ %i.ov, %.loopexit139.i.i.i.i.i.i.i ], [ undef, %bb.bz ] ; 3 uses
  %.sroa.039.0.i.i.i.i.i.i.i.ph = phi i1 [ true, %.loopexit139.i.i.i.i.i.i.i ], [ false, %bb.bz ]
  %.sroa.7.0.i.i.i.i.i.i.i.ph = phi i8 [ %.sroa.027.2.i.i.i.i.i.i.i, %.loopexit139.i.i.i.i.i.i.i ], [ undef, %bb.bz ]
  br label %.noexc138.i

.noexc138.i:                                      ; preds = %.noexc138.i.outer, %.critedge.i.i.i.i.i.i.i
  %.sroa.039.0.i.i.i.i.i.i.i = phi i1 [ true, %.critedge.i.i.i.i.i.i.i ], [ %.sroa.039.0.i.i.i.i.i.i.i.ph, %.noexc138.i.outer ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i.ph, %.noexc138.i.outer ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  br label %.noexc99.i

.noexc99.i:                                       ; preds = %bb.cc, %.noexc138.i
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.kk = load i8, ptr %i.kg, align 8, !range !41, !alias.scope !421, !noalias !422, !noundef !3
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.thread.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.noexc99.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !425
  invoke void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesNtNtB13_2fs4FileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ki)
          to label %.noexc98.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !380

.noexc98.i:                                       ; preds = %bb.ca
  %i.km = load i8, ptr %i.e, align 8, !range !47, !noalias !425, !noundef !3
  switch i8 %i.km, label %bb.cd [
    i8 2, label %bb.ce
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i.i.i.i.i.i
  ], !prof !48

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc98.i
  %i.kn = load i8, ptr %i.gh, align 1, !noalias !425, !noundef !3 ; 2 uses
  store i8 1, ptr %i.kg, align 8, !alias.scope !421, !noalias !422
  store i8 %i.kn, ptr %i.kh, align 1, !alias.scope !421, !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !425
  br label %bb.cb

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.thread.i.i.i.i.i.i.i: ; preds = %.noexc99.i
  %i.ko = load i8, ptr %i.kh, align 1, !alias.scope !421, !noalias !422, !noundef !3
  br label %bb.cb

bb.cb:                                            ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.thread.i.i.i.i.i.i.i, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i.i.i.i.i.i
  %i.kp = phi i8 [ %i.ko, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.thread.i.i.i.i.i.i.i ], [ %i.kn, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read4peekCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  switch i8 %i.kp, label %.loopexit145.i.i.i.i.i.i.i [
    i8 32, label %bb.cc
    i8 10, label %bb.cc
    i8 9, label %bb.cc
    i8 13, label %bb.cc
    i8 110, label %.loopexit146.i.i.i.i.i.i.i
    i8 116, label %.loopexit147.i.i.i.i.i.i.i
    i8 102, label %.loopexit148.i.i.i.i.i.i.i
    i8 45, label %.loopexit149.i.i.i.i.i.i.i
    i8 34, label %.loopexit150.i.i.i.i.i.i.i
    i8 91, label %.loopexit151.i.i.i.i.i.i.i
    i8 123, label %.loopexit151.i.i.i.i.i.i.i
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb, %bb.cb, %bb.cb
  invoke void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadNtNtCs2pqxYH9ZEk8_3std2fs4FileENtB5_4Read7discardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.gu)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !380

bb.cd:                                            ; preds = %.noexc98.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !425, !nonnull !3, !noundef !3
  %i.ks = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.kr)
          to label %.noexc100.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !380

.noexc100.i:                                      ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !425
  br label %.loopexit199.i

bb.ce:                                            ; preds = %.noexc98.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !426
  store i64 5, ptr %i.m, align 8, !noalias !426
  %.val66.i.i.i.i.i.i.i = load i64, ptr %i.ki, align 8, !alias.scope !414, !noalias !380, !noundef !3
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  %.val67.i.i.i.i.i.i.i = load i64, ptr %i.kt, align 8, !alias.scope !414, !noalias !380, !noundef !3
  %i.ku = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %.val66.i.i.i.i.i.i.i, i64 noundef %.val67.i.i.i.i.i.i.i)
          to label %.noexc101.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !380

.noexc101.i:                                      ; preds = %bb.ce
end_hunk_1
