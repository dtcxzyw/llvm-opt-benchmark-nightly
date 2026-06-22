inline.NumInlined: 1127
inline.NumDeleted: 348
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepEEEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
bb.j:                                             ; preds = %bb.m, %bb.d
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.t, %bb.m ], [ %i.b, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noundef !7
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr i8, ptr %.0.val, i64 56
  %.val.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !align !22, !noundef !7 ; 2 uses
  %i.p = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.p, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %.0.val, i64 64
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !7, !noundef !7
  invoke void %i.s(ptr noundef %.val1.i.i.i.i.i.i)
          to label %bb.r unwind label %bb.p, !inline_history !23

bb.m:                                             ; preds = %bb.i, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !6, !noundef !7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i
  %i.x = getelementptr i8, ptr %.0.val, i64 56
  %.val.i4.i.i.i.i.i = load ptr, ptr %i.x, align 8, !align !22, !noundef !7 ; 2 uses
  %i.y = icmp eq ptr %.val.i4.i.i.i.i.i, null
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr i8, ptr %.0.val, i64 64
  %.val1.i5.i.i.i.i.i = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !7, !noundef !7
  invoke void %i.ab(ptr noundef %.val1.i5.i.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepEEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.q, !inline_history !24

bb.p:                                             ; preds = %bb.l, %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l, %bb.k, %bb.j
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ad, %bb.q ], [ %.pn.i.i.i.i.i, %bb.l ], [ %.pn.i.i.i.i.i, %bb.k ], [ %.pn.i.i.i.i.i, %bb.j ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 112, i64 noundef 8) #25
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i, %bb.n, %bb.o
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 112, i64 noundef 8) #25
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs4j34XAPZOn0_4http7request7RequestNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !7
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http7request7RequestNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http7request7RequestNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.q, %bb.p, %bb.m, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.d = load i8, ptr %i.c, align 8, !range !38, !alias.scope !39, !noundef !7
  %switch.i.i.i.i = icmp samesign ult i8 %i.d, 10
  br i1 %switch.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !39, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !39, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #25, !noalias !39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http3uri3UriECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(88) %i.h)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(256) %0) #22
          to label %bb.g unwind label %bb.l

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(256) %0)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.e
  %.pn2.i.i = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.i, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val4.i.i = load ptr, ptr %i.j, align 8, !alias.scope !40, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val4.i.i) #22
          to label %.body.i unwind label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !40, !align !22, !noundef !7 ; 4 uses
  %i.m = icmp eq ptr %.val.i.i, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http7request5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #25
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.j
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http7request5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.l:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.i:                                          ; preds = %bb.k, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn2.i.i, %bb.g ], [ %i.n, %bb.k ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.p) #22
          to label %common.resume.i unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http7request5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !47, !noundef !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http7request5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !54, !nonnull !7, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !55, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !55, !noundef !7
  tail call void %i.t(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.y), !inline_history !56
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http7request7RequestNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http7request5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !47 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !47, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.ab = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !7, !noalias !57 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.ab(ptr noundef nonnull %.val.i.i.i)
          to label %bb.p unwind label %bb.r, !noalias !57

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !58, !invariant.load !7, !noalias !57 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http7request7RequestNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !59, !invariant.load !7, !noalias !57
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #25, !noalias !57
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http7request7RequestNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.r:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !58, !invariant.load !7, !noalias !57 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %common.resume.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !59, !invariant.load !7, !noalias !57
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #25, !noalias !57
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.s, %bb.r, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %i.ah, %bb.s ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.t:                                             ; preds = %.body.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #25
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !60, !noundef !7
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4I8XlQihwcg_10tower_http15follow_redirect8BodyReprNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !61, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !68, !noundef !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !75, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !75, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !75, !noundef !7
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !76
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !68 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.m, align 8, !alias.scope !68, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.n = load ptr, ptr %.val1.i.i, align 8, !invariant.load !7, !noalias !68 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.n(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !68

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !58, !invariant.load !7, !noalias !68 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !59, !invariant.load !7, !noalias !68
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #25, !noalias !68
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !58, !invariant.load !7, !noalias !68 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !59, !invariant.load !7, !noalias !68
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #25, !noalias !68
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCseo6ZV82fEK1_3url3UrlENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCseo6ZV82fEK1_3url3UrlENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCseo6ZV82fEK1_3url3UrlENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB1e_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB1l_EEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB1l_EEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtBL_5boxed3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.16.val, ptr nofree readonly captures(none) %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.a = load ptr, ptr %.24.val, align 8, !invariant.load !7, !noalias !77 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  invoke void %i.a(ptr noundef nonnull %.16.val)
          to label %bb.c unwind label %bb.e, !noalias !77

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.24.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !58, !invariant.load !7, !noalias !77 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.24.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !59, !invariant.load !7, !noalias !77
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #25, !noalias !77
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.24.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !58, !invariant.load !7, !noalias !77 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.24.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !59, !invariant.load !7, !noalias !77
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #25, !noalias !77
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !7 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  invoke void %i.c(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val2 = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #25
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #25
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #25
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #25
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.0.val)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 88, i64 noundef 8) #25
  ret void

bb.e:                                             ; preds = %bb.d, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 88, i64 noundef 8) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !61, !alias.scope !80, !noundef !7
  %switch.i.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #25
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #25
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef 16) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef 16) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.d) #22
          to label %.body2.i unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #22
          to label %.body2.i unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.body2.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.i

.body2.i:                                         ; preds = %bb.i, %bb.f, %bb.e, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.m, %bb.i ], [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.l unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.k

bb.j:                                             ; preds = %.body2.i, %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB1l_10async_impl6client12HyperServiceEECsj34PGqTgg0L_16deltalake_lakefs:bb.a
bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.u = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !125
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %.body

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope5ScopeEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #23
          to label %.body unwind label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsj34PGqTgg0L_16deltalake_lakefs.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsj34PGqTgg0L_16deltalake_lakefs.exit5.i: ; preds = %bb.h, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCsaL8FCyi0GlJ_5tower5retry6budget10tps_budget9TpsBudgetEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !133, !noundef !7 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsj34PGqTgg0L_16deltalake_lakefs.exit5.i
  %i.aa = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !134
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest5retry5scope5ScopeEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.x) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.i, %bb.j, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %.pn.i, %bb.j ], [ %.pn.i, %bb.i ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client12HyperServiceECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(376) %0) #22
          to label %bb.q unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest5retry8classify10ClassifierECsj34PGqTgg0L_16deltalake_lakefs.exit5.i, %bb.m
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client12HyperServiceECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(376) %0)
  ret void

bb.p:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #22
          to label %common.resume.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.i:                                  ; preds = %bb.c, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !139, !alias.scope !140, !noundef !7
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %0, align 8, !range !25, !alias.scope !143, !noundef !7
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %.body, label %bb.f

bb.f:                                             ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
          to label %.body unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.i = load i64, ptr %0, align 8, !range !25, !alias.scope !148, !noundef !7
  %i.j = icmp eq i64 %i.i, 3
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %eh.lpad-body.i.i, %bb.f ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val2 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val3 = load ptr, ptr %i.n, align 8, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val2, ptr nonnull %.val3) #22
          to label %common.resume unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.a, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.o, align 8             ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val1 = load ptr, ptr %i.p, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.q = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.q(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #25
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.m, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.w, %bb.n ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.k, %bb.l
  ret void

bb.o:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3e_4SendEL_EB3c_B3v_EL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3e_4SendEL_EB3c_B3v_EL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #25
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3e_4SendEL_EB3c_B3v_EL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsaL8FCyi0GlJ_5tower5retry6future5StateINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtNtCsaFjGkpVS7Wa_5hyper4body8incoming8IncomingENtNtCsgO6CtM78C4N_7reqwest5error5ErrorENtNtB4_6marker4SyncNtB5n_4SendEL_EEINtNtB2k_5ready5ReadyuEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !151, !noundef !7
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtNtCsaFjGkpVS7Wa_5hyper4body8incoming8IncomingENtNtCsgO6CtM78C4N_7reqwest5error5ErrorENtNtB4_6marker4SyncNtB4D_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtNtCsaFjGkpVS7Wa_5hyper4body8incoming8IncomingENtNtCsgO6CtM78C4N_7reqwest5error5ErrorENtNtB4_6marker4SyncNtB4D_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtNtCsaFjGkpVS7Wa_5hyper4body8incoming8IncomingENtNtCsgO6CtM78C4N_7reqwest5error5ErrorENtNtB4_6marker4SyncNtB4D_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtNtCsaFjGkpVS7Wa_5hyper4body8incoming8IncomingENtNtCsgO6CtM78C4N_7reqwest5error5ErrorENtNtBO_6marker4SyncNtB45_4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #25
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtNtCsaFjGkpVS7Wa_5hyper4body8incoming8IncomingENtNtCsgO6CtM78C4N_7reqwest5error5ErrorENtNtBO_6marker4SyncNtB45_4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtNtCsaFjGkpVS7Wa_5hyper4body8incoming8IncomingENtNtCsgO6CtM78C4N_7reqwest5error5ErrorENtNtBO_6marker4SyncNtB45_4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtNtCsaFjGkpVS7Wa_5hyper4body8incoming8IncomingENtNtCsgO6CtM78C4N_7reqwest5error5ErrorENtNtB4_6marker4SyncNtB4D_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCsaFjGkpVS7Wa_5hyper6client4conn5http27BuilderNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !161, !nonnull !7, !noundef !7
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !161
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCsaFjGkpVS7Wa_5hyper2rt8ExecutorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEENtB2N_4SyncB2L_EL_E9drop_slowCsgO6CtM78C4N_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !162, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaFjGkpVS7Wa_5hyper6common4time4TimeECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !165
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaFjGkpVS7Wa_5hyper6common4time4TimeECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsaFjGkpVS7Wa_5hyper2rt5timer5TimerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1o_4SendEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaFjGkpVS7Wa_5hyper6common4time4TimeECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !170, !noundef !7 ; 2 uses
  %.not.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaFjGkpVS7Wa_5hyper6common4time4TimeECsj34PGqTgg0L_16deltalake_lakefs.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !173
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaFjGkpVS7Wa_5hyper6common4time4TimeECsj34PGqTgg0L_16deltalake_lakefs.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsaFjGkpVS7Wa_5hyper2rt5timer5TimerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1o_4SendEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaFjGkpVS7Wa_5hyper6common4time4TimeECsj34PGqTgg0L_16deltalake_lakefs.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaFjGkpVS7Wa_5hyper6common4time4TimeECsj34PGqTgg0L_16deltalake_lakefs.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsaFjGkpVS7Wa_5hyper6common4time4TimeECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB1Z_12LakeFSClient11has_changes012DiffResponseE0EB21_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load i8, ptr %i.a, align 8, !range !178, !noundef !7
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.c)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore12commit_merge0EBN_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load i8, ptr %i.a, align 4, !range !179, !noundef !7
  switch i8 %i.b, label %common.ret [
    i8 6, label %bb.e
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit44
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient6commit0EBP_(ptr noundef nonnull align 8 %i.c)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient11has_changes0EBP_(ptr noundef nonnull align 8 %i.d)
          to label %bb.l unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient5merge0EBP_(ptr noundef nonnull align 8 %i.e)
          to label %bb.l unwind label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13delete_branch0EBP_(ptr noundef nonnull align 8 %i.f)
          to label %bb.r unwind label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.ab

bb.j:                                             ; preds = %.body32, %bb.f
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %.body32 ], [ %i.g, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #22
          to label %.body unwind label %bb.ai

bb.k:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.d, %bb.c, %bb.r
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i21 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body22 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtBL_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook0EBN_:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore12commit_merge0EBN_(ptr noundef nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !217, !nonnull !7, !noundef !7
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !217
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !224, !nonnull !7, !noundef !7
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !224
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %common.ret

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #23
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtBL_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook0EBN_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.b = load i8, ptr %i.a, align 8, !range !178, !noundef !7
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.d = load i8, ptr %i.c, align 8, !range !178, !noundef !7
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !231, !nonnull !7, !noundef !7
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !231
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit: ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !238, !nonnull !7, !noundef !7
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !238
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %common.ret

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #23
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !239, !noundef !7 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.v
    i64 5, label %bb.ab
    i64 6, label %bb.ae
    i64 7, label %bb.ah
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 9, label %bb.ak
    i64 10, label %bb.an
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.bz, %bb.ca, %bb.bt, %bb.bu, %bb.bn, %bb.bo, %bb.bh, %bb.bi, %bb.bb, %bb.bc, %.body56, %.body51, %.body46, %.body41, %.body36, %.body, %bb.au, %bb.av, %bb.z, %bb.aa, %bb.t, %bb.u, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.et, %bb.bt ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.ai, %bb.t ], [ %i.aw, %bb.z ], [ %i.cc, %bb.au ], [ %eh.lpad-body57, %.body56 ], [ %i.cu, %bb.bb ], [ %i.dl, %bb.bh ], [ %i.ec, %bb.bn ], [ %i.q, %bb.j ], [ %i.ai, %bb.u ], [ %i.aw, %bb.aa ], [ %i.cc, %bb.av ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body37, %.body36 ], [ %eh.lpad-body42, %.body41 ], [ %eh.lpad-body47, %.body46 ], [ %eh.lpad-body52, %.body51 ], [ %i.cu, %bb.bc ], [ %i.dl, %bb.bi ], [ %i.ec, %bb.bo ], [ %i.et, %bb.bu ], [ %i.fk, %bb.ca ], [ %i.fk, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.i, align 8           ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.j, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.k = load ptr, ptr %.val28, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.k(ptr noundef nonnull %.val27)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #25
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30 unwind label %bb.aq

bb.n:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !240, !noundef !7 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.aa, align 8, !alias.scope !240 ; 6 uses
  %i.ab = icmp eq ptr %.val.i, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.ac = load ptr, ptr %.val1.i, align 8, !invariant.load !7, !noalias !240 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.ac(ptr noundef nonnull %.val.i)
          to label %bb.r unwind label %bb.t, !noalias !240

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !58, !invariant.load !7, !noalias !240 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !59, !invariant.load !7, !noalias !240
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #25, !noalias !240
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !58, !invariant.load !7, !noalias !240 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !59, !invariant.load !7, !noalias !240
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #25, !noalias !240
  br label %common.resume

bb.v:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25 = load ptr, ptr %i.ao, align 8          ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load ptr, ptr %i.ap, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.aq = load ptr, ptr %.val26, align 8, !invariant.load !7 ; 2 uses
  %.not.i31 = icmp eq ptr %i.aq, null
  br i1 %.not.i31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  invoke void %i.aq(ptr noundef nonnull %.val25)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.z:                                             ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #25
  br label %common.resume

bb.ab:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i35 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body36 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i35: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38 unwind label %bb.ax

bb.ae:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i40 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body41 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i40: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit43 unwind label %bb.bd

bb.ah:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body46 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit48 unwind label %bb.bj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.by, %bb.bx, %bb.bs, %bb.br, %bb.bm, %bb.bl, %bb.bg, %bb.bf, %bb.ba, %bb.az, %bb.at, %bb.as, %bb.y, %bb.x, %bb.s, %bb.r, %bb.o, %bb.h, %bb.g, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a
  ret void

bb.ak:                                            ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i50 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body51 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i50: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit53 unwind label %bb.bp

bb.an:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i55 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body56 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i55: ; preds = %bb.an
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit58 unwind label %bb.bv

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.aq ], [ %i.x, %bb.l ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23 = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24 = load ptr, ptr %i.bt, align 8, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val23, ptr nonnull %.val24) #22
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.bu, align 8          ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22 = load ptr, ptr %i.bv, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.bw = load ptr, ptr %.val22, align 8, !invariant.load !7 ; 2 uses
  %.not.i59 = icmp eq ptr %i.bw, null
  br i1 %.not.i59, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  invoke void %i.bw(ptr noundef nonnull %.val21)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30
  %i.bx = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.au:                                            ; preds = %bb.ar
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cg = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.ce, i64 noundef range(i64 1, 536870913) %i.ch) #25
  br label %common.resume

bb.aw:                                            ; preds = %.body, %.body36, %.body41, %.body46, %.body51, %.body56
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i35
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.body36:                                          ; preds = %bb.ac, %bb.ax
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.cj, %bb.ax ], [ %i.bd, %bb.ac ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19 = load ptr, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.cl, align 8, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val19, ptr nonnull %.val20) #22
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i35
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.cm, align 8          ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.cn, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.co = load ptr, ptr %.val18, align 8, !invariant.load !7 ; 2 uses
  %.not.i62 = icmp eq ptr %i.co, null
  br i1 %.not.i62, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.co(ptr noundef nonnull %.val17)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38
  %i.cp = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.cq, i64 noundef range(i64 1, 536870913) %i.ct) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bb:                                            ; preds = %bb.ay
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cy = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.cw, i64 noundef range(i64 1, 536870913) %i.cz) #25
  br label %common.resume

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i40
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body41

.body41:                                          ; preds = %bb.af, %bb.bd
  %eh.lpad-body42 = phi { ptr, i32 } [ %i.da, %bb.bd ], [ %i.bg, %bb.af ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15 = load ptr, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val16 = load ptr, ptr %i.dc, align 8, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val15, ptr nonnull %.val16) #22
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit43: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i40
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.dd, align 8          ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.de, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.df = load ptr, ptr %.val14, align 8, !invariant.load !7 ; 2 uses
  %.not.i65 = icmp eq ptr %i.df, null
  br i1 %.not.i65, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit43
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.df(ptr noundef nonnull %.val13)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit43
  %i.dg = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.dh, i64 noundef range(i64 1, 536870913) %i.dk) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bh:                                            ; preds = %bb.be
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dp = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #25
  br label %common.resume

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.body46:                                          ; preds = %bb.ai, %bb.bj
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.dr, %bb.bj ], [ %i.bj, %bb.ai ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load ptr, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12 = load ptr, ptr %i.dt, align 8, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val11, ptr nonnull %.val12) #22
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit48: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.du, align 8           ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.dv, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.dw = load ptr, ptr %.val10, align 8, !invariant.load !7 ; 2 uses
  %.not.i68 = icmp eq ptr %i.dw, null
  br i1 %.not.i68, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  invoke void %i.dw(ptr noundef nonnull %.val9)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit48
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bn:                                            ; preds = %bb.bk
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %common.resume, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #25
  br label %common.resume

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i50
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.body51:                                          ; preds = %bb.al, %bb.bp
  %eh.lpad-body52 = phi { ptr, i32 } [ %i.ei, %bb.bp ], [ %i.bm, %bb.al ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load ptr, ptr %i.ek, align 8, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val7, ptr nonnull %.val8) #22
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit53: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i50
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.el, align 8           ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.em, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.en = load ptr, ptr %.val6, align 8, !invariant.load !7 ; 2 uses
  %.not.i71 = icmp eq ptr %i.en, null
  br i1 %.not.i71, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.en(ptr noundef nonnull %.val5)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit53
  %i.eo = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.er = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ep, i64 noundef range(i64 1, 536870913) %i.es) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bt:                                            ; preds = %bb.bq
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %common.resume, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ex = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ev, i64 noundef range(i64 1, 536870913) %i.ey) #25
  br label %common.resume

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i55
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.body56:                                          ; preds = %bb.ao, %bb.bv
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.ez, %bb.bv ], [ %i.bp, %bb.ao ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.fb, align 8, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val3, ptr nonnull %.val4) #22
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit58: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i55
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.fc, align 8            ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.fd, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.fe = load ptr, ptr %.val2, align 8, !invariant.load !7 ; 2 uses
  %.not.i74 = icmp eq ptr %i.fe, null
  br i1 %.not.i74, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit58
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.fe(ptr noundef nonnull %.val)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit58
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bz:                                            ; preds = %bb.bw
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %common.resume, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #25
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !243, !noundef !7
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 -9223372036854775744)
  switch i64 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.j
    i64 8, label %bb.o
    i64 9, label %bb.r
    i64 11, label %bb.u
    i64 12, label %bb.x
    i64 13, label %bb.aa
    i64 14, label %bb.ad
    i64 16, label %bb.ae
    i64 19, label %bb.af
    i64 20, label %bb.ai
    i64 21, label %bb.al
    i64 22, label %bb.aq
    i64 23, label %bb.at
    i64 24, label %bb.az
    i64 25, label %bb.ba
    i64 27, label %bb.bd
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.aw, %bb.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit29, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit25, %bb.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit15, %bb.ae, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit5, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 16 dereferenceable(96) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.val.i = load ptr, ptr %i.f, align 16, !alias.scope !244, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.g = load i64, ptr %.val.i, align 8, !range !253, !alias.scope !254, !noalias !244, !noundef !7
  switch i64 %i.g, label %bb.bg [
    i64 0, label %bb.g
    i64 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !254, !noalias !244, !noundef !7 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.i, label %bb.bg, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !254, !noalias !244, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #25, !noalias !255
  br label %bb.bg

bb.i:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.k)
          to label %bb.bg unwind label %.body, !noalias !244

.body:                                            ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #25, !noalias !244
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #22
          to label %common.resume unwind label %bb.bj

bb.j:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %.val.i2 = load ptr, ptr %i.n, align 8, !alias.scope !256, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.o = load i64, ptr %.val.i2, align 8, !range !253, !alias.scope !265, !noalias !256, !noundef !7
  switch i64 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit5 [
    i64 0, label %bb.k
    i64 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i2, i64 16
  %.val1.i.i.i.i3 = load i64, ptr %i.p, align 8, !alias.scope !265, !noalias !256, !noundef !7 ; 2 uses
  %i.q = icmp eq i64 %.val1.i.i.i.i3, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit5, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i2, i64 8
  %.val.i.i.i.i4 = load ptr, ptr %i.r, align 8, !alias.scope !265, !noalias !256, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i4, i64 noundef range(i64 1, 0) %.val1.i.i.i.i3, i64 noundef 1) #25, !noalias !266
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit5

bb.m:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i2, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit5 unwind label %bb.n, !noalias !256

common.resume:                                    ; preds = %.body, %bb.bh, %bb.be, %bb.bb, %bb.ax, %bb.ay, %bb.ar, %bb.aj, %bb.ag, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.ap, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.n ], [ %i.bx, %bb.bh ], [ %i.v, %bb.p ], [ %i.y, %bb.s ], [ %i.ab, %bb.v ], [ %i.ae, %bb.y ], [ %i.ah, %bb.ab ], [ %i.am, %bb.ag ], [ %i.ax, %bb.ap ], [ %i.ap, %bb.aj ], [ %i.az, %bb.ar ], [ %i.bj, %bb.ax ], [ %i.br, %bb.bb ], [ %i.bu, %bb.be ], [ %i.bj, %bb.ay ], [ %i.l, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 40, i64 noundef 8) #25, !noalias !256
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit5: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef 40, i64 noundef 8) #25, !noalias !256
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.o:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.o
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.r:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7: ; preds = %bb.r
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.u:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9: ; preds = %bb.u
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.x:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11: ; preds = %bb.x
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aa:                                            ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit13 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit13: ; preds = %bb.aa
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ad:                                            ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ae:                                            ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.af:                                            ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit15 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit15: ; preds = %bb.af
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ai:                                            ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17: ; preds = %bb.ai
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.al:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %.val.i18 = load ptr, ptr %i.ar, align 8, !alias.scope !267, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.as = load i64, ptr %.val.i18, align 8, !range !253, !alias.scope !276, !noalias !267, !noundef !7
  switch i64 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit21 [
    i64 0, label %bb.am
    i64 1, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i18, i64 16
  %.val1.i.i.i.i19 = load i64, ptr %i.at, align 8, !alias.scope !276, !noalias !267, !noundef !7 ; 2 uses
  %i.au = icmp eq i64 %.val1.i.i.i.i19, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit21, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i18, i64 8
  %.val.i.i.i.i20 = load ptr, ptr %i.av, align 8, !alias.scope !276, !noalias !267, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i20, i64 noundef range(i64 1, 0) %.val1.i.i.i.i19, i64 noundef 1) #25, !noalias !277
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit21

