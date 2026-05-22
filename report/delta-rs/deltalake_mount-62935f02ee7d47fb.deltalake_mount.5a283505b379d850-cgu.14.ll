inline.NumInlined: 246
inline.NumDeleted: 107
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs5_NtCs7JU2D1aBbVY_15deltalake_mount4fileNtBO_23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore8get_opts0EBQ_:bb.a
  store i8 0, ptr %i.q, align 1
  resume { ptr, i32 } %i.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 0, ptr %i.r, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs5_NtCs7JU2D1aBbVY_15deltalake_mount4fileNtBO_23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore8put_opts0EBQ_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i8, ptr %i.a, align 8, !range !48, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.d
  ]

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs7JU2D1aBbVY_15deltalake_mount.exit, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !68, !nonnull !3, !noundef !3
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !68
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs7JU2D1aBbVY_15deltalake_mount.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #17
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 296
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !3, !align !47, !noundef !3 ; 5 uses
  %i.i = load ptr, ptr %.val2, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !5, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #15
  br label %.body

bb.j:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10PutOptionsECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(128) %0) #18
          to label %bb.k unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.b, %bb.c
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10PutOptionsECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(128) %0)
  br label %common.ret

bb.k:                                             ; preds = %.body, %bb.j
  %.pn = phi { ptr, i32 } [ %i.o, %.body ], [ %i.u, %bb.j ]
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

.body:                                            ; preds = %bb.h, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 0, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 306
  store i8 0, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 307
  store i8 0, ptr %i.y, align 1
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 306
  store i8 0, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 307
  store i8 0, ptr %i.ab, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs5_NtCs7JU2D1aBbVY_15deltalake_mount4fileNtBO_23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore9get_range0EBQ_(ptr noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !48, !noundef !3
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !3, !align !47, !noundef !3 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #15
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #15
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges0EBP_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i8, ptr %i.a, align 8, !range !48, !noundef !3
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtBN_11ObjectStore10get_ranges00NtBN_5ErrorINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3h_ENtNtB4_6marker4SendEL_EEE0EB1M_(ptr noundef nonnull align 8 %i.c)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore6rename0EBP_(ptr noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !69, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.g
    i8 3, label %bb.b
  ]

common.ret.sink.split:                            ; preds = %bb.i, %bb.d
  %.val4.sink = phi ptr [ %.val2, %bb.d ], [ %.val4, %bb.i ]
  %.val3.sink14 = phi ptr [ %.val, %bb.d ], [ %.val3, %bb.i ] ; 2 uses
  %.sink = phi i64 [ %i.g, %bb.d ], [ %i.s, %bb.i ]
  %1 = getelementptr inbounds nuw i8, ptr %.val4.sink, i64 16
  %2 = load i64, ptr %1, align 8, !range !5, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.sink14) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.sink14, i64 noundef range(i64 1, -9223372036854775808) %.sink, i64 noundef range(i64 1, 536870913) %2) #15
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !3, !align !47, !noundef !3 ; 5 uses
  %i.e = load ptr, ptr %.val2, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %common.ret.sink.split

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.j
  %.val4.sink20 = phi ptr [ %.val4, %bb.j ], [ %.val2, %bb.e ]
  %.sink17 = phi i64 [ %i.w, %bb.j ], [ %i.k, %bb.e ]
  %.val3.sink16 = phi ptr [ %.val3, %bb.j ], [ %.val, %bb.e ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.i, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val4.sink20, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !5, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.sink16, i64 noundef range(i64 1, -9223372036854775808) %.sink17, i64 noundef range(i64 1, 536870913) %i.n) #15
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.u, %bb.j ], [ %common.resume.op.ph, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.o, align 8            ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 48
  %.val4 = load ptr, ptr %i.p, align 8, !nonnull !3, !align !47, !noundef !3 ; 5 uses
  %i.q = load ptr, ptr %.val4, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.q, null
  br i1 %.not.i.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.q(ptr noundef nonnull %.val3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.ret, label %common.ret.sink.split

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %common.resume, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10GetOptionsECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !6, !alias.scope !70, !noundef !3
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.g) #18
          to label %.body7 unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !6, !alias.scope !73, !noundef !3
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit10, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i6 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body7 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i6: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit10 unwind label %bb.i

.body7:                                           ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.i ], [ %i.k, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.m) #18
          to label %.body13 unwind label %bb.p

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i6
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit10: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !range !6, !alias.scope !76, !noundef !3
  %i.q = icmp eq i64 %i.p, -9223372036854775808
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit16, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit10
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i12 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body13 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i12: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit16 unwind label %bb.m