bb.ao:                                            ; preds = %bb.al
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i18, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit21 unwind label %bb.ap, !noalias !267

bb.ap:                                            ; preds = %bb.ao
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i18, i64 noundef 40, i64 noundef 8) #25, !noalias !267
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit21: ; preds = %bb.al, %bb.am, %bb.an, %bb.ao
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i18, i64 noundef 40, i64 noundef 8) #25, !noalias !267
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aq:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit23 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit23: ; preds = %bb.aq
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.at:                                            ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bb, align 8            ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.bc, align 16, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.bd = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bd(ptr noundef nonnull %.val)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.be = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ax:                                            ; preds = %bb.au
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #25
  br label %common.resume

bb.az:                                            ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bp)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ba:                                            ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit25 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit25: ; preds = %bb.ba
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bd:                                            ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit27 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %common.resume unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit27: ; preds = %bb.bd
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bg:                                            ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #25, !noalias !244
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit29 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %common.resume unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit29: ; preds = %bb.bg
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bj:                                            ; preds = %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsj34PGqTgg0L_16deltalake_lakefs(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIB13_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3E_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2W_8IdHasherEEEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #25
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIB13_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3E_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2W_8IdHasherEEEEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIB13_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3E_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2W_8IdHasherEEEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http3uri3UriECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i8, ptr %0, align 8, !range !151, !noundef !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8            ; 7 uses
  %switch.i.i = icmp samesign ult i8 %.val, 2
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.b = load ptr, ptr %.val2, align 8, !alias.scope !287, !nonnull !7, !align !22, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !noalias !287, !nonnull !7, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !287, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !287, !noundef !7
  invoke void %i.d(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.g, i64 noundef %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4j34XAPZOn0_4http8byte_str7ByteStrEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %.body, !inline_history !288

.body:                                            ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 32, i64 noundef 8) #25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !301, !nonnull !7, !align !22, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !301, !nonnull !7, !noundef !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !301, !noundef !7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !301, !noundef !7
  invoke void %i.n(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.q, i64 noundef %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri9authority9AuthorityECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d, !inline_history !302

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4j34XAPZOn0_4http8byte_str7ByteStrEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 32, i64 noundef 8) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4j34XAPZOn0_4http8byte_str7ByteStrEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !315, !nonnull !7, !align !22, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http3uri3UriECsj34PGqTgg0L_16deltalake_lakefs:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri9authority9AuthorityECsj34PGqTgg0L_16deltalake_lakefs.exit3 unwind label %bb.c, !inline_history !302

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri9authority9AuthorityECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.al, %bb.c ], [ %i.j, %.body ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !328, !nonnull !7, !align !22, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !328, !nonnull !7, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !328, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !328, !noundef !7
  invoke void %i.af(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri4path12PathAndQueryECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d, !inline_history !329

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri9authority9AuthorityECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri9authority9AuthorityECsj34PGqTgg0L_16deltalake_lakefs.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !342, !nonnull !7, !align !22, !noundef !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !342, !nonnull !7, !noundef !7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !342, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !342, !noundef !7
  tail call void %i.ap(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.as, i64 noundef %i.au), !inline_history !343
  ret void

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri9authority9AuthorityECsj34PGqTgg0L_16deltalake_lakefs.exit, %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri4path12PathAndQueryECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http3uri9authority9AuthorityECsj34PGqTgg0L_16deltalake_lakefs.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.a = load i8, ptr %0, align 8, !range !38, !alias.scope !344, !noundef !7
  %switch.i = icmp samesign ult i8 %i.a, 10
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !344, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !344, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #25, !noalias !344
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !347, !noundef !7
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.k
    i64 5, label %bb.n
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.q, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.c, %bb.c ], [ %i.f, %bb.f ], [ %i.i, %bb.i ], [ %i.v, %bb.s ], [ %i.v, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit5 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit5: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.k:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.o, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.p = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.p(ptr noundef nonnull %.val)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.r:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #25
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !348, !noundef !7 ; 8 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775745
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 42
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.j
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 5, label %bb.m
    i64 6, label %bb.p
    i64 7, label %bb.v
    i64 8, label %bb.w
    i64 9, label %bb.z
    i64 10, label %bb.aa
    i64 11, label %bb.ab
    i64 12, label %bb.ac
    i64 13, label %bb.ad
    i64 14, label %bb.ag
    i64 15, label %bb.aj
    i64 16, label %bb.am
    i64 17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 18, label %bb.ap
    i64 19, label %bb.as
    i64 20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 21, label %bb.av
    i64 22, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 23, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 24, label %bb.ba
    i64 25, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 26, label %bb.bd
    i64 27, label %bb.bg
    i64 28, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 30, label %bb.bj
    i64 31, label %bb.bm
    i64 32, label %bb.bp
    i64 33, label %bb.bs
    i64 34, label %bb.bv
    i64 35, label %bb.by
    i64 36, label %bb.cb
    i64 37, label %bb.ce
    i64 38, label %bb.ch
    i64 39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 40, label %bb.cx
    i64 41, label %bb.da
    i64 42, label %bb.dd
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.ev, %.body30, %.body62, %.body, %bb.df, %bb.di, %bb.dm, %bb.do, %bb.ds, %bb.dv, %.body.i.i.i, %bb.ed, %.body.i3.i.i, %bb.em, %bb.db, %bb.cj, %bb.cm, %bb.cp, %bb.cs, %bb.cv, %bb.cf, %bb.cc, %bb.bz, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.bb, %bb.at, %bb.aq, %bb.an, %bb.ak, %bb.ah, %bb.ae, %bb.x, %bb.t, %bb.u, %bb.n, %bb.k, %bb.h, %bb.c, %bb.er, %bb.az
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body63, %.body62 ], [ %i.g, %bb.c ], [ %i.o, %bb.h ], [ %i.r, %bb.k ], [ %i.u, %bb.n ], [ %i.ae, %bb.t ], [ %i.am, %bb.x ], [ %i.at, %bb.ae ], [ %i.aw, %bb.ah ], [ %i.az, %bb.ak ], [ %i.bc, %bb.an ], [ %i.bf, %bb.aq ], [ %i.bq, %bb.az ], [ %i.bi, %bb.at ], [ %i.bs, %bb.bb ], [ %i.by, %bb.bh ], [ %i.cb, %bb.bk ], [ %i.ce, %bb.bn ], [ %i.ch, %bb.bq ], [ %i.ck, %bb.bt ], [ %i.cn, %bb.bw ], [ %i.cq, %bb.bz ], [ %i.ct, %bb.cc ], [ %i.cw, %bb.cf ], [ %i.dj, %bb.cv ], [ %i.dp, %bb.db ], [ %i.fq, %bb.er ], [ %eh.lpad-body.i4.i.i, %.body.i3.i.i ], [ %i.ae, %bb.u ], [ %i.dh, %bb.cs ], [ %i.db, %bb.cj ], [ %i.dd, %bb.cm ], [ %i.df, %bb.cp ], [ %i.dz, %bb.di ], [ %i.dw, %bb.df ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ee, %bb.dm ], [ %i.el, %bb.ds ], [ %i.eo, %bb.dv ], [ %i.eh, %bb.do ], [ %i.ex, %bb.ed ], [ %i.fk, %bb.em ], [ %i.k, %.body ], [ %eh.lpad-body31, %.body30 ], [ %i.fy, %bb.ev ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !349, !nonnull !7, !noundef !7 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.j)
          to label %bb.ep unwind label %.body, !noalias !349, !inline_history !352

.body:                                            ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 96, i64 noundef 16) #25, !noalias !349
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.l, align 16, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.val5) #22
          to label %common.resume unwind label %bb.es

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars9ArrayDataECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.dx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %bb.dk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.dd, %bb.dd, %bb.s, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit32, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit67, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties11deserialize18ParseIntervalErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit59, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit56, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit53, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit50, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit47, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit41, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit35, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit28, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit25, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit15, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit13, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.m:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11: ; preds = %bb.m
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.p:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.w, align 8             ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.x, align 16, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.y = load ptr, ptr %.val2, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.y(ptr noundef nonnull %.val)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #25
  br label %common.resume

bb.v:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.w:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit13 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit13: ; preds = %bb.w
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.z:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aa:                                            ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ap)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ab:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ac:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.ar, align 8, !nonnull !7, !noundef !7
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.val3)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ad:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit15 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit15: ; preds = %bb.ad
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ag:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17: ; preds = %bb.ag
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aj:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit19 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit19: ; preds = %bb.aj
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.am:                                            ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit21 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit21: ; preds = %bb.am
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ap:                                            ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit23 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit23: ; preds = %bb.ap
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.as:                                            ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit25 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit25: ; preds = %bb.as
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.av:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %.val.i26 = load ptr, ptr %i.bk, align 8, !alias.scope !353, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.bl = load i64, ptr %.val.i26, align 8, !range !253, !alias.scope !362, !noalias !353, !noundef !7
  switch i64 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i64 0, label %bb.aw
    i64 1, label %bb.ay
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !399, !nonnull !7, !noundef !7 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.m, !noalias !399, !inline_history !402

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #25, !noalias !399
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #25, !noalias !399
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.a = load i64, ptr %.val, align 8, !range !253, !alias.scope !409, !noundef !7
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !409, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !409, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #25, !noalias !409
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #25
  resume { ptr, i32 } %i.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !181, !noundef !7
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !410, !noundef !7 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.k
    i64 3, label %bb.n
    i64 4, label %bb.q
    i64 5, label %bb.t
    i64 6, label %bb.w
    i64 8, label %bb.z
    i64 9, label %bb.ac
    i64 10, label %bb.af
    i64 11, label %bb.ai
    i64 12, label %bb.al
    i64 13, label %bb.ao
    i64 14, label %bb.ar
    i64 15, label %bb.au
    i64 16, label %bb.ax
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.h, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit33, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit24, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.ay, %bb.av, %bb.as, %bb.ap, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.ay ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.x, %bb.l ], [ %i.aa, %bb.o ], [ %i.ad, %bb.r ], [ %i.ag, %bb.u ], [ %i.aj, %bb.x ], [ %i.am, %bb.aa ], [ %i.ap, %bb.ad ], [ %i.as, %bb.ag ], [ %i.av, %bb.aj ], [ %i.ba, %bb.ap ], [ %i.bd, %bb.as ], [ %i.bg, %bb.av ], [ %i.q, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.k = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.k(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #25
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit5 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit5: ; preds = %bb.n
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit7: ; preds = %bb.q
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9: ; preds = %bb.t
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.w:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11: ; preds = %bb.w
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.z:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit13 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit13: ; preds = %bb.z
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ac:                                            ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit15 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit15: ; preds = %bb.ac
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.af:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17: ; preds = %bb.af
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ai:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit19 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsj34PGqTgg0L_16deltalake_lakefs:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit20 unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit20: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !445, !noundef !7 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775788
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 1, label %bb.e
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 6, label %bb.l
    i64 7, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.v, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.k, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a, %bb.a, %bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !446, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.j = load i64, ptr %.val.i, align 8, !range !253, !alias.scope !455, !noalias !446, !noundef !7
  switch i64 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i64 0, label %bb.f
    i64 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !455, !noalias !446, !noundef !7 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !455, !noalias !446, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #25, !noalias !456
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.i, !noalias !446

common.resume:                                    ; preds = %.body, %bb.w, %bb.x, %bb.q, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.ai, %bb.w ], [ %i.r, %bb.m ], [ %i.v, %bb.q ], [ %i.ai, %bb.x ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #25, !noalias !446
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #25, !noalias !446
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.k:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.l:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.o:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !range !457, !alias.scope !458, !noundef !7
  %switch1.i = icmp slt i64 %i.u, -9223372036854775783
  br i1 %switch1.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.p
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.s ], [ %i.g, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.z, align 8, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val2, ptr nonnull %.val3) #22
          to label %common.resume unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.aa, align 8            ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.ab, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.ac = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ac(ptr noundef nonnull %.val)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.w:                                             ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %common.resume, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #25
  br label %common.resume

bb.y:                                             ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !461, !noundef !7 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.i
    i64 3, label %bb.o
    i64 4, label %bb.p
    i64 5, label %bb.q
    i64 6, label %bb.t
    i64 7, label %bb.w
    i64 8, label %bb.z
    i64 9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 10, label %bb.ac
    i64 11, label %bb.af
    i64 12, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 13, label %bb.ai
    i64 14, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 15, label %bb.an
    i64 16, label %bb.ar
    i64 17, label %bb.av
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.bf

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit5 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.bd, %.body27, %.body33, %.body, %bb.az, %bb.aw, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.m, %bb.n, %bb.g, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %.body33 ], [ %i.k, %bb.g ], [ %i.u, %bb.m ], [ %i.ac, %bb.r ], [ %i.af, %bb.u ], [ %i.ai, %bb.x ], [ %i.al, %bb.aa ], [ %i.ao, %bb.ad ], [ %i.az, %bb.am ], [ %i.ar, %bb.ag ], [ %i.br, %bb.aw ], [ %i.bu, %bb.az ], [ %i.u, %bb.n ], [ %eh.lpad-body, %.body ], [ %i.bg, %.body27 ], [ %i.by, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit5: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.m, align 8             ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.n, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.o = load ptr, ptr %.val2, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.o(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.m:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.w, i64 noundef range(i64 1, 536870913) %i.z) #25
  br label %common.resume

bb.o:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.p:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit8 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit8: ; preds = %bb.q
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11: ; preds = %bb.t
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.w:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit14 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit14: ; preds = %bb.w
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.z:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17: ; preds = %bb.z
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.l, %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit41, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit14, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit8, %bb.p, %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit5, %bb.e, %bb.a, %bb.a, %bb.a
  ret void

bb.ac:                                            ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit20 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit20: ; preds = %bb.ac
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.af:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit23 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit23: ; preds = %bb.af
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ai:                                            ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %.val.i = load ptr, ptr %i.at, align 8, !alias.scope !462, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.au = load i64, ptr %.val.i, align 8, !range !253, !alias.scope !471, !noalias !462, !noundef !7
  switch i64 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i64 0, label %bb.aj
    i64 1, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !471, !noalias !462, !noundef !7 ; 2 uses
  %i.aw = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !471, !noalias !462, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #25, !noalias !472
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.al:                                            ; preds = %bb.ai
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.am, !noalias !462

bb.am:                                            ; preds = %bb.al
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #25, !noalias !462
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.al
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #25, !noalias !462
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.an:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %.val.i24 = load ptr, ptr %i.ba, align 8, !alias.scope !473, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.bb = load i64, ptr %.val.i24, align 8, !range !253, !alias.scope !482, !noalias !473, !noundef !7
  switch i64 %i.bb, label %bb.ay [
    i64 0, label %bb.ao
    i64 1, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i24, i64 16
  %.val1.i.i.i.i25 = load i64, ptr %i.bc, align 8, !alias.scope !482, !noalias !473, !noundef !7 ; 2 uses
  %i.bd = icmp eq i64 %.val1.i.i.i.i25, 0
  br i1 %i.bd, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i24, i64 8
  %.val.i.i.i.i26 = load ptr, ptr %i.be, align 8, !alias.scope !482, !noalias !473, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i26, i64 noundef range(i64 1, 0) %.val1.i.i.i.i25, i64 noundef 1) #25, !noalias !483
  br label %bb.ay

bb.aq:                                            ; preds = %bb.an
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i24, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bf)
          to label %bb.ay unwind label %.body27, !noalias !473

.body27:                                          ; preds = %bb.aq
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24, i64 noundef 40, i64 noundef 8) #25, !noalias !473
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh) #22
          to label %common.resume unwind label %bb.bb

bb.ar:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %.val.i30 = load ptr, ptr %i.bi, align 8, !alias.scope !484, !nonnull !7, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.bj = load i64, ptr %.val.i30, align 8, !range !253, !alias.scope !493, !noalias !484, !noundef !7
  switch i64 %i.bj, label %bb.bc [
    i64 0, label %bb.as
    i64 1, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i30, i64 16
  %.val1.i.i.i.i31 = load i64, ptr %i.bk, align 8, !alias.scope !493, !noalias !484, !noundef !7 ; 2 uses
  %i.bl = icmp eq i64 %.val1.i.i.i.i31, 0
  br i1 %i.bl, label %bb.bc, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i30, i64 8
  %.val.i.i.i.i32 = load ptr, ptr %i.bm, align 8, !alias.scope !493, !noalias !484, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i32, i64 noundef range(i64 1, 0) %.val1.i.i.i.i31, i64 noundef 1) #25, !noalias !494
  br label %bb.bc

bb.au:                                            ; preds = %bb.ar
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i30, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bn)
          to label %bb.bc unwind label %.body33, !noalias !484

.body33:                                          ; preds = %bb.au
  %i.bo = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i30, i64 noundef 40, i64 noundef 8) #25, !noalias !484
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp) #22
          to label %common.resume unwind label %bb.bb

bb.av:                                            ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38: ; preds = %bb.av
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ay:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24, i64 noundef 40, i64 noundef 8) #25, !noalias !473
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit41 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %common.resume unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit41: ; preds = %bb.ay
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bb:                                            ; preds = %.body, %.body33, %.body27
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bc:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i30, i64 noundef 40, i64 noundef 8) #25, !noalias !484
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit44 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %common.resume unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit44: ; preds = %bb.bc
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.bf
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.bf ], [ %i.g, %bb.c ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16) %i.cb) #22
          to label %common.resume unwind label %bb.bb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16) %i.cc)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 1, label %bb.c
  ], !prof !495

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #25
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = shl nuw nsw i64 %.val2, 2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef 2) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.i, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.h) #22
          to label %common.resume unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsj34PGqTgg0L_16deltalake_lakefs.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.i:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !496, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !505, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !505, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !505, !noundef !7
  tail call void %i.c(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.f, i64 noundef %i.h), !inline_history !506
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !496 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !496, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.k = load ptr, ptr %.val1.i, align 8, !invariant.load !7, !noalias !496 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.k(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g, !noalias !496

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !58, !invariant.load !7, !noalias !496 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !59, !invariant.load !7, !noalias !496
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #25, !noalias !496
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !58, !invariant.load !7, !noalias !496 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !59, !invariant.load !7, !noalias !496
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #25, !noalias !496
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client12HyperServiceECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !range !507, !alias.scope !508, !noundef !7
  %.not.i.i = icmp eq i32 %i.b, 1000000001
  br i1 %.not.i.i, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !528, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !529
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http6ConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http6ConfigE9drop_slowCs3GOvqRL2ZP5_12hyper_rustls(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http6ConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !539, !nonnull !7, !noundef !7
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !540
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %.body.i.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #23
          to label %.body.i.i.i.i unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http6ConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !550, !nonnull !7, !noundef !7
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !551
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http13HttpConnectorNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve11DynResolverEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http6ConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve7ResolveEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http13HttpConnectorNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve11DynResolverEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.h, %bb.e, %bb.d
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.g, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !558, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !559
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i

bb.i:                                             ; preds = %.body.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http13HttpConnectorNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve11DynResolverEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http6ConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !566, !nonnull !7, !noundef !7
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !567
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http13HttpConnectorNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve11DynResolverEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.l, %bb.i, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %eh.lpad-body.i.i.i.i, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !574, !nonnull !7, !noundef !7
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !575
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.k, label %.body.i.i.i

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z) #23
          to label %.body.i.i.i unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i: ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy7connect4http13HttpConnectorNtNtNtCsgO6CtM78C4N_7reqwest3dns7resolve11DynResolverEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !582, !nonnull !7, !noundef !7
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !583
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.o, %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %.pn.i.i.i.i, %bb.k ], [ %.pn.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !590, !nonnull !7, !noundef !7
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !591
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

bb.p:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEE9drop_slowB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs27OhNon2q2q_6rustls6client11client_conn12ClientConfigEECsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !598, !nonnull !7, !noundef !7
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !599
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit6.i.i.i

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEE9drop_slowB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit6.i.i.i unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.s, %bb.p, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.be, %bb.s ], [ %eh.lpad-body.i.i.i, %bb.p ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load i8, ptr %i.as, align 8, !range !151, !alias.scope !603, !noundef !7
  %i.au = icmp eq i8 %i.at, 2
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !613, !nonnull !7, !align !22, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !614, !nonnull !7, !noundef !7
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !613, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !613, !noundef !7
  invoke void %i.ay(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.z, !inline_history !615

bb.s:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit6.i.i.i: ; preds = %bb.q, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect5InnerECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bg = load i8, ptr %i.bf, align 8, !range !151, !alias.scope !619, !noundef !7
  %i.bh = icmp eq i8 %i.bg, 2
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit9.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit6.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !629, !nonnull !7, !align !22, !noundef !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !630, !nonnull !7, !noundef !7
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !629, !noundef !7
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !629, !noundef !7
  invoke void %i.bl(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.bo, i64 noundef %i.bq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit9.i.i.i unwind label %bb.w, !inline_history !615

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.w, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %.pn2.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.w ], [ %.pn.i.i.i, %bb.r ], [ %.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !634, !noundef !7 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.body.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.bu = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !635
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.v, label %.body.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2pqxYH9ZEk8_3std4path4PathE9drop_slowCsgO6CtM78C4N_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.br) #23
          to label %.body.i unwind label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit9.i.i.i: ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtBL_3vec3VecNtNtCsgO6CtM78C4N_7reqwest5proxy7MatcherEEECsj34PGqTgg0L_16deltalake_lakefs.exit6.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !643, !noundef !7 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit9.i.i.i
  %i.ca = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !644
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2pqxYH9ZEk8_3std4path4PathE9drop_slowCsgO6CtM78C4N_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bx) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.ag

bb.z:                                             ; preds = %bb.v, %bb.r, %bb.p
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.aa:                                            ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !508 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !508, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.cf = load ptr, ptr %.val1.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.cf(ptr noundef nonnull %.val.i.i)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ch, i64 noundef range(i64 1, 536870913) %i.ck) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.ae:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.body.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.cn, i64 noundef range(i64 1, 536870913) %i.cq) #25
  br label %.body.i

bb.ag:                                            ; preds = %bb.y
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ag, %bb.af, %bb.ae, %bb.v, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cr, %bb.ag ], [ %.pn2.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ], [ %.pn2.i.i.i, %bb.v ], [ %.pn2.i.i.i, %bb.u ], [ %i.cl, %bb.af ], [ %i.cl, %bb.ae ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !658, !nonnull !7, !noundef !7
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !659
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.ah:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCsaFjGkpVS7Wa_5hyper2rt8ExecutorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEENtB2N_4SyncB2L_EL_E9drop_slowCsgO6CtM78C4N_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cs) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ad, %bb.ac, %bb.y, %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueEECsj34PGqTgg0L_16deltalake_lakefs.exit9.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !669, !nonnull !7, !noundef !7
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !670
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit6.i

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCsaFjGkpVS7Wa_5hyper2rt8ExecutorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEENtB2N_4SyncB2L_EL_E9drop_slowCsgO6CtM78C4N_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cw) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit6.i unwind label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.aj, %bb.ah, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.db, %bb.aj ], [ %eh.lpad-body.i, %bb.ah ], [ %eh.lpad-body.i, %.body.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCsaFjGkpVS7Wa_5hyper6client4conn5http27BuilderNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(152) %i.da) #22
          to label %.body8.i unwind label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit6.i: ; preds = %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !683, !nonnull !7, !noundef !7
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !684
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit6.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCsaFjGkpVS7Wa_5hyper2rt8ExecutorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEENtB2N_4SyncB2L_EL_E9drop_slowCsgO6CtM78C4N_7reqwest(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dc) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !688, !noundef !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %.body8.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !689
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.an, label %.body8.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsaFjGkpVS7Wa_5hyper2rt5timer5TimerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1o_4SendEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dh) #23
          to label %.body8.i unwind label %bb.aq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit6.i
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !697, !noundef !7 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i2.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCsaFjGkpVS7Wa_5hyper6client4conn5http27BuilderNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.dn = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !698
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCsaFjGkpVS7Wa_5hyper6client4conn5http27BuilderNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecEECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsaFjGkpVS7Wa_5hyper2rt5timer5TimerNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1o_4SendEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dl) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCsaFjGkpVS7Wa_5hyper6client4conn5http27BuilderNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.at

bb.aq:                                            ; preds = %bb.an
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body8.i:                                         ; preds = %bb.at, %bb.an, %bb.am, %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %i.dv, %bb.at ], [ %i.dg, %bb.an ], [ %i.dg, %bb.am ], [ %i.dg, %bb.al ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !709, !noundef !7 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy4pool4PoolINtNtBL_6client10PoolClientNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyETNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeNtNtB2Y_9authority9AuthorityEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.ar

bb.ar:                                            ; preds = %.body8.i
  %i.dt = atomicrmw sub ptr %i.dr, i64 1 release, align 8, !noalias !710
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy4pool4PoolINtNtBL_6client10PoolClientNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyETNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeNtNtB2Y_9authority9AuthorityEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy4pool9PoolInnerINtNtB1A_6client10PoolClientNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyETNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeNtNtB3T_9authority9AuthorityEEEE9drop_slowB35_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy4pool4PoolINtNtBL_6client10PoolClientNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyETNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeNtNtB2Y_9authority9AuthorityEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.aw

bb.at:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCsaFjGkpVS7Wa_5hyper6client4conn5http27BuilderNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ap, %bb.ao, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !721, !noundef !7 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy6client6ClientNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorNtNtNtB1L_10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.au

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCsaFjGkpVS7Wa_5hyper6client4conn5http27BuilderNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.dz = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !noalias !722
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy6client6ClientNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorNtNtNtB1L_10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.av:                                            ; preds = %bb.au
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy4pool9PoolInnerINtNtB1A_6client10PoolClientNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyETNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeNtNtB3T_9authority9AuthorityEEEE9drop_slowB35_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dw) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy6client6ClientNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorNtNtNtB1L_10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aw:                                            ; preds = %bb.as, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.ah
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy4pool4PoolINtNtBL_6client10PoolClientNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyETNtNtNtCs4j34XAPZOn0_4http3uri6scheme6SchemeNtNtB2Y_9authority9AuthorityEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.as, %bb.ar, %.body8.i
  resume { ptr, i32 } %.pn2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCscPOjvrFgwsd_10hyper_util6client6legacy6client6ClientNtNtCsgO6CtM78C4N_7reqwest7connect9ConnectorNtNtNtB1L_10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCsaFjGkpVS7Wa_5hyper6client4conn5http27BuilderNtNtNtCscPOjvrFgwsd_10hyper_util6common4exec4ExecEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.au, %bb.av
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client14ResponseFutureECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(1448) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !727, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.b, label %.invoke.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !range !139, !alias.scope !732, !noundef !7 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6either6EitherINtNtNtCsaL8FCyi0GlJ_5tower5retry6future14ResponseFutureNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2y_10async_impl6client12HyperServiceINtNtCs4j34XAPZOn0_4http7request7RequestNtNtB3b_4body4BodyEEINtNtNtB1H_4util7oneshot7OneshotINtB1F_5RetryB2u_B37_EB3O_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i [
    i64 0, label %bb.c
    i64 1, label %.invoke.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB1l_10async_impl6client12HyperServiceEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(432) %i.i)
          to label %bb.q unwind label %bb.p

.invoke.i:                                        ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs4j34XAPZOn0_4http7request7RequestNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(256) %i.j)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.invoke.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB1l_10async_impl6client12HyperServiceEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.c) #22
          to label %bb.f unwind label %bb.o

bb.e:                                             ; preds = %.invoke.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB1l_10async_impl6client12HyperServiceEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.c)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.pn.i1 = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.k, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 696
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsaL8FCyi0GlJ_5tower5retry6future5StateINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtNtCsaFjGkpVS7Wa_5hyper4body8incoming8IncomingENtNtCsgO6CtM78C4N_7reqwest5error5ErrorENtNtB4_6marker4SyncNtB5n_4SendEL_EEINtNtB2k_5ready5ReadyuEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.l) #22
          to label %.body.i unwind label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.o = load i8, ptr %i.n, align 8, !range !151, !alias.scope !740, !noundef !7
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6either6EitherINtNtNtCsaL8FCyi0GlJ_5tower5retry6future14ResponseFutureNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2y_10async_impl6client12HyperServiceINtNtCs4j34XAPZOn0_4http7request7RequestNtNtB3b_4body4BodyEEINtNtNtB1H_4util7oneshot7OneshotINtB1F_5RetryB2u_B37_EB3O_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 704
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !740 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 712
  %.val1.i.i = load ptr, ptr %i.r, align 8, !alias.scope !740, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.s = load ptr, ptr %.val1.i.i, align 8, !invariant.load !7, !noalias !737 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !737

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !58, !invariant.load !7, !noalias !737 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6either6EitherINtNtNtCsaL8FCyi0GlJ_5tower5retry6future14ResponseFutureNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2y_10async_impl6client12HyperServiceINtNtCs4j34XAPZOn0_4http7request7RequestNtNtB3b_4body4BodyEEINtNtNtB1H_4util7oneshot7OneshotINtB1F_5RetryB2u_B37_EB3O_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !59, !invariant.load !7, !noalias !737
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #25, !noalias !737
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6either6EitherINtNtNtCsaL8FCyi0GlJ_5tower5retry6future14ResponseFutureNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2y_10async_impl6client12HyperServiceINtNtCs4j34XAPZOn0_4http7request7RequestNtNtB3b_4body4BodyEEINtNtNtB1H_4util7oneshot7OneshotINtB1F_5RetryB2u_B37_EB3O_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.m:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !58, !invariant.load !7, !noalias !737 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !59, !invariant.load !7, !noalias !737
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #25, !noalias !737
  br label %.body.i

bb.o:                                             ; preds = %bb.f, %bb.d
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.p:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 448
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs4j34XAPZOn0_4http7request7RequestNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(256) %i.ag) #22
          to label %.body.i unwind label %bb.r

bb.q:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 448
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs4j34XAPZOn0_4http7request7RequestNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(256) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6either6EitherINtNtNtCsaL8FCyi0GlJ_5tower5retry6future14ResponseFutureNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2y_10async_impl6client12HyperServiceINtNtCs4j34XAPZOn0_4http7request7RequestNtNtB3b_4body4BodyEEINtNtNtB1H_4util7oneshot7OneshotINtB1F_5RetryB2u_B37_EB3O_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.n, %bb.m, %bb.f, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.af, %bb.p ], [ %i.aj, %bb.s ], [ %i.y, %bb.m ], [ %i.y, %bb.n ], [ %.pn.i1, %bb.f ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 720
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB1l_10async_impl6client12HyperServiceEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(432) %i.ak) #22
          to label %bb.t unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6either6EitherINtNtNtCsaL8FCyi0GlJ_5tower5retry6future14ResponseFutureNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2y_10async_impl6client12HyperServiceINtNtCs4j34XAPZOn0_4http7request7RequestNtNtB3b_4body4BodyEEINtNtNtB1H_4util7oneshot7OneshotINtB1F_5RetryB2u_B37_EB3O_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.l, %bb.k, %bb.h, %bb.q, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 720
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB1l_10async_impl6client12HyperServiceEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(432) %i.al)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.u, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.an, %bb.u ], [ %eh.lpad-body.i, %.body.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect19TowerRedirectPolicyECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(40) %i.am) #22
          to label %bb.w unwind label %bb.ap

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6either6EitherINtNtNtCsaL8FCyi0GlJ_5tower5retry6future14ResponseFutureNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2y_10async_impl6client12HyperServiceINtNtCs4j34XAPZOn0_4http7request7RequestNtNtB3b_4body4BodyEEINtNtNtB1H_4util7oneshot7OneshotINtB1F_5RetryB2u_B37_EB3O_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6either6EitherINtNtNtCsaL8FCyi0GlJ_5tower5retry6future14ResponseFutureNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2y_10async_impl6client12HyperServiceINtNtCs4j34XAPZOn0_4http7request7RequestNtNtB3b_4body4BodyEEINtNtNtB1H_4util7oneshot7OneshotINtB1F_5RetryB2u_B37_EB3O_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest8redirect19TowerRedirectPolicyECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(40) %i.ao)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.x, %bb.t
  %.pn2.i = phi { ptr, i32 } [ %i.ar, %bb.x ], [ %.pn.i, %bb.t ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1416
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http3uri3UriECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(88) %i.aq) #22
          to label %bb.ab unwind label %bb.ap

bb.x:                                             ; preds = %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.at = load i8, ptr %i.as, align 8, !range !38, !alias.scope !749, !noundef !7
  %switch.i.i.i = icmp samesign ult i8 %i.at, 10
  br i1 %switch.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %.val1.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !749, !noundef !7 ; 2 uses
  %i.av = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %.val.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !749, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #25, !noalias !750
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http3uri3UriECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(88) %i.ax)
          to label %bb.ad unwind label %bb.ac

bb.ab:                                            ; preds = %bb.ac, %bb.w
  %.pn6.i = phi { ptr, i32 } [ %i.az, %bb.ac ], [ %.pn2.i, %bb.w ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(96) %i.ay) #22
          to label %bb.ae unwind label %bb.ap

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(96) %i.ba)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %bb.af, %bb.ab
  %.pn8.i = phi { ptr, i32 } [ %i.bc, %bb.af ], [ %.pn6.i, %bb.ab ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4I8XlQihwcg_10tower_http15follow_redirect8BodyReprNtNtNtCsgO6CtM78C4N_7reqwest10async_impl4body4BodyEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(40) %i.bb) #22
          to label %common.resume.i unwind label %bb.ap

bb.af:                                            ; preds = %bb.ad
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.be = load i64, ptr %i.bd, align 8, !range !61, !alias.scope !754, !noundef !7
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4I8XlQihwcg_10tower_http15follow_redirect14ResponseFutureINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2n_10async_impl6client12HyperServiceENtNtB30_4body4BodyNtNtB2n_8redirect19TowerRedirectPolicyEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ah:                                            ; preds = %bb.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !761, !noundef !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !768, !nonnull !7, !noundef !7
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !769, !noundef !7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !769, !noundef !7
  tail call void %i.bj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bm, i64 noundef %i.bo), !inline_history !770
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4I8XlQihwcg_10tower_http15follow_redirect14ResponseFutureINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2n_10async_impl6client12HyperServiceENtNtB30_4body4BodyNtNtB2n_8redirect19TowerRedirectPolicyEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aj:                                            ; preds = %bb.ah
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %.val.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !761 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.val1.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !761, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.br = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !7, !noalias !771 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.br(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.al unwind label %bb.an, !noalias !771

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !58, !invariant.load !7, !noalias !771 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4I8XlQihwcg_10tower_http15follow_redirect14ResponseFutureINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2n_10async_impl6client12HyperServiceENtNtB30_4body4BodyNtNtB2n_8redirect19TowerRedirectPolicyEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !range !59, !invariant.load !7, !noalias !771
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.bt, i64 noundef range(i64 1, 536870913) %i.bw) #25, !noalias !771
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4I8XlQihwcg_10tower_http15follow_redirect14ResponseFutureINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2n_10async_impl6client12HyperServiceENtNtB30_4body4BodyNtNtB2n_8redirect19TowerRedirectPolicyEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.an:                                            ; preds = %bb.ak
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !58, !invariant.load !7, !noalias !771 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %common.resume.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !59, !invariant.load !7, !noalias !771
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #25, !noalias !771
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ao, %bb.an, %bb.ae
  %common.resume.op.i = phi { ptr, i32 } [ %i.bx, %bb.an ], [ %i.bx, %bb.ao ], [ %.pn8.i, %bb.ae ]
  resume { ptr, i32 } %common.resume.op.i

bb.ap:                                            ; preds = %bb.ae, %bb.ab, %bb.w, %bb.t, %.body.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4I8XlQihwcg_10tower_http15follow_redirect14ResponseFutureINtNtCsaL8FCyi0GlJ_5tower5retry5RetryNtNtCsgO6CtM78C4N_7reqwest5retry6PolicyNtNtNtB2n_10async_impl6client12HyperServiceENtNtB30_4body4BodyNtNtB2n_8redirect19TowerRedirectPolicyEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.ag, %bb.ai, %bb.al, %bb.am
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client7PendingECsj34PGqTgg0L_16deltalake_lakefs(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.0.val, 0
  br i1 %i.a, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 1648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.c = load i8, ptr %i.b, align 8, !range !38, !alias.scope !781, !noundef !7
  %switch.i.i.i.i.i.i = icmp samesign ult i8 %i.c, 10
  br i1 %switch.i.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 1664
  %.val1.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !781, !noundef !7 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 1656
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !781, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i, i64 noundef 1) #25, !noalias !781
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 1544 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %.body.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http6method6MethodECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.g

.body.i.i.i.i:                                    ; preds = %bb.g, %bb.e
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.k, %bb.g ]
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 1448
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(96) %i.j) #22
          to label %bb.h unwind label %bb.t

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 1448
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(96) %i.l)
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %.body.i.i.i.i
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.j ], [ %.pn.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 1672 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !788, !nonnull !7, !noundef !7
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !789
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.t

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 1672 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !796, !nonnull !7, !noundef !7
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !797
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.m, %bb.i, %bb.h
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %i.v, %bb.m ], [ %.pn2.i.i.i.i, %bb.i ], [ %.pn2.i.i.i.i, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client14ResponseFutureECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(1696) %.8.val) #22
          to label %bb.n unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i: ; preds = %bb.l, %bb.k
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client14ResponseFutureECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(1696) %.8.val)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  %.pn6.i.i.i.i = phi { ptr, i32 } [ %i.x, %bb.o ], [ %.pn4.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 1680
  %.val12.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !772, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepEEEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val12.i.i.i.i) #22
          to label %bb.q unwind label %bb.t

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit14.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 1680
  %.val11.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !772, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepEEEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val11.i.i.i.i)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.n
  %.pn8.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.r ], [ %.pn6.i.i.i.i, %bb.n ]
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 1688
  %.val10.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !772, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepEEEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val10.i.i.i.i) #22
          to label %bb.v unwind label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 1688
  %.val.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !772, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCskQDtHcQtBkN_5tokio4time5sleep5SleepEEEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client14PendingRequestEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client9ClientRefEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, %bb.i, %.body.i.i.i.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.u ], [ %.pn8.i.i.i.i, %bb.q ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 1696, i64 noundef 8) #25
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client14PendingRequestEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 1696, i64 noundef 8) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client12PendingInnerECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.w:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %.8.val, null
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client12PendingInnerECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.8.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client12PendingInnerECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client12PendingInnerECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client14PendingRequestEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.w, %bb.x
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !798, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val1.i.i) #22
          to label %.body.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !798, !align !22, !noundef !7 ; 4 uses
  %i.d = icmp eq ptr %.val.i.i, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #25
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.e, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !803
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !803, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val2.i, ptr nonnull %.val3.i) #22
          to label %.body unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !803 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !803, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.k = load ptr, ptr %.val1.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.k(ptr noundef nonnull %.val.i)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http8response5PartsECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.j:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #25
  br label %.body

bb.l:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %.body.i, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.q, %bb.j ], [ %i.q, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1 = load ptr, ptr %i.x, align 8, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val1) #22
          to label %common.resume unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.y, align 8, !nonnull !7, !noundef !7 ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

common.resume:                                    ; preds = %.body, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i2, %bb.p ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.o, %bb.m
  %eh.lpad-body.i2 = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.z, %bb.m ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #25
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #25
  ret void

bb.q:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !810, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !810
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !817, !nonnull !7, !noundef !7
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !817
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !818, !noundef !7 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775803
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 5
  switch i64 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i64 5, label %bb.b
    i64 8, label %bb.e
    i64 9, label %bb.k
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.n, %bb.m, %bb.h, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.f, %bb.c ], [ %i.p, %bb.j ], [ %i.ad, %bb.p ], [ %i.ad, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.h, align 8            ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.i, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.j = load ptr, ptr %.val3, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke void %i.j(ptr noundef nonnull %.val2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #25
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.w, align 8, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.x = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.x(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.o:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #25
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.b, align 8            ; 6 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !58, !invariant.load !7 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !59, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #25
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB6_14LakeFSLogStore12commit_merge0s0_0B8_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB6_14LakeFSLogStore12commit_merge0s_10___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB6_14LakeFSLogStore12commit_merge0s_10___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #26
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB6_14LakeFSLogStore12commit_merge0s_0B8_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB6_14LakeFSLogStore12commit_merge010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB6_14LakeFSLogStore12commit_merge010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #26
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB8_12LakeFSClient11has_changes0s0_0Ba_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB8_12LakeFSClient11has_changes010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB8_12LakeFSClient11has_changes010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #26
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB8_12LakeFSClient13delete_branch0s_0Ba_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB8_12LakeFSClient13delete_branch010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB8_12LakeFSClient13delete_branch010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #26
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook00B8_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #26
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook00B8_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #26
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore11pre_execute0B6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 3 uses
  %i.n = alloca [112 x i8], align 16              ; 17 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [96 x i8], align 16               ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 16 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [96 x i8], align 16               ; 5 uses
  %i.y = alloca [112 x i8], align 8               ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 11 uses
  %i.ac = alloca [88 x i8], align 8               ; 8 uses
  %i.ad = alloca [88 x i8], align 8               ; 6 uses
  %.sroa.6.i = alloca [112 x i8], align 8         ; 7 uses
  %i.ae = alloca [136 x i8], align 8              ; 9 uses
  %i.af = alloca [272 x i8], align 8              ; 6 uses
  %i.ag = alloca [272 x i8], align 8              ; 6 uses
  %i.ah = alloca [272 x i8], align 8              ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %i.ar = alloca [32 x i8], align 8               ; 6 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 8 uses
  %i.av = alloca [32 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 11 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.999 = alloca [72 x i8], align 8          ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 1               ; 5 uses
  %i.bg = alloca [96 x i8], align 16              ; 9 uses
  %i.bh = alloca [8 x i8], align 8                ; 9 uses
  %i.bi = alloca [96 x i8], align 16              ; 9 uses
  %i.bj = alloca [16 x i8], align 8               ; 12 uses
  %.sroa.3.sroa.8 = alloca [72 x i8], align 8     ; 4 uses
  %.sroa.959.sroa.9 = alloca [72 x i8], align 8   ; 7 uses
  %.sroa.052 = alloca [184 x i8], align 8         ; 4 uses
  %.sroa.054 = alloca [184 x i8], align 8         ; 8 uses
  %i.bk = alloca [24 x i8], align 8               ; 10 uses
  %i.bl = alloca [88 x i8], align 16              ; 20 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 8, !range !178, !noundef !7
  switch i8 %i.bn, label %default.unreachable157 [
    i8 0, label %.thread158
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.f
  ]

default.unreachable157:                           ; preds = %bb.f, %bb.a
  unreachable

.thread158:                                       ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %1, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.054)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.052)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 312
  %.sroa.052.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.052, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.052.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.054, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.052, i64 184, i1 false), !alias.scope !819
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.052)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.bu, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.054, i64 184, i1 false)
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.bt, ptr %.sroa.855.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.bs, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 250
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.959.sroa.9)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 250
  br label %bb.g

bb.b:                                             ; preds = %bb.fq, %.body
  %.pn20 = phi { ptr, i32 } [ %i.ms, %bb.fq ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  br label %bb.hb

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
  unreachable

bb.e:                                             ; preds = %bb.cc, %bb.cb
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body200.i, %bb.e
  %i.by = phi ptr [ %i.bz, %bb.e ], [ %i.gu, %.body200.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.e ], [ %.pn88.i, %.body200.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.959.sroa.9)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.by) #22
          to label %bb.b unwind label %bb.go

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.054)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 250
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !182, !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.959.sroa.9)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 250 ; 3 uses
  switch i8 %.pre, label %default.unreachable157 [
    i8 0, label %bb.g
    i8 1, label %bb.cb
    i8 2, label %bb.cc
    i8 3, label %bb.ce
    i8 4, label %bb.k
  ]

bb.g:                                             ; preds = %.thread158, %bb.f
  %i.cb = phi ptr [ %i.bw, %.thread158 ], [ %i.ca, %bb.f ] ; 7 uses
  %i.cc = phi ptr [ %i.bv, %.thread158 ], [ %i.bz, %bb.f ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 249 ; 2 uses
  store i8 0, ptr %i.cd, align 1, !noalias !823
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.ce, align 8, !noalias !823
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !823, !nonnull !7, !align !22, !noundef !7 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !823, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !823
  %i.cl = getelementptr i8, ptr %i.ci, i64 8
  %.val96.i = load ptr, ptr %i.cl, align 8, !noalias !827, !nonnull !7, !noundef !7
  %i.cm = getelementptr i8, ptr %i.ci, i64 16
  %.val97.i = load i64, ptr %i.cm, align 8, !noalias !827, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !828
  store i64 0, ptr %i.j, align 8, !noalias !828
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !828
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !828
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 1610612768, ptr %i.cn, align 8, !noalias !828
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !828
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !noalias !828
  store ptr %i.j, ptr %i.i, align 8, !noalias !828
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @186, ptr %i.co, align 8, !noalias !828
  %i.cp = invoke noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val96.i, i64 noundef %.val97.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i.i unwind label %bb.h, !noalias !833

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #22
          to label %.body103.i unwind label %bb.j, !noalias !833

_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i.i: ; preds = %bb.g
  br i1 %i.cp, label %bb.i, label %bb.m, !prof !834

bb.i:                                             ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #28
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !833

.noexc.i.i.i:                                     ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !833
  unreachable

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !823
  br label %bb.dy

bb.l:                                             ; preds = %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore11pre_execute0B6_:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i175.i: ; preds = %bb.dg
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit179.i unwind label %bb.dj, !noalias !827

bb.dj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i246.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i175.i
  %i.iz = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i246.i ], [ %i.gx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i175.i ]
  %i.ja = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i246.i ], [ %i.gy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i175.i ]
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body176.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit179.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i175.i
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 249
  store i8 0, ptr %i.jc, align 1, !noalias !823
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i181.i unwind label %bb.dk, !noalias !827

bb.dk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit179.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jd)
          to label %.body182.i unwind label %bb.dl, !noalias !827

bb.dl:                                            ; preds = %bb.dk
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !827
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i181.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit179.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit185.i unwind label %bb.dm, !noalias !827

bb.dm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i240.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i181.i
  %i.jg = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i240.i ], [ %i.gx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i181.i ]
  %i.jh = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i240.i ], [ %i.gy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i181.i ]
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body182.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit185.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i181.i
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i unwind label %bb.dn, !noalias !827

bb.dn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit185.i
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %.body188.i unwind label %bb.do, !noalias !827

bb.do:                                            ; preds = %bb.dn
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !827
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit185.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit191.i unwind label %bb.dp, !noalias !827