.body13:                                          ; preds = %bb.m, %bb.k, %.body7
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body7 ], [ %i.u, %bb.m ], [ %i.r, %bb.k ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val4 = load ptr, ptr %i.t, align 8, !align !47, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECs7JU2D1aBbVY_15deltalake_mount(ptr %.val4) #18
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i12
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit16: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.v, align 8, !align !47, !noundef !3 ; 4 uses
  %i.w = icmp eq ptr %.val, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit16
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i unwind label %bb.o

common.resume:                                    ; preds = %.body13, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.o ], [ %.pn2, %.body13 ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #15
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i: ; preds = %bb.n
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECs7JU2D1aBbVY_15deltalake_mount.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7JU2D1aBbVY_15deltalake_mount.exit16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECs7JU2D1aBbVY_15deltalake_mount.exit.i.i
  ret void

bb.p:                                             ; preds = %.body13, %.body7, %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10PutOptionsECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store7PutModeECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4tags6TagSetECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %0) #18
          to label %.body unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges0B8_:bb.a

bb.aj:                                            ; preds = %.body.i, %bb.ab, %bb.v
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !172
  unreachable

bb.ak:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.532.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.331.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i, i64 24, i1 false), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !158
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBK_4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %.invoke.i unwind label %bb.al, !noalias !172

bb.al:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBR_4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %.body16.i unwind label %bb.am, !noalias !172

.invoke.i:                                        ; preds = %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %i.bx = phi ptr [ %i.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs7JU2D1aBbVY_15deltalake_mount.exit.i ], [ %i.bv, %bb.ak ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBR_4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.ap unwind label %bb.h, !noalias !172

bb.am:                                            ; preds = %bb.al
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !172
  unreachable

.body16.i:                                        ; preds = %bb.al, %bb.ah, %.body.i, %bb.h
  %i.bz = phi ptr [ %i.bo, %.body.i ], [ %i.az, %bb.ah ], [ %i.ai, %bb.h ], [ %i.az, %bb.al ]
  %i.ca = phi ptr [ %i.bp, %.body.i ], [ %i.ba, %bb.ah ], [ %i.aj, %bb.h ], [ %i.ba, %bb.al ]
  %.pn13.i = phi { ptr, i32 } [ %.pn10.pn.i, %.body.i ], [ %i.bs, %bb.ah ], [ %i.ak, %bb.h ], [ %i.bw, %bb.al ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.cb, align 8, !noalias !158
  store i8 2, ptr %i.bz, align 1, !noalias !158
  br label %.body

bb.an:                                            ; preds = %bb.t, %bb.s
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %bb.ar, %bb.ao
  %storemerge = phi i8 [ 1, %bb.ar ], [ 3, %bb.ao ]
  store i8 %storemerge, ptr %i.i, align 8
  ret void

bb.ao:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 3, ptr %i.az, align 1, !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.331.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.ap:                                            ; preds = %.invoke.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.cd, align 8, !noalias !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.814, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.331.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.915, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.532.i, i64 40, i1 false)
  store i8 1, ptr %i.az, align 1, !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.331.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtBN_11ObjectStore10get_ranges00NtBN_5ErrorINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3h_ENtNtB4_6marker4SendEL_EEE0EB1M_(ptr noundef nonnull align 8 %i.ba)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.ar:                                            ; preds = %bb.ap
  store i64 %i.bd, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.814, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.915, i64 40, i1 false)
  br label %common.ret