.body188.i:                                       ; preds = %bb.fb, %bb.dp, %bb.dn, %.body182.i
  %i.jm = phi ptr [ %i.gq, %.body182.i ], [ %i.gx, %bb.dn ], [ %i.jp, %bb.dp ], [ %i.hn, %bb.fb ]
  %i.jn = phi ptr [ %i.gr, %.body182.i ], [ %i.gy, %bb.dn ], [ %i.jq, %bb.dp ], [ %i.ho, %bb.fb ]
  %.pn84.i = phi { ptr, i32 } [ %.pn82.i, %.body182.i ], [ %i.jk, %bb.dn ], [ %i.jr, %bb.dp ], [ %i.mb, %bb.fb ]
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jo) #22
          to label %.body194.i unwind label %bb.by, !noalias !827

bb.dp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i252.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i
  %i.jp = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i252.i ], [ %i.gx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i ]
  %i.jq = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i252.i ], [ %i.gy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i ]
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body188.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit191.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.js)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i unwind label %bb.dq, !noalias !827

bb.dq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit191.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.js)
          to label %.body194.i unwind label %bb.dr, !noalias !827

bb.dr:                                            ; preds = %bb.dq
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !827
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit191.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.js)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit197.i unwind label %bb.ds, !noalias !827

.body194.i:                                       ; preds = %bb.fd, %bb.ds, %bb.dq, %.body188.i
  %i.jv = phi ptr [ %i.jm, %.body188.i ], [ %i.gx, %bb.dq ], [ %i.jy, %bb.ds ], [ %i.hn, %bb.fd ]
  %i.jw = phi ptr [ %i.jn, %.body188.i ], [ %i.gy, %bb.dq ], [ %i.jz, %bb.ds ], [ %i.ho, %bb.fd ]
  %.pn86.i = phi { ptr, i32 } [ %.pn84.i, %.body188.i ], [ %i.jt, %bb.dq ], [ %i.ka, %bb.ds ], [ %i.me, %bb.fd ]
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jx) #22
          to label %.body200.i unwind label %bb.by, !noalias !827

bb.ds:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i258.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i
  %i.jy = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i258.i ], [ %i.gx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i ]
  %i.jz = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i258.i ], [ %i.gy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i ]
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body194.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit197.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264.invoke.i unwind label %bb.dt, !noalias !827

bb.dt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit197.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %.body200.i unwind label %bb.du, !noalias !827

bb.du:                                            ; preds = %bb.dt
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !827
  unreachable

bb.dv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i264.invoke.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

bb.dw:                                            ; preds = %bb.cd, %bb.ci, %bb.bm, %bb.bs, %bb.dd, %bb.fl, %bb.eu, %bb.cq
  %i.kf = phi ptr [ %i.hs, %bb.cq ], [ %i.hn, %bb.eu ], [ %i.hs, %bb.fl ], [ %i.gx, %bb.dd ], [ %i.cb, %bb.bm ], [ %i.cb, %bb.bs ], [ %i.gx, %bb.ci ], [ %i.gx, %bb.cd ]
  %i.kg = phi ptr [ %i.ht, %bb.cq ], [ %i.ho, %bb.eu ], [ %i.ht, %bb.fl ], [ %i.gy, %bb.dd ], [ %i.cc, %bb.bm ], [ %i.cc, %bb.bs ], [ %i.gy, %bb.ci ], [ %i.gy, %bb.cd ] ; 2 uses
  %.pn75.pn.i = phi { ptr, i32 } [ %.pn72.pn.i, %bb.cq ], [ %i.lq, %bb.eu ], [ %.pn72.pn.i, %bb.fl ], [ %i.ir, %bb.dd ], [ %i.fv, %bb.bm ], [ %.pn40.i, %bb.bs ], [ %i.hd, %bb.ci ], [ %i.gv, %bb.cd ]
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.kh, align 8, !noalias !823
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kg) #22
          to label %bb.ca unwind label %bb.by, !noalias !827

bb.dx:                                            ; preds = %bb.dy
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !823
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.kl) #22
          to label %.body235.i unwind label %bb.by, !noalias !827

bb.dy:                                            ; preds = %bb.cn, %bb.k
  %i.kj = phi ptr [ %i.gx, %bb.cn ], [ %i.ca, %bb.k ] ; 3 uses
  %i.kk = phi ptr [ %i.gy, %bb.cn ], [ %i.bz, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !823
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response4text0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noundef nonnull align 8 %i.kl, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dz unwind label %bb.dx, !noalias !827

bb.dz:                                            ; preds = %bb.dy
  %i.km = load i64, ptr %i.u, align 8, !range !964, !noalias !823, !noundef !7 ; 3 uses
  %i.kn = icmp eq i64 %i.km, -9223372036854775807
  br i1 %i.kn, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !823
  br label %.thread

bb.eb:                                            ; preds = %bb.dz
  %.sroa.3304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.3304.0.copyload.i = load ptr, ptr %.sroa.3304.0..sroa_idx.i, align 8, !noalias !823 ; 3 uses
  %.sroa.4307.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.4307.0.copyload.i = load i64, ptr %.sroa.4307.0..sroa_idx.i, align 8, !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !823
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.kp = load i8, ptr %i.ko, align 8, !range !178, !noalias !823, !noundef !7
  switch i8 %i.kp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i [
    i8 0, label %bb.ec
    i8 3, label %bb.ed
  ]

bb.ec:                                            ; preds = %bb.eb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.kl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.ee, !noalias !827

bb.ed:                                            ; preds = %bb.eb
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 536
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.kq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.ee, !noalias !827

bb.ee:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.ed, %bb.ec
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %.body235.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ed, %bb.ec, %bb.eb
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.ks = icmp eq i64 %i.km, -9223372036854775808
  br i1 %i.ks, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  store i64 %i.km, ptr %i.v, align 8, !alias.scope !968, !noalias !823
  %.sroa.3304.0..sroa_idx305.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sroa.3304.0.copyload.i, ptr %.sroa.3304.0..sroa_idx305.i, align 8, !alias.scope !968, !noalias !823
  %.sroa.4307.0..sroa_idx308.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.4307.0.copyload.i, ptr %.sroa.4307.0..sroa_idx308.i, align 8, !alias.scope !968, !noalias !823
  br label %bb.eh

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3304.0.copyload.i) ]
  store i64 0, ptr %i.v, align 8, !alias.scope !970, !noalias !973
  %.sroa.4.0..sroa_idx.i.i206.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i206.i, align 8, !alias.scope !970, !noalias !973
  %.sroa.5.0..sroa_idx.i.i207.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i207.i, align 8, !alias.scope !970, !noalias !973
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.sroa.3304.0.copyload.i)
          to label %bb.eh unwind label %bb.ee, !noalias !827

bb.eg:                                            ; preds = %bb.eh
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !823
  br label %bb.fk

bb.eh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !823
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !823
  store ptr %i.ku, ptr %i.q, align 8, !noalias !823
  %.sroa.5314.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs0_NtCs4j34XAPZOn0_4http6statusNtB5_10StatusCodeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5314.0..sroa_idx.i, align 8, !noalias !823
  %i.kv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.v, ptr %i.kv, align 8, !noalias !823
  %.sroa.5316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5316.0..sroa_idx.i, align 8, !noalias !823
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @32, ptr noundef nonnull %i.q)
          to label %bb.ei unwind label %bb.eg, !noalias !827

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !974, !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !823
  %i.kw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val101.i = load ptr, ptr %i.kw, align 8, !noalias !823, !nonnull !7, !noundef !7
  %i.kx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val102.i = load i64, ptr %i.kx, align 8, !noalias !823, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !978
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %.val102.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc223.i unwind label %bb.el, !noalias !827

.noexc223.i:                                      ; preds = %bb.ei
  %i.ky = load i64, ptr %i.b, align 8, !range !6, !noalias !978, !noundef !7
  %i.kz = trunc nuw i64 %i.ky to i1
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.lb = load i64, ptr %i.la, align 8, !range !60, !noalias !978, !noundef !7 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.kz, label %bb.ej, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, !prof !834

bb.ej:                                            ; preds = %.noexc223.i
  %i.ld = load i64, ptr %i.lc, align 8, !noalias !978
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.lb, i64 %i.ld) #28
          to label %.noexc224.i unwind label %bb.el, !noalias !827

.noexc224.i:                                      ; preds = %bb.ej
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %.noexc223.i
  %i.le = load ptr, ptr %i.lc, align 8, !noalias !978, !nonnull !7, !noundef !7 ; 2 uses
  %i.lf = icmp ule i64 %.val102.i, %i.lb
  call void @llvm.assume(i1 %i.lf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !978
  %.not.i.i.i.i = icmp eq i64 %.val102.i, 0
  br i1 %.not.i.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.ek

bb.ek:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.le, ptr nonnull readonly align 1 %.val101.i, i64 range(i64 0, -9223372036854775808) %.val102.i, i1 false), !noalias !986
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.el:                                            ; preds = %bb.ej, %bb.ei
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #22
          to label %bb.fk unwind label %bb.by, !noalias !827

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ek, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  store i64 %i.lb, ptr %i.t, align 8, !noalias !823
  %.sroa.6311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.le, ptr %.sroa.6311.0..sroa_idx.i, align 8, !noalias !823
  %.sroa.7312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.val102.i, ptr %.sroa.7312.0..sroa_idx.i, align 8, !noalias !823
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i226.i unwind label %bb.em, !noalias !827

bb.em:                                            ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.lh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.fj unwind label %bb.en, !noalias !827

bb.en:                                            ; preds = %bb.em
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !827
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i226.i: ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit230.i unwind label %bb.eo, !noalias !827

bb.eo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i226.i
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit230.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !823
  %i.lk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !823
  store i64 3, ptr %i.o, align 8, !noalias !823
  invoke void @_RNvXs_NtCsj34PGqTgg0L_16deltalake_lakefs6errorsNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB4_20LakeFSOperationErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE4intoBC_.exit232.i unwind label %bb.fh, !noalias !827

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE4intoBC_.exit232.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit230.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !823
  %i.ll = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ll, ptr noundef nonnull align 16 dereferenceable(96) %i.p, i64 96, i1 false), !noalias !823
  store i64 -9223372036854775808, ptr %i.n, align 16, !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !823
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i234.i unwind label %bb.ep, !noalias !827

bb.ep:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE4intoBC_.exit232.i
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body235.i unwind label %bb.eq, !noalias !827

bb.eq:                                            ; preds = %bb.ep
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !827
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i234.i: ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE4intoBC_.exit232.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit238.i unwind label %bb.er, !noalias !827

.body235.i:                                       ; preds = %bb.dx, %bb.ee, %bb.fi, %bb.er, %bb.ep
  %.pn61.i = phi { ptr, i32 } [ %i.lm, %bb.ep ], [ %.pn58.pn.i, %bb.fi ], [ %i.lo, %bb.er ], [ %i.kr, %bb.ee ], [ %i.ki, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !823
  br label %bb.cq

bb.er:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i234.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body235.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit238.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i234.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !823
  br label %bb.cp

bb.es:                                            ; preds = %bb.et, %bb.cp
  store i8 0, ptr %i.hp, align 8, !noalias !823
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ho)
          to label %bb.ev unwind label %bb.df, !noalias !827

bb.et:                                            ; preds = %bb.cp
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %i.lp)
          to label %bb.es unwind label %bb.eu, !noalias !827

bb.eu:                                            ; preds = %bb.et
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.ev:                                            ; preds = %bb.es
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 249 ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !range !180, !noalias !823, !noundef !7
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.ey, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i246.i, %bb.ev
  store i8 0, ptr %i.lr, align 1, !noalias !823
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i240.i unwind label %bb.ew, !noalias !827

bb.ew:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i
  %i.lv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lu)
          to label %.body182.i unwind label %bb.ex, !noalias !827

bb.ex:                                            ; preds = %bb.ew
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !827
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i240.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit250.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit244.i unwind label %bb.dm, !noalias !827

bb.ey:                                            ; preds = %bb.ev
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i246.i unwind label %bb.ez, !noalias !827

end_hunk_6
begin_hunk_7_@_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore11pre_execute0B6_:bb.a

bb.gk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i32
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body33

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.hc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit48, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit
  %.sroa.091.0 = phi i64 [ %.sroa.959.sroa.6.0.copyload, %bb.hc ], [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.091.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit48 ]
  %.sroa.593.0 = phi ptr [ %.sroa.959.sroa.7.0.copyload, %bb.hc ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.593.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit48 ]
  %.sroa.796.0 = phi ptr [ %.sroa.959.sroa.8.0.copyload, %bb.hc ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.796.1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit48 ]
  store i64 %.sroa.091.0, ptr %0, align 16
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.593.0, ptr %.sroa.593.0..sroa_idx, align 8
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.796.0, ptr %.sroa.796.0..sroa_idx, align 16
  %.sroa.999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.999.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.999, i64 72, i1 false)
  br label %common.ret

bb.gm:                                            ; preds = %bb.ge
  %i.oc = landingpad { ptr, i32 }
          cleanup
  %i.od = atomicrmw sub ptr %i.nn, i64 1 release, align 8, !noalias !1007
  %i.oe = icmp eq i64 %i.od, 1
  br i1 %i.oe, label %bb.gn, label %.thread146

bb.gn:                                            ; preds = %bb.gm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE9drop_slowCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh) #23
          to label %.thread146 unwind label %bb.go

bb.go:                                            ; preds = %bb.gw, %bb.gn, %.thread141, %.body38, %.body
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.gp:                                            ; preds = %bb.fz
  %.sroa.1285.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.999, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1285.0..sroa_idx86, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.og = load ptr, ptr %i.bj, align 8, !alias.scope !1018, !nonnull !7, !noundef !7
  %i.oh = atomicrmw sub ptr %i.og, i64 1 release, align 8, !noalias !1018
  %i.oi = icmp eq i64 %i.oh, 1
  br i1 %i.oi, label %bb.gq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.gq:                                            ; preds = %bb.gp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.gs

.thread146:                                       ; preds = %bb.gn, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %.thread141

bb.gr:                                            ; preds = %bb.gg
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %.body38

bb.gs:                                            ; preds = %bb.gq
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %.thread141

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.gp, %bb.gq, %bb.gx
  %.sroa.091.1 = phi i64 [ %i.my, %bb.gx ], [ %i.ni, %bb.gq ], [ %i.ni, %bb.gp ]
  %.sroa.593.1 = phi ptr [ %i.na, %bb.gx ], [ %i.nk, %bb.gq ], [ %i.nk, %bb.gp ]
  %.sroa.796.1 = phi ptr [ %i.nc, %bb.gx ], [ %i.nm, %bb.gq ], [ %i.nm, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.gt

bb.gt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ol = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body38 unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.om = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.gy

bb.gv:                                            ; preds = %bb.gc, %bb.fy
  %.pn10 = phi { ptr, i32 } [ %i.np, %bb.gc ], [ %i.nh, %bb.fy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.on = load ptr, ptr %i.bj, align 8, !alias.scope !1025, !nonnull !7, !noundef !7
  %i.oo = atomicrmw sub ptr %i.on, i64 1 release, align 8, !noalias !1025
  %i.op = icmp eq i64 %i.oo, 1
  br i1 %i.op, label %bb.gw, label %.thread141

bb.gw:                                            ; preds = %bb.gv
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj) #23
          to label %.thread141 unwind label %bb.go

bb.gx:                                            ; preds = %bb.fu
  %.sroa.1272.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.999, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1272.0..sroa_idx73, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

.body38:                                          ; preds = %bb.gy, %bb.gt, %bb.gr, %.thread141
  %.pn16 = phi { ptr, i32 } [ %i.oj, %bb.gr ], [ %.pn13.pn144, %.thread141 ], [ %i.oq, %bb.gy ], [ %i.ol, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(88) %i.bl) #22
          to label %.body33 unwind label %bb.go

bb.gy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %.body38

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i44 unwind label %bb.gz

bb.gz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bl)
          to label %.body33 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i44: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit48 unwind label %bb.gk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsj34PGqTgg0L_16deltalake_lakefs.exit48: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.gl

.thread141:                                       ; preds = %bb.gv, %bb.gw, %bb.gs, %bb.ft, %.thread149, %.thread146
  %.pn13.pn144 = phi { ptr, i32 } [ %i.oc, %.thread146 ], [ %i.nv, %.thread149 ], [ %i.mx, %bb.ft ], [ %i.ok, %bb.gs ], [ %.pn10, %bb.gw ], [ %.pn10, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk) #22
          to label %.body38 unwind label %bb.go

bb.hb:                                            ; preds = %.body33, %bb.b
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.b ], [ %.pn18, %.body33 ]
  store i8 2, ptr %i.bm, align 8
  resume { ptr, i32 } %.pn20.pn

bb.hc:                                            ; preds = %bb.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.999, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.sroa.8, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.054)
  br label %bb.gl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore12commit_merge0B6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [72 x i8], align 8                ; 12 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 16 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
  %i.z = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.6298.i = alloca [112 x i8], align 8      ; 7 uses
  %i.aa = alloca [136 x i8], align 8              ; 9 uses
  %i.ab = alloca [272 x i8], align 8              ; 6 uses
  %i.ac = alloca [272 x i8], align 8              ; 6 uses
  %i.ad = alloca [272 x i8], align 8              ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 10 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = alloca [48 x i8], align 8               ; 10 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 9 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [32 x i8], align 8               ; 6 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [32 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 10 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [64 x i8], align 8               ; 12 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %i.bc = alloca [72 x i8], align 8               ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [72 x i8], align 8               ; 8 uses
  %i.bg = alloca [96 x i8], align 16              ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.517.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.bk = alloca [40 x i8], align 8               ; 9 uses
  %i.bl = alloca [32 x i8], align 8               ; 13 uses
  %i.bm = alloca [32 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [72 x i8], align 8               ; 13 uses
  %i.bp = alloca [32 x i8], align 8               ; 6 uses
  %i.bq = alloca [72 x i8], align 8               ; 5 uses
  %i.br = alloca [32 x i8], align 8               ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 11 uses
  %i.bu = alloca [24 x i8], align 8               ; 8 uses
  %i.bv = alloca [24 x i8], align 8               ; 8 uses
  %i.bw = alloca [24 x i8], align 8               ; 16 uses
  %i.bx = alloca [32 x i8], align 8               ; 5 uses
  %i.by = alloca [72 x i8], align 8               ; 5 uses
  %i.bz = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.6201.i = alloca [112 x i8], align 8      ; 7 uses
  %i.ca = alloca [136 x i8], align 8              ; 9 uses
  %i.cb = alloca [272 x i8], align 8              ; 5 uses
  %i.cc = alloca [272 x i8], align 8              ; 5 uses
  %i.cd = alloca [48 x i8], align 8               ; 10 uses
  %i.ce = alloca [16 x i8], align 8               ; 6 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [32 x i8], align 8               ; 8 uses
  %i.ch = alloca [24 x i8], align 8               ; 9 uses
  %i.ci = alloca [48 x i8], align 8               ; 10 uses
  %i.cj = alloca [16 x i8], align 8               ; 6 uses
  %i.ck = alloca [16 x i8], align 8               ; 6 uses
  %i.cl = alloca [32 x i8], align 8               ; 8 uses
  %i.cm = alloca [64 x i8], align 8               ; 12 uses
  %i.cn = alloca [24 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 8 uses
  %i.cp = alloca [24 x i8], align 8               ; 8 uses
  %i.cq = alloca [24 x i8], align 8               ; 6 uses
  %i.cr = alloca [32 x i8], align 8               ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 7 uses
  %i.ct = alloca [24 x i8], align 8               ; 6 uses
  %i.cu = alloca [24 x i8], align 8               ; 6 uses
  %i.cv = alloca [8 x i8], align 8                ; 4 uses
  %i.cw = alloca [8 x i8], align 8                ; 4 uses
  %i.cx = alloca [24 x i8], align 8               ; 4 uses
  %i.cy = alloca [96 x i8], align 16              ; 10 uses
  %i.cz = alloca [32 x i8], align 8               ; 6 uses
  %i.da = alloca [96 x i8], align 16              ; 5 uses
  %i.db = alloca [32 x i8], align 8               ; 8 uses
  %i.dc = alloca [24 x i8], align 8               ; 5 uses
  %i.dd = alloca [24 x i8], align 8               ; 11 uses
  %i.de = alloca [24 x i8], align 8               ; 8 uses
  %i.df = alloca [24 x i8], align 8               ; 8 uses
  %i.dg = alloca [24 x i8], align 8               ; 16 uses
  %i.dh = alloca [32 x i8], align 8               ; 5 uses
  %i.di = alloca [96 x i8], align 16              ; 5 uses
  %.sroa.6250.i = alloca [112 x i8], align 8      ; 7 uses
  %i.dj = alloca [136 x i8], align 8              ; 9 uses
  %i.dk = alloca [272 x i8], align 8              ; 6 uses
  %i.dl = alloca [272 x i8], align 8              ; 6 uses
  %i.dm = alloca [272 x i8], align 8              ; 6 uses
  %i.dn = alloca [32 x i8], align 8               ; 8 uses
  %i.do = alloca [16 x i8], align 8               ; 6 uses
  %i.dp = alloca [16 x i8], align 8               ; 6 uses
  %i.dq = alloca [32 x i8], align 8               ; 8 uses
  %i.dr = alloca [24 x i8], align 8               ; 9 uses
  %i.ds = alloca [32 x i8], align 8               ; 8 uses
  %i.dt = alloca [16 x i8], align 8               ; 6 uses
  %i.du = alloca [16 x i8], align 8               ; 6 uses
  %i.dv = alloca [32 x i8], align 8               ; 9 uses
  %i.dw = alloca [32 x i8], align 8               ; 7 uses
  %i.dx = alloca [32 x i8], align 8               ; 6 uses
  %i.dy = alloca [24 x i8], align 8               ; 8 uses
  %i.dz = alloca [32 x i8], align 8               ; 6 uses
  %i.ea = alloca [32 x i8], align 8               ; 7 uses
  %i.eb = alloca [32 x i8], align 8               ; 6 uses
  %i.ec = alloca [24 x i8], align 8               ; 8 uses
  %i.ed = alloca [32 x i8], align 8               ; 6 uses
  %i.ee = alloca [24 x i8], align 8               ; 9 uses
  %i.ef = alloca [24 x i8], align 8               ; 5 uses
  %i.eg = alloca [48 x i8], align 8               ; 10 uses
  %i.eh = alloca [24 x i8], align 8               ; 5 uses
  %i.ei = alloca [24 x i8], align 8               ; 4 uses
  %i.ej = alloca [24 x i8], align 8               ; 4 uses
  %i.ek = alloca [96 x i8], align 16              ; 20 uses
  %i.el = alloca [16 x i8], align 1               ; 5 uses
  %.sroa.3478 = alloca [64 x i8], align 8         ; 2 uses
  %i.em = alloca [72 x i8], align 8               ; 7 uses
  %i.en = alloca [16 x i8], align 1               ; 5 uses
  %i.eo = alloca [72 x i8], align 8               ; 8 uses
  %i.ep = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.0467 = alloca [48 x i8], align 8         ; 8 uses
  %.sroa.0472 = alloca [48 x i8], align 8         ; 8 uses
  %i.eq = alloca [24 x i8], align 8               ; 5 uses
  %i.er = alloca [72 x i8], align 8               ; 9 uses
  %i.es = alloca [24 x i8], align 8               ; 9 uses
  %i.et = alloca [16 x i8], align 8               ; 6 uses
  %i.eu = alloca [16 x i8], align 8               ; 6 uses
  %i.ev = alloca [32 x i8], align 8               ; 8 uses
  %i.ew = alloca [24 x i8], align 8               ; 5 uses
  %i.ex = alloca [16 x i8], align 8               ; 6 uses
  %i.ey = alloca [16 x i8], align 8               ; 6 uses
  %i.ez = alloca [32 x i8], align 8               ; 8 uses
  %i.fa = alloca [96 x i8], align 16              ; 6 uses
  %i.fb = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.9447 = alloca [64 x i8], align 8         ; 7 uses
  %i.fc = alloca [16 x i8], align 8               ; 6 uses
  %i.fd = alloca [24 x i8], align 8               ; 5 uses
  %i.fe = alloca [72 x i8], align 8               ; 2 uses
  %i.ff = alloca [16 x i8], align 1               ; 5 uses
  %i.fg = alloca [72 x i8], align 8               ; 8 uses
  %i.fh = alloca [24 x i8], align 8               ; 8 uses
  %i.fi = alloca [24 x i8], align 8               ; 10 uses
  %i.fj = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.0429 = alloca [96 x i8], align 8         ; 10 uses
  %.sroa.0436 = alloca [96 x i8], align 8         ; 8 uses
  %i.fk = alloca [72 x i8], align 8               ; 14 uses
  %i.fl = alloca [16 x i8], align 8               ; 6 uses
  %i.fm = alloca [16 x i8], align 8               ; 6 uses
  %i.fn = alloca [32 x i8], align 8               ; 8 uses
  %i.fo = alloca [24 x i8], align 8               ; 5 uses
  %i.fp = alloca [16 x i8], align 8               ; 6 uses
  %i.fq = alloca [16 x i8], align 8               ; 6 uses
  %i.fr = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.5413 = alloca [63 x i8], align 1         ; 2 uses
  %.sroa.10409.sroa.6 = alloca [63 x i8], align 1 ; 7 uses
  %.sroa.15 = alloca [87 x i8], align 1           ; 8 uses
  %i.fs = alloca [24 x i8], align 8               ; 5 uses
  %i.ft = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.3377 = alloca [88 x i8], align 8         ; 2 uses
  %.sroa.9373 = alloca [88 x i8], align 8         ; 7 uses
  %i.fu = alloca [16 x i8], align 8               ; 6 uses
  %i.fv = alloca [24 x i8], align 8               ; 5 uses
  %i.fw = alloca [24 x i8], align 8               ; 6 uses
  %i.fx = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0360 = alloca [72 x i8], align 8         ; 7 uses
  %.sroa.0364 = alloca [72 x i8], align 8         ; 8 uses
  %i.fy = alloca [24 x i8], align 8               ; 5 uses
  %i.fz = alloca [72 x i8], align 8               ; 7 uses
  %i.ga = alloca [16 x i8], align 1               ; 5 uses
  %i.gb = alloca [96 x i8], align 16              ; 8 uses
  %.sroa.9 = alloca [56 x i8], align 8            ; 9 uses
  %i.gc = alloca [56 x i8], align 8               ; 9 uses
  %i.gd = alloca [24 x i8], align 8               ; 15 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 3 uses
  %i.gf = load i8, ptr %i.ge, align 4, !range !179, !noundef !7
  switch i8 %i.gf, label %default.unreachable562 [
    i8 0, label %bb.b
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ac
    i8 4, label %bb.gl
    i8 5, label %bb.nv
    i8 6, label %bb.c
  ]

default.unreachable562:                           ; preds = %bb.nv, %bb.is, %bb.gl, %bb.ac, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 195 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i32 0, ptr %i.gh, align 8
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  store ptr %i.gk, ptr %i.gi, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  invoke void @_RNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB2_14LakeFSLogStore27get_transaction_objectstore(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(512) %i.gk, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.ga)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0472)
  br label %bb.vw

bb.d:                                             ; preds = %bb.b
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %i.gn = load i64, ptr %i.gb, align 16, !range !991, !alias.scope !1029, !noalias !1026, !noundef !7 ; 2 uses
  %.not.i138 = icmp eq i64 %i.gn, -9223372036854775711
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %i.go, i64 56, i1 false), !alias.scope !1031
  br i1 %.not.i138, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gc, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  store i8 1, ptr %i.gg, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !1038, !nonnull !7, !noundef !7
  %i.gr = atomicrmw sub ptr %i.gq, i64 1 release, align 8, !noalias !1038
  %i.gs = icmp eq i64 %i.gr, 1
  br i1 %i.gs, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gp) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gc, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !1045, !nonnull !7, !noundef !7
  %i.gw = atomicrmw sub ptr %i.gv, i64 1 release, align 8, !noalias !1045
  %i.gx = icmp eq i64 %i.gw, 1
  br i1 %i.gx, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit140

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gu) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit140 unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.f, %bb.g
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gc, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !1052, !nonnull !7, !noundef !7
  %i.ha = atomicrmw sub ptr %i.gz, i64 1 release, align 8, !noalias !1052
  %i.hb = icmp eq i64 %i.ha, 1
  br i1 %i.hb, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit142

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gy) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit142 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit140: ; preds = %bb.h, %bb.i, %bb.k
  %.pn18 = phi { ptr, i32 } [ %i.hc, %bb.k ], [ %i.gt, %bb.i ], [ %i.gt, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
end_hunk_7
begin_hunk_8_@_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore12commit_merge0B6_:bb.a

bb.dt:                                            ; preds = %bb.fd, %bb.ds
  %i.oj = phi ptr [ %i.nw, %bb.fd ], [ %i.ni, %bb.ds ]
  %i.ok = phi ptr [ %i.nx, %bb.fd ], [ %i.nj, %bb.ds ]
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.du:                                            ; preds = %bb.ds
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.om)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.dv, !noalias !1077

bb.dv:                                            ; preds = %bb.du
  %i.on = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.om)
          to label %.body136.i unwind label %bb.dw, !noalias !1077

bb.dw:                                            ; preds = %bb.dv
  %i.oo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1077
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.du
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.om)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.dx, !noalias !1077

bb.dx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.op = phi ptr [ %i.nw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i ], [ %i.ni, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %i.oq = phi ptr [ %i.nx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i ], [ %i.nj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.os)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i140.i unwind label %bb.dy, !noalias !1077

bb.dy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.ot = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.os)
          to label %.body141.i unwind label %bb.dz, !noalias !1077

bb.dz:                                            ; preds = %bb.dy
  %i.ou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1077
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i140.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.os)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit144.i unwind label %bb.ea, !noalias !1077

.body141.i:                                       ; preds = %bb.fj, %bb.ea, %bb.dy, %.body136.i
  %i.ov = phi ptr [ %i.nd, %.body136.i ], [ %i.ni, %bb.dy ], [ %i.oy, %bb.ea ], [ %i.nw, %bb.fj ]
  %i.ow = phi ptr [ %i.ne, %.body136.i ], [ %i.nj, %bb.dy ], [ %i.oz, %bb.ea ], [ %i.nx, %bb.fj ]
  %.pn75.i = phi { ptr, i32 } [ %.pn73.i, %.body136.i ], [ %i.ot, %bb.dy ], [ %i.pa, %bb.ea ], [ %i.rg, %bb.fj ]
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 304
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ox) #22
          to label %.body147.i unwind label %bb.cw, !noalias !1077

bb.ea:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i199.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i140.i
  %i.oy = phi ptr [ %i.nw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i199.i ], [ %i.ni, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i140.i ]
  %i.oz = phi ptr [ %i.nx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i199.i ], [ %i.nj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i140.i ]
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %.body141.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit144.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i140.i
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i146.i unwind label %bb.eb, !noalias !1077

bb.eb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit144.i
  %i.pc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pb)
          to label %.body147.i unwind label %bb.ec, !noalias !1077

bb.ec:                                            ; preds = %bb.eb
  %i.pd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1077
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i146.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit144.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit150.i unwind label %bb.ed, !noalias !1077

.body147.i:                                       ; preds = %bb.fl, %bb.ed, %bb.eb, %.body141.i
  %i.pe = phi ptr [ %i.ov, %.body141.i ], [ %i.ni, %bb.eb ], [ %i.ph, %bb.ed ], [ %i.nw, %bb.fl ]
  %i.pf = phi ptr [ %i.ow, %.body141.i ], [ %i.nj, %bb.eb ], [ %i.pi, %bb.ed ], [ %i.nx, %bb.fl ]
  %.pn77.i = phi { ptr, i32 } [ %.pn75.i, %.body141.i ], [ %i.pc, %bb.eb ], [ %i.pj, %bb.ed ], [ %i.rj, %bb.fl ]
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 280
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pg) #22
          to label %.body153.i unwind label %bb.cw, !noalias !1077

bb.ed:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i205.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i146.i
  %i.ph = phi ptr [ %i.nw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i205.i ], [ %i.ni, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i146.i ]
  %i.pi = phi ptr [ %i.nx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i205.i ], [ %i.nj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i146.i ]
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %.body147.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit150.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i146.i
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pk)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i211.invoke.i unwind label %bb.ee, !noalias !1077

bb.ee:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit150.i
  %i.pl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.pk)
          to label %.body153.i unwind label %bb.ef, !noalias !1077

bb.ef:                                            ; preds = %bb.ee
  %i.pm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1077
  unreachable

.body153.i:                                       ; preds = %bb.fn, %bb.eg, %bb.ee, %.body147.i
  %i.pn = phi ptr [ %i.pe, %.body147.i ], [ %i.ni, %bb.ee ], [ %i.ro, %bb.eg ], [ %i.nw, %bb.fn ]
  %i.po = phi ptr [ %i.pf, %.body147.i ], [ %i.nj, %bb.ee ], [ %i.rp, %bb.eg ], [ %i.nx, %bb.fn ]
  %.pn79.i = phi { ptr, i32 } [ %.pn77.i, %.body147.i ], [ %i.pl, %bb.ee ], [ %i.pp, %bb.eg ], [ %i.rm, %bb.fn ]
  store i8 2, ptr %i.pn, align 1, !noalias !1073
  br label %.body151

bb.eg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i211.invoke.i
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %.body153.i

bb.eh:                                            ; preds = %bb.dc, %bb.dh, %bb.ck, %bb.cq, %bb.dr, %bb.ft, %bb.ff, %bb.dq
  %i.pq = phi ptr [ %i.ob, %bb.dq ], [ %i.nw, %bb.ff ], [ %i.ob, %bb.ft ], [ %i.ni, %bb.dr ], [ %i.ic, %bb.ck ], [ %i.ic, %bb.cq ], [ %i.ni, %bb.dh ], [ %i.ni, %bb.dc ]
  %i.pr = phi ptr [ %i.oc, %bb.dq ], [ %i.nx, %bb.ff ], [ %i.oc, %bb.ft ], [ %i.nj, %bb.dr ], [ %i.id, %bb.ck ], [ %i.id, %bb.cq ], [ %i.nj, %bb.dh ], [ %i.nj, %bb.dc ]
  %.pn67.pn.i = phi { ptr, i32 } [ %.pn65.i, %bb.dq ], [ %i.rb, %bb.ff ], [ %.pn65.i, %bb.ft ], [ %i.og, %bb.dr ], [ %i.ml, %bb.ck ], [ %.pn42.i, %bb.cq ], [ %i.no, %bb.dh ], [ %i.ng, %bb.dc ]
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 411
  store i8 0, ptr %i.ps, align 1, !noalias !1073
  br label %bb.cu

bb.ei:                                            ; preds = %bb.ej
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !1073
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.pw) #22
          to label %.body188.i unwind label %bb.cw, !noalias !1077

bb.ej:                                            ; preds = %bb.dn, %bb.ad
  %i.pu = phi ptr [ %i.ni, %bb.dn ], [ %i.ia, %bb.ad ] ; 3 uses
  %i.pv = phi ptr [ %i.nj, %bb.dn ], [ %i.hz, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !1073
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response4text0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.df, ptr noundef nonnull align 8 %i.pw, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ek unwind label %bb.ei, !noalias !1077

bb.ek:                                            ; preds = %bb.ej
  %i.px = load i64, ptr %i.df, align 8, !range !964, !noalias !1073, !noundef !7 ; 3 uses
  %i.py = icmp eq i64 %i.px, -9223372036854775807
  br i1 %i.py, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !1073
  br label %.thread492

bb.em:                                            ; preds = %bb.ek
  %.sroa.3265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.3265.0.copyload.i = load ptr, ptr %.sroa.3265.0..sroa_idx.i, align 8, !noalias !1073 ; 3 uses
  %.sroa.4268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.4268.0.copyload.i = load i64, ptr %.sroa.4268.0..sroa_idx.i, align 8, !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !1073
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.qa = load i8, ptr %i.pz, align 8, !range !178, !noalias !1073, !noundef !7
  switch i8 %i.qa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i [
    i8 0, label %bb.en
    i8 3, label %bb.eo
  ]

bb.en:                                            ; preds = %bb.em
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.pw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.ep, !noalias !1077

bb.eo:                                            ; preds = %bb.em
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 696
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.qb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.ep, !noalias !1077

bb.ep:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.eo, %bb.en
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %.body188.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.eo, %bb.en, %bb.em
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  %i.qd = icmp eq i64 %i.px, -9223372036854775808
  br i1 %i.qd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.eq

bb.eq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  store i64 %i.px, ptr %i.dg, align 8, !alias.scope !1164, !noalias !1073
  %.sroa.3265.0..sroa_idx266.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %.sroa.3265.0.copyload.i, ptr %.sroa.3265.0..sroa_idx266.i, align 8, !alias.scope !1164, !noalias !1073
  %.sroa.4268.0..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %.sroa.4268.0.copyload.i, ptr %.sroa.4268.0..sroa_idx269.i, align 8, !alias.scope !1164, !noalias !1073
  br label %bb.es

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3265.0.copyload.i) ]
  store i64 0, ptr %i.dg, align 8, !alias.scope !1166, !noalias !1169
  %.sroa.4.0..sroa_idx.i.i159.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i159.i, align 8, !alias.scope !1166, !noalias !1169
  %.sroa.5.0..sroa_idx.i.i160.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i160.i, align 8, !alias.scope !1166, !noalias !1169
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.sroa.3265.0.copyload.i)
          to label %bb.es unwind label %bb.ep, !noalias !1077

bb.er:                                            ; preds = %bb.es
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1073
  br label %bb.fs

bb.es:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !1073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !1073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !1073
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !1073
  store ptr %i.qf, ptr %i.db, align 8, !noalias !1073
  %.sroa.5275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr @_RNvXs0_NtCs4j34XAPZOn0_4http6statusNtB5_10StatusCodeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5275.0..sroa_idx.i, align 8, !noalias !1073
  %i.qg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.dg, ptr %i.qg, align 8, !noalias !1073
  %.sroa.5277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5277.0..sroa_idx.i, align 8, !noalias !1073
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dc, ptr noundef nonnull @49, ptr noundef nonnull %i.db)
          to label %bb.et unwind label %bb.er, !noalias !1077

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dc, i64 24, i1 false), !alias.scope !1170, !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1073
  %i.qh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.val95.i = load ptr, ptr %i.qh, align 8, !noalias !1073, !nonnull !7, !noundef !7
  %i.qi = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.val96.i = load i64, ptr %i.qi, align 8, !noalias !1073, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !1174
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cq, i64 noundef range(i64 0, -9223372036854775808) %.val96.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc176.i unwind label %bb.ew, !noalias !1077

.noexc176.i:                                      ; preds = %bb.et
  %i.qj = load i64, ptr %i.cq, align 8, !range !6, !noalias !1174, !noundef !7
  %i.qk = trunc nuw i64 %i.qj to i1
  %i.ql = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.qm = load i64, ptr %i.ql, align 8, !range !60, !noalias !1174, !noundef !7 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  br i1 %i.qk, label %bb.eu, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, !prof !834

bb.eu:                                            ; preds = %.noexc176.i
  %i.qo = load i64, ptr %i.qn, align 8, !noalias !1174
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.qm, i64 %i.qo) #28
          to label %.noexc177.i unwind label %bb.ew, !noalias !1077

.noexc177.i:                                      ; preds = %bb.eu
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %.noexc176.i
  %i.qp = load ptr, ptr %i.qn, align 8, !noalias !1174, !nonnull !7, !noundef !7 ; 2 uses
  %i.qq = icmp ule i64 %.val96.i, %i.qm
  call void @llvm.assume(i1 %i.qq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !1174
  %.not.i.i.i.i = icmp eq i64 %.val96.i, 0
  br i1 %.not.i.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.ev

bb.ev:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qp, ptr nonnull readonly align 1 %.val95.i, i64 range(i64 0, -9223372036854775808) %.val96.i, i1 false), !noalias !1182
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.ew:                                            ; preds = %bb.eu, %bb.et
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd) #22
          to label %bb.fs unwind label %bb.cw, !noalias !1077

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ev, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i
  store i64 %i.qm, ptr %i.de, align 8, !noalias !1073
  %.sroa.6272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.qp, ptr %.sroa.6272.0..sroa_idx.i, align 8, !noalias !1073
  %.sroa.7273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %.val96.i, ptr %.sroa.7273.0..sroa_idx.i, align 8, !noalias !1073
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i179.i unwind label %bb.ex, !noalias !1077

bb.ex:                                            ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.qs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %bb.fr unwind label %bb.ey, !noalias !1077

bb.ey:                                            ; preds = %bb.ex
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1077
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i179.i: ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit183.i unwind label %bb.ez, !noalias !1077

bb.ez:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i179.i
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit183.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !1073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !1073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !1073
  %i.qv = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qv, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !noalias !1073
  store i64 3, ptr %i.cz, align 8, !noalias !1073
  invoke void @_RNvXs_NtCsj34PGqTgg0L_16deltalake_lakefs6errorsNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB4_20LakeFSOperationErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.da, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cz)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE4intoBC_.exit185.i unwind label %bb.fp, !noalias !1077

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE4intoBC_.exit185.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit183.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !1073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cy, ptr noundef nonnull align 16 dereferenceable(96) %i.da, i64 96, i1 false), !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !1073
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i unwind label %bb.fa, !noalias !1077

bb.fa:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE4intoBC_.exit185.i
  %i.qw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %.body188.i unwind label %bb.fb, !noalias !1077

bb.fb:                                            ; preds = %bb.fa
  %i.qx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1077
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i: ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorE4intoBC_.exit185.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit191.i unwind label %bb.fc, !noalias !1077

.body188.i:                                       ; preds = %bb.ei, %bb.ep, %bb.fq, %bb.fc, %bb.fa
  %.pn63.i = phi { ptr, i32 } [ %i.qw, %bb.fa ], [ %.pn60.pn.i, %bb.fq ], [ %i.qy, %bb.fc ], [ %i.qc, %bb.ep ], [ %i.pt, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !1073
  br label %bb.dq

bb.fc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %.body188.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit191.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !1073
  br label %bb.dp

bb.fd:                                            ; preds = %bb.fe, %bb.dp
  store i8 0, ptr %i.ny, align 1, !noalias !1073
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.qz)
          to label %bb.fg unwind label %bb.dt, !noalias !1077

bb.fe:                                            ; preds = %bb.dp
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 424
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %i.ra)
          to label %bb.fd unwind label %bb.ff, !noalias !1077

bb.ff:                                            ; preds = %bb.fe
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.fg:                                            ; preds = %bb.fd
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.rc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i unwind label %bb.fh, !noalias !1077

bb.fh:                                            ; preds = %bb.fg
  %i.rd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.rc)
          to label %.body136.i unwind label %bb.fi, !noalias !1077

bb.fi:                                            ; preds = %bb.fh
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1077
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i: ; preds = %bb.fg
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.rc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit197.i unwind label %bb.dx, !noalias !1077

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit197.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i193.i
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.rf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i199.i unwind label %bb.fj, !noalias !1077

bb.fj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit197.i
  %i.rg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.rf)
          to label %.body141.i unwind label %bb.fk, !noalias !1077

bb.fk:                                            ; preds = %bb.fj
  %i.rh = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore12commit_merge0B6_:bb.a
  %i.zb = load ptr, ptr %i.za, align 8, !alias.scope !1235, !noalias !1215 ; 2 uses
  br i1 %i.yz, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.zc = invoke noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 %i.zb)
          to label %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit_crit_edge.i.i unwind label %bb.jd, !noalias !1219

._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit_crit_edge.i.i: ; preds = %bb.jg
  %.pre.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !1236, !noalias !1215
  %.pre29.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i107.i, align 8, !alias.scope !1236, !noalias !1215
  %.pre30.i.i = load i64, ptr %.sroa.519.0..sroa_idx.i.i, align 8, !alias.scope !1236, !noalias !1215
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit.i.i

bb.jh:                                            ; preds = %bb.jf
  %.sroa.625.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.625.0.copyload27.i.i = load i64, ptr %.sroa.625.0..sroa_idx26.i.i, align 8, !alias.scope !1241, !noalias !1215
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit.i.i: ; preds = %bb.jh, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit_crit_edge.i.i
  %i.zd = phi i64 [ %.val7.i.i, %bb.jh ], [ %.pre30.i.i, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit_crit_edge.i.i ]
  %i.ze = phi ptr [ %.sroa.3.0.copyload.i.i, %bb.jh ], [ %.pre29.i.i, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit_crit_edge.i.i ]
  %i.zf = phi ptr [ %.sroa.016.0.copyload.i.i, %bb.jh ], [ %.pre.i.i, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit_crit_edge.i.i ]
  %.sroa.422.1.i.i = phi ptr [ %i.zb, %bb.jh ], [ %i.zc, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit_crit_edge.i.i ] ; 2 uses
  %.sroa.625.1.i.i = phi i64 [ %.sroa.625.0.copyload27.i.i, %bb.jh ], [ undef, %._RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit_crit_edge.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1215
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  %i.zh = load ptr, ptr %i.zg, align 8, !noalias !1244, !nonnull !7, !noundef !7
  %i.zi = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  invoke void %i.zh(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.zi, ptr noundef %i.ze, i64 noundef %i.zd)
          to label %bb.jl unwind label %bb.ji, !noalias !1219, !inline_history !1228

bb.ji:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit.i.i
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.jj:                                            ; preds = %bb.jd, %bb.iy
  %i.zk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1219
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.ji, %bb.jd, %bb.jb, %bb.iy
  %.pn4.pn.i.i = phi { ptr, i32 } [ %i.yr, %bb.jd ], [ %i.zj, %bb.ji ], [ %i.yp, %bb.jb ], [ %i.yl, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1215
  store i8 2, ptr %i.yi, align 8, !noalias !1215
  br label %.body110.i

.thread281.i:                                     ; preds = %bb.jc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1215
  store i8 1, ptr %i.yi, align 8, !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  br label %bb.jm

bb.jk:                                            ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1215
  store i8 3, ptr %i.yi, align 8, !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1193
  br label %.thread498

bb.jl:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBR_12LakeFSClient11has_changes012DiffResponseNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB38_6decodeB2h_EEBT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1215
  store i8 1, ptr %i.yi, align 8, !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i)
  br i1 %i.yz, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl, %.thread281.i
  %.sroa.422.0.i285.i = phi ptr [ %.sroa.3.0.copyload.i.i, %.thread281.i ], [ %.sroa.422.1.i.i, %bb.jl ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.422.0.i285.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !1193
  store i64 0, ptr %i.bi, align 8, !noalias !1245
  %.sroa.2238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.422.0.i285.i, ptr %.sroa.2238.0..sroa_idx.i, align 8, !noalias !1245
  invoke void @_RNvXNtCsj34PGqTgg0L_16deltalake_lakefs6errorsNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_20LakeFSOperationErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bi)
          to label %bb.js unwind label %bb.jr, !noalias !1197

bb.jn:                                            ; preds = %bb.jl
  %i.zl = inttoptr i64 %i.yy to ptr
  store ptr %i.zl, ptr %i.bz, align 8, !noalias !1193
  %.sroa.4242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %.sroa.422.1.i.i, ptr %.sroa.4242.0..sroa_idx.i, align 8, !noalias !1193
  %.sroa.5243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %.sroa.625.1.i.i, ptr %.sroa.5243.0..sroa_idx.i, align 8, !noalias !1193
  %i.zm = icmp ult i64 %.sroa.625.1.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.zm)
  %i.zn = icmp ne i64 %.sroa.625.1.i.i, 0
  %i.zo = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.zp = zext i1 %i.zn to i8
  store i8 %i.zp, ptr %i.zo, align 8, !noalias !1193
  store i64 -9223372036854775781, ptr %i.bo, align 8, !noalias !1193
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.jo, !noalias !1197