.body:                                            ; preds = %bb.an, %.body16.i
  %i.cf = phi ptr [ %i.ca, %.body16.i ], [ %i.t, %bb.an ]
  %.pn2 = phi { ptr, i32 } [ %.pn13.i, %.body16.i ], [ %i.cc, %bb.an ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtBN_11ObjectStore10get_ranges00NtBN_5ErrorINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3h_ENtNtB4_6marker4SendEL_EEE0EB1M_(ptr noundef nonnull align 8 %i.cf) #18
          to label %bb.b unwind label %bb.as

bb.as:                                            ; preds = %.body
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore6rename0B8_(ptr dead_on_unwind noalias noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %.sroa.330 = alloca [64 x i8], align 8          ; 3 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 2 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !69, !noundef !3
  switch i8 %i.f, label %default.unreachable43 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.y
  ]

default.unreachable43:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !47, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !185
  %i.j = load <2 x ptr>, ptr %1, align 8
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !align !47, !noundef !3
  store ptr %i.k, ptr %i.g, align 8
  store <2 x ptr> %i.j, ptr %i.b, align 16, !noalias !185
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %i.l, align 16, !noalias !185
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 0, ptr %i.m, align 8, !noalias !185
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !190
  %i.n = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 32, 313) 48, i64 noundef 8) #15, !noalias !190 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.f, !prof !100

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #20
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs5_NtCs7JU2D1aBbVY_15deltalake_mount4fileNtBO_23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore4copy0EBQ_(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #18
          to label %.body17 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !185
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.n, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @44, ptr %i.s, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
  unreachable

bb.i:                                             ; preds = %bb.a, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val10 = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %1, i64 48
  %.val11 = load ptr, ptr %i.v, align 8, !nonnull !3, !align !47, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount(ptr %.val10, ptr nonnull %.val11) #18
          to label %.body17 unwind label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.w = load i64, ptr %i.d, align 8, !range !85, !noundef !3 ; 3 uses
  %i.x = icmp eq i64 %i.w, -9223372036854775789
  br i1 %i.x, label %bb.l, label %bb.m

common.ret.sink.split:                            ; preds = %bb.l, %bb.ab
  %.sink.ph = phi i8 [ 3, %bb.l ], [ 4, %bb.ab ]
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit23
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit23 ], [ %.sink.ph, %common.ret.sink.split ]
  store i8 %.sink, ptr %i.e, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %common.ret.sink.split

bb.m:                                             ; preds = %bb.k
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val12 = load ptr, ptr %i.t, align 8           ; 5 uses
  %i.y = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %.val13 = load ptr, ptr %i.y, align 8, !nonnull !3, !align !47, !noundef !3 ; 5 uses
  %i.z = load ptr, ptr %.val13, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  invoke void %i.z(ptr noundef nonnull %.val12)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !5, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit

bb.q:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.body17, label %.body17.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.p, %bb.o
  %.not.i = icmp eq i64 %i.w, -9223372036854775790
  br i1 %.not.i, label %bb.r, label %bb.w

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !align !47, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !3, !align !47, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  store ptr %i.ak, ptr %i.a, align 8, !noalias !193
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.am, ptr %i.an, align 8, !noalias !193
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.ao, align 8, !noalias !193
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !197
  %i.ap = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 32, 313) 40, i64 noundef 8) #15, !noalias !197 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.s, label %bb.v, !prof !100

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #20
          to label %.noexc.i16 unwind label %bb.t