bb.jo:                                            ; preds = %bb.jn
  %i.zq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body118.i unwind label %bb.jp, !noalias !1197

bb.jp:                                            ; preds = %bb.jo
  %i.zr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1197
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.jn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit.i unwind label %bb.jq, !noalias !1197

.body118.i:                                       ; preds = %.body110.i, %bb.jr, %bb.jq, %bb.jo
  %i.zs = phi ptr [ %i.yg, %bb.jq ], [ %i.yg, %bb.jo ], [ %i.yg, %bb.jr ], [ %i.xx, %.body110.i ]
  %i.zt = phi ptr [ %i.yh, %bb.jq ], [ %i.yh, %bb.jo ], [ %i.yh, %bb.jr ], [ %i.xy, %.body110.i ]
  %.pn60.pn.i169 = phi { ptr, i32 } [ %i.zu, %bb.jq ], [ %i.zq, %bb.jo ], [ %i.zv, %bb.jr ], [ %eh.lpad-body111.i, %.body110.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1193
  br label %bb.ij

bb.jq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBP_12LakeFSClient11has_changes012DiffResponseEBR_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1193
  br label %bb.ii

bb.jr:                                            ; preds = %bb.jm
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

bb.js:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !1193
  br label %bb.im

bb.jt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i155.invoke.i
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ju:                                            ; preds = %bb.jv
  %i.zx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1193
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.aaa) #22
          to label %.body150.i unwind label %bb.ip, !noalias !1197

bb.jv:                                            ; preds = %bb.ig, %bb.gm
  %i.zy = phi ptr [ %i.wn, %bb.ig ], [ %i.tf, %bb.gm ] ; 3 uses
  %i.zz = phi ptr [ %i.wo, %bb.ig ], [ %i.te, %bb.gm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !1193
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response4text0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bv, ptr noundef nonnull align 8 %i.aaa, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jw unwind label %bb.ju, !noalias !1197

bb.jw:                                            ; preds = %bb.jv
  %i.aab = load i64, ptr %i.bv, align 8, !range !964, !noalias !1193, !noundef !7 ; 3 uses
  %i.aac = icmp eq i64 %i.aab, -9223372036854775807
  br i1 %i.aac, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !1193
  br label %.thread498

bb.jy:                                            ; preds = %bb.jw
  %.sroa.3252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.3252.0.copyload.i = load ptr, ptr %.sroa.3252.0..sroa_idx.i, align 8, !noalias !1193 ; 3 uses
  %.sroa.4255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.4255.0.copyload.i = load i64, ptr %.sroa.4255.0..sroa_idx.i, align 8, !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !1193
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.aae = load i8, ptr %i.aad, align 8, !range !178, !noalias !1193, !noundef !7
  switch i8 %i.aae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i160 [
    i8 0, label %bb.jz
    i8 3, label %bb.ka
  ]

bb.jz:                                            ; preds = %bb.jy
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.aaa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i160 unwind label %bb.kb, !noalias !1197

bb.ka:                                            ; preds = %bb.jy
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.aaf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i160 unwind label %bb.kb, !noalias !1197

bb.kb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i168, %bb.ka, %bb.jz
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %.body150.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i160: ; preds = %bb.ka, %bb.jz, %bb.jy
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  %i.aah = icmp eq i64 %i.aab, -9223372036854775808
  br i1 %i.aah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i168, label %bb.kc

bb.kc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i160
  store i64 %i.aab, ptr %i.bw, align 8, !alias.scope !1251, !noalias !1193
  %.sroa.3252.0..sroa_idx253.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.sroa.3252.0.copyload.i, ptr %.sroa.3252.0..sroa_idx253.i, align 8, !alias.scope !1251, !noalias !1193
  %.sroa.4255.0..sroa_idx256.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.sroa.4255.0.copyload.i, ptr %.sroa.4255.0..sroa_idx256.i, align 8, !alias.scope !1251, !noalias !1193
  br label %bb.ke

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i168: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i160
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3252.0.copyload.i) ]
  store i64 0, ptr %i.bw, align 8, !alias.scope !1253, !noalias !1256
  %.sroa.4.0..sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i167, align 8, !alias.scope !1253, !noalias !1256
  %.sroa.5.0..sroa_idx.i.i.i168 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i168, align 8, !alias.scope !1253, !noalias !1256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.sroa.3252.0.copyload.i)
          to label %bb.ke unwind label %bb.kb, !noalias !1197

bb.kd:                                            ; preds = %bb.ke
  %i.aai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1193
  br label %bb.kx

bb.ke:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i168, %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !1193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !1193
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !1193
  store ptr %i.aaj, ptr %i.br, align 8, !noalias !1193
  %.sroa.5262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @_RNvXs0_NtCs4j34XAPZOn0_4http6statusNtB5_10StatusCodeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5262.0..sroa_idx.i, align 8, !noalias !1193
  %i.aak = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bw, ptr %i.aak, align 8, !noalias !1193
  %.sroa.5264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5264.0..sroa_idx.i, align 8, !noalias !1193
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, ptr noundef nonnull @22, ptr noundef nonnull %i.br)
          to label %bb.kf unwind label %bb.kd, !noalias !1197

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !1193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !alias.scope !1257, !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !1193
  %i.aal = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.val81.i = load ptr, ptr %i.aal, align 8, !noalias !1193, !nonnull !7, !noundef !7
  %i.aam = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.val82.i = load i64, ptr %i.aam, align 8, !noalias !1193, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1261
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bh, i64 noundef range(i64 0, -9223372036854775808) %.val82.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc138.i unwind label %bb.ki, !noalias !1197

.noexc138.i:                                      ; preds = %bb.kf
  %i.aan = load i64, ptr %i.bh, align 8, !range !6, !noalias !1261, !noundef !7
  %i.aao = trunc nuw i64 %i.aan to i1
  %i.aap = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.aaq = load i64, ptr %i.aap, align 8, !range !60, !noalias !1261, !noundef !7 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  br i1 %i.aao, label %bb.kg, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i163, !prof !834

bb.kg:                                            ; preds = %.noexc138.i
  %i.aas = load i64, ptr %i.aar, align 8, !noalias !1261
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aaq, i64 %i.aas) #28
          to label %.noexc139.i unwind label %bb.ki, !noalias !1197

.noexc139.i:                                      ; preds = %bb.kg
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i163: ; preds = %.noexc138.i
  %i.aat = load ptr, ptr %i.aar, align 8, !noalias !1261, !nonnull !7, !noundef !7 ; 2 uses
  %i.aau = icmp ule i64 %.val82.i, %i.aaq
  call void @llvm.assume(i1 %i.aau)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1261
  %.not.i.i.i.i164 = icmp eq i64 %.val82.i, 0
  br i1 %.not.i.i.i.i164, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i165, label %bb.kh

bb.kh:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i163
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aat, ptr nonnull readonly align 1 %.val81.i, i64 range(i64 0, -9223372036854775808) %.val82.i, i1 false), !noalias !1269
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i165

bb.ki:                                            ; preds = %bb.kg, %bb.kf
  %i.aav = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt) #22
          to label %bb.kx unwind label %bb.ip, !noalias !1197

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i165: ; preds = %bb.kh, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i163
  store i64 %i.aaq, ptr %i.bu, align 8, !noalias !1193
  %.sroa.6259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.aat, ptr %.sroa.6259.0..sroa_idx.i, align 8, !noalias !1193
  %.sroa.7260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %.val82.i, ptr %.sroa.7260.0..sroa_idx.i, align 8, !noalias !1193
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i141.i unwind label %bb.kj, !noalias !1197

bb.kj:                                            ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i165
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %bb.kw unwind label %bb.kk, !noalias !1197

bb.kk:                                            ; preds = %bb.kj
  %i.aax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1197
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i141.i: ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i165
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit145.i unwind label %bb.kl, !noalias !1197

bb.kl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i141.i
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit145.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !1193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !1193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !1193
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aaz, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !noalias !1193
  store i64 3, ptr %i.bp, align 8, !noalias !1193
  invoke void @_RNvXNtCsj34PGqTgg0L_16deltalake_lakefs6errorsNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_20LakeFSOperationErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bp)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit147.i unwind label %bb.ku, !noalias !1197

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit147.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit145.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i64 72, i1 false), !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1193
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i149.i unwind label %bb.km, !noalias !1197

bb.km:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit147.i
  %i.aba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.body150.i unwind label %bb.kn, !noalias !1197

bb.kn:                                            ; preds = %bb.km
  %i.abb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1197
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i149.i: ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit147.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit153.i unwind label %bb.ko, !noalias !1197

.body150.i:                                       ; preds = %bb.ju, %bb.kb, %bb.kv, %bb.ko, %bb.km
  %.pn54.i = phi { ptr, i32 } [ %i.aba, %bb.km ], [ %.pn51.pn.i, %bb.kv ], [ %i.abc, %bb.ko ], [ %i.aag, %bb.kb ], [ %i.zx, %bb.ju ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !1193
  br label %bb.ij

bb.ko:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i149.i
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %.body150.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit153.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !1193
  br label %bb.ii

bb.kp:                                            ; preds = %bb.ks, %bb.ii
  store i8 0, ptr %i.xd, align 8, !noalias !1193
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i155.invoke.i unwind label %bb.kq, !noalias !1197

bb.kq:                                            ; preds = %bb.kp
  %i.abe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abd)
          to label %.body.i unwind label %bb.kr, !noalias !1197

bb.kr:                                            ; preds = %bb.kq
  %i.abf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1197
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i155.invoke.i: ; preds = %bb.kp, %bb.im
  %i.abg = phi ptr [ %i.xb, %bb.kp ], [ %i.xm, %bb.im ] ; 2 uses
  %i.abh = phi ptr [ %i.xc, %bb.kp ], [ %i.xn, %bb.im ] ; 6 uses
  %i.abi = phi ptr [ %i.abd, %bb.kp ], [ %i.xp, %bb.im ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abi)
          to label %bb.kz unwind label %bb.jt, !noalias !1197

bb.ks:                                            ; preds = %bb.ii
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %i.abj)
          to label %bb.kp unwind label %bb.kt, !noalias !1197

bb.kt:                                            ; preds = %bb.ks
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.ku:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit145.i
  %i.abl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !1193
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kx, %bb.kw, %bb.ku
  %.pn51.pn.i = phi { ptr, i32 } [ %eh.lpad-body143.i, %bb.kw ], [ %i.abl, %bb.ku ], [ %.pn49.i, %bb.kx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1193
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw) #22
          to label %.body150.i unwind label %bb.ip, !noalias !1197

bb.kw:                                            ; preds = %bb.kl, %bb.kj
  %eh.lpad-body143.i = phi { ptr, i32 } [ %i.aay, %bb.kl ], [ %i.aaw, %bb.kj ]
end_hunk_9
begin_hunk_10_@_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore12commit_merge0B6_:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i233: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i232
  %i.and = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.and)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i170.i unwind label %bb.sa, !noalias !1340

bb.sa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i233
  %i.ane = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.and)
          to label %.body171.i unwind label %bb.sb, !noalias !1340

bb.sb:                                            ; preds = %bb.sa
  %i.anf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1340
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i170.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i233
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.and)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit174.i unwind label %bb.sc, !noalias !1340

.body171.i:                                       ; preds = %bb.to, %bb.sc, %bb.sa, %.body166.i
  %i.ang = phi ptr [ %i.alm, %.body166.i ], [ %i.alr, %bb.sa ], [ %i.anj, %bb.sc ], [ %i.amh, %bb.to ]
  %i.anh = phi ptr [ %i.aln, %.body166.i ], [ %i.als, %bb.sa ], [ %i.ank, %bb.sc ], [ %i.ami, %bb.to ]
  %.pn91.i = phi { ptr, i32 } [ %.pn89.i, %.body166.i ], [ %i.ane, %bb.sa ], [ %i.anl, %bb.sc ], [ %i.aqa, %bb.to ]
  %i.ani = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ani) #22
          to label %.body177.i unwind label %bb.qy, !noalias !1340

bb.sc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i235.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i170.i
  %i.anj = phi ptr [ %i.amh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i235.i ], [ %i.alr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i170.i ]
  %i.ank = phi ptr [ %i.ami, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i235.i ], [ %i.als, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i170.i ]
  %i.anl = landingpad { ptr, i32 }
          cleanup
  br label %.body171.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit174.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i170.i
  %i.anm = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.anm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i176.i unwind label %bb.sd, !noalias !1340

bb.sd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit174.i
  %i.ann = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.anm)
          to label %.body177.i unwind label %bb.se, !noalias !1340

bb.se:                                            ; preds = %bb.sd
  %i.ano = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1340
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i176.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit174.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.anm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit180.i unwind label %bb.sf, !noalias !1340

.body177.i:                                       ; preds = %bb.tq, %bb.sf, %bb.sd, %.body171.i
  %i.anp = phi ptr [ %i.ang, %.body171.i ], [ %i.alr, %bb.sd ], [ %i.ans, %bb.sf ], [ %i.amh, %bb.tq ]
  %i.anq = phi ptr [ %i.anh, %.body171.i ], [ %i.als, %bb.sd ], [ %i.ant, %bb.sf ], [ %i.ami, %bb.tq ]
  %.pn93.i = phi { ptr, i32 } [ %.pn91.i, %.body171.i ], [ %i.ann, %bb.sd ], [ %i.anu, %bb.sf ], [ %i.aqd, %bb.tq ]
  %i.anr = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.anr) #22
          to label %.body183.i unwind label %bb.qy, !noalias !1340

bb.sf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i241.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i176.i
  %i.ans = phi ptr [ %i.amh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i241.i ], [ %i.alr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i176.i ]
  %i.ant = phi ptr [ %i.ami, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i241.i ], [ %i.als, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i176.i ]
  %i.anu = landingpad { ptr, i32 }
          cleanup
  br label %.body177.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit180.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i176.i
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.anv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i182.i unwind label %bb.sg, !noalias !1340

bb.sg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit180.i
  %i.anw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.anv)
          to label %.body183.i unwind label %bb.sh, !noalias !1340

bb.sh:                                            ; preds = %bb.sg
  %i.anx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1340
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i182.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit180.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.anv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit186.i unwind label %bb.si, !noalias !1340

.body183.i:                                       ; preds = %bb.ts, %bb.si, %bb.sg, %.body177.i
  %i.any = phi ptr [ %i.anp, %.body177.i ], [ %i.alr, %bb.sg ], [ %i.aob, %bb.si ], [ %i.amh, %bb.ts ]
  %i.anz = phi ptr [ %i.anq, %.body177.i ], [ %i.als, %bb.sg ], [ %i.aoc, %bb.si ], [ %i.ami, %bb.ts ]
  %.pn95.i = phi { ptr, i32 } [ %.pn93.i, %.body177.i ], [ %i.anw, %bb.sg ], [ %i.aod, %bb.si ], [ %i.aqg, %bb.ts ]
  %i.aoa = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aoa) #22
          to label %.body189.i unwind label %bb.qy, !noalias !1340

bb.si:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i247.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i182.i
  %i.aob = phi ptr [ %i.amh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i247.i ], [ %i.alr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i182.i ]
  %i.aoc = phi ptr [ %i.ami, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i247.i ], [ %i.als, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i182.i ]
  %i.aod = landingpad { ptr, i32 }
          cleanup
  br label %.body183.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit186.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i182.i
  %i.aoe = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aoe)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i253.invoke.i unwind label %bb.sj, !noalias !1340

bb.sj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit186.i
  %i.aof = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aoe)
          to label %.body189.i unwind label %bb.sk, !noalias !1340

bb.sk:                                            ; preds = %bb.sj
  %i.aog = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1340
  unreachable

.body189.i:                                       ; preds = %bb.tu, %bb.sl, %bb.sj, %.body183.i
  %i.aoh = phi ptr [ %i.any, %.body183.i ], [ %i.alr, %bb.sj ], [ %i.aql, %bb.sl ], [ %i.amh, %bb.tu ]
  %i.aoi = phi ptr [ %i.anz, %.body183.i ], [ %i.als, %bb.sj ], [ %i.aqm, %bb.sl ], [ %i.ami, %bb.tu ]
  %.pn97.i = phi { ptr, i32 } [ %.pn95.i, %.body183.i ], [ %i.aof, %bb.sj ], [ %i.aoj, %bb.sl ], [ %i.aqj, %bb.tu ]
  store i8 2, ptr %i.aoh, align 1, !noalias !1336
  br label %.body251

bb.sl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i253.invoke.i
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  br label %.body189.i

bb.sm:                                            ; preds = %bb.rd, %bb.ri, %bb.ql, %bb.qr, %bb.rt, %bb.ua, %bb.tk, %bb.rs
  %i.aok = phi ptr [ %i.amm, %bb.rs ], [ %i.amh, %bb.tk ], [ %i.amm, %bb.ua ], [ %i.alr, %bb.rt ], [ %i.afp, %bb.ql ], [ %i.afp, %bb.qr ], [ %i.alr, %bb.ri ], [ %i.alr, %bb.rd ]
  %i.aol = phi ptr [ %i.amn, %bb.rs ], [ %i.ami, %bb.tk ], [ %i.amn, %bb.ua ], [ %i.als, %bb.rt ], [ %i.afq, %bb.ql ], [ %i.afq, %bb.qr ], [ %i.als, %bb.ri ], [ %i.als, %bb.rd ]
  %.pn83.pn.i = phi { ptr, i32 } [ %.pn81.i, %bb.rs ], [ %i.apv, %bb.tk ], [ %.pn81.i, %bb.ua ], [ %i.amr, %bb.rt ], [ %i.aku, %bb.ql ], [ %.pn58.i243, %bb.qr ], [ %i.alx, %bb.ri ], [ %i.alp, %bb.rd ]
  %i.aom = getelementptr inbounds nuw i8, ptr %1, i64 547
  store i8 0, ptr %i.aom, align 1, !noalias !1336
  br label %bb.qv

bb.sn:                                            ; preds = %bb.so
  %i.aon = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1336
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.aoq) #22
          to label %.body224.i unwind label %bb.qy, !noalias !1340

bb.so:                                            ; preds = %bb.rp, %bb.nw
  %i.aoo = phi ptr [ %i.alr, %bb.rp ], [ %i.afn, %bb.nw ] ; 3 uses
  %i.aop = phi ptr [ %i.als, %bb.rp ], [ %i.afm, %bb.nw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1336
  %i.aoq = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response4text0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull align 8 %i.aoq, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.sp unwind label %bb.sn, !noalias !1340

bb.sp:                                            ; preds = %bb.so
  %i.aor = load i64, ptr %i.w, align 8, !range !964, !noalias !1336, !noundef !7 ; 3 uses
  %i.aos = icmp eq i64 %i.aor, -9223372036854775807
  br i1 %i.aos, label %bb.sq, label %bb.sr

bb.sq:                                            ; preds = %bb.sp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1336
  br label %.thread529

bb.sr:                                            ; preds = %bb.sp
  %.sroa.3313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.3313.0.copyload.i = load ptr, ptr %.sroa.3313.0..sroa_idx.i, align 8, !noalias !1336 ; 3 uses
  %.sroa.4316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4316.0.copyload.i = load i64, ptr %.sroa.4316.0..sroa_idx.i, align 8, !noalias !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1336
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.aou = load i8, ptr %i.aot, align 8, !range !178, !noalias !1336, !noundef !7
  switch i8 %i.aou, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i220 [
    i8 0, label %bb.ss
    i8 3, label %bb.st
  ]

bb.ss:                                            ; preds = %bb.sr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.aoq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i220 unwind label %bb.su, !noalias !1340

bb.st:                                            ; preds = %bb.sr
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 832
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.aov)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i220 unwind label %bb.su, !noalias !1340

bb.su:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i225, %bb.st, %bb.ss
  %i.aow = landingpad { ptr, i32 }
          cleanup
  br label %.body224.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i220: ; preds = %bb.st, %bb.ss, %bb.sr
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %i.aox = icmp eq i64 %i.aor, -9223372036854775808
  br i1 %i.aox, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i225, label %bb.sv

bb.sv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i220
  store i64 %i.aor, ptr %i.x, align 8, !alias.scope !1444, !noalias !1336
  %.sroa.3313.0..sroa_idx314.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.3313.0.copyload.i, ptr %.sroa.3313.0..sroa_idx314.i, align 8, !alias.scope !1444, !noalias !1336
  %.sroa.4316.0..sroa_idx317.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.4316.0.copyload.i, ptr %.sroa.4316.0..sroa_idx317.i, align 8, !alias.scope !1444, !noalias !1336
  br label %bb.sx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i225: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i220
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3313.0.copyload.i) ]
  store i64 0, ptr %i.x, align 8, !alias.scope !1446, !noalias !1449
  %.sroa.4.0..sroa_idx.i.i195.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i195.i, align 8, !alias.scope !1446, !noalias !1449
  %.sroa.5.0..sroa_idx.i.i196.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i196.i, align 8, !alias.scope !1446, !noalias !1449
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.sroa.3313.0.copyload.i)
          to label %bb.sx unwind label %bb.su, !noalias !1340

bb.sw:                                            ; preds = %bb.sx
  %i.aoy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1336
  br label %bb.tz

bb.sx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i225, %bb.sv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1336
  %i.aoz = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1336
  store ptr %i.aoz, ptr %i.s, align 8, !noalias !1336
  %.sroa.5323.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs0_NtCs4j34XAPZOn0_4http6statusNtB5_10StatusCodeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5323.0..sroa_idx.i, align 8, !noalias !1336
  %i.apa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.apa, align 8, !noalias !1336
  %.sroa.5325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5325.0..sroa_idx.i, align 8, !noalias !1336
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @44, ptr noundef nonnull %i.s)
          to label %bb.sy unwind label %bb.sw, !noalias !1340

bb.sy:                                            ; preds = %bb.sx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.t, i64 24, i1 false), !alias.scope !1450, !noalias !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1336
  %i.apb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val113.i = load ptr, ptr %i.apb, align 8, !noalias !1336, !nonnull !7, !noundef !7
  %i.apc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val114.i = load i64, ptr %i.apc, align 8, !noalias !1336, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1454
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, -9223372036854775808) %.val114.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc212.i unwind label %bb.tb, !noalias !1340

.noexc212.i:                                      ; preds = %bb.sy
  %i.apd = load i64, ptr %i.g, align 8, !range !6, !noalias !1454, !noundef !7
  %i.ape = trunc nuw i64 %i.apd to i1
  %i.apf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.apg = load i64, ptr %i.apf, align 8, !range !60, !noalias !1454, !noundef !7 ; 3 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ape, label %bb.sz, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i221, !prof !834

bb.sz:                                            ; preds = %.noexc212.i
  %i.api = load i64, ptr %i.aph, align 8, !noalias !1454
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.apg, i64 %i.api) #28
          to label %.noexc213.i unwind label %bb.tb, !noalias !1340

.noexc213.i:                                      ; preds = %bb.sz
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i221: ; preds = %.noexc212.i
  %i.apj = load ptr, ptr %i.aph, align 8, !noalias !1454, !nonnull !7, !noundef !7 ; 2 uses
  %i.apk = icmp ule i64 %.val114.i, %i.apg
  call void @llvm.assume(i1 %i.apk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1454
  %.not.i.i.i.i222 = icmp eq i64 %.val114.i, 0
  br i1 %.not.i.i.i.i222, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i223, label %bb.ta

bb.ta:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i221
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apj, ptr nonnull readonly align 1 %.val113.i, i64 range(i64 0, -9223372036854775808) %.val114.i, i1 false), !noalias !1462
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i223

bb.tb:                                            ; preds = %bb.sz, %bb.sy
  %i.apl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #22
          to label %bb.tz unwind label %bb.qy, !noalias !1340

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i223: ; preds = %bb.ta, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i221
  store i64 %i.apg, ptr %i.v, align 8, !noalias !1336
  %.sroa.6320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.apj, ptr %.sroa.6320.0..sroa_idx.i, align 8, !noalias !1336
  %.sroa.7321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.val114.i, ptr %.sroa.7321.0..sroa_idx.i, align 8, !noalias !1336
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i215.i unwind label %bb.tc, !noalias !1340

bb.tc:                                            ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i223
  %i.apm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.ty unwind label %bb.td, !noalias !1340

bb.td:                                            ; preds = %bb.tc
  %i.apn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1340
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i215.i: ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit.i223
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit219.i unwind label %bb.te, !noalias !1340

bb.te:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i215.i
  %i.apo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ty

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit219.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i215.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1336
  %i.app = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.app, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1336
  store i64 3, ptr %i.q, align 8, !noalias !1336
  invoke void @_RNvXNtCsj34PGqTgg0L_16deltalake_lakefs6errorsNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_20LakeFSOperationErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit221.i unwind label %bb.tw, !noalias !1340

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit221.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit219.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !noalias !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1336
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i223.i unwind label %bb.tf, !noalias !1340

bb.tf:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit221.i
  %i.apq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body224.i unwind label %bb.tg, !noalias !1340

bb.tg:                                            ; preds = %bb.tf
  %i.apr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1340
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i223.i: ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit221.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit227.i unwind label %bb.th, !noalias !1340

.body224.i:                                       ; preds = %bb.sn, %bb.su, %bb.tx, %bb.th, %bb.tf
  %.pn79.i219 = phi { ptr, i32 } [ %i.apq, %bb.tf ], [ %.pn76.pn.i, %bb.tx ], [ %i.aps, %bb.th ], [ %i.aow, %bb.su ], [ %i.aon, %bb.sn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1336
  br label %bb.rs

bb.th:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i223.i
  %i.aps = landingpad { ptr, i32 }
          cleanup
  br label %.body224.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit227.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i223.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1336
  br label %bb.rr

bb.ti:                                            ; preds = %bb.tj, %bb.rr
  store i8 0, ptr %i.amj, align 1, !noalias !1336
  %i.apt = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.apt)
          to label %bb.tl unwind label %bb.rv, !noalias !1340

bb.tj:                                            ; preds = %bb.rr
  %i.apu = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %i.apu)
          to label %bb.ti unwind label %bb.tk, !noalias !1340

bb.tk:                                            ; preds = %bb.tj
  %i.apv = landingpad { ptr, i32 }
          cleanup
  br label %bb.sm

bb.tl:                                            ; preds = %bb.ti
  %i.apw = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i229.i unwind label %bb.tm, !noalias !1340

bb.tm:                                            ; preds = %bb.tl
  %i.apx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apw)
          to label %.body166.i unwind label %bb.tn, !noalias !1340

bb.tn:                                            ; preds = %bb.tm
  %i.apy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1340
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i229.i: ; preds = %bb.tl
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit233.i unwind label %bb.rz, !noalias !1340

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit233.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i229.i
  %i.apz = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i235.i unwind label %bb.to, !noalias !1340

bb.to:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit233.i
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.apz)
          to label %.body171.i unwind label %bb.tp, !noalias !1340

bb.tp:                                            ; preds = %bb.to
  %i.aqb = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response5bytes0Csj34PGqTgg0L_16deltalake_lakefs:bb.a
bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %bb.m

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 3, ptr %i.p, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 0, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.917.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 400
  store <2 x ptr> %i.i, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.r, %bb.n, %.body
  %.pn4.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.v, %bb.r ], [ %i.s, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val9 = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val9) #22
          to label %.body11 unwind label %bb.ab

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable

bb.m:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  invoke void @_RNvXNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collectINtB2_7CollectINtNtB4_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2M_6marker4SyncNtB3j_4SendEL_EEENtNtNtB2M_6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(144) %i.r) #22
          to label %bb.j unwind label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.t = load i64, ptr %i.b, align 8, !range !1528, !noundef !7 ; 3 uses
  %i.u = icmp eq i64 %i.t, 5
  br i1 %i.u, label %bb.p, label %bb.q

common.ret:                                       ; preds = %bb.aa, %bb.p
  %storemerge = phi i8 [ 1, %bb.aa ], [ 3, %bb.p ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %common.ret

bb.q:                                             ; preds = %bb.o
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtBL_8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3E_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(144) %i.r)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.t, %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.s:                                             ; preds = %bb.q
  %i.w = icmp eq i64 %i.t, 4
  br i1 %i.w, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread, label %bb.t

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1529
  store i64 %i.t, ptr %i.a, align 8, !noalias !1533
  %.sroa.3.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx20, align 8, !noalias !1533
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx22, align 8, !noalias !1533
  %.sroa.524.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.524, i64 104, i1 false), !noalias !1533
  invoke void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE8to_bytesCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.a)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.r

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1529
  %.pr = load ptr, ptr %i.d, align 8, !alias.scope !1534, !noalias !1537 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.x = icmp eq ptr %.pr, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1539 ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge, label %bb.v

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8, !alias.scope !1534, !noalias !1537
  br label %bb.u

bb.u:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %i.y = phi ptr [ %.pre34, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge ], [ %.sroa.4.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ]
  %i.z = phi ptr [ %.pre, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit._crit_edge ], [ %.sroa.3.0.copyload, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ]
  %i.aa = invoke noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1h_6marker4SyncNtB1O_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.y)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.r

bb.v:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB37_4SendEL_EE3mapB1B_NCNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB3T_8Response5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431, ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert33, i64 16, i1 false), !alias.scope !1540
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.v, %bb.u
  %.sroa.026.0 = phi ptr [ %.pr, %bb.v ], [ null, %bb.u ]
  %.sroa.328.0 = phi ptr [ %.pre, %bb.v ], [ %i.aa, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !7, !noundef !7 ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB2d_4SendEL_EE7map_errNtNtCsgO6CtM78C4N_7reqwest5error5ErrorINvB2U_6decodeB1i_EECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ae, %bb.y ], [ %i.ac, %bb.w ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #25
  br label %.body11

.body11:                                          ; preds = %bb.z, %bb.j
  %.pn7 = phi { ptr, i32 } [ %.pn4.pn, %bb.j ], [ %eh.lpad-body.i, %bb.z ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn7

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #25
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.026.0, ptr %i.af, align 8
  %.sroa.328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.328.0, ptr %.sroa.328.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.431, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  br label %common.ret

bb.ab:                                            ; preds = %bb.j, %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB6_12LakeFSClient13delete_branch0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 16 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.6 = alloca [112 x i8], align 8           ; 3 uses
  %i.v = alloca [136 x i8], align 8               ; 9 uses
  %i.w = alloca [272 x i8], align 8               ; 5 uses
  %i.x = alloca [272 x i8], align 8               ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !182, !noundef !7
  switch i8 %i.ab, label %default.unreachable219 [
    i8 0, label %bb.d
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.q
    i8 4, label %bb.b
  ]

default.unreachable219:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %bb.bn

bb.c:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !7, !align !22, !noundef !7 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.af, ptr %i.y, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ag, ptr %i.aj, align 8
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5147.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.ah, ptr %i.ak, align 8
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5149.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull @33, ptr noundef nonnull %i.y)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !alias.scope !1541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  invoke void @_RINvMs4_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB6_6Client6deleteRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  invoke void @_RINvMs_NtNtCsgO6CtM78C4N_7reqwest10async_impl7requestNtB5_14RequestBuilder10basic_authRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1m_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(272) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.ap)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ar = invoke { i64, ptr } @_RNvMs_NtNtCsgO6CtM78C4N_7reqwest10async_impl7requestNtB4_14RequestBuilder4send(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(272) %i.x)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %bb.m, %bb.k
  %.pn12 = phi { ptr, i32 } [ %i.as, %bb.k ], [ %.pn10, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bl

bb.k:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.at = extractvalue { i64, ptr } %i.ar, 0
  %i.au = extractvalue { i64, ptr } %i.ar, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %i.at, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.au, ptr %i.aw, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.h, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.an, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.j

.body:                                            ; preds = %bb.ci, %bb.bb, %bb.bd, %bb.bl, %bb.c
  %.pn48 = phi { ptr, i32 } [ %i.ac, %bb.c ], [ %.pn45.pn, %bb.bl ], [ %i.df, %bb.bb ], [ %i.dh, %bb.bd ], [ %i.ez, %bb.ci ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax) #22
          to label %.body85 unwind label %bb.bk

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #27
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #27
  unreachable

bb.p:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.val55 = load i64, ptr %i.ba, align 8, !range !6, !noundef !7
  %i.az = getelementptr i8, ptr %1, i64 144
  %.val56 = load ptr, ptr %i.az, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client7PendingECsj34PGqTgg0L_16deltalake_lakefs(i64 %.val55, ptr %.val56) #22
          to label %bb.bl unwind label %bb.bk

bb.q:                                             ; preds = %bb.a, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  invoke void @_RNvXsd_NtNtCsgO6CtM78C4N_7reqwest10async_impl6clientNtB5_7PendingNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.bb = load i64, ptr %i.v, align 8, !range !139, !noundef !7 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 4
  br i1 %i.bc, label %bb.s, label %bb.t

common.ret:                                       ; preds = %bb.bp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit94, %bb.s
  %.sink = phi i8 [ 4, %bb.bp ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit94 ], [ 3, %bb.s ]
  store i8 %.sink, ptr %i.aa, align 8
  ret void

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 -9223372036854775780, ptr %0, align 8
  br label %common.ret

bb.t:                                             ; preds = %bb.r
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5163.0.copyload = load ptr, ptr %.sroa.5163.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.val = load i64, ptr %i.ba, align 8, !range !6, !noundef !7
  %i.bd = getelementptr i8, ptr %1, i64 144       ; 3 uses
  %.val54 = load ptr, ptr %i.bd, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl6client7PendingECsj34PGqTgg0L_16deltalake_lakefs(i64 %.val, ptr %.val54)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.v:                                             ; preds = %bb.t
  %i.bf = icmp eq i64 %i.bb, 3
  br i1 %i.bf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bg = inttoptr i64 %.sroa.3.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !noalias !1545
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bg, ptr %.sroa.2.0..sroa_idx, align 8, !noalias !1545
  invoke void @_RNvXNtCsj34PGqTgg0L_16deltalake_lakefs6errorsNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_20LakeFSOperationErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.ba unwind label %bb.az

bb.x:                                             ; preds = %bb.v
end_hunk_11
begin_hunk_12_@_RNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB6_12LakeFSClient13delete_branch0B8_:bb.a
  store i16 %.val64, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 0, ptr %i.bi, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cu, ptr noundef nonnull align 8 dereferenceable(136) %i.bd, i64 136, i1 false)
  %.sroa.7184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 840
  store i8 0, ptr %.sroa.7184.0..sroa_idx, align 8
  br label %bb.bn

bb.aw:                                            ; preds = %bb.au
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ay

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit127, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit, %bb.at
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 129 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !range !180, !noundef !7
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.ck, label %bb.ch

bb.ay:                                            ; preds = %bb.ah, %bb.an, %bb.ak, %bb.aa, %bb.ac, %bb.aq, %bb.aw, %.body124
  %.pn43 = phi { ptr, i32 } [ %i.cv, %bb.aw ], [ %.pn41, %.body124 ], [ %i.bq, %bb.ac ], [ %i.cs, %bb.aq ], [ %i.bx, %bb.ah ], [ %i.bo, %bb.aa ], [ %i.cn, %bb.an ], [ %i.ch, %bb.ak ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.da = load i8, ptr %i.cz, align 1, !range !180, !noundef !7
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.cu, label %bb.bl

bb.az:                                            ; preds = %bb.w
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ba:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 0, ptr %i.dd, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ba
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i129, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i84 unwind label %bb.be

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %.body85 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i84: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit88 unwind label %bb.bg

.body85:                                          ; preds = %bb.cm, %bb.be, %bb.bg, %.body
  %.pn50 = phi { ptr, i32 } [ %.pn48, %.body ], [ %i.dj, %bb.be ], [ %i.dm, %bb.bg ], [ %i.fe, %bb.cm ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl) #22
          to label %.body91 unwind label %bb.bk

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i135, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i84
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body85

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit88: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i84
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i141.invoke unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit88
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %.body91 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body91:                                          ; preds = %bb.co, %bb.bh, %bb.bj, %.body85
  %.pn52 = phi { ptr, i32 } [ %.pn50, %.body85 ], [ %i.do, %bb.bh ], [ %i.dq, %bb.bj ], [ %i.fh, %bb.co ]
  store i8 2, ptr %i.aa, align 8
  resume { ptr, i32 } %.pn52

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i141.invoke
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body91

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit94: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i141.invoke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  br label %common.ret

bb.bk:                                            ; preds = %bb.p, %bb.cu, %bb.cs, %bb.cr, %bb.ca, %bb.bm, %bb.bl, %.body85, %.body
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bl:                                            ; preds = %bb.u, %bb.p, %bb.j, %bb.az, %bb.cu, %bb.cl, %bb.ay
  %.pn45.pn = phi { ptr, i32 } [ %.pn43, %bb.ay ], [ %i.fc, %bb.cl ], [ %.pn43, %bb.cu ], [ %i.dc, %bb.az ], [ %.pn12, %bb.j ], [ %i.be, %bb.u ], [ %i.ay, %bb.p ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 0, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dt) #22
          to label %.body unwind label %bb.bk

bb.bm:                                            ; preds = %bb.bn
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.dv) #22
          to label %.body124 unwind label %bb.bk

bb.bn:                                            ; preds = %bb.b, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtB4_8Response4text0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 8 %i.dv, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bo unwind label %bb.bm

bb.bo:                                            ; preds = %bb.bn
  %i.dw = load i64, ptr %i.k, align 8, !range !964, !noundef !7 ; 3 uses
  %i.dx = icmp eq i64 %i.dw, -9223372036854775807
  br i1 %i.dx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 -9223372036854775780, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %common.ret

bb.bq:                                            ; preds = %bb.bo
  %.sroa.3188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3188.0.copyload = load ptr, ptr %.sroa.3188.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4191.0.copyload = load i64, ptr %.sroa.4191.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.dz = load i8, ptr %i.dy, align 8, !range !178, !noundef !7
  switch i8 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i8 0, label %bb.br
    i8 3, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.dv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.ea)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.bs, %bb.br
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body124

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.bq, %bb.br, %bb.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  %i.ec = icmp eq i64 %i.dw, -9223372036854775808
  br i1 %i.ec, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit
  store i64 %i.dw, ptr %i.l, align 8, !alias.scope !1561
  %.sroa.3188.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.3188.0.copyload, ptr %.sroa.3188.0..sroa_idx189, align 8, !alias.scope !1561
  %.sroa.4191.0..sroa_idx192 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.4191.0.copyload, ptr %.sroa.4191.0..sroa_idx192, align 8, !alias.scope !1561
  br label %bb.bw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response4text0ECsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3188.0.copyload) ]
  store i64 0, ptr %i.l, align 8, !alias.scope !1563, !noalias !1558
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1563, !noalias !1558
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1563, !noalias !1558
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %.sroa.3188.0.copyload)
          to label %bb.bw unwind label %bb.bt

bb.bv:                                            ; preds = %bb.bw
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ct

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ee, ptr %i.g, align 8
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs0_NtCs4j34XAPZOn0_4http6statusNtB5_10StatusCodeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5198.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.l, ptr %i.ef, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5200.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @36, ptr noundef nonnull %i.g)
          to label %bb.bx unwind label %bb.bv

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !1566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val65 = load ptr, ptr %i.eg, align 8, !nonnull !7, !noundef !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val66 = load i64, ptr %i.eh, align 8, !noundef !7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1570
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val66, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc112 unwind label %bb.ca

.noexc112:                                        ; preds = %bb.bx
  %i.ei = load i64, ptr %i.a, align 8, !range !6, !noalias !1570, !noundef !7
  %i.ej = trunc nuw i64 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !range !60, !noalias !1570, !noundef !7 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ej, label %bb.by, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, !prof !834

bb.by:                                            ; preds = %.noexc112
  %i.en = load i64, ptr %i.em, align 8, !noalias !1570
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.el, i64 %i.en) #28
          to label %.noexc113 unwind label %bb.ca

.noexc113:                                        ; preds = %bb.by
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %.noexc112
  %i.eo = load ptr, ptr %i.em, align 8, !noalias !1570, !nonnull !7, !noundef !7 ; 2 uses
  %i.ep = icmp ule i64 %.val66, %i.el
  call void @llvm.assume(i1 %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1570
  %.not.i.i.i = icmp eq i64 %.val66, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.bz

bb.bz:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull readonly align 1 %.val65, i64 range(i64 0, -9223372036854775808) %.val66, i1 false), !noalias !1578
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ca:                                            ; preds = %bb.by, %bb.bx
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #22
          to label %bb.ct unwind label %bb.bk

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.bz, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  store i64 %i.el, ptr %i.j, align 8
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.eo, ptr %.sroa.6195.0..sroa_idx, align 8
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.val66, ptr %.sroa.7196.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i115 unwind label %bb.cb

bb.cb:                                            ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.cs unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i115: ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit119 unwind label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i115
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit119: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 3, ptr %i.e, align 8
  invoke void @_RNvXNtCsj34PGqTgg0L_16deltalake_lakefs6errorsNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_20LakeFSOperationErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit121 unwind label %bb.cq

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit121: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i123 unwind label %bb.ce

bb.ce:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit121
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body124 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i123: ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCsj34PGqTgg0L_16deltalake_lakefs6errors20LakeFSOperationErrorINtB5_4IntoNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorE4intoBC_.exit121
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit127 unwind label %bb.cg

.body124:                                         ; preds = %bb.bm, %bb.bt, %bb.cg, %bb.ce, %bb.cr
  %.pn41 = phi { ptr, i32 } [ %i.ev, %bb.ce ], [ %.pn38.pn, %bb.cr ], [ %i.ex, %bb.cg ], [ %i.eb, %bb.bt ], [ %i.du, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ay

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i123
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body124

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit127: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ax

bb.ch:                                            ; preds = %bb.ck, %bb.ax
  store i8 0, ptr %i.cw, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i129 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %.body unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i129: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit133 unwind label %bb.bd

bb.ck:                                            ; preds = %bb.ax
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(136) %i.fb)
          to label %bb.ch unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit133: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i129
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i135 unwind label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit133
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %.body85 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i135: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit133
end_hunk_12
begin_hunk_13_@_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute0B6_:bb.a
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  br i1 %i.aa, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.f, %bb.i
  %i.ab = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not63 = icmp eq i8 %i.ab, 0
  br i1 %.not63, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ac = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 6
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.ac, 3
  br i1 %i.ae, label %bb.m, label %bb.t

bb.l:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %.val21 = load ptr, ptr %i.ah, align 8, !nonnull !7, !noundef !7
  %i.ai = getelementptr i8, ptr %i.ag, i64 40
  %.val22 = load i64, ptr %i.ai, align 8, !noundef !7
  store i64 4, ptr %i.k, align 8, !alias.scope !1579
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.val21, ptr %.sroa.654.0..sroa_idx, align 8, !alias.scope !1579
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.val22, ptr %.sroa.855.0..sroa_idx, align 8, !alias.scope !1579
  %i.aj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.n unwind label %bb.l       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !7, !nonnull !7
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.p:                                             ; preds = %bb.n
  br i1 %i.ao, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aq = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @50, ptr %i.h, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 103 to ptr), ptr %i.as, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @10, ptr %i.at, align 8
  store i64 1, ptr %i.j, align 8, !alias.scope !1583, !noalias !1586
  %.sroa.4.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i29, align 8, !alias.scope !1583, !noalias !1586
  %.sroa.5.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i30, align 8, !alias.scope !1583, !noalias !1586
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ar, ptr %i.au, align 8, !alias.scope !1583, !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.k, %bb.j, %bb.aa
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.val23 = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val24 = load ptr, ptr %i.ay, align 8          ; 2 uses
  %i.az = atomicrmw add ptr %.val23, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bb = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @50, ptr %i.l, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 103 to ptr), ptr %i.bd, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @10, ptr %i.be, align 8
  store i64 1, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.bc, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc34 unwind label %bb.z

.noexc34:                                         ; preds = %bb.v
  %i.bf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1589
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.noexc34
  %i.bh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1589 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 6
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp samesign ugt i64 %i.bh, 3
  br i1 %i.bj, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bk = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler11pre_execute010___CALLSITE, align 8, !noalias !1589, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !7, !noundef !7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !7
  store i64 4, ptr %i.b, align 8, !noalias !1589
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bm, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1589
  %.sroa.5.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx.i33, align 8, !noalias !1589
  %i.bp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc35 unwind label %bb.z   ; 2 uses

.noexc35:                                         ; preds = %bb.x
  %i.bq = extractvalue { ptr, ptr } %i.bp, 0      ; 2 uses
  %i.br = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !7, !nonnull !7
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #26
          to label %.noexc36 unwind label %bb.z, !inline_history !1592

.noexc36:                                         ; preds = %.noexc35
  br i1 %i.bu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %.noexc36
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bk, ptr noundef nonnull %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc35, %bb.x, %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aa:                                            ; preds = %.noexc36, %bb.w, %.noexc34, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.t

bb.ab:                                            ; preds = %bb.ac
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ac:                                            ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val24, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !7, !nonnull !7
  %i.ca = invoke { ptr, ptr } %i.bz(ptr noundef nonnull %.val23)
          to label %bb.ad unwind label %bb.ab     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cb = extractvalue { ptr, ptr } %i.ca, 0      ; 3 uses
  %i.cc = extractvalue { ptr, ptr } %i.ca, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb), "nonnull"(ptr %i.cc) ]
  store ptr %i.cb, ptr %i.bx, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !59, !invariant.load !7
  %i.cg = add nsw i64 %i.cf, -1
  %i.ch = and i64 %i.cg, -16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cc, i64 24
  %.val27 = load ptr, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void %.val27(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.cj) #26
          to label %bb.ag unwind label %bb.af, !inline_history !1593

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit: ; preds = %bb.aw, %bb.aq, %bb.ap, %bb.af
  %.pn11.pn = phi { ptr, i32 } [ %i.cp, %bb.af ], [ %i.dh, %bb.aw ], [ %i.cx, %bb.ap ], [ %i.cx, %bb.aq ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !1600, !nonnull !7, !noundef !7
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !1600
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cl) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.ay

bb.af:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.cq = load i128, ptr %i.a, align 16, !noundef !7
  %.not = icmp eq i128 %i.cq, -55836113038573738235370198513345853248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  %i.cr = load ptr, ptr %i.bx, align 8, !alias.scope !1607, !nonnull !7, !noundef !7
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !1607
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bx) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41 unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.cj, ptr %i.cu, align 8
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.761.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1016
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ax, %bb.ai
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 67)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.e, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47