.noexc.i16:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs5_NtCs7JU2D1aBbVY_15deltalake_mount4fileNtBO_23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore6delete0EBQ_(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #18
          to label %.body17 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.v:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  store ptr %i.ap, ptr %i.t, align 8
  store ptr @46, ptr %i.y, align 8
  br label %bb.y

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.330, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, i64 64, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit23

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit23: ; preds = %bb.af, %bb.ae, %bb.w
  %.sroa.028.0 = phi i64 [ %i.w, %bb.w ], [ %i.ax, %bb.ae ], [ %i.ax, %bb.af ]
  store i64 %.sroa.028.0, ptr %0, align 8
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.330.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.330, i64 64, i1 false)
  br label %common.ret

bb.x:                                             ; preds = %bb.j, %bb.z
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

.body17.sink.split:                               ; preds = %bb.q, %bb.ag
  %.val13.sink = phi ptr [ %.val9, %bb.ag ], [ %.val13, %bb.q ]
  %.sink44 = phi i64 [ %i.bi, %bb.ag ], [ %i.ah, %bb.q ]
  %.val12.sink = phi ptr [ %.val8, %bb.ag ], [ %.val12, %bb.q ]
  %.pn4.pn.ph = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %i.af, %bb.q ]
  %3 = getelementptr inbounds nuw i8, ptr %.val13.sink, i64 16
  %4 = load i64, ptr %3, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.sink, i64 noundef range(i64 1, -9223372036854775808) %.sink44, i64 noundef range(i64 1, 536870913) %4) #15
  br label %.body17

.body17:                                          ; preds = %.body17.sink.split, %bb.j, %bb.d, %bb.q, %bb.ag, %bb.t, %bb.z
  %.pn4.pn = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.ar, %bb.t ], [ %i.av, %bb.z ], [ %i.bg, %bb.ag ], [ %i.p, %bb.d ], [ %i.u, %bb.j ], [ %.pn4.pn.ph, %.body17.sink.split ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn4.pn

bb.y:                                             ; preds = %bb.v, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %1, i64 48
  %.val7 = load ptr, ptr %i.aw, align 8, !nonnull !3, !align !47, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount(ptr %.val, ptr nonnull %.val7) #18
          to label %.body17 unwind label %bb.x

bb.aa:                                            ; preds = %bb.y
  %i.ax = load i64, ptr %i.c, align 8, !range !85, !noundef !3 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, -9223372036854775789
  br i1 %i.ay, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %common.ret.sink.split

bb.ac:                                            ; preds = %bb.aa
  %.sroa.330.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.330, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.330.0..sroa_idx31, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val8 = load ptr, ptr %i.au, align 8           ; 5 uses
  %i.az = getelementptr i8, ptr %1, i64 48
  %.val9 = load ptr, ptr %i.az, align 8, !nonnull !3, !align !47, !noundef !3 ; 5 uses
  %i.ba = load ptr, ptr %.val9, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i19, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.ba(ptr noundef nonnull %.val8)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bb = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit23, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.be = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !5, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef range(i64 1, -9223372036854775808) %i.bc, i64 noundef range(i64 1, 536870913) %i.bf) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs7JU2D1aBbVY_15deltalake_mount.exit23

bb.ag:                                            ; preds = %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !4, !invariant.load !3 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.body17, label %.body17.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs7JU2D1aBbVY_15deltalake_mount4fileNtB4_23MountFileStorageBackend18path_to_filesystem(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [88 x i8], align 8                ; 6 uses
  %i.k = alloca [88 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.l, align 8
  store ptr null, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.m, align 8
  call void @_RNvMCseo6ZV82fEK1_3urlNtB2_12ParseOptions5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.n = load i64, ptr %i.j, align 8, !range !6, !alias.scope !203, !noalias !200, !noundef !3
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtCseo6ZV82fEK1_3url3UrlNtNtBJ_6parser10ParseErrorE6unwrapCs7JU2D1aBbVY_15deltalake_mount.exit, !prof !100

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !205
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !206, !alias.scope !203, !noalias !200, !noundef !3
  store i8 %i.q, ptr %i.d, align 1, !noalias !205
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #20, !noalias !205
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtCseo6ZV82fEK1_3url3UrlNtNtBJ_6parser10ParseErrorE6unwrapCs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.j, i64 88, i1 false), !alias.scope !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8set_path(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
          to label %bb.d unwind label %bb.c

.body:                                            ; preds = %bb.y, %bb.c, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.r, %bb.c ], [ %i.br, %bb.y ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(88) %i.k) #18
          to label %common.resume unwind label %bb.ae

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs7JU2D1aBbVY_15deltalake_mount.exit.i, %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs7JU2D1aBbVY_15deltalake_mount.exit.i, %bb.j, %bb.e, %bb.d, %bb.o, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtCseo6ZV82fEK1_3url3UrlNtNtBJ_6parser10ParseErrorE6unwrapCs7JU2D1aBbVY_15deltalake_mount.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtCseo6ZV82fEK1_3url3UrlNtNtBJ_6parser10ParseErrorE6unwrapCs7JU2D1aBbVY_15deltalake_mount.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url13path_segments(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
          to label %.noexc6 unwind label %bb.c

.noexc6:                                          ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.t = load i32, ptr %i.s, align 4, !range !210, !noalias !211, !noundef !3
  %.not.i = icmp eq i32 %i.t, 1114112
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4host(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.k)
          to label %.noexc7 unwind label %bb.c

.noexc7:                                          ; preds = %bb.e
  %i.u = load i8, ptr %i.b, align 8, !range !48, !noalias !211, !noundef !3
  switch i8 %i.u, label %bb.l [
    i8 3, label %bb.f
    i8 0, label %bb.k
  ]

bb.f:                                             ; preds = %bb.m, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !207, !noalias !213, !noundef !3 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !207, !noalias !213, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !207, !noalias !213, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = zext i32 %i.y to i64                    ; 5 uses
  %i.ab = icmp eq i32 %i.y, 0
  br i1 %i.ab, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs7JU2D1aBbVY_15deltalake_mount.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i = icmp ugt i64 %i.w, %i.aa
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.w, %i.aa
  br i1 %i.ac, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs7JU2D1aBbVY_15deltalake_mount.exit.i, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aa
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !214, !noalias !213, !noundef !3
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs7JU2D1aBbVY_15deltalake_mount.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.w, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #19
          to label %.noexc8 unwind label %bb.c

.noexc8:                                          ; preds = %bb.j
  unreachable

_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs7JU2D1aBbVY_15deltalake_mount.exit.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ag = add nuw nsw i64 %i.aa, 3
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.w, i64 %i.ag)
  invoke void @_RNvCseo6ZV82fEK1_3url28file_url_segments_to_pathbuf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.ah, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.c)
          to label %bb.n unwind label %bb.c

bb.k:                                             ; preds = %.noexc7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !211, !noundef !3
  %i.ak = icmp eq i64 %i.aj, 9
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !211, !nonnull !3, !noundef !3 ; 2 uses
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = xor i64 %i.an, 8317981851476258668
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = xor i64 %i.ar, 116
  %i.at = or i64 %i.ao, %i.as
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.f, label %bb.l

.thread:                                          ; preds = %.noexc6, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.n:                                             ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs7JU2D1aBbVY_15deltalake_mount.exit.i
  %.pr = load i64, ptr %i.h, align 8, !alias.scope !221, !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.ax = icmp eq i64 %.pr, -9223372036854775808
  br i1 %i.ax, label %bb.o, label %bb.p, !prof !226

bb.o:                                             ; preds = %.thread, %bb.n
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !227
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.v, %bb.t, %bb.s, %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %i.i) #18
          to label %.body unwind label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.f, align 8, !range !99, !noundef !3
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.s, label %bb.t, !prof !100

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20
          to label %bb.ad unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !3, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bi, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
end_hunk_1