common.ret:                                       ; preds = %bb.at, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47 ], [ 3, %bb.at ]
  store i8 %storemerge, ptr %i.o, align 8
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45, %bb.ax, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.e, i64 96, i1 false)
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit, %bb.ae, %bb.l, %bb.r, %bb.o, %bb.ab, %bb.ak, %bb.e, %bb.g, %bb.z, %bb.al
  %.pn14.pn = phi { ptr, i32 } [ %.pn11.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit ], [ %i.cw, %bb.al ], [ %i.bv, %bb.z ], [ %i.cv, %bb.ak ], [ %i.bw, %bb.ab ], [ %i.ap, %bb.o ], [ %i.af, %bb.l ], [ %i.y, %bb.g ], [ %i.av, %bb.r ], [ %i.w, %bb.e ], [ %.pn11.pn, %bb.ae ]
  store i8 2, ptr %i.o, align 8
  resume { ptr, i32 } %.pn14.pn

bb.an:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #27
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #27
  unreachable

bb.ap:                                            ; preds = %bb.ar
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.cz = load i8, ptr %i.cy, align 8, !range !178, !noundef !7
  %cond.i = icmp eq i8 %i.cz, 3
  br i1 %cond.i, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.da)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit unwind label %bb.ay

bb.ar:                                            ; preds = %bb.a, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore11pre_execute0B6_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.f, ptr noundef nonnull align 8 %i.db, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.as unwind label %bb.ap

bb.as:                                            ; preds = %bb.ar
  %i.dc = load i64, ptr %i.f, align 16, !range !1608, !noundef !7
  %i.dd = icmp eq i64 %i.dc, -9223372036854775710
  br i1 %i.dd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.e, ptr noundef nonnull align 16 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.df = load i8, ptr %i.de, align 8, !range !178, !noundef !7
  %cond.i43 = icmp eq i8 %i.df, 3
  br i1 %cond.i43, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45

bb.av:                                            ; preds = %bb.au
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.dg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45: ; preds = %bb.au, %bb.av
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !1615, !nonnull !7, !noundef !7
  %i.dk = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !1615
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit45
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.di) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47 unwind label %bb.ak

bb.ay:                                            ; preds = %bb.aq, %bb.ae
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute0B6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [96 x i8], align 16               ; 5 uses
  %i.i = alloca [16 x i8], align 1                ; 5 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 2 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 1                ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.086 = alloca [48 x i8], align 8          ; 3 uses
  %i.n = alloca [96 x i8], align 16               ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
end_hunk_13
begin_hunk_14_@_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute0B6_:bb.a
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %i.am, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.j
  %i.an = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not96 = icmp eq i8 %i.an, 0
  br i1 %.not96, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ao = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 6
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp samesign ugt i64 %i.ao, 3
  br i1 %i.aq, label %bb.n, label %bb.u

bb.m:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %bb.l
  %i.as = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %.val31 = load ptr, ptr %i.at, align 8, !nonnull !7, !noundef !7
  %i.au = getelementptr i8, ptr %i.as, i64 40
  %.val32 = load i64, ptr %i.au, align 8, !noundef !7
  store i64 4, ptr %i.u, align 8, !alias.scope !1616
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val31, ptr %.sroa.684.0..sroa_idx, align 8, !alias.scope !1616
  %.sroa.885.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.val32, ptr %.sroa.885.0..sroa_idx, align 8, !alias.scope !1616
  %i.av = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.o unwind label %bb.m       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !7, !nonnull !7
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.ba, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.bc = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @54, ptr %i.r, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 105 to ptr), ptr %i.be, align 8
  store ptr %i.r, ptr %i.s, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @10, ptr %i.bf, align 8
  store i64 1, ptr %i.t, align 8, !alias.scope !1620, !noalias !1623
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i41, align 8, !alias.scope !1620, !noalias !1623
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i42, align 8, !alias.scope !1620, !noalias !1623
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.bd, ptr %i.bg, align 8, !alias.scope !1620, !noalias !1623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.as, ptr noundef nonnull %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.l, %bb.k, %bb.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.val33 = load ptr, ptr %i.bj, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val34 = load ptr, ptr %i.bk, align 8          ; 2 uses
  %i.bl = atomicrmw add ptr %.val33, i64 1 monotonic, align 8
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.bn = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @54, ptr %i.v, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr inttoptr (i64 105 to ptr), ptr %i.bp, align 8
  store ptr %i.v, ptr %i.w, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @10, ptr %i.bq, align 8
  store i64 1, ptr %i.x, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.bo, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %.noexc46 unwind label %bb.aa

.noexc46:                                         ; preds = %bb.w
  %i.br = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1626
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.noexc46
  %i.bt = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1626 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 6
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp samesign ugt i64 %i.bt, 3
  br i1 %i.bv, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler12post_execute010___CALLSITE, align 8, !noalias !1626, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !7, !noundef !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !7
  store i64 4, ptr %i.f, align 8, !noalias !1626
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.by, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1626
  %.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ca, ptr %.sroa.5.0..sroa_idx.i45, align 8, !noalias !1626
  %i.cb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc47 unwind label %bb.aa  ; 2 uses

.noexc47:                                         ; preds = %bb.y
  %i.cc = extractvalue { ptr, ptr } %i.cb, 0      ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cb, 1      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !invariant.load !7, !nonnull !7
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #26
          to label %.noexc48 unwind label %bb.aa, !inline_history !1629

.noexc48:                                         ; preds = %.noexc47
  br i1 %i.cg, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.noexc48
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bw, ptr noundef nonnull %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc47, %bb.y, %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ab:                                            ; preds = %.noexc48, %bb.x, %.noexc46, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.u

bb.ac:                                            ; preds = %bb.ad
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ad:                                            ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val34, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !7, !nonnull !7
  %i.cm = invoke { ptr, ptr } %i.cl(ptr noundef nonnull %.val33)
          to label %bb.ae unwind label %bb.ac     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cn = extractvalue { ptr, ptr } %i.cm, 0      ; 3 uses
  %i.co = extractvalue { ptr, ptr } %i.cm, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cn), "nonnull"(ptr %i.co) ]
  store ptr %i.cn, ptr %i.cj, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !59, !invariant.load !7
  %i.cs = add nsw i64 %i.cr, -1
  %i.ct = and i64 %i.cs, -16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ct ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.co, i64 24
  %.val37 = load ptr, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void %.val37(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.cv) #26
          to label %bb.ai unwind label %bb.ah, !inline_history !1593

bb.af:                                            ; preds = %bb.cb, %.body, %bb.ah
  %.pn17.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn.pn.pn, %bb.cb ], [ %eh.lpad-body, %.body ], [ %i.db, %bb.ah ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !1636, !nonnull !7, !noundef !7
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !1636
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cx) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.bi

bb.ah:                                            ; preds = %bb.ae
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ai:                                            ; preds = %bb.ae
  %i.dc = load i128, ptr %i.e, align 16, !noundef !7
  %.not = icmp eq i128 %i.dc, -55836113038573738235370198513345853248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %i.dd = load ptr, ptr %i.cj, align 8, !alias.scope !1643, !nonnull !7, !noundef !7
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !1643
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit53

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cj) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit53 unwind label %bb.bg

bb.al:                                            ; preds = %bb.aq
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.an, %bb.al
  %eh.lpad-body = phi { ptr, i32 } [ %i.dg, %bb.al ], [ %i.do, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.af

bb.am:                                            ; preds = %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  store ptr %i.cv, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dj = getelementptr i8, ptr %i.cu, i64 248
  %.val38 = load ptr, ptr %i.dj, align 8, !nonnull !7, !noundef !7
  %i.dk = getelementptr i8, ptr %i.cu, i64 256
  %.val39 = load i64, ptr %i.dk, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1644
  store i64 0, ptr %i.d, align 8, !noalias !1644
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1644
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1644
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 1610612768, ptr %i.dl, align 8, !noalias !1644
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !1644
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !1644
  store ptr %i.d, ptr %i.c, align 8, !noalias !1644
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @186, ptr %i.dm, align 8, !noalias !1644
  %i.dn = invoke noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val38, i64 noundef %.val39, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i unwind label %bb.an, !noalias !1644

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %.body unwind label %bb.ap, !noalias !1644

_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i: ; preds = %bb.am
  br i1 %i.dn, label %bb.ao, label %bb.aq, !prof !834

bb.ao:                                            ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #28
          to label %.noexc.i.i unwind label %bb.an, !noalias !1644

.noexc.i.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1644
  unreachable

bb.aq:                                            ; preds = %_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1644
  invoke void @_RNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB4_12LakeFSClient13decompose_url(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.di, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.ar unwind label %bb.al

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 1, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.body54 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.au

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body54

.body54:                                          ; preds = %bb.as, %bb.au
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.dt, %bb.au ], [ %i.dr, %bb.as ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.du) #22
          to label %.body59 unwind label %bb.bi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58 unwind label %bb.av

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %.body59 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit62 unwind label %bb.ax

.body59:                                          ; preds = %bb.ax, %bb.av, %.body54
  %.pn12 = phi { ptr, i32 } [ %eh.lpad-body55, %.body54 ], [ %i.dy, %bb.ax ], [ %i.dw, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bk

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body59

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit62: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dz = load ptr, ptr %i.dh, align 8, !nonnull !7, !align !22, !noundef !7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 0, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  invoke void @_RNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtB4_12LakeFSClient15get_transaction(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ea, ptr noalias noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.k)
          to label %bb.az unwind label %bb.ay
end_hunk_14
begin_hunk_15_@_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook0B6_:bb.a

default.unreachable73:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1313
  %i.p = load i8, ptr %i.o, align 1, !range !180, !noundef !7
  %i.q = trunc nuw i8 %i.p to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br i1 %i.q, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.r = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.s = icmp samesign ult i64 %i.r, 2
  br i1 %i.s, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.u = icmp ult i8 %i.t, 3
  br i1 %i.u, label %bb.g, label %bb.e, !prof !1143

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE) #23
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i31 = phi i8 [ %i.t, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.0.0.i31, 0
  br i1 %i.x, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.aa = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.z, i8 noundef %.sroa.0.0.i31)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %i.aa, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.j
  %i.ab = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not71 = icmp eq i8 %i.ab, 0
  br i1 %.not71, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ac = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 6
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.ac, 3
  br i1 %i.ae, label %bb.n, label %bb.u

bb.m:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %.val24 = load ptr, ptr %i.ah, align 8, !nonnull !7, !noundef !7
  %i.ai = getelementptr i8, ptr %i.ag, i64 40
  %.val25 = load i64, ptr %i.ai, align 8, !noundef !7
  store i64 4, ptr %i.h, align 8, !alias.scope !1675
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val24, ptr %.sroa.652.0..sroa_idx, align 8, !alias.scope !1675
  %.sroa.853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val25, ptr %.sroa.853.0..sroa_idx, align 8, !alias.scope !1675
  %i.aj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.o unwind label %bb.m       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !7, !nonnull !7
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.ao, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aq = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @56, ptr %i.e, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 107 to ptr), ptr %i.as, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @10, ptr %i.at, align 8
  store i64 1, ptr %i.g, align 8, !alias.scope !1679, !noalias !1682
  %.sroa.4.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i32, align 8, !alias.scope !1679, !noalias !1682
  %.sroa.5.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i33, align 8, !alias.scope !1679, !noalias !1682
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ar, ptr %i.au, align 8, !alias.scope !1679, !noalias !1682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.l, %bb.k, %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.val26 = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val27 = load ptr, ptr %i.ay, align 8          ; 2 uses
  %i.az = atomicrmw add ptr %.val26, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bb = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @56, ptr %i.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 107 to ptr), ptr %i.bd, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @10, ptr %i.be, align 8
  store i64 1, ptr %i.k, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.bc, ptr %.sroa.8.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler22after_post_commit_hook00B8_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.u

bb.z:                                             ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aa:                                            ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val27, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !7, !nonnull !7
  %i.bk = invoke { ptr, ptr } %i.bj(ptr noundef nonnull %.val26)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 3 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl), "nonnull"(ptr %i.bm) ]
  store ptr %i.bl, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !59, !invariant.load !7
  %i.bq = add nsw i64 %i.bp, -1
  %i.br = and i64 %i.bq, -16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 24
  %.val30 = load ptr, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void %.val30(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.bt) #26
          to label %bb.af unwind label %bb.ae, !inline_history !1593

bb.ac:                                            ; preds = %bb.ao, %bb.at, %bb.ae
  %.pn11.pn = phi { ptr, i32 } [ %i.bz, %bb.ae ], [ %i.cl, %bb.at ], [ %i.ch, %bb.ao ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1691, !nonnull !7, !noundef !7
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !1691
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bv) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.ax

bb.ae:                                            ; preds = %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.af:                                            ; preds = %bb.ab
  %i.ca = load i128, ptr %i.a, align 16, !noundef !7
  %.not = icmp eq i128 %i.ca, -55836113038573738235370198513345853248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  %i.cb = load ptr, ptr %i.bh, align 8, !alias.scope !1698, !nonnull !7, !noundef !7
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1698
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39 unwind label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 1 dereferenceable(16) %i.l, i64 16, i1 false)
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.bt, ptr %.sroa.762.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 228
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 4
  br label %bb.ap

bb.aj:                                            ; preds = %bb.av, %bb.ah
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 67)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39
  %.sroa.065.0.copyload = load i64, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42: ; preds = %bb.au, %bb.av, %bb.al
  %.sroa.065.0 = phi i64 [ %.sroa.065.0.copyload, %bb.al ], [ %i.cj, %bb.av ], [ %i.cj, %bb.au ] ; 2 uses
  %.not.i40 = icmp eq i64 %.sroa.065.0, -9223372036854775711
  br i1 %.not.i40, label %.sink.split, label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.ak, %bb.aj, %bb.z, %bb.ad, %bb.ac, %bb.m, %bb.s, %bb.p, %bb.f, %bb.h, %bb.x
  %.pn17.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.bf, %bb.x ], [ %i.af, %bb.m ], [ %i.w, %bb.f ], [ %i.av, %bb.s ], [ %i.ap, %bb.p ], [ %.pn11.pn, %bb.ad ], [ %.pn11.pn, %bb.ac ], [ %i.cg, %bb.ak ], [ %i.cf, %bb.aj ], [ %i.bg, %bb.z ]
  store i8 2, ptr %i.m, align 8
  resume { ptr, i32 } %.pn17.pn

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
  unreachable

bb.ao:                                            ; preds = %bb.ap
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore12commit_merge0EBN_(ptr noundef nonnull align 8 %i.ci) #22
          to label %bb.ac unwind label %bb.ax

bb.ap:                                            ; preds = %bb.a, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke fastcc void @_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore12commit_merge0B6_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull align 8 %i.ci, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %i.cj = load i64, ptr %i.d, align 16, !range !1608, !noundef !7 ; 3 uses
  %i.ck = icmp eq i64 %i.cj, -9223372036854775710
  br i1 %i.ck, label %bb.ar, label %bb.as

common.ret:                                       ; preds = %.sink.split, %bb.ar
  %storemerge = phi i8 [ 1, %.sink.split ], [ 3, %bb.ar ]
  store i8 %storemerge, ptr %i.m, align 8
  ret void

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.as:                                            ; preds = %bb.aq
  %.sroa.4.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx67, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore12commit_merge0EBN_(ptr noundef nonnull align 8 %i.ci)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.au:                                            ; preds = %bb.as
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !1705, !nonnull !7, !noundef !7
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !1705
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42 unwind label %bb.aj

.sink.split:                                      ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42, %bb.b
  %.sroa.0.0 = phi i64 [ -9223372036854775711, %bb.b ], [ %.sroa.065.0, %bb.aw ], [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42 ]
  store i64 %.sroa.0.0, ptr %0, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, i64 88, i1 false)
  br label %common.ret

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  br label %.sink.split

bb.ax:                                            ; preds = %bb.ad, %bb.ao
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB4_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook0B6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 6 uses
  %.sroa.4 = alloca [88 x i8], align 8            ; 3 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3 = alloca [88 x i8], align 8            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !range !178, !noundef !7
  switch i8 %i.n, label %default.unreachable77 [
    i8 0, label %bb.b
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.ap
  ]

default.unreachable77:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1025
  %i.p = load i8, ptr %i.o, align 1, !range !180, !noundef !7
  %i.q = trunc nuw i8 %i.p to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br i1 %i.q, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.r = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.s = icmp samesign ult i64 %i.r, 2
  br i1 %i.s, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.t = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.u = icmp ult i8 %i.t, 3
  br i1 %i.u, label %bb.g, label %bb.e, !prof !1143

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE) #23
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i31 = phi i8 [ %i.t, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.0.0.i31, 0
  br i1 %i.x, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.aa = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.z, i8 noundef %.sroa.0.0.i31)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %i.aa, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.j
  %i.ab = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not75 = icmp eq i8 %i.ab, 0
  br i1 %.not75, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ac = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 6
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %i.ac, 3
  br i1 %i.ae, label %bb.n, label %bb.u

bb.m:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %.val24 = load ptr, ptr %i.ah, align 8, !nonnull !7, !noundef !7
  %i.ai = getelementptr i8, ptr %i.ag, i64 40
  %.val25 = load i64, ptr %i.ai, align 8, !noundef !7
  store i64 4, ptr %i.i, align 8, !alias.scope !1706
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.val24, ptr %.sroa.656.0..sroa_idx, align 8, !alias.scope !1706
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.val25, ptr %.sroa.857.0..sroa_idx, align 8, !alias.scope !1706
  %i.aj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.o unwind label %bb.m       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !7, !nonnull !7
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.ao, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aq = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @58, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 105 to ptr), ptr %i.as, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @10, ptr %i.at, align 8
  store i64 1, ptr %i.h, align 8, !alias.scope !1710, !noalias !1713
  %.sroa.4.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx.i32, align 8, !alias.scope !1710, !noalias !1713
  %.sroa.5.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i33, align 8, !alias.scope !1710, !noalias !1713
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ar, ptr %i.au, align 8, !alias.scope !1710, !noalias !1713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.l, %bb.k, %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.val26 = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val27 = load ptr, ptr %i.ay, align 8          ; 2 uses
  %i.az = atomicrmw add ptr %.val26, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bb = load ptr, ptr @_RNvNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook010___CALLSITE, align 8, !nonnull !7, !align !22, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @58, ptr %i.j, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 105 to ptr), ptr %i.bd, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @10, ptr %i.be, align 8
  store i64 1, ptr %i.l, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.bc, ptr %.sroa.8.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvXNtCsj34PGqTgg0L_16deltalake_lakefs7executeNtB6_26LakeFSCustomExecuteHandlerNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandler23before_post_commit_hook00B8_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.u

bb.z:                                             ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.aa:                                            ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val27, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !7, !nonnull !7
  %i.bk = invoke { ptr, ptr } %i.bj(ptr noundef nonnull %.val26)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 3 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl), "nonnull"(ptr %i.bm) ]
  store ptr %i.bl, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !59, !invariant.load !7
  %i.bq = add nsw i64 %i.bp, -1
  %i.br = and i64 %i.bq, -16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 24
  %.val30 = load ptr, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void %.val30(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.bt) #26
          to label %bb.ae unwind label %bb.ad, !inline_history !1593

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit: ; preds = %bb.au, %bb.ao, %bb.an, %bb.ad
  %.pn11.pn = phi { ptr, i32 } [ %i.bz, %bb.ad ], [ %i.cr, %bb.au ], [ %i.ch, %bb.an ], [ %i.ch, %bb.ao ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1722, !nonnull !7, !noundef !7
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !1722
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bv) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.ax

bb.ad:                                            ; preds = %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

bb.ae:                                            ; preds = %bb.ab
  %i.ca = load i128, ptr %i.a, align 16, !noundef !7
  %.not = icmp eq i128 %i.ca, -55836113038573738235370198513345853248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %i.cb = load ptr, ptr %i.bh, align 8, !alias.scope !1729, !nonnull !7, !noundef !7
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1729
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39 unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.bt, ptr %i.ce, align 8
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1000
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.ap

bb.ai:                                            ; preds = %bb.av, %bb.ag
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 67)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit39
  %.sroa.069.0.copyload = load i64, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44, %bb.av, %bb.ak
  %.sroa.069.0 = phi i64 [ %.sroa.069.0.copyload, %bb.ak ], [ %i.cm, %bb.av ], [ %i.cm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44 ] ; 2 uses
  %.not.i40 = icmp eq i64 %.sroa.069.0, -9223372036854775711
  br i1 %.not.i40, label %.sink.split, label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.aj, %bb.ai, %bb.z, %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit, %bb.m, %bb.s, %bb.p, %bb.f, %bb.h, %bb.x
  %.pn17.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.bf, %bb.x ], [ %i.af, %bb.m ], [ %i.w, %bb.f ], [ %i.av, %bb.s ], [ %i.ap, %bb.p ], [ %.pn11.pn, %bb.ac ], [ %.pn11.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit ], [ %i.cg, %bb.aj ], [ %i.cf, %bb.ai ], [ %i.bg, %bb.z ]
  store i8 2, ptr %i.m, align 8
  resume { ptr, i32 } %.pn17.pn

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27
  unreachable

bb.an:                                            ; preds = %bb.ap
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.cj = load i8, ptr %i.ci, align 8, !range !178, !noundef !7
  %cond.i = icmp eq i8 %i.cj, 3
  br i1 %cond.i, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

bb.ao:                                            ; preds = %bb.an
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit unwind label %bb.ax

bb.ap:                                            ; preds = %bb.a, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtB4_14LakeFSLogStore11pre_execute0B6_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull align 8 %i.cl, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.an

bb.aq:                                            ; preds = %bb.ap
  %i.cm = load i64, ptr %i.d, align 16, !range !1608, !noundef !7 ; 3 uses
  %i.cn = icmp eq i64 %i.cm, -9223372036854775710
  br i1 %i.cn, label %bb.ar, label %bb.as

common.ret:                                       ; preds = %.sink.split, %bb.ar
  %storemerge = phi i8 [ 1, %.sink.split ], [ 3, %bb.ar ]
  store i8 %storemerge, ptr %i.m, align 8
  ret void

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.as:                                            ; preds = %bb.aq
  %.sroa.4.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx71, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.cp = load i8, ptr %i.co, align 8, !range !178, !noundef !7
  %cond.i42 = icmp eq i8 %i.cp, 3
  br i1 %cond.i42, label %bb.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44

bb.at:                                            ; preds = %bb.as
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtCsj34PGqTgg0L_16deltalake_lakefs6clientNtBN_12LakeFSClient13create_branch0EBP_(ptr noundef nonnull align 8 %i.cq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44: ; preds = %bb.as, %bb.at
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !1736, !nonnull !7, !noundef !7
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !1736
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCsj34PGqTgg0L_16deltalake_lakefs8logstoreNtBL_14LakeFSLogStore11pre_execute0EBN_.exit44
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cs) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46 unwind label %bb.ai

.sink.split:                                      ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46, %bb.b
  %.sroa.0.0 = phi i64 [ -9223372036854775711, %bb.b ], [ %.sroa.069.0, %bb.aw ], [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46 ]
  store i64 %.sroa.0.0, ptr %0, align 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, i64 88, i1 false)
  br label %common.ret

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4, i64 88, i1 false)
  br label %.sink.split

bb.ax:                                            ; preds = %bb.ao, %bb.ac
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  %i.d = lshr i64 %i.b, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1740)
end_hunk_15
